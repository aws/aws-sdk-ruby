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
    Arn = Shapes::StringShape.new(name: 'Arn')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ControlIdentifier = Shapes::StringShape.new(name: 'ControlIdentifier')
    ControlOperation = Shapes::StructureShape.new(name: 'ControlOperation')
    ControlOperationStatus = Shapes::StringShape.new(name: 'ControlOperationStatus')
    ControlOperationType = Shapes::StringShape.new(name: 'ControlOperationType')
    DisableControlInput = Shapes::StructureShape.new(name: 'DisableControlInput')
    DisableControlOutput = Shapes::StructureShape.new(name: 'DisableControlOutput')
    DriftStatus = Shapes::StringShape.new(name: 'DriftStatus')
    DriftStatusSummary = Shapes::StructureShape.new(name: 'DriftStatusSummary')
    EnableControlInput = Shapes::StructureShape.new(name: 'EnableControlInput')
    EnableControlOutput = Shapes::StructureShape.new(name: 'EnableControlOutput')
    EnabledControlDetails = Shapes::StructureShape.new(name: 'EnabledControlDetails')
    EnabledControlSummary = Shapes::StructureShape.new(name: 'EnabledControlSummary')
    EnabledControls = Shapes::ListShape.new(name: 'EnabledControls')
    EnablementStatus = Shapes::StringShape.new(name: 'EnablementStatus')
    EnablementStatusSummary = Shapes::StructureShape.new(name: 'EnablementStatusSummary')
    GetControlOperationInput = Shapes::StructureShape.new(name: 'GetControlOperationInput')
    GetControlOperationOutput = Shapes::StructureShape.new(name: 'GetControlOperationOutput')
    GetEnabledControlInput = Shapes::StructureShape.new(name: 'GetEnabledControlInput')
    GetEnabledControlOutput = Shapes::StructureShape.new(name: 'GetEnabledControlOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListEnabledControlsInput = Shapes::StructureShape.new(name: 'ListEnabledControlsInput')
    ListEnabledControlsOutput = Shapes::StructureShape.new(name: 'ListEnabledControlsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    OperationIdentifier = Shapes::StringShape.new(name: 'OperationIdentifier')
    Region = Shapes::StructureShape.new(name: 'Region')
    RegionName = Shapes::StringShape.new(name: 'RegionName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetIdentifier = Shapes::StringShape.new(name: 'TargetIdentifier')
    TargetRegions = Shapes::ListShape.new(name: 'TargetRegions')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
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

    DriftStatusSummary.add_member(:drift_status, Shapes::ShapeRef.new(shape: DriftStatus, location_name: "driftStatus"))
    DriftStatusSummary.struct_class = Types::DriftStatusSummary

    EnableControlInput.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, required: true, location_name: "controlIdentifier"))
    EnableControlInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    EnableControlInput.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, required: true, location_name: "targetIdentifier"))
    EnableControlInput.struct_class = Types::EnableControlInput

    EnableControlOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    EnableControlOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    EnableControlOutput.struct_class = Types::EnableControlOutput

    EnabledControlDetails.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    EnabledControlDetails.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier"))
    EnabledControlDetails.add_member(:drift_status_summary, Shapes::ShapeRef.new(shape: DriftStatusSummary, location_name: "driftStatusSummary"))
    EnabledControlDetails.add_member(:status_summary, Shapes::ShapeRef.new(shape: EnablementStatusSummary, location_name: "statusSummary"))
    EnabledControlDetails.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier"))
    EnabledControlDetails.add_member(:target_regions, Shapes::ShapeRef.new(shape: TargetRegions, location_name: "targetRegions"))
    EnabledControlDetails.struct_class = Types::EnabledControlDetails

    EnabledControlSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    EnabledControlSummary.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier"))
    EnabledControlSummary.add_member(:drift_status_summary, Shapes::ShapeRef.new(shape: DriftStatusSummary, location_name: "driftStatusSummary"))
    EnabledControlSummary.add_member(:status_summary, Shapes::ShapeRef.new(shape: EnablementStatusSummary, location_name: "statusSummary"))
    EnabledControlSummary.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier"))
    EnabledControlSummary.struct_class = Types::EnabledControlSummary

    EnabledControls.member = Shapes::ShapeRef.new(shape: EnabledControlSummary)

    EnablementStatusSummary.add_member(:last_operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "lastOperationIdentifier"))
    EnablementStatusSummary.add_member(:status, Shapes::ShapeRef.new(shape: EnablementStatus, location_name: "status"))
    EnablementStatusSummary.struct_class = Types::EnablementStatusSummary

    GetControlOperationInput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    GetControlOperationInput.struct_class = Types::GetControlOperationInput

    GetControlOperationOutput.add_member(:control_operation, Shapes::ShapeRef.new(shape: ControlOperation, required: true, location_name: "controlOperation"))
    GetControlOperationOutput.struct_class = Types::GetControlOperationOutput

    GetEnabledControlInput.add_member(:enabled_control_identifier, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "enabledControlIdentifier"))
    GetEnabledControlInput.struct_class = Types::GetEnabledControlInput

    GetEnabledControlOutput.add_member(:enabled_control_details, Shapes::ShapeRef.new(shape: EnabledControlDetails, required: true, location_name: "enabledControlDetails"))
    GetEnabledControlOutput.struct_class = Types::GetEnabledControlOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListEnabledControlsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEnabledControlsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEnabledControlsInput.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, required: true, location_name: "targetIdentifier"))
    ListEnabledControlsInput.struct_class = Types::ListEnabledControlsInput

    ListEnabledControlsOutput.add_member(:enabled_controls, Shapes::ShapeRef.new(shape: EnabledControls, required: true, location_name: "enabledControls"))
    ListEnabledControlsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEnabledControlsOutput.struct_class = Types::ListEnabledControlsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    Region.add_member(:name, Shapes::ShapeRef.new(shape: RegionName, location_name: "name"))
    Region.struct_class = Types::Region

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TargetRegions.member = Shapes::ShapeRef.new(shape: Region)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

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

      api.add_operation(:get_enabled_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnabledControl"
        o.http_method = "POST"
        o.http_request_uri = "/get-enabled-control"
        o.input = Shapes::ShapeRef.new(shape: GetEnabledControlInput)
        o.output = Shapes::ShapeRef.new(shape: GetEnabledControlOutput)
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
