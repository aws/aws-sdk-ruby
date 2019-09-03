# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
      include Aws::Structure
    end

    # The input for the DeleteThingShadow operation.
    #
    # @note When making an API call, you may pass DeleteThingShadowRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing.
    #   @return [String]
    #
    class DeleteThingShadowRequest < Struct.new(
      :thing_name)
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
      include Aws::Structure
    end

    # The input for the GetThingShadow operation.
    #
    # @note When making an API call, you may pass GetThingShadowRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing.
    #   @return [String]
    #
    class GetThingShadowRequest < Struct.new(
      :thing_name)
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
    # @!attribute [rw] payload
    #   The state information, in JSON format.
    #   @return [String]
    #
    class PublishRequest < Struct.new(
      :topic,
      :qos,
      :payload)
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
      include Aws::Structure
    end

    # The input for the UpdateThingShadow operation.
    #
    # @note When making an API call, you may pass UpdateThingShadowRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         payload: "data", # required
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The state information, in JSON format.
    #   @return [String]
    #
    class UpdateThingShadowRequest < Struct.new(
      :thing_name,
      :payload)
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
      include Aws::Structure
    end

  end
end
