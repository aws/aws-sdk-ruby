# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ARCZonalShift
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AppliedStatus = Shapes::StringShape.new(name: 'AppliedStatus')
    AppliedWeights = Shapes::MapShape.new(name: 'AppliedWeights')
    AutoshiftAppliedStatus = Shapes::StringShape.new(name: 'AutoshiftAppliedStatus')
    AutoshiftExecutionStatus = Shapes::StringShape.new(name: 'AutoshiftExecutionStatus')
    AutoshiftInResource = Shapes::StructureShape.new(name: 'AutoshiftInResource')
    AutoshiftObserverNotificationStatus = Shapes::StringShape.new(name: 'AutoshiftObserverNotificationStatus')
    AutoshiftSummaries = Shapes::ListShape.new(name: 'AutoshiftSummaries')
    AutoshiftSummary = Shapes::StructureShape.new(name: 'AutoshiftSummary')
    AutoshiftsInResource = Shapes::ListShape.new(name: 'AutoshiftsInResource')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    AvailabilityZones = Shapes::ListShape.new(name: 'AvailabilityZones')
    BlockedDate = Shapes::StringShape.new(name: 'BlockedDate')
    BlockedDates = Shapes::ListShape.new(name: 'BlockedDates')
    BlockedWindow = Shapes::StringShape.new(name: 'BlockedWindow')
    BlockedWindows = Shapes::ListShape.new(name: 'BlockedWindows')
    CancelZonalShiftRequest = Shapes::StructureShape.new(name: 'CancelZonalShiftRequest')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionReason = Shapes::StringShape.new(name: 'ConflictExceptionReason')
    ControlCondition = Shapes::StructureShape.new(name: 'ControlCondition')
    ControlConditionType = Shapes::StringShape.new(name: 'ControlConditionType')
    ControlConditions = Shapes::ListShape.new(name: 'ControlConditions')
    CreatePracticeRunConfigurationRequest = Shapes::StructureShape.new(name: 'CreatePracticeRunConfigurationRequest')
    CreatePracticeRunConfigurationResponse = Shapes::StructureShape.new(name: 'CreatePracticeRunConfigurationResponse')
    DeletePracticeRunConfigurationRequest = Shapes::StructureShape.new(name: 'DeletePracticeRunConfigurationRequest')
    DeletePracticeRunConfigurationResponse = Shapes::StructureShape.new(name: 'DeletePracticeRunConfigurationResponse')
    ExpiresIn = Shapes::StringShape.new(name: 'ExpiresIn')
    ExpiryTime = Shapes::TimestampShape.new(name: 'ExpiryTime')
    GetAutoshiftObserverNotificationStatusRequest = Shapes::StructureShape.new(name: 'GetAutoshiftObserverNotificationStatusRequest')
    GetAutoshiftObserverNotificationStatusResponse = Shapes::StructureShape.new(name: 'GetAutoshiftObserverNotificationStatusResponse')
    GetManagedResourceRequest = Shapes::StructureShape.new(name: 'GetManagedResourceRequest')
    GetManagedResourceResponse = Shapes::StructureShape.new(name: 'GetManagedResourceResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListAutoshiftsRequest = Shapes::StructureShape.new(name: 'ListAutoshiftsRequest')
    ListAutoshiftsResponse = Shapes::StructureShape.new(name: 'ListAutoshiftsResponse')
    ListManagedResourcesRequest = Shapes::StructureShape.new(name: 'ListManagedResourcesRequest')
    ListManagedResourcesResponse = Shapes::StructureShape.new(name: 'ListManagedResourcesResponse')
    ListZonalShiftsRequest = Shapes::StructureShape.new(name: 'ListZonalShiftsRequest')
    ListZonalShiftsResponse = Shapes::StructureShape.new(name: 'ListZonalShiftsResponse')
    ManagedResourceSummaries = Shapes::ListShape.new(name: 'ManagedResourceSummaries')
    ManagedResourceSummary = Shapes::StructureShape.new(name: 'ManagedResourceSummary')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    PracticeRunConfiguration = Shapes::StructureShape.new(name: 'PracticeRunConfiguration')
    PracticeRunOutcome = Shapes::StringShape.new(name: 'PracticeRunOutcome')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    StartTime = Shapes::TimestampShape.new(name: 'StartTime')
    StartZonalShiftRequest = Shapes::StructureShape.new(name: 'StartZonalShiftRequest')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UpdateAutoshiftObserverNotificationStatusRequest = Shapes::StructureShape.new(name: 'UpdateAutoshiftObserverNotificationStatusRequest')
    UpdateAutoshiftObserverNotificationStatusResponse = Shapes::StructureShape.new(name: 'UpdateAutoshiftObserverNotificationStatusResponse')
    UpdatePracticeRunConfigurationRequest = Shapes::StructureShape.new(name: 'UpdatePracticeRunConfigurationRequest')
    UpdatePracticeRunConfigurationResponse = Shapes::StructureShape.new(name: 'UpdatePracticeRunConfigurationResponse')
    UpdateZonalAutoshiftConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateZonalAutoshiftConfigurationRequest')
    UpdateZonalAutoshiftConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateZonalAutoshiftConfigurationResponse')
    UpdateZonalShiftRequest = Shapes::StructureShape.new(name: 'UpdateZonalShiftRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    Weight = Shapes::FloatShape.new(name: 'Weight')
    ZonalAutoshiftStatus = Shapes::StringShape.new(name: 'ZonalAutoshiftStatus')
    ZonalShift = Shapes::StructureShape.new(name: 'ZonalShift')
    ZonalShiftComment = Shapes::StringShape.new(name: 'ZonalShiftComment')
    ZonalShiftId = Shapes::StringShape.new(name: 'ZonalShiftId')
    ZonalShiftInResource = Shapes::StructureShape.new(name: 'ZonalShiftInResource')
    ZonalShiftStatus = Shapes::StringShape.new(name: 'ZonalShiftStatus')
    ZonalShiftSummaries = Shapes::ListShape.new(name: 'ZonalShiftSummaries')
    ZonalShiftSummary = Shapes::StructureShape.new(name: 'ZonalShiftSummary')
    ZonalShiftsInResource = Shapes::ListShape.new(name: 'ZonalShiftsInResource')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AppliedWeights.key = Shapes::ShapeRef.new(shape: AvailabilityZone)
    AppliedWeights.value = Shapes::ShapeRef.new(shape: Weight)

    AutoshiftInResource.add_member(:applied_status, Shapes::ShapeRef.new(shape: AutoshiftAppliedStatus, required: true, location_name: "appliedStatus"))
    AutoshiftInResource.add_member(:away_from, Shapes::ShapeRef.new(shape: AvailabilityZone, required: true, location_name: "awayFrom"))
    AutoshiftInResource.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, required: true, location_name: "startTime"))
    AutoshiftInResource.struct_class = Types::AutoshiftInResource

    AutoshiftSummaries.member = Shapes::ShapeRef.new(shape: AutoshiftSummary)

    AutoshiftSummary.add_member(:away_from, Shapes::ShapeRef.new(shape: AvailabilityZone, required: true, location_name: "awayFrom"))
    AutoshiftSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: ExpiryTime, required: true, location_name: "endTime"))
    AutoshiftSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, required: true, location_name: "startTime"))
    AutoshiftSummary.add_member(:status, Shapes::ShapeRef.new(shape: AutoshiftExecutionStatus, required: true, location_name: "status"))
    AutoshiftSummary.struct_class = Types::AutoshiftSummary

    AutoshiftsInResource.member = Shapes::ShapeRef.new(shape: AutoshiftInResource)

    AvailabilityZones.member = Shapes::ShapeRef.new(shape: AvailabilityZone)

    BlockedDates.member = Shapes::ShapeRef.new(shape: BlockedDate)

    BlockedWindows.member = Shapes::ShapeRef.new(shape: BlockedWindow)

    CancelZonalShiftRequest.add_member(:zonal_shift_id, Shapes::ShapeRef.new(shape: ZonalShiftId, required: true, location: "uri", location_name: "zonalShiftId"))
    CancelZonalShiftRequest.struct_class = Types::CancelZonalShiftRequest

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: ConflictExceptionReason, required: true, location_name: "reason"))
    ConflictException.add_member(:zonal_shift_id, Shapes::ShapeRef.new(shape: String, location_name: "zonalShiftId"))
    ConflictException.struct_class = Types::ConflictException

    ControlCondition.add_member(:alarm_identifier, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "alarmIdentifier"))
    ControlCondition.add_member(:type, Shapes::ShapeRef.new(shape: ControlConditionType, required: true, location_name: "type"))
    ControlCondition.struct_class = Types::ControlCondition

    ControlConditions.member = Shapes::ShapeRef.new(shape: ControlCondition)

    CreatePracticeRunConfigurationRequest.add_member(:blocked_dates, Shapes::ShapeRef.new(shape: BlockedDates, location_name: "blockedDates"))
    CreatePracticeRunConfigurationRequest.add_member(:blocked_windows, Shapes::ShapeRef.new(shape: BlockedWindows, location_name: "blockedWindows"))
    CreatePracticeRunConfigurationRequest.add_member(:blocking_alarms, Shapes::ShapeRef.new(shape: ControlConditions, location_name: "blockingAlarms"))
    CreatePracticeRunConfigurationRequest.add_member(:outcome_alarms, Shapes::ShapeRef.new(shape: ControlConditions, required: true, location_name: "outcomeAlarms"))
    CreatePracticeRunConfigurationRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "resourceIdentifier"))
    CreatePracticeRunConfigurationRequest.struct_class = Types::CreatePracticeRunConfigurationRequest

    CreatePracticeRunConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    CreatePracticeRunConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreatePracticeRunConfigurationResponse.add_member(:practice_run_configuration, Shapes::ShapeRef.new(shape: PracticeRunConfiguration, required: true, location_name: "practiceRunConfiguration"))
    CreatePracticeRunConfigurationResponse.add_member(:zonal_autoshift_status, Shapes::ShapeRef.new(shape: ZonalAutoshiftStatus, required: true, location_name: "zonalAutoshiftStatus"))
    CreatePracticeRunConfigurationResponse.struct_class = Types::CreatePracticeRunConfigurationResponse

    DeletePracticeRunConfigurationRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location: "uri", location_name: "resourceIdentifier"))
    DeletePracticeRunConfigurationRequest.struct_class = Types::DeletePracticeRunConfigurationRequest

    DeletePracticeRunConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    DeletePracticeRunConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    DeletePracticeRunConfigurationResponse.add_member(:zonal_autoshift_status, Shapes::ShapeRef.new(shape: ZonalAutoshiftStatus, required: true, location_name: "zonalAutoshiftStatus"))
    DeletePracticeRunConfigurationResponse.struct_class = Types::DeletePracticeRunConfigurationResponse

    GetAutoshiftObserverNotificationStatusRequest.struct_class = Types::GetAutoshiftObserverNotificationStatusRequest

    GetAutoshiftObserverNotificationStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: AutoshiftObserverNotificationStatus, required: true, location_name: "status"))
    GetAutoshiftObserverNotificationStatusResponse.struct_class = Types::GetAutoshiftObserverNotificationStatusResponse

    GetManagedResourceRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location: "uri", location_name: "resourceIdentifier"))
    GetManagedResourceRequest.struct_class = Types::GetManagedResourceRequest

    GetManagedResourceResponse.add_member(:applied_weights, Shapes::ShapeRef.new(shape: AppliedWeights, required: true, location_name: "appliedWeights"))
    GetManagedResourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
    GetManagedResourceResponse.add_member(:autoshifts, Shapes::ShapeRef.new(shape: AutoshiftsInResource, location_name: "autoshifts"))
    GetManagedResourceResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    GetManagedResourceResponse.add_member(:practice_run_configuration, Shapes::ShapeRef.new(shape: PracticeRunConfiguration, location_name: "practiceRunConfiguration"))
    GetManagedResourceResponse.add_member(:zonal_autoshift_status, Shapes::ShapeRef.new(shape: ZonalAutoshiftStatus, location_name: "zonalAutoshiftStatus"))
    GetManagedResourceResponse.add_member(:zonal_shifts, Shapes::ShapeRef.new(shape: ZonalShiftsInResource, required: true, location_name: "zonalShifts"))
    GetManagedResourceResponse.struct_class = Types::GetManagedResourceResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAutoshiftsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAutoshiftsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListAutoshiftsRequest.add_member(:status, Shapes::ShapeRef.new(shape: AutoshiftExecutionStatus, location: "querystring", location_name: "status"))
    ListAutoshiftsRequest.struct_class = Types::ListAutoshiftsRequest

    ListAutoshiftsResponse.add_member(:items, Shapes::ShapeRef.new(shape: AutoshiftSummaries, location_name: "items"))
    ListAutoshiftsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAutoshiftsResponse.struct_class = Types::ListAutoshiftsResponse

    ListManagedResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListManagedResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListManagedResourcesRequest.struct_class = Types::ListManagedResourcesRequest

    ListManagedResourcesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ManagedResourceSummaries, required: true, location_name: "items"))
    ListManagedResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListManagedResourcesResponse.struct_class = Types::ListManagedResourcesResponse

    ListZonalShiftsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListZonalShiftsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListZonalShiftsRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location: "querystring", location_name: "resourceIdentifier"))
    ListZonalShiftsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ZonalShiftStatus, location: "querystring", location_name: "status"))
    ListZonalShiftsRequest.struct_class = Types::ListZonalShiftsRequest

    ListZonalShiftsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ZonalShiftSummaries, location_name: "items"))
    ListZonalShiftsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListZonalShiftsResponse.struct_class = Types::ListZonalShiftsResponse

    ManagedResourceSummaries.member = Shapes::ShapeRef.new(shape: ManagedResourceSummary)

    ManagedResourceSummary.add_member(:applied_weights, Shapes::ShapeRef.new(shape: AppliedWeights, location_name: "appliedWeights"))
    ManagedResourceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
    ManagedResourceSummary.add_member(:autoshifts, Shapes::ShapeRef.new(shape: AutoshiftsInResource, location_name: "autoshifts"))
    ManagedResourceSummary.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, required: true, location_name: "availabilityZones"))
    ManagedResourceSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ManagedResourceSummary.add_member(:practice_run_status, Shapes::ShapeRef.new(shape: ZonalAutoshiftStatus, location_name: "practiceRunStatus"))
    ManagedResourceSummary.add_member(:zonal_autoshift_status, Shapes::ShapeRef.new(shape: ZonalAutoshiftStatus, location_name: "zonalAutoshiftStatus"))
    ManagedResourceSummary.add_member(:zonal_shifts, Shapes::ShapeRef.new(shape: ZonalShiftsInResource, location_name: "zonalShifts"))
    ManagedResourceSummary.struct_class = Types::ManagedResourceSummary

    PracticeRunConfiguration.add_member(:blocked_dates, Shapes::ShapeRef.new(shape: BlockedDates, location_name: "blockedDates"))
    PracticeRunConfiguration.add_member(:blocked_windows, Shapes::ShapeRef.new(shape: BlockedWindows, location_name: "blockedWindows"))
    PracticeRunConfiguration.add_member(:blocking_alarms, Shapes::ShapeRef.new(shape: ControlConditions, location_name: "blockingAlarms"))
    PracticeRunConfiguration.add_member(:outcome_alarms, Shapes::ShapeRef.new(shape: ControlConditions, required: true, location_name: "outcomeAlarms"))
    PracticeRunConfiguration.struct_class = Types::PracticeRunConfiguration

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    StartZonalShiftRequest.add_member(:away_from, Shapes::ShapeRef.new(shape: AvailabilityZone, required: true, location_name: "awayFrom"))
    StartZonalShiftRequest.add_member(:comment, Shapes::ShapeRef.new(shape: ZonalShiftComment, required: true, location_name: "comment"))
    StartZonalShiftRequest.add_member(:expires_in, Shapes::ShapeRef.new(shape: ExpiresIn, required: true, location_name: "expiresIn"))
    StartZonalShiftRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "resourceIdentifier"))
    StartZonalShiftRequest.struct_class = Types::StartZonalShiftRequest

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateAutoshiftObserverNotificationStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: AutoshiftObserverNotificationStatus, required: true, location_name: "status"))
    UpdateAutoshiftObserverNotificationStatusRequest.struct_class = Types::UpdateAutoshiftObserverNotificationStatusRequest

    UpdateAutoshiftObserverNotificationStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: AutoshiftObserverNotificationStatus, required: true, location_name: "status"))
    UpdateAutoshiftObserverNotificationStatusResponse.struct_class = Types::UpdateAutoshiftObserverNotificationStatusResponse

    UpdatePracticeRunConfigurationRequest.add_member(:blocked_dates, Shapes::ShapeRef.new(shape: BlockedDates, location_name: "blockedDates"))
    UpdatePracticeRunConfigurationRequest.add_member(:blocked_windows, Shapes::ShapeRef.new(shape: BlockedWindows, location_name: "blockedWindows"))
    UpdatePracticeRunConfigurationRequest.add_member(:blocking_alarms, Shapes::ShapeRef.new(shape: ControlConditions, location_name: "blockingAlarms"))
    UpdatePracticeRunConfigurationRequest.add_member(:outcome_alarms, Shapes::ShapeRef.new(shape: ControlConditions, location_name: "outcomeAlarms"))
    UpdatePracticeRunConfigurationRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location: "uri", location_name: "resourceIdentifier"))
    UpdatePracticeRunConfigurationRequest.struct_class = Types::UpdatePracticeRunConfigurationRequest

    UpdatePracticeRunConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    UpdatePracticeRunConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdatePracticeRunConfigurationResponse.add_member(:practice_run_configuration, Shapes::ShapeRef.new(shape: PracticeRunConfiguration, required: true, location_name: "practiceRunConfiguration"))
    UpdatePracticeRunConfigurationResponse.add_member(:zonal_autoshift_status, Shapes::ShapeRef.new(shape: ZonalAutoshiftStatus, required: true, location_name: "zonalAutoshiftStatus"))
    UpdatePracticeRunConfigurationResponse.struct_class = Types::UpdatePracticeRunConfigurationResponse

    UpdateZonalAutoshiftConfigurationRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location: "uri", location_name: "resourceIdentifier"))
    UpdateZonalAutoshiftConfigurationRequest.add_member(:zonal_autoshift_status, Shapes::ShapeRef.new(shape: ZonalAutoshiftStatus, required: true, location_name: "zonalAutoshiftStatus"))
    UpdateZonalAutoshiftConfigurationRequest.struct_class = Types::UpdateZonalAutoshiftConfigurationRequest

    UpdateZonalAutoshiftConfigurationResponse.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "resourceIdentifier"))
    UpdateZonalAutoshiftConfigurationResponse.add_member(:zonal_autoshift_status, Shapes::ShapeRef.new(shape: ZonalAutoshiftStatus, required: true, location_name: "zonalAutoshiftStatus"))
    UpdateZonalAutoshiftConfigurationResponse.struct_class = Types::UpdateZonalAutoshiftConfigurationResponse

    UpdateZonalShiftRequest.add_member(:comment, Shapes::ShapeRef.new(shape: ZonalShiftComment, location_name: "comment"))
    UpdateZonalShiftRequest.add_member(:expires_in, Shapes::ShapeRef.new(shape: ExpiresIn, location_name: "expiresIn"))
    UpdateZonalShiftRequest.add_member(:zonal_shift_id, Shapes::ShapeRef.new(shape: ZonalShiftId, required: true, location: "uri", location_name: "zonalShiftId"))
    UpdateZonalShiftRequest.struct_class = Types::UpdateZonalShiftRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ZonalShift.add_member(:away_from, Shapes::ShapeRef.new(shape: AvailabilityZone, required: true, location_name: "awayFrom"))
    ZonalShift.add_member(:comment, Shapes::ShapeRef.new(shape: ZonalShiftComment, required: true, location_name: "comment"))
    ZonalShift.add_member(:expiry_time, Shapes::ShapeRef.new(shape: ExpiryTime, required: true, location_name: "expiryTime"))
    ZonalShift.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "resourceIdentifier"))
    ZonalShift.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, required: true, location_name: "startTime"))
    ZonalShift.add_member(:status, Shapes::ShapeRef.new(shape: ZonalShiftStatus, required: true, location_name: "status"))
    ZonalShift.add_member(:zonal_shift_id, Shapes::ShapeRef.new(shape: ZonalShiftId, required: true, location_name: "zonalShiftId"))
    ZonalShift.struct_class = Types::ZonalShift

    ZonalShiftInResource.add_member(:applied_status, Shapes::ShapeRef.new(shape: AppliedStatus, required: true, location_name: "appliedStatus"))
    ZonalShiftInResource.add_member(:away_from, Shapes::ShapeRef.new(shape: AvailabilityZone, required: true, location_name: "awayFrom"))
    ZonalShiftInResource.add_member(:comment, Shapes::ShapeRef.new(shape: ZonalShiftComment, required: true, location_name: "comment"))
    ZonalShiftInResource.add_member(:expiry_time, Shapes::ShapeRef.new(shape: ExpiryTime, required: true, location_name: "expiryTime"))
    ZonalShiftInResource.add_member(:practice_run_outcome, Shapes::ShapeRef.new(shape: PracticeRunOutcome, location_name: "practiceRunOutcome"))
    ZonalShiftInResource.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "resourceIdentifier"))
    ZonalShiftInResource.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, required: true, location_name: "startTime"))
    ZonalShiftInResource.add_member(:zonal_shift_id, Shapes::ShapeRef.new(shape: ZonalShiftId, required: true, location_name: "zonalShiftId"))
    ZonalShiftInResource.struct_class = Types::ZonalShiftInResource

    ZonalShiftSummaries.member = Shapes::ShapeRef.new(shape: ZonalShiftSummary)

    ZonalShiftSummary.add_member(:away_from, Shapes::ShapeRef.new(shape: AvailabilityZone, required: true, location_name: "awayFrom"))
    ZonalShiftSummary.add_member(:comment, Shapes::ShapeRef.new(shape: ZonalShiftComment, required: true, location_name: "comment"))
    ZonalShiftSummary.add_member(:expiry_time, Shapes::ShapeRef.new(shape: ExpiryTime, required: true, location_name: "expiryTime"))
    ZonalShiftSummary.add_member(:practice_run_outcome, Shapes::ShapeRef.new(shape: PracticeRunOutcome, location_name: "practiceRunOutcome"))
    ZonalShiftSummary.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "resourceIdentifier"))
    ZonalShiftSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, required: true, location_name: "startTime"))
    ZonalShiftSummary.add_member(:status, Shapes::ShapeRef.new(shape: ZonalShiftStatus, required: true, location_name: "status"))
    ZonalShiftSummary.add_member(:zonal_shift_id, Shapes::ShapeRef.new(shape: ZonalShiftId, required: true, location_name: "zonalShiftId"))
    ZonalShiftSummary.struct_class = Types::ZonalShiftSummary

    ZonalShiftsInResource.member = Shapes::ShapeRef.new(shape: ZonalShiftInResource)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-10-30"

      api.metadata = {
        "apiVersion" => "2022-10-30",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "arc-zonal-shift",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS ARC - Zonal Shift",
        "serviceId" => "ARC Zonal Shift",
        "signatureVersion" => "v4",
        "signingName" => "arc-zonal-shift",
        "uid" => "arc-zonal-shift-2022-10-30",
      }

      api.add_operation(:cancel_zonal_shift, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelZonalShift"
        o.http_method = "DELETE"
        o.http_request_uri = "/zonalshifts/{zonalShiftId}"
        o.input = Shapes::ShapeRef.new(shape: CancelZonalShiftRequest)
        o.output = Shapes::ShapeRef.new(shape: ZonalShift)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_practice_run_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePracticeRunConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/configuration"
        o.input = Shapes::ShapeRef.new(shape: CreatePracticeRunConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePracticeRunConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_practice_run_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePracticeRunConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/configuration/{resourceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeletePracticeRunConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePracticeRunConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_autoshift_observer_notification_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutoshiftObserverNotificationStatus"
        o.http_method = "GET"
        o.http_request_uri = "/autoshift-observer-notification"
        o.input = Shapes::ShapeRef.new(shape: GetAutoshiftObserverNotificationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutoshiftObserverNotificationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_managed_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedResource"
        o.http_method = "GET"
        o.http_request_uri = "/managedresources/{resourceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetManagedResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetManagedResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_autoshifts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutoshifts"
        o.http_method = "GET"
        o.http_request_uri = "/autoshifts"
        o.input = Shapes::ShapeRef.new(shape: ListAutoshiftsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAutoshiftsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedResources"
        o.http_method = "GET"
        o.http_request_uri = "/managedresources"
        o.input = Shapes::ShapeRef.new(shape: ListManagedResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_zonal_shifts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListZonalShifts"
        o.http_method = "GET"
        o.http_request_uri = "/zonalshifts"
        o.input = Shapes::ShapeRef.new(shape: ListZonalShiftsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListZonalShiftsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_zonal_shift, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartZonalShift"
        o.http_method = "POST"
        o.http_request_uri = "/zonalshifts"
        o.input = Shapes::ShapeRef.new(shape: StartZonalShiftRequest)
        o.output = Shapes::ShapeRef.new(shape: ZonalShift)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_autoshift_observer_notification_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAutoshiftObserverNotificationStatus"
        o.http_method = "PUT"
        o.http_request_uri = "/autoshift-observer-notification"
        o.input = Shapes::ShapeRef.new(shape: UpdateAutoshiftObserverNotificationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAutoshiftObserverNotificationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_practice_run_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePracticeRunConfiguration"
        o.http_method = "PATCH"
        o.http_request_uri = "/configuration/{resourceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePracticeRunConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePracticeRunConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_zonal_autoshift_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateZonalAutoshiftConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/managedresources/{resourceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateZonalAutoshiftConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateZonalAutoshiftConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_zonal_shift, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateZonalShift"
        o.http_method = "PATCH"
        o.http_request_uri = "/zonalshifts/{zonalShiftId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateZonalShiftRequest)
        o.output = Shapes::ShapeRef.new(shape: ZonalShift)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
