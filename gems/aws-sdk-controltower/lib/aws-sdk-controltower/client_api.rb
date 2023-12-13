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
    CreateLandingZoneInput = Shapes::StructureShape.new(name: 'CreateLandingZoneInput')
    CreateLandingZoneOutput = Shapes::StructureShape.new(name: 'CreateLandingZoneOutput')
    DeleteLandingZoneInput = Shapes::StructureShape.new(name: 'DeleteLandingZoneInput')
    DeleteLandingZoneOutput = Shapes::StructureShape.new(name: 'DeleteLandingZoneOutput')
    DisableControlInput = Shapes::StructureShape.new(name: 'DisableControlInput')
    DisableControlOutput = Shapes::StructureShape.new(name: 'DisableControlOutput')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    DriftStatus = Shapes::StringShape.new(name: 'DriftStatus')
    DriftStatusSummary = Shapes::StructureShape.new(name: 'DriftStatusSummary')
    EnableControlInput = Shapes::StructureShape.new(name: 'EnableControlInput')
    EnableControlOutput = Shapes::StructureShape.new(name: 'EnableControlOutput')
    EnabledControlDetails = Shapes::StructureShape.new(name: 'EnabledControlDetails')
    EnabledControlParameter = Shapes::StructureShape.new(name: 'EnabledControlParameter')
    EnabledControlParameterSummaries = Shapes::ListShape.new(name: 'EnabledControlParameterSummaries')
    EnabledControlParameterSummary = Shapes::StructureShape.new(name: 'EnabledControlParameterSummary')
    EnabledControlParameters = Shapes::ListShape.new(name: 'EnabledControlParameters')
    EnabledControlSummary = Shapes::StructureShape.new(name: 'EnabledControlSummary')
    EnabledControls = Shapes::ListShape.new(name: 'EnabledControls')
    EnablementStatus = Shapes::StringShape.new(name: 'EnablementStatus')
    EnablementStatusSummary = Shapes::StructureShape.new(name: 'EnablementStatusSummary')
    GetControlOperationInput = Shapes::StructureShape.new(name: 'GetControlOperationInput')
    GetControlOperationOutput = Shapes::StructureShape.new(name: 'GetControlOperationOutput')
    GetEnabledControlInput = Shapes::StructureShape.new(name: 'GetEnabledControlInput')
    GetEnabledControlOutput = Shapes::StructureShape.new(name: 'GetEnabledControlOutput')
    GetLandingZoneInput = Shapes::StructureShape.new(name: 'GetLandingZoneInput')
    GetLandingZoneOperationInput = Shapes::StructureShape.new(name: 'GetLandingZoneOperationInput')
    GetLandingZoneOperationOutput = Shapes::StructureShape.new(name: 'GetLandingZoneOperationOutput')
    GetLandingZoneOutput = Shapes::StructureShape.new(name: 'GetLandingZoneOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LandingZoneDetail = Shapes::StructureShape.new(name: 'LandingZoneDetail')
    LandingZoneDriftStatus = Shapes::StringShape.new(name: 'LandingZoneDriftStatus')
    LandingZoneDriftStatusSummary = Shapes::StructureShape.new(name: 'LandingZoneDriftStatusSummary')
    LandingZoneOperationDetail = Shapes::StructureShape.new(name: 'LandingZoneOperationDetail')
    LandingZoneOperationStatus = Shapes::StringShape.new(name: 'LandingZoneOperationStatus')
    LandingZoneOperationType = Shapes::StringShape.new(name: 'LandingZoneOperationType')
    LandingZoneStatus = Shapes::StringShape.new(name: 'LandingZoneStatus')
    LandingZoneSummary = Shapes::StructureShape.new(name: 'LandingZoneSummary')
    LandingZoneVersion = Shapes::StringShape.new(name: 'LandingZoneVersion')
    ListEnabledControlsInput = Shapes::StructureShape.new(name: 'ListEnabledControlsInput')
    ListEnabledControlsOutput = Shapes::StructureShape.new(name: 'ListEnabledControlsOutput')
    ListLandingZonesInput = Shapes::StructureShape.new(name: 'ListLandingZonesInput')
    ListLandingZonesMaxResults = Shapes::IntegerShape.new(name: 'ListLandingZonesMaxResults')
    ListLandingZonesOutput = Shapes::StructureShape.new(name: 'ListLandingZonesOutput')
    ListLandingZonesOutputLandingZonesList = Shapes::ListShape.new(name: 'ListLandingZonesOutputLandingZonesList')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    Manifest = Shapes::DocumentShape.new(name: 'Manifest', document: true)
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    OperationIdentifier = Shapes::StringShape.new(name: 'OperationIdentifier')
    Region = Shapes::StructureShape.new(name: 'Region')
    RegionName = Shapes::StringShape.new(name: 'RegionName')
    ResetLandingZoneInput = Shapes::StructureShape.new(name: 'ResetLandingZoneInput')
    ResetLandingZoneOutput = Shapes::StructureShape.new(name: 'ResetLandingZoneOutput')
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
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateEnabledControlInput = Shapes::StructureShape.new(name: 'UpdateEnabledControlInput')
    UpdateEnabledControlOutput = Shapes::StructureShape.new(name: 'UpdateEnabledControlOutput')
    UpdateLandingZoneInput = Shapes::StructureShape.new(name: 'UpdateLandingZoneInput')
    UpdateLandingZoneOutput = Shapes::StructureShape.new(name: 'UpdateLandingZoneOutput')
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

    CreateLandingZoneInput.add_member(:manifest, Shapes::ShapeRef.new(shape: Manifest, required: true, location_name: "manifest"))
    CreateLandingZoneInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateLandingZoneInput.add_member(:version, Shapes::ShapeRef.new(shape: LandingZoneVersion, required: true, location_name: "version"))
    CreateLandingZoneInput.struct_class = Types::CreateLandingZoneInput

    CreateLandingZoneOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    CreateLandingZoneOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    CreateLandingZoneOutput.struct_class = Types::CreateLandingZoneOutput

    DeleteLandingZoneInput.add_member(:landing_zone_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "landingZoneIdentifier"))
    DeleteLandingZoneInput.struct_class = Types::DeleteLandingZoneInput

    DeleteLandingZoneOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    DeleteLandingZoneOutput.struct_class = Types::DeleteLandingZoneOutput

    DisableControlInput.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, required: true, location_name: "controlIdentifier"))
    DisableControlInput.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, required: true, location_name: "targetIdentifier"))
    DisableControlInput.struct_class = Types::DisableControlInput

    DisableControlOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    DisableControlOutput.struct_class = Types::DisableControlOutput

    DriftStatusSummary.add_member(:drift_status, Shapes::ShapeRef.new(shape: DriftStatus, location_name: "driftStatus"))
    DriftStatusSummary.struct_class = Types::DriftStatusSummary

    EnableControlInput.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, required: true, location_name: "controlIdentifier"))
    EnableControlInput.add_member(:parameters, Shapes::ShapeRef.new(shape: EnabledControlParameters, location_name: "parameters"))
    EnableControlInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    EnableControlInput.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, required: true, location_name: "targetIdentifier"))
    EnableControlInput.struct_class = Types::EnableControlInput

    EnableControlOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    EnableControlOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    EnableControlOutput.struct_class = Types::EnableControlOutput

    EnabledControlDetails.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    EnabledControlDetails.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier"))
    EnabledControlDetails.add_member(:drift_status_summary, Shapes::ShapeRef.new(shape: DriftStatusSummary, location_name: "driftStatusSummary"))
    EnabledControlDetails.add_member(:parameters, Shapes::ShapeRef.new(shape: EnabledControlParameterSummaries, location_name: "parameters"))
    EnabledControlDetails.add_member(:status_summary, Shapes::ShapeRef.new(shape: EnablementStatusSummary, location_name: "statusSummary"))
    EnabledControlDetails.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier"))
    EnabledControlDetails.add_member(:target_regions, Shapes::ShapeRef.new(shape: TargetRegions, location_name: "targetRegions"))
    EnabledControlDetails.struct_class = Types::EnabledControlDetails

    EnabledControlParameter.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "key"))
    EnabledControlParameter.add_member(:value, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "value"))
    EnabledControlParameter.struct_class = Types::EnabledControlParameter

    EnabledControlParameterSummaries.member = Shapes::ShapeRef.new(shape: EnabledControlParameterSummary)

    EnabledControlParameterSummary.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "key"))
    EnabledControlParameterSummary.add_member(:value, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "value"))
    EnabledControlParameterSummary.struct_class = Types::EnabledControlParameterSummary

    EnabledControlParameters.member = Shapes::ShapeRef.new(shape: EnabledControlParameter)

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

    GetLandingZoneInput.add_member(:landing_zone_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "landingZoneIdentifier"))
    GetLandingZoneInput.struct_class = Types::GetLandingZoneInput

    GetLandingZoneOperationInput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    GetLandingZoneOperationInput.struct_class = Types::GetLandingZoneOperationInput

    GetLandingZoneOperationOutput.add_member(:operation_details, Shapes::ShapeRef.new(shape: LandingZoneOperationDetail, required: true, location_name: "operationDetails"))
    GetLandingZoneOperationOutput.struct_class = Types::GetLandingZoneOperationOutput

    GetLandingZoneOutput.add_member(:landing_zone, Shapes::ShapeRef.new(shape: LandingZoneDetail, required: true, location_name: "landingZone"))
    GetLandingZoneOutput.struct_class = Types::GetLandingZoneOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LandingZoneDetail.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    LandingZoneDetail.add_member(:drift_status, Shapes::ShapeRef.new(shape: LandingZoneDriftStatusSummary, location_name: "driftStatus"))
    LandingZoneDetail.add_member(:latest_available_version, Shapes::ShapeRef.new(shape: LandingZoneVersion, location_name: "latestAvailableVersion"))
    LandingZoneDetail.add_member(:manifest, Shapes::ShapeRef.new(shape: Manifest, required: true, location_name: "manifest"))
    LandingZoneDetail.add_member(:status, Shapes::ShapeRef.new(shape: LandingZoneStatus, location_name: "status"))
    LandingZoneDetail.add_member(:version, Shapes::ShapeRef.new(shape: LandingZoneVersion, required: true, location_name: "version"))
    LandingZoneDetail.struct_class = Types::LandingZoneDetail

    LandingZoneDriftStatusSummary.add_member(:status, Shapes::ShapeRef.new(shape: LandingZoneDriftStatus, location_name: "status"))
    LandingZoneDriftStatusSummary.struct_class = Types::LandingZoneDriftStatusSummary

    LandingZoneOperationDetail.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    LandingZoneOperationDetail.add_member(:operation_type, Shapes::ShapeRef.new(shape: LandingZoneOperationType, location_name: "operationType"))
    LandingZoneOperationDetail.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    LandingZoneOperationDetail.add_member(:status, Shapes::ShapeRef.new(shape: LandingZoneOperationStatus, location_name: "status"))
    LandingZoneOperationDetail.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    LandingZoneOperationDetail.struct_class = Types::LandingZoneOperationDetail

    LandingZoneSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    LandingZoneSummary.struct_class = Types::LandingZoneSummary

    ListEnabledControlsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEnabledControlsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEnabledControlsInput.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, required: true, location_name: "targetIdentifier"))
    ListEnabledControlsInput.struct_class = Types::ListEnabledControlsInput

    ListEnabledControlsOutput.add_member(:enabled_controls, Shapes::ShapeRef.new(shape: EnabledControls, required: true, location_name: "enabledControls"))
    ListEnabledControlsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEnabledControlsOutput.struct_class = Types::ListEnabledControlsOutput

    ListLandingZonesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListLandingZonesMaxResults, location_name: "maxResults"))
    ListLandingZonesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListLandingZonesInput.struct_class = Types::ListLandingZonesInput

    ListLandingZonesOutput.add_member(:landing_zones, Shapes::ShapeRef.new(shape: ListLandingZonesOutputLandingZonesList, required: true, location_name: "landingZones"))
    ListLandingZonesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListLandingZonesOutput.struct_class = Types::ListLandingZonesOutput

    ListLandingZonesOutputLandingZonesList.member = Shapes::ShapeRef.new(shape: LandingZoneSummary)

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    Region.add_member(:name, Shapes::ShapeRef.new(shape: RegionName, location_name: "name"))
    Region.struct_class = Types::Region

    ResetLandingZoneInput.add_member(:landing_zone_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "landingZoneIdentifier"))
    ResetLandingZoneInput.struct_class = Types::ResetLandingZoneInput

    ResetLandingZoneOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    ResetLandingZoneOutput.struct_class = Types::ResetLandingZoneOutput

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

    UpdateEnabledControlInput.add_member(:enabled_control_identifier, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "enabledControlIdentifier"))
    UpdateEnabledControlInput.add_member(:parameters, Shapes::ShapeRef.new(shape: EnabledControlParameters, required: true, location_name: "parameters"))
    UpdateEnabledControlInput.struct_class = Types::UpdateEnabledControlInput

    UpdateEnabledControlOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    UpdateEnabledControlOutput.struct_class = Types::UpdateEnabledControlOutput

    UpdateLandingZoneInput.add_member(:landing_zone_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "landingZoneIdentifier"))
    UpdateLandingZoneInput.add_member(:manifest, Shapes::ShapeRef.new(shape: Manifest, required: true, location_name: "manifest"))
    UpdateLandingZoneInput.add_member(:version, Shapes::ShapeRef.new(shape: LandingZoneVersion, required: true, location_name: "version"))
    UpdateLandingZoneInput.struct_class = Types::UpdateLandingZoneInput

    UpdateLandingZoneOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    UpdateLandingZoneOutput.struct_class = Types::UpdateLandingZoneOutput

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

      api.add_operation(:create_landing_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLandingZone"
        o.http_method = "POST"
        o.http_request_uri = "/create-landingzone"
        o.input = Shapes::ShapeRef.new(shape: CreateLandingZoneInput)
        o.output = Shapes::ShapeRef.new(shape: CreateLandingZoneOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_landing_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLandingZone"
        o.http_method = "POST"
        o.http_request_uri = "/delete-landingzone"
        o.input = Shapes::ShapeRef.new(shape: DeleteLandingZoneInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteLandingZoneOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

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

      api.add_operation(:get_landing_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLandingZone"
        o.http_method = "POST"
        o.http_request_uri = "/get-landingzone"
        o.input = Shapes::ShapeRef.new(shape: GetLandingZoneInput)
        o.output = Shapes::ShapeRef.new(shape: GetLandingZoneOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_landing_zone_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLandingZoneOperation"
        o.http_method = "POST"
        o.http_request_uri = "/get-landingzone-operation"
        o.input = Shapes::ShapeRef.new(shape: GetLandingZoneOperationInput)
        o.output = Shapes::ShapeRef.new(shape: GetLandingZoneOperationOutput)
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

      api.add_operation(:list_landing_zones, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLandingZones"
        o.http_method = "POST"
        o.http_request_uri = "/list-landingzones"
        o.input = Shapes::ShapeRef.new(shape: ListLandingZonesInput)
        o.output = Shapes::ShapeRef.new(shape: ListLandingZonesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:reset_landing_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetLandingZone"
        o.http_method = "POST"
        o.http_request_uri = "/reset-landingzone"
        o.input = Shapes::ShapeRef.new(shape: ResetLandingZoneInput)
        o.output = Shapes::ShapeRef.new(shape: ResetLandingZoneOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:update_enabled_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnabledControl"
        o.http_method = "POST"
        o.http_request_uri = "/update-enabled-control"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnabledControlInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnabledControlOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_landing_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLandingZone"
        o.http_method = "POST"
        o.http_request_uri = "/update-landingzone"
        o.input = Shapes::ShapeRef.new(shape: UpdateLandingZoneInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateLandingZoneOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
