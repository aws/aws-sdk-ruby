# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTDataPlane
  module Types

    # The specified version does not match the version of the document.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DeleteThingShadow operation.
    #
    # @note When making an API call, you may pass DeleteThingShadowRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         shadow_name: "ShadowName",
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing.
    #   @return [String]
    #
    # @!attribute [rw] shadow_name
    #   The name of the shadow.
    #   @return [String]
    #
    class DeleteThingShadowRequest < Struct.new(
      :thing_name,
      :shadow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the DeleteThingShadow operation.
    #
    # @!attribute [rw] payload
    #   The state information, in JSON format.
    #   @return [String]
    #
    class DeleteThingShadowResponse < Struct.new(
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the GetRetainedMessage operation.
    #
    # @note When making an API call, you may pass GetRetainedMessageRequest
    #   data as a hash:
    #
    #       {
    #         topic: "Topic", # required
    #       }
    #
    # @!attribute [rw] topic
    #   The topic name of the retained message to retrieve.
    #   @return [String]
    #
    class GetRetainedMessageRequest < Struct.new(
      :topic)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the GetRetainedMessage operation.
    #
    # @!attribute [rw] topic
    #   The topic name to which the retained message was published.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The Base64-encoded message payload of the retained message body.
    #   @return [String]
    #
    # @!attribute [rw] qos
    #   The quality of service (QoS) level used to publish the retained
    #   message.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   The Epoch date and time, in milliseconds, when the retained message
    #   was stored by IoT.
    #   @return [Integer]
    #
    class GetRetainedMessageResponse < Struct.new(
      :topic,
      :payload,
      :qos,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the GetThingShadow operation.
    #
    # @note When making an API call, you may pass GetThingShadowRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         shadow_name: "ShadowName",
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing.
    #   @return [String]
    #
    # @!attribute [rw] shadow_name
    #   The name of the shadow.
    #   @return [String]
    #
    class GetThingShadowRequest < Struct.new(
      :thing_name,
      :shadow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the GetThingShadow operation.
    #
    # @!attribute [rw] payload
    #   The state information, in JSON format.
    #   @return [String]
    #
    class GetThingShadowResponse < Struct.new(
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error has occurred.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class InternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is not valid.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNamedShadowsForThingRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         next_token: "NextToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The result page size.
    #   @return [Integer]
    #
    class ListNamedShadowsForThingRequest < Struct.new(
      :thing_name,
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The list of shadows for the specified thing.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next set of results, or **null** if
    #   there are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The Epoch date and time the response was generated by IoT.
    #   @return [Integer]
    #
    class ListNamedShadowsForThingResponse < Struct.new(
      :results,
      :next_token,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRetainedMessagesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListRetainedMessagesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] retained_topics
    #   A summary list the account's retained messages. The information
    #   returned doesn't include the message payloads of the retained
    #   messages.
    #   @return [Array<Types::RetainedMessageSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    class ListRetainedMessagesResponse < Struct.new(
      :retained_topics,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified combination of HTTP verb and URI is not supported.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class MethodNotAllowedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the Publish operation.
    #
    # @note When making an API call, you may pass PublishRequest
    #   data as a hash:
    #
    #       {
    #         topic: "Topic", # required
    #         qos: 1,
    #         retain: false,
    #         payload: "data",
    #       }
    #
    # @!attribute [rw] topic
    #   The name of the MQTT topic.
    #   @return [String]
    #
    # @!attribute [rw] qos
    #   The Quality of Service (QoS) level.
    #   @return [Integer]
    #
    # @!attribute [rw] retain
    #   A Boolean value that determines whether to set the RETAIN flag when
    #   the message is published.
    #
    #   Setting the RETAIN flag causes the message to be retained and sent
    #   to new subscribers to the topic.
    #
    #   Valid values: `true` \| `false`
    #
    #   Default value: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] payload
    #   The message body. MQTT accepts text, binary, and empty (null)
    #   message payloads.
    #
    #   Publishing an empty (null) payload with **retain** = `true` deletes
    #   the retained message identified by **topic** from IoT Core.
    #   @return [String]
    #
    class PublishRequest < Struct.new(
      :topic,
      :qos,
      :retain,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # The payload exceeds the maximum size allowed.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class RequestEntityTooLargeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a single retained message.
    #
    # @!attribute [rw] topic
    #   The topic name to which the retained message was published.
    #   @return [String]
    #
    # @!attribute [rw] payload_size
    #   The size of the retained message's payload in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] qos
    #   The quality of service (QoS) level used to publish the retained
    #   message.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   The Epoch date and time, in milliseconds, when the retained message
    #   was stored by IoT.
    #   @return [Integer]
    #
    class RetainedMessageSummary < Struct.new(
      :topic,
      :payload_size,
      :qos,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is temporarily unavailable.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rate exceeds the limit.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are not authorized to perform this operation.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The document encoding is not supported.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class UnsupportedDocumentEncodingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the UpdateThingShadow operation.
    #
    # @note When making an API call, you may pass UpdateThingShadowRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         shadow_name: "ShadowName",
    #         payload: "data", # required
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing.
    #   @return [String]
    #
    # @!attribute [rw] shadow_name
    #   The name of the shadow.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The state information, in JSON format.
    #   @return [String]
    #
    class UpdateThingShadowRequest < Struct.new(
      :thing_name,
      :shadow_name,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from the UpdateThingShadow operation.
    #
    # @!attribute [rw] payload
    #   The state information, in JSON format.
    #   @return [String]
    #
    class UpdateThingShadowResponse < Struct.new(
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
