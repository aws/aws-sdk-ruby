# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoT1ClickDevicesService
  # @api private
  module ClientApi

    include Seahorse::Model

    Attributes = Shapes::StructureShape.new(name: 'Attributes')
    ClaimDevicesByClaimCodeRequest = Shapes::StructureShape.new(name: 'ClaimDevicesByClaimCodeRequest')
    ClaimDevicesByClaimCodeResponse = Shapes::StructureShape.new(name: 'ClaimDevicesByClaimCodeResponse')
    DescribeDeviceRequest = Shapes::StructureShape.new(name: 'DescribeDeviceRequest')
    DescribeDeviceResponse = Shapes::StructureShape.new(name: 'DescribeDeviceResponse')
    Device = Shapes::StructureShape.new(name: 'Device')
    DeviceAttributes = Shapes::MapShape.new(name: 'DeviceAttributes')
    DeviceClaimResponse = Shapes::StructureShape.new(name: 'DeviceClaimResponse')
    DeviceDescription = Shapes::StructureShape.new(name: 'DeviceDescription')
    DeviceEvent = Shapes::StructureShape.new(name: 'DeviceEvent')
    DeviceEventsResponse = Shapes::StructureShape.new(name: 'DeviceEventsResponse')
    DeviceMethod = Shapes::StructureShape.new(name: 'DeviceMethod')
    Empty = Shapes::StructureShape.new(name: 'Empty')
    FinalizeDeviceClaimRequest = Shapes::StructureShape.new(name: 'FinalizeDeviceClaimRequest')
    FinalizeDeviceClaimResponse = Shapes::StructureShape.new(name: 'FinalizeDeviceClaimResponse')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetDeviceMethodsRequest = Shapes::StructureShape.new(name: 'GetDeviceMethodsRequest')
    GetDeviceMethodsResponse = Shapes::StructureShape.new(name: 'GetDeviceMethodsResponse')
    InitiateDeviceClaimRequest = Shapes::StructureShape.new(name: 'InitiateDeviceClaimRequest')
    InitiateDeviceClaimResponse = Shapes::StructureShape.new(name: 'InitiateDeviceClaimResponse')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvokeDeviceMethodRequest = Shapes::StructureShape.new(name: 'InvokeDeviceMethodRequest')
    InvokeDeviceMethodResponse = Shapes::StructureShape.new(name: 'InvokeDeviceMethodResponse')
    ListDeviceEventsRequest = Shapes::StructureShape.new(name: 'ListDeviceEventsRequest')
    ListDeviceEventsResponse = Shapes::StructureShape.new(name: 'ListDeviceEventsResponse')
    ListDevicesRequest = Shapes::StructureShape.new(name: 'ListDevicesRequest')
    ListDevicesResponse = Shapes::StructureShape.new(name: 'ListDevicesResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    PreconditionFailedException = Shapes::StructureShape.new(name: 'PreconditionFailedException')
    RangeNotSatisfiableException = Shapes::StructureShape.new(name: 'RangeNotSatisfiableException')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    UnclaimDeviceRequest = Shapes::StructureShape.new(name: 'UnclaimDeviceRequest')
    UnclaimDeviceResponse = Shapes::StructureShape.new(name: 'UnclaimDeviceResponse')
    UpdateDeviceStateRequest = Shapes::StructureShape.new(name: 'UpdateDeviceStateRequest')
    UpdateDeviceStateResponse = Shapes::StructureShape.new(name: 'UpdateDeviceStateResponse')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __doubleMin0Max100 = Shapes::FloatShape.new(name: '__doubleMin0Max100')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __listOfDeviceDescription = Shapes::ListShape.new(name: '__listOfDeviceDescription')
    __listOfDeviceEvent = Shapes::ListShape.new(name: '__listOfDeviceEvent')
    __listOfDeviceMethod = Shapes::ListShape.new(name: '__listOfDeviceMethod')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMin12Max40 = Shapes::StringShape.new(name: '__stringMin12Max40')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    Attributes.struct_class = Types::Attributes

    ClaimDevicesByClaimCodeRequest.add_member(:claim_code, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "claimCode"))
    ClaimDevicesByClaimCodeRequest.struct_class = Types::ClaimDevicesByClaimCodeRequest

    ClaimDevicesByClaimCodeResponse.add_member(:claim_code, Shapes::ShapeRef.new(shape: __stringMin12Max40, location_name: "claimCode"))
    ClaimDevicesByClaimCodeResponse.add_member(:total, Shapes::ShapeRef.new(shape: __integer, location_name: "total"))
    ClaimDevicesByClaimCodeResponse.struct_class = Types::ClaimDevicesByClaimCodeResponse

    DescribeDeviceRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "deviceId"))
    DescribeDeviceRequest.struct_class = Types::DescribeDeviceRequest

    DescribeDeviceResponse.add_member(:device_description, Shapes::ShapeRef.new(shape: DeviceDescription, location_name: "deviceDescription"))
    DescribeDeviceResponse.struct_class = Types::DescribeDeviceResponse

    Device.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    Device.add_member(:device_id, Shapes::ShapeRef.new(shape: __string, location_name: "deviceId"))
    Device.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "type"))
    Device.struct_class = Types::Device

    DeviceAttributes.key = Shapes::ShapeRef.new(shape: __string)
    DeviceAttributes.value = Shapes::ShapeRef.new(shape: __string)

    DeviceClaimResponse.add_member(:state, Shapes::ShapeRef.new(shape: __string, location_name: "state"))
    DeviceClaimResponse.struct_class = Types::DeviceClaimResponse

    DeviceDescription.add_member(:attributes, Shapes::ShapeRef.new(shape: DeviceAttributes, location_name: "attributes"))
    DeviceDescription.add_member(:device_id, Shapes::ShapeRef.new(shape: __string, location_name: "deviceId"))
    DeviceDescription.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "enabled"))
    DeviceDescription.add_member(:remaining_life, Shapes::ShapeRef.new(shape: __doubleMin0Max100, location_name: "remainingLife"))
    DeviceDescription.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "type"))
    DeviceDescription.struct_class = Types::DeviceDescription

    DeviceEvent.add_member(:device, Shapes::ShapeRef.new(shape: Device, location_name: "device"))
    DeviceEvent.add_member(:std_event, Shapes::ShapeRef.new(shape: __string, location_name: "stdEvent"))
    DeviceEvent.struct_class = Types::DeviceEvent

    DeviceEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: __listOfDeviceEvent, location_name: "events"))
    DeviceEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    DeviceEventsResponse.struct_class = Types::DeviceEventsResponse

    DeviceMethod.add_member(:device_type, Shapes::ShapeRef.new(shape: __string, location_name: "deviceType"))
    DeviceMethod.add_member(:method_name, Shapes::ShapeRef.new(shape: __string, location_name: "methodName"))
    DeviceMethod.struct_class = Types::DeviceMethod

    Empty.struct_class = Types::Empty

    FinalizeDeviceClaimRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "deviceId"))
    FinalizeDeviceClaimRequest.struct_class = Types::FinalizeDeviceClaimRequest

    FinalizeDeviceClaimResponse.add_member(:state, Shapes::ShapeRef.new(shape: __string, location_name: "state"))
    FinalizeDeviceClaimResponse.struct_class = Types::FinalizeDeviceClaimResponse

    GetDeviceMethodsRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "deviceId"))
    GetDeviceMethodsRequest.struct_class = Types::GetDeviceMethodsRequest

    GetDeviceMethodsResponse.add_member(:device_methods, Shapes::ShapeRef.new(shape: __listOfDeviceMethod, location_name: "deviceMethods"))
    GetDeviceMethodsResponse.struct_class = Types::GetDeviceMethodsResponse

    InitiateDeviceClaimRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "deviceId"))
    InitiateDeviceClaimRequest.struct_class = Types::InitiateDeviceClaimRequest

    InitiateDeviceClaimResponse.add_member(:state, Shapes::ShapeRef.new(shape: __string, location_name: "state"))
    InitiateDeviceClaimResponse.struct_class = Types::InitiateDeviceClaimResponse

    InvokeDeviceMethodRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "deviceId"))
    InvokeDeviceMethodRequest.add_member(:device_method, Shapes::ShapeRef.new(shape: DeviceMethod, location_name: "deviceMethod"))
    InvokeDeviceMethodRequest.add_member(:device_method_parameters, Shapes::ShapeRef.new(shape: __string, location_name: "deviceMethodParameters"))
    InvokeDeviceMethodRequest.struct_class = Types::InvokeDeviceMethodRequest

    InvokeDeviceMethodResponse.add_member(:device_method_response, Shapes::ShapeRef.new(shape: __string, location_name: "deviceMethodResponse"))
    InvokeDeviceMethodResponse.struct_class = Types::InvokeDeviceMethodResponse

    ListDeviceEventsRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "deviceId"))
    ListDeviceEventsRequest.add_member(:from_time_stamp, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location: "querystring", location_name: "fromTimeStamp"))
    ListDeviceEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDeviceEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListDeviceEventsRequest.add_member(:to_time_stamp, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location: "querystring", location_name: "toTimeStamp"))
    ListDeviceEventsRequest.struct_class = Types::ListDeviceEventsRequest

    ListDeviceEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: __listOfDeviceEvent, location_name: "events"))
    ListDeviceEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListDeviceEventsResponse.struct_class = Types::ListDeviceEventsResponse

    ListDevicesRequest.add_member(:device_type, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "deviceType"))
    ListDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListDevicesRequest.struct_class = Types::ListDevicesRequest

    ListDevicesResponse.add_member(:devices, Shapes::ShapeRef.new(shape: __listOfDeviceDescription, location_name: "devices"))
    ListDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListDevicesResponse.struct_class = Types::ListDevicesResponse

    UnclaimDeviceRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "deviceId"))
    UnclaimDeviceRequest.struct_class = Types::UnclaimDeviceRequest

    UnclaimDeviceResponse.add_member(:state, Shapes::ShapeRef.new(shape: __string, location_name: "state"))
    UnclaimDeviceResponse.struct_class = Types::UnclaimDeviceResponse

    UpdateDeviceStateRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "deviceId"))
    UpdateDeviceStateRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "enabled"))
    UpdateDeviceStateRequest.struct_class = Types::UpdateDeviceStateRequest

    UpdateDeviceStateResponse.struct_class = Types::UpdateDeviceStateResponse

    __listOfDeviceDescription.member = Shapes::ShapeRef.new(shape: DeviceDescription)

    __listOfDeviceEvent.member = Shapes::ShapeRef.new(shape: DeviceEvent)

    __listOfDeviceMethod.member = Shapes::ShapeRef.new(shape: DeviceMethod)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-14"

      api.metadata = {
        "apiVersion" => "2018-05-14",
        "endpointPrefix" => "devices.iot1click",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS IoT 1-Click Devices Service",
        "serviceId" => "IoT 1Click Devices Service",
        "signatureVersion" => "v4",
        "signingName" => "iot1click",
        "uid" => "devices-2018-05-14",
      }

      api.add_operation(:claim_devices_by_claim_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ClaimDevicesByClaimCode"
        o.http_method = "PUT"
        o.http_request_uri = "/claims/{claimCode}"
        o.input = Shapes::ShapeRef.new(shape: ClaimDevicesByClaimCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: ClaimDevicesByClaimCodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:describe_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDevice"
        o.http_method = "GET"
        o.http_request_uri = "/devices/{deviceId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:finalize_device_claim, Seahorse::Model::Operation.new.tap do |o|
        o.name = "FinalizeDeviceClaim"
        o.http_method = "PUT"
        o.http_request_uri = "/devices/{deviceId}/finalize-claim"
        o.input = Shapes::ShapeRef.new(shape: FinalizeDeviceClaimRequest)
        o.output = Shapes::ShapeRef.new(shape: FinalizeDeviceClaimResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:get_device_methods, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeviceMethods"
        o.http_method = "GET"
        o.http_request_uri = "/devices/{deviceId}/methods"
        o.input = Shapes::ShapeRef.new(shape: GetDeviceMethodsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeviceMethodsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:initiate_device_claim, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InitiateDeviceClaim"
        o.http_method = "PUT"
        o.http_request_uri = "/devices/{deviceId}/initiate-claim"
        o.input = Shapes::ShapeRef.new(shape: InitiateDeviceClaimRequest)
        o.output = Shapes::ShapeRef.new(shape: InitiateDeviceClaimResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:invoke_device_method, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeDeviceMethod"
        o.http_method = "POST"
        o.http_request_uri = "/devices/{deviceId}/methods"
        o.input = Shapes::ShapeRef.new(shape: InvokeDeviceMethodRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeDeviceMethodResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RangeNotSatisfiableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:list_device_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeviceEvents"
        o.http_method = "GET"
        o.http_request_uri = "/devices/{deviceId}/events"
        o.input = Shapes::ShapeRef.new(shape: ListDeviceEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeviceEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RangeNotSatisfiableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevices"
        o.http_method = "GET"
        o.http_request_uri = "/devices"
        o.input = Shapes::ShapeRef.new(shape: ListDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: RangeNotSatisfiableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:unclaim_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UnclaimDevice"
        o.http_method = "PUT"
        o.http_request_uri = "/devices/{deviceId}/unclaim"
        o.input = Shapes::ShapeRef.new(shape: UnclaimDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: UnclaimDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_device_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDeviceState"
        o.http_method = "PUT"
        o.http_request_uri = "/devices/{deviceId}/state"
        o.input = Shapes::ShapeRef.new(shape: UpdateDeviceStateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDeviceStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)
    end

  end
end
