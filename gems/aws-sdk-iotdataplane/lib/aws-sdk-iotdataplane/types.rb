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
    #   @return [String]
    # @!attribute clean_session
    #   <p>Specifies whether to remove the client's session state when disconnecting. Set to <code>TRUE</code> to delete all session information, including subscriptions and queued messages. Set to <code>FALSE</code> to preserve the session state. By default, this is set to <code>FALSE</code> (preserves the session state).</p>
    #   @return [Boolean]
    # @!attribute prevent_will_message
    #   <p>Controls if Amazon Web Services IoT Core publishes the client's Last Will and Testament (LWT) message upon disconnection. Set to <code>TRUE</code> to prevent publishing the LWT message. Set to <code>FALSE</code> to allow publishing. By default, this is set to <code>FALSE</code> (allows publishing the LWT message).</p>
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
