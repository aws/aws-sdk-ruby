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
    BaselineArn = Shapes::StringShape.new(name: 'BaselineArn')
    BaselineOperation = Shapes::StructureShape.new(name: 'BaselineOperation')
    BaselineOperationStatus = Shapes::StringShape.new(name: 'BaselineOperationStatus')
    BaselineOperationType = Shapes::StringShape.new(name: 'BaselineOperationType')
    BaselineSummary = Shapes::StructureShape.new(name: 'BaselineSummary')
    BaselineVersion = Shapes::StringShape.new(name: 'BaselineVersion')
    Baselines = Shapes::ListShape.new(name: 'Baselines')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ControlIdentifier = Shapes::StringShape.new(name: 'ControlIdentifier')
    ControlIdentifiers = Shapes::ListShape.new(name: 'ControlIdentifiers')
    ControlOperation = Shapes::StructureShape.new(name: 'ControlOperation')
    ControlOperationFilter = Shapes::StructureShape.new(name: 'ControlOperationFilter')
    ControlOperationStatus = Shapes::StringShape.new(name: 'ControlOperationStatus')
    ControlOperationStatuses = Shapes::ListShape.new(name: 'ControlOperationStatuses')
    ControlOperationSummary = Shapes::StructureShape.new(name: 'ControlOperationSummary')
    ControlOperationType = Shapes::StringShape.new(name: 'ControlOperationType')
    ControlOperationTypes = Shapes::ListShape.new(name: 'ControlOperationTypes')
    ControlOperations = Shapes::ListShape.new(name: 'ControlOperations')
    CreateLandingZoneInput = Shapes::StructureShape.new(name: 'CreateLandingZoneInput')
    CreateLandingZoneOutput = Shapes::StructureShape.new(name: 'CreateLandingZoneOutput')
    DeleteLandingZoneInput = Shapes::StructureShape.new(name: 'DeleteLandingZoneInput')
    DeleteLandingZoneOutput = Shapes::StructureShape.new(name: 'DeleteLandingZoneOutput')
    DisableBaselineInput = Shapes::StructureShape.new(name: 'DisableBaselineInput')
    DisableBaselineOutput = Shapes::StructureShape.new(name: 'DisableBaselineOutput')
    DisableControlInput = Shapes::StructureShape.new(name: 'DisableControlInput')
    DisableControlOutput = Shapes::StructureShape.new(name: 'DisableControlOutput')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    DriftStatus = Shapes::StringShape.new(name: 'DriftStatus')
    DriftStatusSummary = Shapes::StructureShape.new(name: 'DriftStatusSummary')
    DriftStatuses = Shapes::ListShape.new(name: 'DriftStatuses')
    EnableBaselineInput = Shapes::StructureShape.new(name: 'EnableBaselineInput')
    EnableBaselineOutput = Shapes::StructureShape.new(name: 'EnableBaselineOutput')
    EnableControlInput = Shapes::StructureShape.new(name: 'EnableControlInput')
    EnableControlOutput = Shapes::StructureShape.new(name: 'EnableControlOutput')
    EnabledBaselineBaselineIdentifiers = Shapes::ListShape.new(name: 'EnabledBaselineBaselineIdentifiers')
    EnabledBaselineDetails = Shapes::StructureShape.new(name: 'EnabledBaselineDetails')
    EnabledBaselineDriftStatus = Shapes::StringShape.new(name: 'EnabledBaselineDriftStatus')
    EnabledBaselineDriftStatusSummary = Shapes::StructureShape.new(name: 'EnabledBaselineDriftStatusSummary')
    EnabledBaselineDriftStatuses = Shapes::ListShape.new(name: 'EnabledBaselineDriftStatuses')
    EnabledBaselineDriftTypes = Shapes::StructureShape.new(name: 'EnabledBaselineDriftTypes')
    EnabledBaselineEnablementStatuses = Shapes::ListShape.new(name: 'EnabledBaselineEnablementStatuses')
    EnabledBaselineFilter = Shapes::StructureShape.new(name: 'EnabledBaselineFilter')
    EnabledBaselineInheritanceDrift = Shapes::StructureShape.new(name: 'EnabledBaselineInheritanceDrift')
    EnabledBaselineParameter = Shapes::StructureShape.new(name: 'EnabledBaselineParameter')
    EnabledBaselineParameterDocument = Shapes::DocumentShape.new(name: 'EnabledBaselineParameterDocument', document: true)
    EnabledBaselineParameterSummaries = Shapes::ListShape.new(name: 'EnabledBaselineParameterSummaries')
    EnabledBaselineParameterSummary = Shapes::StructureShape.new(name: 'EnabledBaselineParameterSummary')
    EnabledBaselineParameters = Shapes::ListShape.new(name: 'EnabledBaselineParameters')
    EnabledBaselineParentIdentifiers = Shapes::ListShape.new(name: 'EnabledBaselineParentIdentifiers')
    EnabledBaselineSummary = Shapes::StructureShape.new(name: 'EnabledBaselineSummary')
    EnabledBaselineTargetIdentifiers = Shapes::ListShape.new(name: 'EnabledBaselineTargetIdentifiers')
    EnabledBaselines = Shapes::ListShape.new(name: 'EnabledBaselines')
    EnabledControlDetails = Shapes::StructureShape.new(name: 'EnabledControlDetails')
    EnabledControlDriftTypes = Shapes::StructureShape.new(name: 'EnabledControlDriftTypes')
    EnabledControlFilter = Shapes::StructureShape.new(name: 'EnabledControlFilter')
    EnabledControlIdentifiers = Shapes::ListShape.new(name: 'EnabledControlIdentifiers')
    EnabledControlInheritanceDrift = Shapes::StructureShape.new(name: 'EnabledControlInheritanceDrift')
    EnabledControlParameter = Shapes::StructureShape.new(name: 'EnabledControlParameter')
    EnabledControlParameterSummaries = Shapes::ListShape.new(name: 'EnabledControlParameterSummaries')
    EnabledControlParameterSummary = Shapes::StructureShape.new(name: 'EnabledControlParameterSummary')
    EnabledControlParameters = Shapes::ListShape.new(name: 'EnabledControlParameters')
    EnabledControlResourceDrift = Shapes::StructureShape.new(name: 'EnabledControlResourceDrift')
    EnabledControlSummary = Shapes::StructureShape.new(name: 'EnabledControlSummary')
    EnabledControls = Shapes::ListShape.new(name: 'EnabledControls')
    EnablementStatus = Shapes::StringShape.new(name: 'EnablementStatus')
    EnablementStatusSummary = Shapes::StructureShape.new(name: 'EnablementStatusSummary')
    EnablementStatuses = Shapes::ListShape.new(name: 'EnablementStatuses')
    GetBaselineInput = Shapes::StructureShape.new(name: 'GetBaselineInput')
    GetBaselineOperationInput = Shapes::StructureShape.new(name: 'GetBaselineOperationInput')
    GetBaselineOperationOutput = Shapes::StructureShape.new(name: 'GetBaselineOperationOutput')
    GetBaselineOutput = Shapes::StructureShape.new(name: 'GetBaselineOutput')
    GetControlOperationInput = Shapes::StructureShape.new(name: 'GetControlOperationInput')
    GetControlOperationOutput = Shapes::StructureShape.new(name: 'GetControlOperationOutput')
    GetEnabledBaselineInput = Shapes::StructureShape.new(name: 'GetEnabledBaselineInput')
    GetEnabledBaselineOutput = Shapes::StructureShape.new(name: 'GetEnabledBaselineOutput')
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
    LandingZoneOperationFilter = Shapes::StructureShape.new(name: 'LandingZoneOperationFilter')
    LandingZoneOperationStatus = Shapes::StringShape.new(name: 'LandingZoneOperationStatus')
    LandingZoneOperationStatuses = Shapes::ListShape.new(name: 'LandingZoneOperationStatuses')
    LandingZoneOperationSummary = Shapes::StructureShape.new(name: 'LandingZoneOperationSummary')
    LandingZoneOperationType = Shapes::StringShape.new(name: 'LandingZoneOperationType')
    LandingZoneOperationTypes = Shapes::ListShape.new(name: 'LandingZoneOperationTypes')
    LandingZoneOperations = Shapes::ListShape.new(name: 'LandingZoneOperations')
    LandingZoneStatus = Shapes::StringShape.new(name: 'LandingZoneStatus')
    LandingZoneSummary = Shapes::StructureShape.new(name: 'LandingZoneSummary')
    LandingZoneVersion = Shapes::StringShape.new(name: 'LandingZoneVersion')
    ListBaselinesInput = Shapes::StructureShape.new(name: 'ListBaselinesInput')
    ListBaselinesMaxResults = Shapes::IntegerShape.new(name: 'ListBaselinesMaxResults')
    ListBaselinesOutput = Shapes::StructureShape.new(name: 'ListBaselinesOutput')
    ListControlOperationsInput = Shapes::StructureShape.new(name: 'ListControlOperationsInput')
    ListControlOperationsMaxResults = Shapes::IntegerShape.new(name: 'ListControlOperationsMaxResults')
    ListControlOperationsNextToken = Shapes::StringShape.new(name: 'ListControlOperationsNextToken')
    ListControlOperationsOutput = Shapes::StructureShape.new(name: 'ListControlOperationsOutput')
    ListEnabledBaselinesInput = Shapes::StructureShape.new(name: 'ListEnabledBaselinesInput')
    ListEnabledBaselinesMaxResults = Shapes::IntegerShape.new(name: 'ListEnabledBaselinesMaxResults')
    ListEnabledBaselinesNextToken = Shapes::StringShape.new(name: 'ListEnabledBaselinesNextToken')
    ListEnabledBaselinesOutput = Shapes::StructureShape.new(name: 'ListEnabledBaselinesOutput')
    ListEnabledControlsInput = Shapes::StructureShape.new(name: 'ListEnabledControlsInput')
    ListEnabledControlsOutput = Shapes::StructureShape.new(name: 'ListEnabledControlsOutput')
    ListLandingZoneOperationsInput = Shapes::StructureShape.new(name: 'ListLandingZoneOperationsInput')
    ListLandingZoneOperationsMaxResults = Shapes::IntegerShape.new(name: 'ListLandingZoneOperationsMaxResults')
    ListLandingZoneOperationsOutput = Shapes::StructureShape.new(name: 'ListLandingZoneOperationsOutput')
    ListLandingZonesInput = Shapes::StructureShape.new(name: 'ListLandingZonesInput')
    ListLandingZonesMaxResults = Shapes::IntegerShape.new(name: 'ListLandingZonesMaxResults')
    ListLandingZonesOutput = Shapes::StructureShape.new(name: 'ListLandingZonesOutput')
    ListLandingZonesOutputLandingZonesList = Shapes::ListShape.new(name: 'ListLandingZonesOutputLandingZonesList')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    Manifest = Shapes::DocumentShape.new(name: 'Manifest', document: true)
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    OperationIdentifier = Shapes::StringShape.new(name: 'OperationIdentifier')
    ParentIdentifier = Shapes::StringShape.new(name: 'ParentIdentifier')
    ParentIdentifiers = Shapes::ListShape.new(name: 'ParentIdentifiers')
    Region = Shapes::StructureShape.new(name: 'Region')
    RegionName = Shapes::StringShape.new(name: 'RegionName')
    RemediationType = Shapes::StringShape.new(name: 'RemediationType')
    RemediationTypes = Shapes::ListShape.new(name: 'RemediationTypes')
    ResetEnabledBaselineInput = Shapes::StructureShape.new(name: 'ResetEnabledBaselineInput')
    ResetEnabledBaselineOutput = Shapes::StructureShape.new(name: 'ResetEnabledBaselineOutput')
    ResetEnabledControlInput = Shapes::StructureShape.new(name: 'ResetEnabledControlInput')
    ResetEnabledControlOutput = Shapes::StructureShape.new(name: 'ResetEnabledControlOutput')
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
    TargetIdentifiers = Shapes::ListShape.new(name: 'TargetIdentifiers')
    TargetRegions = Shapes::ListShape.new(name: 'TargetRegions')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateEnabledBaselineInput = Shapes::StructureShape.new(name: 'UpdateEnabledBaselineInput')
    UpdateEnabledBaselineOutput = Shapes::StructureShape.new(name: 'UpdateEnabledBaselineOutput')
    UpdateEnabledControlInput = Shapes::StructureShape.new(name: 'UpdateEnabledControlInput')
    UpdateEnabledControlOutput = Shapes::StructureShape.new(name: 'UpdateEnabledControlOutput')
    UpdateLandingZoneInput = Shapes::StructureShape.new(name: 'UpdateLandingZoneInput')
    UpdateLandingZoneOutput = Shapes::StructureShape.new(name: 'UpdateLandingZoneOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BaselineOperation.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier"))
    BaselineOperation.add_member(:operation_type, Shapes::ShapeRef.new(shape: BaselineOperationType, location_name: "operationType"))
    BaselineOperation.add_member(:status, Shapes::ShapeRef.new(shape: BaselineOperationStatus, location_name: "status"))
    BaselineOperation.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    BaselineOperation.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    BaselineOperation.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    BaselineOperation.struct_class = Types::BaselineOperation

    BaselineSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    BaselineSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    BaselineSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    BaselineSummary.struct_class = Types::BaselineSummary

    Baselines.member = Shapes::ShapeRef.new(shape: BaselineSummary)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ControlIdentifiers.member = Shapes::ShapeRef.new(shape: ControlIdentifier)

    ControlOperation.add_member(:operation_type, Shapes::ShapeRef.new(shape: ControlOperationType, location_name: "operationType"))
    ControlOperation.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "startTime"))
    ControlOperation.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endTime"))
    ControlOperation.add_member(:status, Shapes::ShapeRef.new(shape: ControlOperationStatus, location_name: "status"))
    ControlOperation.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    ControlOperation.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier"))
    ControlOperation.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier"))
    ControlOperation.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier"))
    ControlOperation.add_member(:enabled_control_identifier, Shapes::ShapeRef.new(shape: Arn, location_name: "enabledControlIdentifier"))
    ControlOperation.struct_class = Types::ControlOperation

    ControlOperationFilter.add_member(:control_identifiers, Shapes::ShapeRef.new(shape: ControlIdentifiers, location_name: "controlIdentifiers"))
    ControlOperationFilter.add_member(:target_identifiers, Shapes::ShapeRef.new(shape: TargetIdentifiers, location_name: "targetIdentifiers"))
    ControlOperationFilter.add_member(:enabled_control_identifiers, Shapes::ShapeRef.new(shape: EnabledControlIdentifiers, location_name: "enabledControlIdentifiers"))
    ControlOperationFilter.add_member(:statuses, Shapes::ShapeRef.new(shape: ControlOperationStatuses, location_name: "statuses"))
    ControlOperationFilter.add_member(:control_operation_types, Shapes::ShapeRef.new(shape: ControlOperationTypes, location_name: "controlOperationTypes"))
    ControlOperationFilter.struct_class = Types::ControlOperationFilter

    ControlOperationStatuses.member = Shapes::ShapeRef.new(shape: ControlOperationStatus)

    ControlOperationSummary.add_member(:operation_type, Shapes::ShapeRef.new(shape: ControlOperationType, location_name: "operationType"))
    ControlOperationSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "startTime"))
    ControlOperationSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endTime"))
    ControlOperationSummary.add_member(:status, Shapes::ShapeRef.new(shape: ControlOperationStatus, location_name: "status"))
    ControlOperationSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    ControlOperationSummary.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier"))
    ControlOperationSummary.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier"))
    ControlOperationSummary.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier"))
    ControlOperationSummary.add_member(:enabled_control_identifier, Shapes::ShapeRef.new(shape: Arn, location_name: "enabledControlIdentifier"))
    ControlOperationSummary.struct_class = Types::ControlOperationSummary

    ControlOperationTypes.member = Shapes::ShapeRef.new(shape: ControlOperationType)

    ControlOperations.member = Shapes::ShapeRef.new(shape: ControlOperationSummary)

    CreateLandingZoneInput.add_member(:version, Shapes::ShapeRef.new(shape: LandingZoneVersion, required: true, location_name: "version"))
    CreateLandingZoneInput.add_member(:remediation_types, Shapes::ShapeRef.new(shape: RemediationTypes, location_name: "remediationTypes"))
    CreateLandingZoneInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateLandingZoneInput.add_member(:manifest, Shapes::ShapeRef.new(shape: Manifest, location_name: "manifest"))
    CreateLandingZoneInput.struct_class = Types::CreateLandingZoneInput

    CreateLandingZoneOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    CreateLandingZoneOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    CreateLandingZoneOutput.struct_class = Types::CreateLandingZoneOutput

    DeleteLandingZoneInput.add_member(:landing_zone_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "landingZoneIdentifier"))
    DeleteLandingZoneInput.struct_class = Types::DeleteLandingZoneInput

    DeleteLandingZoneOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    DeleteLandingZoneOutput.struct_class = Types::DeleteLandingZoneOutput

    DisableBaselineInput.add_member(:enabled_baseline_identifier, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "enabledBaselineIdentifier"))
    DisableBaselineInput.struct_class = Types::DisableBaselineInput

    DisableBaselineOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    DisableBaselineOutput.struct_class = Types::DisableBaselineOutput

    DisableControlInput.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier"))
    DisableControlInput.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier"))
    DisableControlInput.add_member(:enabled_control_identifier, Shapes::ShapeRef.new(shape: Arn, location_name: "enabledControlIdentifier"))
    DisableControlInput.struct_class = Types::DisableControlInput

    DisableControlOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    DisableControlOutput.struct_class = Types::DisableControlOutput

    DriftStatusSummary.add_member(:drift_status, Shapes::ShapeRef.new(shape: DriftStatus, location_name: "driftStatus"))
    DriftStatusSummary.add_member(:types, Shapes::ShapeRef.new(shape: EnabledControlDriftTypes, location_name: "types"))
    DriftStatusSummary.struct_class = Types::DriftStatusSummary

    DriftStatuses.member = Shapes::ShapeRef.new(shape: DriftStatus)

    EnableBaselineInput.add_member(:baseline_version, Shapes::ShapeRef.new(shape: BaselineVersion, required: true, location_name: "baselineVersion"))
    EnableBaselineInput.add_member(:parameters, Shapes::ShapeRef.new(shape: EnabledBaselineParameters, location_name: "parameters"))
    EnableBaselineInput.add_member(:baseline_identifier, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "baselineIdentifier"))
    EnableBaselineInput.add_member(:target_identifier, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "targetIdentifier"))
    EnableBaselineInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    EnableBaselineInput.struct_class = Types::EnableBaselineInput

    EnableBaselineOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    EnableBaselineOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    EnableBaselineOutput.struct_class = Types::EnableBaselineOutput

    EnableControlInput.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, required: true, location_name: "controlIdentifier"))
    EnableControlInput.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, required: true, location_name: "targetIdentifier"))
    EnableControlInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    EnableControlInput.add_member(:parameters, Shapes::ShapeRef.new(shape: EnabledControlParameters, location_name: "parameters"))
    EnableControlInput.struct_class = Types::EnableControlInput

    EnableControlOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    EnableControlOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    EnableControlOutput.struct_class = Types::EnableControlOutput

    EnabledBaselineBaselineIdentifiers.member = Shapes::ShapeRef.new(shape: Arn)

    EnabledBaselineDetails.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    EnabledBaselineDetails.add_member(:baseline_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "baselineIdentifier"))
    EnabledBaselineDetails.add_member(:baseline_version, Shapes::ShapeRef.new(shape: String, location_name: "baselineVersion"))
    EnabledBaselineDetails.add_member(:drift_status_summary, Shapes::ShapeRef.new(shape: EnabledBaselineDriftStatusSummary, location_name: "driftStatusSummary"))
    EnabledBaselineDetails.add_member(:target_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "targetIdentifier"))
    EnabledBaselineDetails.add_member(:parent_identifier, Shapes::ShapeRef.new(shape: Arn, location_name: "parentIdentifier"))
    EnabledBaselineDetails.add_member(:status_summary, Shapes::ShapeRef.new(shape: EnablementStatusSummary, required: true, location_name: "statusSummary"))
    EnabledBaselineDetails.add_member(:parameters, Shapes::ShapeRef.new(shape: EnabledBaselineParameterSummaries, location_name: "parameters"))
    EnabledBaselineDetails.struct_class = Types::EnabledBaselineDetails

    EnabledBaselineDriftStatusSummary.add_member(:types, Shapes::ShapeRef.new(shape: EnabledBaselineDriftTypes, location_name: "types"))
    EnabledBaselineDriftStatusSummary.struct_class = Types::EnabledBaselineDriftStatusSummary

    EnabledBaselineDriftStatuses.member = Shapes::ShapeRef.new(shape: EnabledBaselineDriftStatus)

    EnabledBaselineDriftTypes.add_member(:inheritance, Shapes::ShapeRef.new(shape: EnabledBaselineInheritanceDrift, location_name: "inheritance"))
    EnabledBaselineDriftTypes.struct_class = Types::EnabledBaselineDriftTypes

    EnabledBaselineEnablementStatuses.member = Shapes::ShapeRef.new(shape: EnablementStatus)

    EnabledBaselineFilter.add_member(:target_identifiers, Shapes::ShapeRef.new(shape: EnabledBaselineTargetIdentifiers, location_name: "targetIdentifiers"))
    EnabledBaselineFilter.add_member(:baseline_identifiers, Shapes::ShapeRef.new(shape: EnabledBaselineBaselineIdentifiers, location_name: "baselineIdentifiers"))
    EnabledBaselineFilter.add_member(:parent_identifiers, Shapes::ShapeRef.new(shape: EnabledBaselineParentIdentifiers, location_name: "parentIdentifiers"))
    EnabledBaselineFilter.add_member(:statuses, Shapes::ShapeRef.new(shape: EnabledBaselineEnablementStatuses, location_name: "statuses"))
    EnabledBaselineFilter.add_member(:inheritance_drift_statuses, Shapes::ShapeRef.new(shape: EnabledBaselineDriftStatuses, location_name: "inheritanceDriftStatuses"))
    EnabledBaselineFilter.struct_class = Types::EnabledBaselineFilter

    EnabledBaselineInheritanceDrift.add_member(:status, Shapes::ShapeRef.new(shape: EnabledBaselineDriftStatus, location_name: "status"))
    EnabledBaselineInheritanceDrift.struct_class = Types::EnabledBaselineInheritanceDrift

    EnabledBaselineParameter.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "key"))
    EnabledBaselineParameter.add_member(:value, Shapes::ShapeRef.new(shape: EnabledBaselineParameterDocument, required: true, location_name: "value"))
    EnabledBaselineParameter.struct_class = Types::EnabledBaselineParameter

    EnabledBaselineParameterSummaries.member = Shapes::ShapeRef.new(shape: EnabledBaselineParameterSummary)

    EnabledBaselineParameterSummary.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "key"))
    EnabledBaselineParameterSummary.add_member(:value, Shapes::ShapeRef.new(shape: EnabledBaselineParameterDocument, required: true, location_name: "value"))
    EnabledBaselineParameterSummary.struct_class = Types::EnabledBaselineParameterSummary

    EnabledBaselineParameters.member = Shapes::ShapeRef.new(shape: EnabledBaselineParameter)

    EnabledBaselineParentIdentifiers.member = Shapes::ShapeRef.new(shape: Arn)

    EnabledBaselineSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    EnabledBaselineSummary.add_member(:baseline_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "baselineIdentifier"))
    EnabledBaselineSummary.add_member(:baseline_version, Shapes::ShapeRef.new(shape: String, location_name: "baselineVersion"))
    EnabledBaselineSummary.add_member(:drift_status_summary, Shapes::ShapeRef.new(shape: EnabledBaselineDriftStatusSummary, location_name: "driftStatusSummary"))
    EnabledBaselineSummary.add_member(:target_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "targetIdentifier"))
    EnabledBaselineSummary.add_member(:parent_identifier, Shapes::ShapeRef.new(shape: Arn, location_name: "parentIdentifier"))
    EnabledBaselineSummary.add_member(:status_summary, Shapes::ShapeRef.new(shape: EnablementStatusSummary, required: true, location_name: "statusSummary"))
    EnabledBaselineSummary.struct_class = Types::EnabledBaselineSummary

    EnabledBaselineTargetIdentifiers.member = Shapes::ShapeRef.new(shape: Arn)

    EnabledBaselines.member = Shapes::ShapeRef.new(shape: EnabledBaselineSummary)

    EnabledControlDetails.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    EnabledControlDetails.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier"))
    EnabledControlDetails.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier"))
    EnabledControlDetails.add_member(:status_summary, Shapes::ShapeRef.new(shape: EnablementStatusSummary, location_name: "statusSummary"))
    EnabledControlDetails.add_member(:drift_status_summary, Shapes::ShapeRef.new(shape: DriftStatusSummary, location_name: "driftStatusSummary"))
    EnabledControlDetails.add_member(:parent_identifier, Shapes::ShapeRef.new(shape: ParentIdentifier, location_name: "parentIdentifier"))
    EnabledControlDetails.add_member(:target_regions, Shapes::ShapeRef.new(shape: TargetRegions, location_name: "targetRegions"))
    EnabledControlDetails.add_member(:parameters, Shapes::ShapeRef.new(shape: EnabledControlParameterSummaries, location_name: "parameters"))
    EnabledControlDetails.struct_class = Types::EnabledControlDetails

    EnabledControlDriftTypes.add_member(:inheritance, Shapes::ShapeRef.new(shape: EnabledControlInheritanceDrift, location_name: "inheritance"))
    EnabledControlDriftTypes.add_member(:resource, Shapes::ShapeRef.new(shape: EnabledControlResourceDrift, location_name: "resource"))
    EnabledControlDriftTypes.struct_class = Types::EnabledControlDriftTypes

    EnabledControlFilter.add_member(:control_identifiers, Shapes::ShapeRef.new(shape: ControlIdentifiers, location_name: "controlIdentifiers"))
    EnabledControlFilter.add_member(:statuses, Shapes::ShapeRef.new(shape: EnablementStatuses, location_name: "statuses"))
    EnabledControlFilter.add_member(:drift_statuses, Shapes::ShapeRef.new(shape: DriftStatuses, location_name: "driftStatuses"))
    EnabledControlFilter.add_member(:parent_identifiers, Shapes::ShapeRef.new(shape: ParentIdentifiers, location_name: "parentIdentifiers"))
    EnabledControlFilter.add_member(:inheritance_drift_statuses, Shapes::ShapeRef.new(shape: DriftStatuses, location_name: "inheritanceDriftStatuses"))
    EnabledControlFilter.add_member(:resource_drift_statuses, Shapes::ShapeRef.new(shape: DriftStatuses, location_name: "resourceDriftStatuses"))
    EnabledControlFilter.struct_class = Types::EnabledControlFilter

    EnabledControlIdentifiers.member = Shapes::ShapeRef.new(shape: Arn)

    EnabledControlInheritanceDrift.add_member(:status, Shapes::ShapeRef.new(shape: DriftStatus, location_name: "status"))
    EnabledControlInheritanceDrift.struct_class = Types::EnabledControlInheritanceDrift

    EnabledControlParameter.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "key"))
    EnabledControlParameter.add_member(:value, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "value"))
    EnabledControlParameter.struct_class = Types::EnabledControlParameter

    EnabledControlParameterSummaries.member = Shapes::ShapeRef.new(shape: EnabledControlParameterSummary)

    EnabledControlParameterSummary.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "key"))
    EnabledControlParameterSummary.add_member(:value, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "value"))
    EnabledControlParameterSummary.struct_class = Types::EnabledControlParameterSummary

    EnabledControlParameters.member = Shapes::ShapeRef.new(shape: EnabledControlParameter)

    EnabledControlResourceDrift.add_member(:status, Shapes::ShapeRef.new(shape: DriftStatus, location_name: "status"))
    EnabledControlResourceDrift.struct_class = Types::EnabledControlResourceDrift

    EnabledControlSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    EnabledControlSummary.add_member(:control_identifier, Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier"))
    EnabledControlSummary.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier"))
    EnabledControlSummary.add_member(:status_summary, Shapes::ShapeRef.new(shape: EnablementStatusSummary, location_name: "statusSummary"))
    EnabledControlSummary.add_member(:drift_status_summary, Shapes::ShapeRef.new(shape: DriftStatusSummary, location_name: "driftStatusSummary"))
    EnabledControlSummary.add_member(:parent_identifier, Shapes::ShapeRef.new(shape: ParentIdentifier, location_name: "parentIdentifier"))
    EnabledControlSummary.struct_class = Types::EnabledControlSummary

    EnabledControls.member = Shapes::ShapeRef.new(shape: EnabledControlSummary)

    EnablementStatusSummary.add_member(:status, Shapes::ShapeRef.new(shape: EnablementStatus, location_name: "status"))
    EnablementStatusSummary.add_member(:last_operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "lastOperationIdentifier"))
    EnablementStatusSummary.struct_class = Types::EnablementStatusSummary

    EnablementStatuses.member = Shapes::ShapeRef.new(shape: EnablementStatus)

    GetBaselineInput.add_member(:baseline_identifier, Shapes::ShapeRef.new(shape: BaselineArn, required: true, location_name: "baselineIdentifier"))
    GetBaselineInput.struct_class = Types::GetBaselineInput

    GetBaselineOperationInput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    GetBaselineOperationInput.struct_class = Types::GetBaselineOperationInput

    GetBaselineOperationOutput.add_member(:baseline_operation, Shapes::ShapeRef.new(shape: BaselineOperation, required: true, location_name: "baselineOperation"))
    GetBaselineOperationOutput.struct_class = Types::GetBaselineOperationOutput

    GetBaselineOutput.add_member(:arn, Shapes::ShapeRef.new(shape: BaselineArn, required: true, location_name: "arn"))
    GetBaselineOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    GetBaselineOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetBaselineOutput.struct_class = Types::GetBaselineOutput

    GetControlOperationInput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    GetControlOperationInput.struct_class = Types::GetControlOperationInput

    GetControlOperationOutput.add_member(:control_operation, Shapes::ShapeRef.new(shape: ControlOperation, required: true, location_name: "controlOperation"))
    GetControlOperationOutput.struct_class = Types::GetControlOperationOutput

    GetEnabledBaselineInput.add_member(:enabled_baseline_identifier, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "enabledBaselineIdentifier"))
    GetEnabledBaselineInput.struct_class = Types::GetEnabledBaselineInput

    GetEnabledBaselineOutput.add_member(:enabled_baseline_details, Shapes::ShapeRef.new(shape: EnabledBaselineDetails, location_name: "enabledBaselineDetails"))
    GetEnabledBaselineOutput.struct_class = Types::GetEnabledBaselineOutput

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

    LandingZoneDetail.add_member(:version, Shapes::ShapeRef.new(shape: LandingZoneVersion, required: true, location_name: "version"))
    LandingZoneDetail.add_member(:remediation_types, Shapes::ShapeRef.new(shape: RemediationTypes, location_name: "remediationTypes"))
    LandingZoneDetail.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    LandingZoneDetail.add_member(:status, Shapes::ShapeRef.new(shape: LandingZoneStatus, location_name: "status"))
    LandingZoneDetail.add_member(:latest_available_version, Shapes::ShapeRef.new(shape: LandingZoneVersion, location_name: "latestAvailableVersion"))
    LandingZoneDetail.add_member(:drift_status, Shapes::ShapeRef.new(shape: LandingZoneDriftStatusSummary, location_name: "driftStatus"))
    LandingZoneDetail.add_member(:manifest, Shapes::ShapeRef.new(shape: Manifest, required: true, location_name: "manifest"))
    LandingZoneDetail.struct_class = Types::LandingZoneDetail

    LandingZoneDriftStatusSummary.add_member(:status, Shapes::ShapeRef.new(shape: LandingZoneDriftStatus, location_name: "status"))
    LandingZoneDriftStatusSummary.struct_class = Types::LandingZoneDriftStatusSummary

    LandingZoneOperationDetail.add_member(:operation_type, Shapes::ShapeRef.new(shape: LandingZoneOperationType, location_name: "operationType"))
    LandingZoneOperationDetail.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier"))
    LandingZoneOperationDetail.add_member(:status, Shapes::ShapeRef.new(shape: LandingZoneOperationStatus, location_name: "status"))
    LandingZoneOperationDetail.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    LandingZoneOperationDetail.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    LandingZoneOperationDetail.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    LandingZoneOperationDetail.struct_class = Types::LandingZoneOperationDetail

    LandingZoneOperationFilter.add_member(:types, Shapes::ShapeRef.new(shape: LandingZoneOperationTypes, location_name: "types"))
    LandingZoneOperationFilter.add_member(:statuses, Shapes::ShapeRef.new(shape: LandingZoneOperationStatuses, location_name: "statuses"))
    LandingZoneOperationFilter.struct_class = Types::LandingZoneOperationFilter

    LandingZoneOperationStatuses.member = Shapes::ShapeRef.new(shape: LandingZoneOperationStatus)

    LandingZoneOperationSummary.add_member(:operation_type, Shapes::ShapeRef.new(shape: LandingZoneOperationType, location_name: "operationType"))
    LandingZoneOperationSummary.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier"))
    LandingZoneOperationSummary.add_member(:status, Shapes::ShapeRef.new(shape: LandingZoneOperationStatus, location_name: "status"))
    LandingZoneOperationSummary.struct_class = Types::LandingZoneOperationSummary

    LandingZoneOperationTypes.member = Shapes::ShapeRef.new(shape: LandingZoneOperationType)

    LandingZoneOperations.member = Shapes::ShapeRef.new(shape: LandingZoneOperationSummary)

    LandingZoneSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    LandingZoneSummary.struct_class = Types::LandingZoneSummary

    ListBaselinesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBaselinesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListBaselinesMaxResults, location_name: "maxResults"))
    ListBaselinesInput.struct_class = Types::ListBaselinesInput

    ListBaselinesOutput.add_member(:baselines, Shapes::ShapeRef.new(shape: Baselines, required: true, location_name: "baselines"))
    ListBaselinesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBaselinesOutput.struct_class = Types::ListBaselinesOutput

    ListControlOperationsInput.add_member(:filter, Shapes::ShapeRef.new(shape: ControlOperationFilter, location_name: "filter"))
    ListControlOperationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListControlOperationsNextToken, location_name: "nextToken"))
    ListControlOperationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListControlOperationsMaxResults, location_name: "maxResults"))
    ListControlOperationsInput.struct_class = Types::ListControlOperationsInput

    ListControlOperationsOutput.add_member(:control_operations, Shapes::ShapeRef.new(shape: ControlOperations, required: true, location_name: "controlOperations"))
    ListControlOperationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListControlOperationsNextToken, location_name: "nextToken"))
    ListControlOperationsOutput.struct_class = Types::ListControlOperationsOutput

    ListEnabledBaselinesInput.add_member(:filter, Shapes::ShapeRef.new(shape: EnabledBaselineFilter, location_name: "filter"))
    ListEnabledBaselinesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListEnabledBaselinesNextToken, location_name: "nextToken"))
    ListEnabledBaselinesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEnabledBaselinesMaxResults, location_name: "maxResults"))
    ListEnabledBaselinesInput.add_member(:include_children, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeChildren"))
    ListEnabledBaselinesInput.struct_class = Types::ListEnabledBaselinesInput

    ListEnabledBaselinesOutput.add_member(:enabled_baselines, Shapes::ShapeRef.new(shape: EnabledBaselines, required: true, location_name: "enabledBaselines"))
    ListEnabledBaselinesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: ListEnabledBaselinesNextToken, location_name: "nextToken"))
    ListEnabledBaselinesOutput.struct_class = Types::ListEnabledBaselinesOutput

    ListEnabledControlsInput.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier"))
    ListEnabledControlsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEnabledControlsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEnabledControlsInput.add_member(:filter, Shapes::ShapeRef.new(shape: EnabledControlFilter, location_name: "filter"))
    ListEnabledControlsInput.add_member(:include_children, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeChildren"))
    ListEnabledControlsInput.struct_class = Types::ListEnabledControlsInput

    ListEnabledControlsOutput.add_member(:enabled_controls, Shapes::ShapeRef.new(shape: EnabledControls, required: true, location_name: "enabledControls"))
    ListEnabledControlsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEnabledControlsOutput.struct_class = Types::ListEnabledControlsOutput

    ListLandingZoneOperationsInput.add_member(:filter, Shapes::ShapeRef.new(shape: LandingZoneOperationFilter, location_name: "filter"))
    ListLandingZoneOperationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListLandingZoneOperationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListLandingZoneOperationsMaxResults, location_name: "maxResults"))
    ListLandingZoneOperationsInput.struct_class = Types::ListLandingZoneOperationsInput

    ListLandingZoneOperationsOutput.add_member(:landing_zone_operations, Shapes::ShapeRef.new(shape: LandingZoneOperations, required: true, location_name: "landingZoneOperations"))
    ListLandingZoneOperationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListLandingZoneOperationsOutput.struct_class = Types::ListLandingZoneOperationsOutput

    ListLandingZonesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListLandingZonesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListLandingZonesMaxResults, location_name: "maxResults"))
    ListLandingZonesInput.struct_class = Types::ListLandingZonesInput

    ListLandingZonesOutput.add_member(:landing_zones, Shapes::ShapeRef.new(shape: ListLandingZonesOutputLandingZonesList, required: true, location_name: "landingZones"))
    ListLandingZonesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListLandingZonesOutput.struct_class = Types::ListLandingZonesOutput

    ListLandingZonesOutputLandingZonesList.member = Shapes::ShapeRef.new(shape: LandingZoneSummary)

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ParentIdentifiers.member = Shapes::ShapeRef.new(shape: ParentIdentifier)

    Region.add_member(:name, Shapes::ShapeRef.new(shape: RegionName, location_name: "name"))
    Region.struct_class = Types::Region

    RemediationTypes.member = Shapes::ShapeRef.new(shape: RemediationType)

    ResetEnabledBaselineInput.add_member(:enabled_baseline_identifier, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "enabledBaselineIdentifier"))
    ResetEnabledBaselineInput.struct_class = Types::ResetEnabledBaselineInput

    ResetEnabledBaselineOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    ResetEnabledBaselineOutput.struct_class = Types::ResetEnabledBaselineOutput

    ResetEnabledControlInput.add_member(:enabled_control_identifier, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "enabledControlIdentifier"))
    ResetEnabledControlInput.struct_class = Types::ResetEnabledControlInput

    ResetEnabledControlOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    ResetEnabledControlOutput.struct_class = Types::ResetEnabledControlOutput

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

    TargetIdentifiers.member = Shapes::ShapeRef.new(shape: TargetIdentifier)

    TargetRegions.member = Shapes::ShapeRef.new(shape: Region)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateEnabledBaselineInput.add_member(:baseline_version, Shapes::ShapeRef.new(shape: BaselineVersion, required: true, location_name: "baselineVersion"))
    UpdateEnabledBaselineInput.add_member(:parameters, Shapes::ShapeRef.new(shape: EnabledBaselineParameters, location_name: "parameters"))
    UpdateEnabledBaselineInput.add_member(:enabled_baseline_identifier, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "enabledBaselineIdentifier"))
    UpdateEnabledBaselineInput.struct_class = Types::UpdateEnabledBaselineInput

    UpdateEnabledBaselineOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    UpdateEnabledBaselineOutput.struct_class = Types::UpdateEnabledBaselineOutput

    UpdateEnabledControlInput.add_member(:parameters, Shapes::ShapeRef.new(shape: EnabledControlParameters, required: true, location_name: "parameters"))
    UpdateEnabledControlInput.add_member(:enabled_control_identifier, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "enabledControlIdentifier"))
    UpdateEnabledControlInput.struct_class = Types::UpdateEnabledControlInput

    UpdateEnabledControlOutput.add_member(:operation_identifier, Shapes::ShapeRef.new(shape: OperationIdentifier, required: true, location_name: "operationIdentifier"))
    UpdateEnabledControlOutput.struct_class = Types::UpdateEnabledControlOutput

    UpdateLandingZoneInput.add_member(:version, Shapes::ShapeRef.new(shape: LandingZoneVersion, required: true, location_name: "version"))
    UpdateLandingZoneInput.add_member(:remediation_types, Shapes::ShapeRef.new(shape: RemediationTypes, location_name: "remediationTypes"))
    UpdateLandingZoneInput.add_member(:landing_zone_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "landingZoneIdentifier"))
    UpdateLandingZoneInput.add_member(:manifest, Shapes::ShapeRef.new(shape: Manifest, location_name: "manifest"))
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
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "controltower",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disable_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/disable-baseline"
        o.input = Shapes::ShapeRef.new(shape: DisableBaselineInput)
        o.output = Shapes::ShapeRef.new(shape: DisableBaselineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disable_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableControl"
        o.http_method = "POST"
        o.http_request_uri = "/disable-control"
        o.input = Shapes::ShapeRef.new(shape: DisableControlInput)
        o.output = Shapes::ShapeRef.new(shape: DisableControlOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:enable_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/enable-baseline"
        o.input = Shapes::ShapeRef.new(shape: EnableBaselineInput)
        o.output = Shapes::ShapeRef.new(shape: EnableBaselineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:enable_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableControl"
        o.http_method = "POST"
        o.http_request_uri = "/enable-control"
        o.input = Shapes::ShapeRef.new(shape: EnableControlInput)
        o.output = Shapes::ShapeRef.new(shape: EnableControlOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/get-baseline"
        o.input = Shapes::ShapeRef.new(shape: GetBaselineInput)
        o.output = Shapes::ShapeRef.new(shape: GetBaselineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_baseline_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBaselineOperation"
        o.http_method = "POST"
        o.http_request_uri = "/get-baseline-operation"
        o.input = Shapes::ShapeRef.new(shape: GetBaselineOperationInput)
        o.output = Shapes::ShapeRef.new(shape: GetBaselineOperationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_enabled_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnabledBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/get-enabled-baseline"
        o.input = Shapes::ShapeRef.new(shape: GetEnabledBaselineInput)
        o.output = Shapes::ShapeRef.new(shape: GetEnabledBaselineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_baselines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBaselines"
        o.http_method = "POST"
        o.http_request_uri = "/list-baselines"
        o.input = Shapes::ShapeRef.new(shape: ListBaselinesInput)
        o.output = Shapes::ShapeRef.new(shape: ListBaselinesOutput)
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

      api.add_operation(:list_control_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListControlOperations"
        o.http_method = "POST"
        o.http_request_uri = "/list-control-operations"
        o.input = Shapes::ShapeRef.new(shape: ListControlOperationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListControlOperationsOutput)
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

      api.add_operation(:list_enabled_baselines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnabledBaselines"
        o.http_method = "POST"
        o.http_request_uri = "/list-enabled-baselines"
        o.input = Shapes::ShapeRef.new(shape: ListEnabledBaselinesInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnabledBaselinesOutput)
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

      api.add_operation(:list_enabled_controls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnabledControls"
        o.http_method = "POST"
        o.http_request_uri = "/list-enabled-controls"
        o.input = Shapes::ShapeRef.new(shape: ListEnabledControlsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnabledControlsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_landing_zone_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLandingZoneOperations"
        o.http_method = "POST"
        o.http_request_uri = "/list-landingzone-operations"
        o.input = Shapes::ShapeRef.new(shape: ListLandingZoneOperationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListLandingZoneOperationsOutput)
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

      api.add_operation(:reset_enabled_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetEnabledBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/reset-enabled-baseline"
        o.input = Shapes::ShapeRef.new(shape: ResetEnabledBaselineInput)
        o.output = Shapes::ShapeRef.new(shape: ResetEnabledBaselineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:reset_enabled_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetEnabledControl"
        o.http_method = "POST"
        o.http_request_uri = "/reset-enabled-control"
        o.input = Shapes::ShapeRef.new(shape: ResetEnabledControlInput)
        o.output = Shapes::ShapeRef.new(shape: ResetEnabledControlOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:reset_landing_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetLandingZone"
        o.http_method = "POST"
        o.http_request_uri = "/reset-landingzone"
        o.input = Shapes::ShapeRef.new(shape: ResetLandingZoneInput)
        o.output = Shapes::ShapeRef.new(shape: ResetLandingZoneOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:update_enabled_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnabledBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/update-enabled-baseline"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnabledBaselineInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnabledBaselineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_enabled_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnabledControl"
        o.http_method = "POST"
        o.http_request_uri = "/update-enabled-control"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnabledControlInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnabledControlOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_landing_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLandingZone"
        o.http_method = "POST"
        o.http_request_uri = "/update-landingzone"
        o.input = Shapes::ShapeRef.new(shape: UpdateLandingZoneInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateLandingZoneOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
