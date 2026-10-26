# frozen_string_literal: true

# This is generated code!

module Aws::IoTDataPlane
  # This module contains the types returned by client operations.
  module Types

    # <p>The specified version does not match the version of the document.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_id
    #   <p>The unique identifier of the MQTT client to disconnect. The client ID can't start with a dollar sign ($).</p>
    #            <p>MQTT client IDs must be URL encoded (percent-encoded) when they contain characters that are not valid in HTTP requests, such as spaces, forward slashes (/), and UTF-8 characters.</p>
    #   @return [String]
    # @!attribute clean_session
    #   <p>Specifies whether to remove the client's persistent session state when disconnecting. Set to <code>TRUE</code> to delete all session information, including subscriptions and queued messages. Set to <code>FALSE</code> to preserve the session state for <a href="https://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html#mqtt-persistent-sessions">persistent sessions</a>. For clean sessions this parameter will be ignored. By default, this is set to <code>FALSE</code> (preserves the session state).</p>
    #   @return [Boolean]
    # @!attribute prevent_will_message
    #   <p>Controls if Amazon Web Services IoT Core publishes the client's Last Will and Testament (LWT) message upon disconnection. Set to <code>TRUE</code> to prevent publishing the LWT message. Set to <code>FALSE</code> to ensure that LWT is published. By default, this is set to <code>FALSE</code> (LWT message is published).</p>
    #   @return [Boolean]
    class DeleteConnectionRequest < Struct.new(
      nil,
      :client_id,
      :clean_session,
      :prevent_will_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DeleteThingShadow operation.</p>
    # @!attribute thing_name
    #   <p>The name of the thing.</p>
    #   @return [String]
    # @!attribute shadow_name
    #   <p>The name of the shadow.</p>
    #   @return [String]
    class DeleteThingShadowRequest < Struct.new(
      nil,
      :thing_name,
      :shadow_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the DeleteThingShadow operation.</p>
    # @!attribute payload
    #   <p>The state information, in JSON format.</p>
    #   @return [String]
    class DeleteThingShadowResponse < Struct.new(
      nil,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The caller isn't authorized to make the request.</p>
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The delivery confirmation was not received from the client within the specified timeout period.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class GatewayTimeoutException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_id
    #   <p>The unique identifier of the MQTT client to retrieve connection information. The client ID can't start with a dollar sign ($).</p>
    #            <p>MQTT client IDs must be URL encoded (percent-encoded) when they contain characters that are not valid in HTTP requests, such as spaces, forward slashes (/), and UTF-8 characters.</p>
    #   @return [String]
    # @!attribute include_socket_information
    #   <p>Specifies if socket information (sourcePort, targetPort, sourceIp, targetIp) should be included in the GetConnection response. Set to <code>TRUE</code> to include socket information. Set to <code>FALSE</code> to omit socket information. By default, this is set to <code>FALSE</code>. See the <a href="https://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html#mqtt-client-disconnect">developer guide</a> for how to authorize this parameter.</p>
    #   @return [Boolean]
    class GetConnectionRequest < Struct.new(
      nil,
      :client_id,
      :include_socket_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connected
    #   <p>The connection state of the client. Returns <code>true</code> if the client is currently connected, or <code>false</code> if the client is not connected.</p>
    #   @return [Boolean]
    # @!attribute thing_name
    #   <p>The name of the thing associated with the principal of the MQTT client, if applicable.</p>
    #   @return [String]
    # @!attribute clean_session
    #   <p>Indicates whether the client is using a clean session. Returns <code>true</code> for clean sessions or <code>false</code> for persistent sessions.</p>
    #   @return [Boolean]
    # @!attribute source_ip
    #   <p>The IP address of the client that initiated the connection.</p>
    #   @return [String]
    # @!attribute source_port
    #   <p>The client's source port.</p>
    #   @return [Integer]
    # @!attribute target_ip
    #   <p>The IP address of the Amazon Web Services IoT Core endpoint that the client connected to. For clients connected to VPC endpoints, this is the private IP address of the network interface the client is connected to.</p>
    #   @return [String]
    # @!attribute target_port
    #   <p>The port number of the Amazon Web Services IoT Core endpoint that the client connected to.</p>
    #   @return [Integer]
    # @!attribute keep_alive_duration
    #   <p>The keep-alive interval in seconds that the client specified when establishing the connection.</p>
    #   @return [Integer]
    # @!attribute connected_since
    #   <p>Unix timestamp (in milliseconds) indicating when the client connected. Present only when connected is true.</p>
    #   @return [Integer]
    # @!attribute disconnected_since
    #   <p>Unix timestamp (in milliseconds) indicating when the client disconnected. Present only when connected is false. This information is available for 30 minutes after the client disconnects.</p>
    #   @return [Integer]
    # @!attribute disconnect_reason
    #   <p>The reason for the last disconnection, if the client is currently disconnected. See the <a href="https://docs.aws.amazon.com/iot/latest/developerguide/life-cycle-events.html#connect-disconnect">developer guide</a> for valid disconnect reasons.</p>
    #   @return [String]
    # @!attribute session_expiry
    #   <p>The session expiry interval in seconds for the MQTT client connection. This is configured by the user. This value indicates how long the session will remain active after the client disconnects.</p>
    #   @return [Integer]
    # @!attribute client_id
    #   <p>The unique identifier of the MQTT client. This is the same client ID that was used when the client established the connection.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>The ID of the VPC endpoint. Present for clients connected to IoT Core via a <a href="https://docs.aws.amazon.com/iot/latest/developerguide/IoTCore-VPC.html">VPC endpoint</a>. </p>
    #   @return [String]
    class GetConnectionResponse < Struct.new(
      nil,
      :connected,
      :thing_name,
      :clean_session,
      :source_ip,
      :source_port,
      :target_ip,
      :target_port,
      :keep_alive_duration,
      :connected_since,
      :disconnected_since,
      :disconnect_reason,
      :session_expiry,
      :client_id,
      :vpc_endpoint_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:connected] = false unless options.key?(:connected)
        options[:clean_session] = false unless options.key?(:clean_session)
        options[:source_port] = 0 unless options.key?(:source_port)
        options[:target_port] = 0 unless options.key?(:target_port)
        options[:keep_alive_duration] = 0 unless options.key?(:keep_alive_duration)
        options[:connected_since] = 0 unless options.key?(:connected_since)
        options[:disconnected_since] = 0 unless options.key?(:disconnected_since)
        options[:session_expiry] = 0 unless options.key?(:session_expiry)
        super
      end
    end

    # <p>The input for the GetRetainedMessage operation.</p>
    # @!attribute topic
    #   <p>The topic name of the retained message to retrieve.</p>
    #   @return [String]
    class GetRetainedMessageRequest < Struct.new(
      nil,
      :topic,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the GetRetainedMessage operation.</p>
    # @!attribute topic
    #   <p>The topic name to which the retained message was published.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The Base64-encoded message payload of the retained message body.</p>
    #   @return [String]
    # @!attribute qos
    #   <p>The quality of service (QoS) level used to publish the retained message.</p>
    #   @return [Integer]
    # @!attribute last_modified_time
    #   <p>The Epoch date and time, in milliseconds, when the retained message was stored by IoT.</p>
    #   @return [Integer]
    # @!attribute user_properties
    #   <p>A base64-encoded JSON string that includes an array of JSON objects, or null if the
    #         retained message doesn't include any user properties.</p>
    #            <p>The following example <code>userProperties</code> parameter is a JSON string that
    #         represents two user properties. Note that it will be base64-encoded:</p>
    #            <p>
    #               <code>[{"deviceName": "alpha"}, {"deviceCnt": "45"}]</code>
    #            </p>
    #   @return [String]
    class GetRetainedMessageResponse < Struct.new(
      nil,
      :topic,
      :payload,
      :qos,
      :last_modified_time,
      :user_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:qos] = 0 unless options.key?(:qos)
        options[:last_modified_time] = 0 unless options.key?(:last_modified_time)
        super
      end
    end

    # <p>The input for the GetThingShadow operation.</p>
    # @!attribute thing_name
    #   <p>The name of the thing.</p>
    #   @return [String]
    # @!attribute shadow_name
    #   <p>The name of the shadow.</p>
    #   @return [String]
    class GetThingShadowRequest < Struct.new(
      nil,
      :thing_name,
      :shadow_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the GetThingShadow operation.</p>
    # @!attribute payload
    #   <p>The state information, in JSON format.</p>
    #   @return [String]
    class GetThingShadowResponse < Struct.new(
      nil,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error has occurred.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class InternalFailureException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is not valid.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_name
    #   <p>The name of the thing.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The result page size.</p>
    #   @return [Integer]
    class ListNamedShadowsForThingRequest < Struct.new(
      nil,
      :thing_name,
      :next_token,
      :page_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The list of shadows for the specified thing.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The Epoch date and time the response was generated by IoT.</p>
    #   @return [Integer]
    class ListNamedShadowsForThingResponse < Struct.new(
      nil,
      :results,
      :next_token,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timestamp] = 0 unless options.key?(:timestamp)
        super
      end
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #         value from a previous response; otherwise <b>null</b> to receive
    #         the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListRetainedMessagesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute retained_topics
    #   <p>A summary list the account's retained messages. The information returned doesn't include
    #         the message payloads of the retained messages.</p>
    #   @return [Array<Types::RetainedMessageSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListRetainedMessagesResponse < Struct.new(
      nil,
      :retained_topics,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_id
    #   <p>The unique identifier of the MQTT client to list subscriptions for. The client ID can't start with a dollar sign ($).</p>
    #            <p>MQTT client IDs must be URL encoded (percent-encoded) when they contain characters that are not valid in HTTP requests, such as spaces, forward slashes (/), and UTF-8 characters.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #         value from a previous response; otherwise <b>null</b> to receive
    #         the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of subscriptions to return in a single request. By default, this is set to 20.</p>
    #   @return [Integer]
    class ListSubscriptionsRequest < Struct.new(
      nil,
      :client_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriptions
    #   <p>A list of topic filters and their associated Quality of Service (QoS) levels that the client is subscribed to.</p>
    #   @return [Array<Types::SubscriptionSummary>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListSubscriptionsResponse < Struct.new(
      nil,
      :subscriptions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified combination of HTTP verb and URI is not supported.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class MethodNotAllowedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the Publish operation.</p>
    # @!attribute topic
    #   <p>The name of the MQTT topic.</p>
    #   @return [String]
    # @!attribute qos
    #   <p>The Quality of Service (QoS) level. The default QoS level is 0.</p>
    #   @return [Integer]
    # @!attribute retain
    #   <p>A Boolean value that determines whether to set the RETAIN flag when the message is published.</p>
    #            <p>Setting the RETAIN flag causes the message to be retained and sent to new subscribers to the topic.</p>
    #            <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #            <p>Default value: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute payload
    #   <p>The message body. MQTT accepts text, binary, and empty (null) message payloads.</p>
    #            <p>Publishing an empty (null) payload with <b>retain</b> =
    #           <code>true</code> deletes the retained message identified by <b>topic</b> from Amazon Web Services IoT Core.</p>
    #   @return [String]
    # @!attribute user_properties
    #   <p>A JSON string that contains an array of JSON objects. If you don’t use Amazon Web Services SDK or CLI,
    #         you must encode the JSON string to base64 format before adding it to the HTTP header.
    #           <code>userProperties</code> is an HTTP header value in the API.</p>
    #            <p>The following example <code>userProperties</code> parameter is a JSON string which
    #         represents two User Properties. Note that it needs to be base64-encoded:</p>
    #            <p>
    #               <code>[{"deviceName": "alpha"}, {"deviceCnt": "45"}]</code>
    #            </p>
    #   @return [String]
    # @!attribute payload_format_indicator
    #   <p>An <code>Enum</code> string value that indicates whether the payload is formatted as
    #         UTF-8. <code>payloadFormatIndicator</code> is an HTTP header value in the API.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A UTF-8 encoded string that describes the content of the publishing message.</p>
    #   @return [String]
    # @!attribute response_topic
    #   <p>A UTF-8 encoded string that's used as the topic name for a response message. The response
    #         topic is used to describe the topic which the receiver should publish to as part of the
    #         request-response flow. The topic must not contain wildcard characters.</p>
    #   @return [String]
    # @!attribute correlation_data
    #   <p>The base64-encoded binary data used by the sender of the request message to identify which
    #         request the response message is for when it's received. <code>correlationData</code> is an
    #         HTTP header value in the API.</p>
    #   @return [String]
    # @!attribute message_expiry
    #   <p>A user-defined integer value that represents the message expiry interval in seconds. If
    #         absent, the message doesn't expire. For more information about the limits of
    #           <code>messageExpiry</code>, see <a href="https://docs.aws.amazon.com/general/latest/gr/iot-core.html#message-broker-limits">Amazon Web Services IoT Core message broker and
    #           protocol limits and quotas </a> from the Amazon Web Services Reference Guide.</p>
    #   @return [Integer]
    class PublishRequest < Struct.new(
      nil,
      :topic,
      :qos,
      :retain,
      :payload,
      :user_properties,
      :payload_format_indicator,
      :content_type,
      :response_topic,
      :correlation_data,
      :message_expiry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The payload exceeds the maximum size allowed.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class RequestEntityTooLargeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a single retained message.</p>
    # @!attribute topic
    #   <p>The topic name to which the retained message was published.</p>
    #   @return [String]
    # @!attribute payload_size
    #   <p>The size of the retained message's payload in bytes.</p>
    #   @return [Integer]
    # @!attribute qos
    #   <p>The quality of service (QoS) level used to publish the retained message.</p>
    #   @return [Integer]
    # @!attribute last_modified_time
    #   <p>The Epoch date and time, in milliseconds, when the retained message was stored by IoT.</p>
    #   @return [Integer]
    class RetainedMessageSummary < Struct.new(
      nil,
      :topic,
      :payload_size,
      :qos,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:payload_size] = 0 unless options.key?(:payload_size)
        options[:qos] = 0 unless options.key?(:qos)
        options[:last_modified_time] = 0 unless options.key?(:last_modified_time)
        super
      end
    end

    # @!attribute client_id
    #   <p>The unique identifier of the MQTT client to send the message to.</p>
    #            <p>Client IDs must not exceed 128 characters and can't start with a dollar sign ($).
    #         MQTT client IDs must be URL encoded (percent-encoded) when they contain characters that are
    #         not valid in HTTP requests, such as spaces, forward slashes (/), and UTF-8 characters.
    #         For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/iot-core.html#message-broker-limits">Amazon Web Services IoT Core message broker and
    #         protocol limits and quotas</a>.</p>
    #   @return [String]
    # @!attribute topic
    #   <p>The topic of the outbound MQTT Publish message to the receiving client.
    #         For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/iot-core.html#message-broker-limits">Amazon Web Services IoT Core message broker and
    #         protocol limits and quotas</a>.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MQTT5 content type property forwarded to the receiving client
    #         (for example, <code>application/json</code>).</p>
    #   @return [String]
    # @!attribute response_topic
    #   <p>A UTF-8 encoded string that's used as the topic name for a response message. The response
    #         topic describes the topic which the receiver should publish to as part of the
    #         request-response flow. The topic must not contain wildcard characters.
    #         For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/iot-core.html#message-broker-limits">Amazon Web Services IoT Core message broker and
    #         protocol limits and quotas</a>.</p>
    #   @return [String]
    # @!attribute confirmation
    #   <p>A Boolean value that specifies whether to wait for delivery confirmation from the receiving client.</p>
    #            <p>When set to <code>true</code>, the API delivers the message at QoS 1 and waits for
    #         the client to send a delivery confirmation (PUBACK) before returning a successful response. If
    #         delivery confirmation is not received within the specified <code>timeout</code> period,
    #         the API returns HTTP 504.</p>
    #            <p>When set to <code>false</code>, the API delivers the message at QoS 0 and returns
    #         after Amazon Web Services IoT Core attempts to deliver the message.</p>
    #            <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #            <p>Default value: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute timeout
    #   <p>An integer that represents the maximum time, in seconds, to wait for a delivery confirmation (PUBACK) from the
    #         receiving client after the message has been delivered. This parameter is only used when
    #         <code>confirmation</code> is set to <code>true</code>. If <code>confirmation</code>
    #         is <code>false</code>, this parameter is ignored.</p>
    #            <p>The total API response time may be higher than this value due to internal processing.
    #         Set your HTTP client timeout to a value greater than this parameter.</p>
    #            <p>Valid range: 1 to 15 seconds.</p>
    #            <p>Default value: <code>5</code> seconds.</p>
    #   @return [Integer]
    # @!attribute payload
    #   <p>The message body. MQTT accepts text, binary, and empty (null) message payloads.</p>
    #   @return [String]
    # @!attribute user_properties
    #   <p>A JSON string that contains an array of JSON objects. If you don't use Amazon Web Services SDK or CLI,
    #         you must encode the JSON string to base64 format before adding it to the HTTP header.
    #         <code>userProperties</code> is an HTTP header value in the API.</p>
    #            <p>For MQTT 3.1.1 clients, user properties are silently dropped.</p>
    #            <p>The following example <code>userProperties</code> parameter is a JSON string which
    #         represents two User Properties. Note that it needs to be base64-encoded:</p>
    #            <p>
    #               <code>[{"deviceName": "alpha"}, {"deviceCnt": "45"}]</code>
    #            </p>
    #   @return [String]
    # @!attribute payload_format_indicator
    #   <p>An <code>Enum</code> string value that indicates whether the payload is formatted as
    #         UTF-8. <code>payloadFormatIndicator</code> is an HTTP header value in the API.</p>
    #   @return [String]
    # @!attribute correlation_data
    #   <p>The base64-encoded binary data used by the sender of the request message to identify which
    #         request the response message is for when it's received. <code>correlationData</code> is an
    #         HTTP header value in the API.</p>
    #   @return [String]
    class SendDirectMessageRequest < Struct.new(
      nil,
      :client_id,
      :topic,
      :content_type,
      :response_topic,
      :confirmation,
      :timeout,
      :payload,
      :user_properties,
      :payload_format_indicator,
      :correlation_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the SendDirectMessage operation.</p>
    # @!attribute message
    #   <p>The status message indicating the result of the operation.</p>
    #   @return [String]
    # @!attribute trace_id
    #   <p>A unique identifier for the request. Include this value when contacting Amazon Web Services Support for troubleshooting.</p>
    #   @return [String]
    class SendDirectMessageResponse < Struct.new(
      nil,
      :message,
      :trace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is temporarily unavailable.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a subscription for an MQTT client, including the topic filter and Quality of Service (QoS) level.</p>
    # @!attribute topic_filter
    #   <p>The topic filter pattern that the client is subscribed to. May include MQTT wildcards such as + (single-level) and # (multi-level).</p>
    #   @return [String]
    # @!attribute qos
    #   <p>The Quality of Service (QoS) level for the subscription. Valid values are 0 (at most once) and 1 (at least once).</p>
    #   @return [Integer]
    class SubscriptionSummary < Struct.new(
      nil,
      :topic_filter,
      :qos,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:qos] = 0 unless options.key?(:qos)
        super
      end
    end

    # <p>The rate exceeds the limit.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You are not authorized to perform this operation.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class UnauthorizedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The document encoding is not supported.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class UnsupportedDocumentEncodingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the UpdateThingShadow operation.</p>
    # @!attribute thing_name
    #   <p>The name of the thing.</p>
    #   @return [String]
    # @!attribute shadow_name
    #   <p>The name of the shadow.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The state information, in JSON format.</p>
    #   @return [String]
    class UpdateThingShadowRequest < Struct.new(
      nil,
      :thing_name,
      :shadow_name,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the UpdateThingShadow operation.</p>
    # @!attribute payload
    #   <p>The state information, in JSON format.</p>
    #   @return [String]
    class UpdateThingShadowResponse < Struct.new(
      nil,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
