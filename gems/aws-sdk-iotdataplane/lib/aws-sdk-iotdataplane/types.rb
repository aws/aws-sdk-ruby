# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module IoTDataPlane
    module Types

      # The input for the DeleteThingShadow operation.
      # @note When making an API call, pass DeleteThingShadowRequest
      #   data as a hash:
      #
      #       {
      #         thing_name: "ThingName", # required
      #       }
      class DeleteThingShadowRequest < Aws::Structure.new(
        :thing_name)

        # @!attribute [rw] thing_name
        #   The name of the thing.
        #   @return [String]

      end

      # The output from the DeleteThingShadow operation.
      class DeleteThingShadowResponse < Aws::Structure.new(
        :payload)

        # @!attribute [rw] payload
        #   The state information, in JSON format.
        #   @return [String]

      end

      # The input for the GetThingShadow operation.
      # @note When making an API call, pass GetThingShadowRequest
      #   data as a hash:
      #
      #       {
      #         thing_name: "ThingName", # required
      #       }
      class GetThingShadowRequest < Aws::Structure.new(
        :thing_name)

        # @!attribute [rw] thing_name
        #   The name of the thing.
        #   @return [String]

      end

      # The output from the GetThingShadow operation.
      class GetThingShadowResponse < Aws::Structure.new(
        :payload)

        # @!attribute [rw] payload
        #   The state information, in JSON format.
        #   @return [String]

      end

      # The input for the Publish operation.
      # @note When making an API call, pass PublishRequest
      #   data as a hash:
      #
      #       {
      #         topic: "Topic", # required
      #         qos: 1,
      #         payload: "data",
      #       }
      class PublishRequest < Aws::Structure.new(
        :topic,
        :qos,
        :payload)

        # @!attribute [rw] topic
        #   The name of the MQTT topic.
        #   @return [String]

        # @!attribute [rw] qos
        #   The Quality of Service (QoS) level.
        #   @return [Integer]

        # @!attribute [rw] payload
        #   The state information, in JSON format.
        #   @return [String]

      end

      # The input for the UpdateThingShadow operation.
      # @note When making an API call, pass UpdateThingShadowRequest
      #   data as a hash:
      #
      #       {
      #         thing_name: "ThingName", # required
      #         payload: "data", # required
      #       }
      class UpdateThingShadowRequest < Aws::Structure.new(
        :thing_name,
        :payload)

        # @!attribute [rw] thing_name
        #   The name of the thing.
        #   @return [String]

        # @!attribute [rw] payload
        #   The state information, in JSON format.
        #   @return [String]

      end

      # The output from the UpdateThingShadow operation.
      class UpdateThingShadowResponse < Aws::Structure.new(
        :payload)

        # @!attribute [rw] payload
        #   The state information, in JSON format.
        #   @return [String]

      end

    end
  end
end
