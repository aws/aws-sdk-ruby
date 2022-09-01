# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ControlTower
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ControlIdentifier = Shapes::StringShape.new(name: 'ControlIdentifier')
    ControlOperation = Shapes::StructureShape.new(name: 'ControlOperation')
    ControlOperationStatus = Shapes::StringShape.new(name: 'ControlOperationStatus')
    ControlOperationType = Shapes::StringShape.new(name: 'ControlOperationType')
    DisableControlInput = Shapes::StructureShape.new(name: 'DisableControlInput')
    DisableControlOutput = Shapes::StructureShape.new(name: 'DisableControlOutput')
    EnableControlInput = Shapes::StructureShape.new(name: 'EnableControlInput')
    EnableControlOutput = Shapes::StructureShape.new(name: 'EnableControlOutput')
    EnabledControlSummary = Shapes::StructureShape.new(name: 'EnabledControlSummary')
    EnabledControls = Shapes::ListShape.new(name: 'EnabledControls')
    GetControlOperationInput = Shapes::StructureShape.new(name: 'GetControlOperationInput')
    GetControlOperationOutput = Shapes::StructureShape.new(name: 'GetControlOperationOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListEnabledControlsInput = Shapes::StructureShape.new(name: 'ListEnabledControlsInput')
    ListEnabledControlsOutput = Shapes::StructureShape.new(name: 'ListEnabledControlsOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    OperationIdentifier = Shapes::StringShape.new(name: 'OperationIdentifier')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TargetIdentifier = Shapes::StringShape.new(name: 'TargetIdentifier')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ControlOperation.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endTime"))
    ControlOperation.add_member(:operation_type, Shapes::ShapeRef.new(shape: ControlOperationType, location_name: "operationType"))
    ControlOperation.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "startTime"))
    ControlOperation.add_member(:status, Shapes::ShapeRef.new(shape: ControlOperationStatus, location_name: "status"))
    ControlOperation.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    ControlOperation.struct_class = Types::ControlOperation

    DisableControlInput.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, required: true, location_name: "controlIdentifier"))
    DisableControlInput.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, required: true, location_name: "targetIdentifier"))
    DisableControlInput.struct_class = Types::DisableControlInput

    DisableControlOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    DisableControlOutput.struct_class = Types::DisableControlOutput

    EnableControlInput.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, required: true, location_name: "controlIdentifier"))
    EnableControlInput.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, required: true, location_name: "targetIdentifier"))
    EnableControlInput.struct_class = Types::EnableControlInput

    EnableControlOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    EnableControlOutput.struct_class = Types::EnableControlOutput

    EnabledControlSummary.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier"))
    EnabledControlSummary.struct_class = Types::EnabledControlSummary

    EnabledControls.member = Shapes::ShapeRef.new(shape: EnabledControlSummary)

    GetControlOperationInput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    GetControlOperationInput.struct_class = Types::GetControlOperationInput

    GetControlOperationOutput.add_member(:control_operation, Shapes::ShapeRef.new(shape: ControlOperation, required: true, location_name: "controlOperation"))
    GetControlOperationOutput.struct_class = Types::GetControlOperationOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListEnabledControlsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEnabledControlsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEnabledControlsInput.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, required: true, location_name: "targetIdentifier"))
    ListEnabledControlsInput.struct_class = Types::ListEnabledControlsInput

    ListEnabledControlsOutput.add_member(:enabled_controls, Shapes::ShapeRef.new(shape: EnabledControls, required: true, location_name: "enabledControls"))
    ListEnabledControlsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEnabledControlsOutput.struct_class = Types::ListEnabledControlsOutput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "controltower",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Control Tower",
        "serviceId" => "ControlTower",
        "signatureVersion" => "v4",
        "signingName" => "controltower",
        "uid" => "controltower-2018-05-10",
      }

      api.add_operation(:disable_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableControl"
        o.http_method = "POST"
        o.http_request_uri = "/disable-control"
        o.input = Shapes::ShapeRef.new(shape: DisableControlInput)
        o.output = Shapes::ShapeRef.new(shape: DisableControlOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:enable_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableControl"
        o.http_method = "POST"
        o.http_request_uri = "/enable-control"
        o.input = Shapes::ShapeRef.new(shape: EnableControlInput)
        o.output = Shapes::ShapeRef.new(shape: EnableControlOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_control_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetControlOperation"
        o.http_method = "POST"
        o.http_request_uri = "/get-control-operation"
        o.input = Shapes::ShapeRef.new(shape: GetControlOperationInput)
        o.output = Shapes::ShapeRef.new(shape: GetControlOperationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_enabled_controls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnabledControls"
        o.http_method = "POST"
        o.http_request_uri = "/list-enabled-controls"
        o.input = Shapes::ShapeRef.new(shape: ListEnabledControlsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnabledControlsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
