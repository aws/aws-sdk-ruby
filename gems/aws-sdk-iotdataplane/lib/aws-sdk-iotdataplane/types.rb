# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTDataPlane
  module Types

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
