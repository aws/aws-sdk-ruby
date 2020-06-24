# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoT1ClickDevicesService
  module Types

    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/Attributes AWS API Documentation
    #
    class Attributes < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ClaimDevicesByClaimCodeRequest
    #   data as a hash:
    #
    #       {
    #         claim_code: "__string", # required
    #       }
    #
    # @!attribute [rw] claim_code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ClaimDevicesByClaimCodeRequest AWS API Documentation
    #
    class ClaimDevicesByClaimCodeRequest < Struct.new(
      :claim_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] claim_code
    #   The claim code provided by the device manufacturer.
    #   @return [String]
    #
    # @!attribute [rw] total
    #   The total number of devices associated with the claim code that has
    #   been processed in the claim request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ClaimDevicesByClaimCodeResponse AWS API Documentation
    #
    class ClaimDevicesByClaimCodeResponse < Struct.new(
      :claim_code,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDeviceRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "__string", # required
    #       }
    #
    # @!attribute [rw] device_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/DescribeDeviceRequest AWS API Documentation
    #
    class DescribeDeviceRequest < Struct.new(
      :device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_description
    #   Device details.
    #   @return [Types::DeviceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/DescribeDeviceResponse AWS API Documentation
    #
    class DescribeDeviceResponse < Struct.new(
      :device_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   The user specified attributes associated with the device for an
    #   event.
    #   @return [Types::Attributes]
    #
    # @!attribute [rw] device_id
    #   The unique identifier of the device.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The device type, such as "button".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/Device AWS API Documentation
    #
    class Device < Struct.new(
      :attributes,
      :device_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   The device's final claim state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/DeviceClaimResponse AWS API Documentation
    #
    class DeviceClaimResponse < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the device.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   An array of zero or more elements of DeviceAttribute objects
    #   providing user specified device attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] device_id
    #   The unique identifier of the device.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   A Boolean value indicating whether or not the device is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] remaining_life
    #   A value between 0 and 1 inclusive, representing the fraction of life
    #   remaining for the device.
    #   @return [Float]
    #
    # @!attribute [rw] type
    #   The type of the device, such as "button".
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/DeviceDescription AWS API Documentation
    #
    class DeviceDescription < Struct.new(
      :arn,
      :attributes,
      :device_id,
      :enabled,
      :remaining_life,
      :type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device
    #   An object representing the device associated with the event.
    #   @return [Types::Device]
    #
    # @!attribute [rw] std_event
    #   A serialized JSON object representing the device-type specific
    #   event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/DeviceEvent AWS API Documentation
    #
    class DeviceEvent < Struct.new(
      :device,
      :std_event)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   An array of zero or more elements describing the event(s) associated
    #   with the device.
    #   @return [Array<Types::DeviceEvent>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/DeviceEventsResponse AWS API Documentation
    #
    class DeviceEventsResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeviceMethod
    #   data as a hash:
    #
    #       {
    #         device_type: "__string",
    #         method_name: "__string",
    #       }
    #
    # @!attribute [rw] device_type
    #   The type of the device, such as "button".
    #   @return [String]
    #
    # @!attribute [rw] method_name
    #   The name of the method applicable to the deviceType.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/DeviceMethod AWS API Documentation
    #
    class DeviceMethod < Struct.new(
      :device_type,
      :method_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # On success, an empty object is returned.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/Empty AWS API Documentation
    #
    class Empty < Aws::EmptyStructure; end

    # @note When making an API call, you may pass FinalizeDeviceClaimRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] device_id
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/FinalizeDeviceClaimRequest AWS API Documentation
    #
    class FinalizeDeviceClaimRequest < Struct.new(
      :device_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/FinalizeDeviceClaimResponse AWS API Documentation
    #
    class FinalizeDeviceClaimResponse < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   403
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The 403 error message returned by the web server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDeviceMethodsRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "__string", # required
    #       }
    #
    # @!attribute [rw] device_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/GetDeviceMethodsRequest AWS API Documentation
    #
    class GetDeviceMethodsRequest < Struct.new(
      :device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_methods
    #   List of available device APIs.
    #   @return [Array<Types::DeviceMethod>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/GetDeviceMethodsResponse AWS API Documentation
    #
    class GetDeviceMethodsResponse < Struct.new(
      :device_methods)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass InitiateDeviceClaimRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "__string", # required
    #       }
    #
    # @!attribute [rw] device_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/InitiateDeviceClaimRequest AWS API Documentation
    #
    class InitiateDeviceClaimRequest < Struct.new(
      :device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/InitiateDeviceClaimResponse AWS API Documentation
    #
    class InitiateDeviceClaimResponse < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   500
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The 500 error message returned by the web server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/InternalFailureException AWS API Documentation
    #
    class InternalFailureException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   400
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The 400 error message returned by the web server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass InvokeDeviceMethodRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "__string", # required
    #         device_method: {
    #           device_type: "__string",
    #           method_name: "__string",
    #         },
    #         device_method_parameters: "__string",
    #       }
    #
    # @!attribute [rw] device_id
    #   @return [String]
    #
    # @!attribute [rw] device_method
    #   The device method to invoke.
    #   @return [Types::DeviceMethod]
    #
    # @!attribute [rw] device_method_parameters
    #   A JSON encoded string containing the device method request
    #   parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/InvokeDeviceMethodRequest AWS API Documentation
    #
    class InvokeDeviceMethodRequest < Struct.new(
      :device_id,
      :device_method,
      :device_method_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_method_response
    #   A JSON encoded string containing the device method response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/InvokeDeviceMethodResponse AWS API Documentation
    #
    class InvokeDeviceMethodResponse < Struct.new(
      :device_method_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDeviceEventsRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "__string", # required
    #         from_time_stamp: Time.now, # required
    #         max_results: 1,
    #         next_token: "__string",
    #         to_time_stamp: Time.now, # required
    #       }
    #
    # @!attribute [rw] device_id
    #   @return [String]
    #
    # @!attribute [rw] from_time_stamp
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] to_time_stamp
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ListDeviceEventsRequest AWS API Documentation
    #
    class ListDeviceEventsRequest < Struct.new(
      :device_id,
      :from_time_stamp,
      :max_results,
      :next_token,
      :to_time_stamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   @return [Array<Types::DeviceEvent>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ListDeviceEventsResponse AWS API Documentation
    #
    class ListDeviceEventsResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDevicesRequest
    #   data as a hash:
    #
    #       {
    #         device_type: "__string",
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] device_type
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ListDevicesRequest AWS API Documentation
    #
    class ListDevicesRequest < Struct.new(
      :device_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] devices
    #   A list of devices.
    #   @return [Array<Types::DeviceDescription>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ListDevicesResponse AWS API Documentation
    #
    class ListDevicesResponse < Struct.new(
      :devices,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   412
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An error message explaining the error or its remedy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/PreconditionFailedException AWS API Documentation
    #
    class PreconditionFailedException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   416
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The requested number of results specified by nextToken cannot be
    #   satisfied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/RangeNotSatisfiableException AWS API Documentation
    #
    class RangeNotSatisfiableException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   409
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An error message explaining the error or its remedy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ResourceConflictException AWS API Documentation
    #
    class ResourceConflictException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   404
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The requested device could not be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tags: { # required
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UnclaimDeviceRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "__string", # required
    #       }
    #
    # @!attribute [rw] device_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/UnclaimDeviceRequest AWS API Documentation
    #
    class UnclaimDeviceRequest < Struct.new(
      :device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/UnclaimDeviceResponse AWS API Documentation
    #
    class UnclaimDeviceResponse < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tag_keys: ["__string"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDeviceStateRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "__string", # required
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] device_id
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If true, the device is enabled. If false, the device is disabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/UpdateDeviceStateRequest AWS API Documentation
    #
    class UpdateDeviceStateRequest < Struct.new(
      :device_id,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/UpdateDeviceStateResponse AWS API Documentation
    #
    class UpdateDeviceStateResponse < Aws::EmptyStructure; end

  end
end
