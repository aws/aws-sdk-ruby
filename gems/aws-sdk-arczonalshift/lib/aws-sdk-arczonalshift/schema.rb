# frozen_string_literal: true

# This is generated code!

module Aws::ARCZonalShift
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AllowedWindow = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.arczonalshift#AllowedWindow", name: "AllowedWindow", traits: {"smithy.api#length" => {"min" => 19, "max" => 19}, "smithy.api#pattern" => "^(Mon|Tue|Wed|Thu|Fri|Sat|Sun):[0-9]{2}:[0-9]{2}-(Mon|Tue|Wed|Thu|Fri|Sat|Sun):[0-9]{2}:[0-9]{2}$"})
    AllowedWindows = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.arczonalshift#AllowedWindows", name: "AllowedWindows", traits: {"smithy.api#length" => {"min" => 0, "max" => 15}})
    AppliedStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.arczonalshift#AppliedStatus", name: "AppliedStatus")
    AppliedWeights = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.arczonalshift#AppliedWeights", name: "AppliedWeights")
    AutoshiftAppliedStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.arczonalshift#AutoshiftAppliedStatus", name: "AutoshiftAppliedStatus")
    AutoshiftExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.arczonalshift#AutoshiftExecutionStatus", name: "AutoshiftExecutionStatus")
    AutoshiftInResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#AutoshiftInResource", name: "AutoshiftInResource")
    AutoshiftObserverNotificationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.arczonalshift#AutoshiftObserverNotificationStatus", name: "AutoshiftObserverNotificationStatus")
    AutoshiftSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.arczonalshift#AutoshiftSummaries", name: "AutoshiftSummaries")
    AutoshiftSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#AutoshiftSummary", name: "AutoshiftSummary")
    AutoshiftsInResource = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.arczonalshift#AutoshiftsInResource", name: "AutoshiftsInResource")
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.arczonalshift#AvailabilityZone", name: "AvailabilityZone", traits: {"smithy.api#length" => {"max" => 20}})
    AvailabilityZones = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.arczonalshift#AvailabilityZones", name: "AvailabilityZones")
    BlockedDate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.arczonalshift#BlockedDate", name: "BlockedDate", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[0-9]{4}-[0-9]{2}-[0-9]{2}$"})
    BlockedDates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.arczonalshift#BlockedDates", name: "BlockedDates", traits: {"smithy.api#length" => {"min" => 0, "max" => 15}})
    BlockedWindow = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.arczonalshift#BlockedWindow", name: "BlockedWindow", traits: {"smithy.api#length" => {"min" => 19, "max" => 19}, "smithy.api#pattern" => "^(Mon|Tue|Wed|Thu|Fri|Sat|Sun):[0-9]{2}:[0-9]{2}-(Mon|Tue|Wed|Thu|Fri|Sat|Sun):[0-9]{2}:[0-9]{2}$"})
    BlockedWindows = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.arczonalshift#BlockedWindows", name: "BlockedWindows", traits: {"smithy.api#length" => {"min" => 0, "max" => 15}})
    BlockingAlarms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.arczonalshift#BlockingAlarms", name: "BlockingAlarms", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    CancelPracticeRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#CancelPracticeRunRequest", name: "CancelPracticeRunRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.arczonalshift#ZonalShiftResource"}]})
    CancelPracticeRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#CancelPracticeRunResponse", name: "CancelPracticeRunResponse")
    CancelZonalShiftOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#CancelZonalShiftOutput", name: "CancelZonalShiftOutput")
    CancelZonalShiftRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#CancelZonalShiftRequest", name: "CancelZonalShiftRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.arczonalshift#ZonalShiftResource"}]})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.arczonalshift#ConflictExceptionReason", name: "ConflictExceptionReason")
    ControlCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#ControlCondition", name: "ControlCondition")
    ControlConditionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.arczonalshift#ControlConditionType", name: "ControlConditionType")
    CreatePracticeRunConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#CreatePracticeRunConfigurationRequest", name: "CreatePracticeRunConfigurationRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.arczonalshift#PracticeRunConfigurationResource"}]})
    CreatePracticeRunConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#CreatePracticeRunConfigurationResponse", name: "CreatePracticeRunConfigurationResponse")
    DeletePracticeRunConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#DeletePracticeRunConfigurationRequest", name: "DeletePracticeRunConfigurationRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.arczonalshift#PracticeRunConfigurationResource"}]})
    DeletePracticeRunConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#DeletePracticeRunConfigurationResponse", name: "DeletePracticeRunConfigurationResponse")
    ExpiresIn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.arczonalshift#ExpiresIn", name: "ExpiresIn", traits: {"smithy.api#length" => {"min" => 2, "max" => 5}, "smithy.api#pattern" => "^([1-9][0-9]*)(m|h)$"})
    ExpiryTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.arczonalshift#ExpiryTime", name: "ExpiryTime")
    GetAutoshiftObserverNotificationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#GetAutoshiftObserverNotificationStatusRequest", name: "GetAutoshiftObserverNotificationStatusRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.arczonalshift#AutoshiftObserverNotification"}]})
    GetAutoshiftObserverNotificationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#GetAutoshiftObserverNotificationStatusResponse", name: "GetAutoshiftObserverNotificationStatusResponse")
    GetManagedResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#GetManagedResourceRequest", name: "GetManagedResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.arczonalshift#ManagedResource"}]})
    GetManagedResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#GetManagedResourceResponse", name: "GetManagedResourceResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListAutoshiftsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#ListAutoshiftsRequest", name: "ListAutoshiftsRequest")
    ListAutoshiftsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#ListAutoshiftsResponse", name: "ListAutoshiftsResponse")
    ListManagedResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#ListManagedResourcesRequest", name: "ListManagedResourcesRequest")
    ListManagedResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#ListManagedResourcesResponse", name: "ListManagedResourcesResponse")
    ListZonalShiftsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#ListZonalShiftsRequest", name: "ListZonalShiftsRequest")
    ListZonalShiftsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#ListZonalShiftsResponse", name: "ListZonalShiftsResponse")
    ManagedResourceSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.arczonalshift#ManagedResourceSummaries", name: "ManagedResourceSummaries")
    ManagedResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#ManagedResourceSummary", name: "ManagedResourceSummary")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.arczonalshift#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetricIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.arczonalshift#MetricIdentifier", name: "MetricIdentifier", traits: {"smithy.api#length" => {"min" => 8, "max" => 1024}, "smithy.api#pattern" => "^.*$"})
    OutcomeAlarms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.arczonalshift#OutcomeAlarms", name: "OutcomeAlarms", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PracticeRunConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#PracticeRunConfiguration", name: "PracticeRunConfiguration")
    PracticeRunOutcome = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.arczonalshift#PracticeRunOutcome", name: "PracticeRunOutcome")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.arczonalshift#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 8, "max" => 1024}, "smithy.api#pattern" => "^arn:.*$"})
    ResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.arczonalshift#ResourceIdentifier", name: "ResourceIdentifier", traits: {"smithy.api#length" => {"min" => 8, "max" => 1024}})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.arczonalshift#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ShiftType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.arczonalshift#ShiftType", name: "ShiftType")
    StartPracticeRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#StartPracticeRunRequest", name: "StartPracticeRunRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.arczonalshift#ZonalShifts"}]})
    StartPracticeRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#StartPracticeRunResponse", name: "StartPracticeRunResponse")
    StartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.arczonalshift#StartTime", name: "StartTime")
    StartZonalShiftOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#StartZonalShiftOutput", name: "StartZonalShiftOutput")
    StartZonalShiftRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#StartZonalShiftRequest", name: "StartZonalShiftRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.arczonalshift#ZonalShifts"}]})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UpdateAutoshiftObserverNotificationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#UpdateAutoshiftObserverNotificationStatusRequest", name: "UpdateAutoshiftObserverNotificationStatusRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.arczonalshift#AutoshiftObserverNotification"}]})
    UpdateAutoshiftObserverNotificationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#UpdateAutoshiftObserverNotificationStatusResponse", name: "UpdateAutoshiftObserverNotificationStatusResponse")
    UpdatePracticeRunConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#UpdatePracticeRunConfigurationRequest", name: "UpdatePracticeRunConfigurationRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.arczonalshift#PracticeRunConfigurationResource"}]})
    UpdatePracticeRunConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#UpdatePracticeRunConfigurationResponse", name: "UpdatePracticeRunConfigurationResponse")
    UpdateZonalAutoshiftConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#UpdateZonalAutoshiftConfigurationRequest", name: "UpdateZonalAutoshiftConfigurationRequest")
    UpdateZonalAutoshiftConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#UpdateZonalAutoshiftConfigurationResponse", name: "UpdateZonalAutoshiftConfigurationResponse")
    UpdateZonalShiftOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#UpdateZonalShiftOutput", name: "UpdateZonalShiftOutput")
    UpdateZonalShiftRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#UpdateZonalShiftRequest", name: "UpdateZonalShiftRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.arczonalshift#ZonalShiftResource"}]})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.arczonalshift#ValidationExceptionReason", name: "ValidationExceptionReason")
    Weight = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.arczonalshift#Weight", name: "Weight", traits: {"smithy.api#range" => {"min" => 0.0, "max" => 1.0}})
    ZonalAutoshiftStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.arczonalshift#ZonalAutoshiftStatus", name: "ZonalAutoshiftStatus")
    ZonalShiftComment = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.arczonalshift#ZonalShiftComment", name: "ZonalShiftComment", traits: {"smithy.api#length" => {"max" => 128}})
    ZonalShiftId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.arczonalshift#ZonalShiftId", name: "ZonalShiftId", traits: {"smithy.api#length" => {"min" => 6, "max" => 36}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    ZonalShiftInResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#ZonalShiftInResource", name: "ZonalShiftInResource")
    ZonalShiftStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.arczonalshift#ZonalShiftStatus", name: "ZonalShiftStatus")
    ZonalShiftSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.arczonalshift#ZonalShiftSummaries", name: "ZonalShiftSummaries")
    ZonalShiftSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.arczonalshift#ZonalShiftSummary", name: "ZonalShiftSummary")
    ZonalShiftsInResource = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.arczonalshift#ZonalShiftsInResource", name: "ZonalShiftsInResource")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AllowedWindows.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedWindow, name: "member"))
    AppliedStatus.add_member(:applied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLIED", traits: {"smithy.api#enumValue" => "APPLIED"}))
    AppliedStatus.add_member(:not_applied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLIED", traits: {"smithy.api#enumValue" => "NOT_APPLIED"}))
    AppliedWeights.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "key"))
    AppliedWeights.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Weight, name: "value"))
    AutoshiftAppliedStatus.add_member(:applied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLIED", traits: {"smithy.api#enumValue" => "APPLIED"}))
    AutoshiftAppliedStatus.add_member(:not_applied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLIED", traits: {"smithy.api#enumValue" => "NOT_APPLIED"}))
    AutoshiftExecutionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AutoshiftExecutionStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    AutoshiftInResource.add_member(:applied_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoshiftAppliedStatus, name: "appliedStatus", traits: {"smithy.api#required" => {}}))
    AutoshiftInResource.add_member(:away_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "awayFrom", traits: {"smithy.api#required" => {}}))
    AutoshiftInResource.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "startTime", traits: {"smithy.api#required" => {}}))
    AutoshiftInResource.type = Types::AutoshiftInResource
    AutoshiftObserverNotificationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoshiftObserverNotificationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AutoshiftSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoshiftSummary, name: "member"))
    AutoshiftSummary.add_member(:away_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "awayFrom", traits: {"smithy.api#required" => {}}))
    AutoshiftSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiryTime, name: "endTime"))
    AutoshiftSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "startTime", traits: {"smithy.api#required" => {}}))
    AutoshiftSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoshiftExecutionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AutoshiftSummary.type = Types::AutoshiftSummary
    AutoshiftsInResource.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoshiftInResource, name: "member"))
    AvailabilityZones.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "member"))
    BlockedDates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedDate, name: "member"))
    BlockedWindows.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedWindow, name: "member"))
    BlockingAlarms.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlCondition, name: "member"))
    CancelPracticeRunRequest.add_member(:zonal_shift_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftId, name: "zonalShiftId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelPracticeRunRequest.type = Types::CancelPracticeRunRequest
    CancelPracticeRunResponse.add_member(:zonal_shift_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftId, name: "zonalShiftId", traits: {"smithy.api#required" => {}}))
    CancelPracticeRunResponse.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#required" => {}}))
    CancelPracticeRunResponse.add_member(:away_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "awayFrom", traits: {"smithy.api#required" => {}}))
    CancelPracticeRunResponse.add_member(:expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiryTime, name: "expiryTime", traits: {"smithy.api#required" => {}}))
    CancelPracticeRunResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "startTime", traits: {"smithy.api#required" => {}}))
    CancelPracticeRunResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CancelPracticeRunResponse.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftComment, name: "comment", traits: {"smithy.api#required" => {}}))
    CancelPracticeRunResponse.type = Types::CancelPracticeRunResponse
    CancelZonalShiftOutput.add_member(:zonal_shift_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftId, name: "zonalShiftId", traits: {"smithy.api#required" => {}}))
    CancelZonalShiftOutput.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#required" => {}}))
    CancelZonalShiftOutput.add_member(:away_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "awayFrom", traits: {"smithy.api#required" => {}}))
    CancelZonalShiftOutput.add_member(:expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiryTime, name: "expiryTime", traits: {"smithy.api#required" => {}}))
    CancelZonalShiftOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "startTime", traits: {"smithy.api#required" => {}}))
    CancelZonalShiftOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CancelZonalShiftOutput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftComment, name: "comment", traits: {"smithy.api#required" => {}}))
    CancelZonalShiftOutput.type = Types::CancelZonalShiftOutput
    CancelZonalShiftRequest.add_member(:zonal_shift_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftId, name: "zonalShiftId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelZonalShiftRequest.type = Types::CancelZonalShiftRequest
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:zonal_shift_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "zonalShiftId"))
    ConflictException.type = Types::ConflictException
    ConflictExceptionReason.add_member(:zonal_shift_already_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZONAL_SHIFT_ALREADY_EXISTS", traits: {"smithy.api#enumValue" => "ZonalShiftAlreadyExists"}))
    ConflictExceptionReason.add_member(:zonal_shift_status_not_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZONAL_SHIFT_STATUS_NOT_ACTIVE", traits: {"smithy.api#enumValue" => "ZonalShiftStatusNotActive"}))
    ConflictExceptionReason.add_member(:simultaneous_zonal_shifts_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIMULTANEOUS_ZONAL_SHIFTS_CONFLICT", traits: {"smithy.api#enumValue" => "SimultaneousZonalShiftsConflict"}))
    ConflictExceptionReason.add_member(:practice_configuration_already_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRACTICE_CONFIGURATION_ALREADY_EXISTS", traits: {"smithy.api#enumValue" => "PracticeConfigurationAlreadyExists"}))
    ConflictExceptionReason.add_member(:autoshift_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOSHIFT_ENABLED", traits: {"smithy.api#enumValue" => "AutoShiftEnabled"}))
    ConflictExceptionReason.add_member(:practice_configuration_does_not_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRACTICE_CONFIGURATION_DOES_NOT_EXIST", traits: {"smithy.api#enumValue" => "PracticeConfigurationDoesNotExist"}))
    ConflictExceptionReason.add_member(:zonal_autoshift_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZONAL_AUTOSHIFT_ACTIVE", traits: {"smithy.api#enumValue" => "ZonalAutoshiftActive"}))
    ConflictExceptionReason.add_member(:practice_outcome_alarms_red, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRACTICE_OUTCOME_ALARMS_RED", traits: {"smithy.api#enumValue" => "PracticeOutcomeAlarmsRed"}))
    ConflictExceptionReason.add_member(:practice_blocking_alarms_red, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRACTICE_BLOCKING_ALARMS_RED", traits: {"smithy.api#enumValue" => "PracticeBlockingAlarmsRed"}))
    ConflictExceptionReason.add_member(:practice_in_blocked_dates, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRACTICE_IN_BLOCKED_DATES", traits: {"smithy.api#enumValue" => "PracticeInBlockedDates"}))
    ConflictExceptionReason.add_member(:practice_in_blocked_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRACTICE_IN_BLOCKED_WINDOWS", traits: {"smithy.api#enumValue" => "PracticeInBlockedWindows"}))
    ConflictExceptionReason.add_member(:practice_outside_allowed_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRACTICE_OUTSIDE_ALLOWED_WINDOWS", traits: {"smithy.api#enumValue" => "PracticeOutsideAllowedWindows"}))
    ControlCondition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlConditionType, name: "type", traits: {"smithy.api#required" => {}}))
    ControlCondition.add_member(:alarm_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricIdentifier, name: "alarmIdentifier", traits: {"smithy.api#required" => {}}))
    ControlCondition.type = Types::ControlCondition
    ControlConditionType.add_member(:cloudwatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDWATCH", traits: {"smithy.api#enumValue" => "CLOUDWATCH"}))
    CreatePracticeRunConfigurationRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#required" => {}}))
    CreatePracticeRunConfigurationRequest.add_member(:blocked_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedWindows, name: "blockedWindows"))
    CreatePracticeRunConfigurationRequest.add_member(:blocked_dates, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedDates, name: "blockedDates"))
    CreatePracticeRunConfigurationRequest.add_member(:blocking_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockingAlarms, name: "blockingAlarms"))
    CreatePracticeRunConfigurationRequest.add_member(:allowed_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedWindows, name: "allowedWindows"))
    CreatePracticeRunConfigurationRequest.add_member(:outcome_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: OutcomeAlarms, name: "outcomeAlarms", traits: {"smithy.api#required" => {}}))
    CreatePracticeRunConfigurationRequest.type = Types::CreatePracticeRunConfigurationRequest
    CreatePracticeRunConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreatePracticeRunConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreatePracticeRunConfigurationResponse.add_member(:zonal_autoshift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalAutoshiftStatus, name: "zonalAutoshiftStatus", traits: {"smithy.api#required" => {}}))
    CreatePracticeRunConfigurationResponse.add_member(:practice_run_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PracticeRunConfiguration, name: "practiceRunConfiguration", traits: {"smithy.api#required" => {}}))
    CreatePracticeRunConfigurationResponse.type = Types::CreatePracticeRunConfigurationResponse
    DeletePracticeRunConfigurationRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePracticeRunConfigurationRequest.type = Types::DeletePracticeRunConfigurationRequest
    DeletePracticeRunConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeletePracticeRunConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    DeletePracticeRunConfigurationResponse.add_member(:zonal_autoshift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalAutoshiftStatus, name: "zonalAutoshiftStatus", traits: {"smithy.api#required" => {}}))
    DeletePracticeRunConfigurationResponse.type = Types::DeletePracticeRunConfigurationResponse
    GetAutoshiftObserverNotificationStatusRequest.type = Types::GetAutoshiftObserverNotificationStatusRequest
    GetAutoshiftObserverNotificationStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoshiftObserverNotificationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetAutoshiftObserverNotificationStatusResponse.type = Types::GetAutoshiftObserverNotificationStatusResponse
    GetManagedResourceRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedResourceRequest.type = Types::GetManagedResourceRequest
    GetManagedResourceResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn"))
    GetManagedResourceResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    GetManagedResourceResponse.add_member(:applied_weights, ::Smithy::Schema::Shapes::MemberShape.new(target: AppliedWeights, name: "appliedWeights", traits: {"smithy.api#required" => {}}))
    GetManagedResourceResponse.add_member(:zonal_shifts, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftsInResource, name: "zonalShifts", traits: {"smithy.api#required" => {}}))
    GetManagedResourceResponse.add_member(:autoshifts, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoshiftsInResource, name: "autoshifts"))
    GetManagedResourceResponse.add_member(:practice_run_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PracticeRunConfiguration, name: "practiceRunConfiguration"))
    GetManagedResourceResponse.add_member(:zonal_autoshift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalAutoshiftStatus, name: "zonalAutoshiftStatus"))
    GetManagedResourceResponse.type = Types::GetManagedResourceResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    ListAutoshiftsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAutoshiftsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoshiftExecutionStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListAutoshiftsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAutoshiftsRequest.type = Types::ListAutoshiftsRequest
    ListAutoshiftsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoshiftSummaries, name: "items"))
    ListAutoshiftsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListAutoshiftsResponse.type = Types::ListAutoshiftsResponse
    ListManagedResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListManagedResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListManagedResourcesRequest.type = Types::ListManagedResourcesRequest
    ListManagedResourcesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceSummaries, name: "items", traits: {"smithy.api#required" => {}}))
    ListManagedResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListManagedResourcesResponse.type = Types::ListManagedResourcesResponse
    ListZonalShiftsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListZonalShiftsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListZonalShiftsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListZonalShiftsRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#httpQuery" => "resourceIdentifier"}))
    ListZonalShiftsRequest.type = Types::ListZonalShiftsRequest
    ListZonalShiftsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftSummaries, name: "items"))
    ListZonalShiftsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListZonalShiftsResponse.type = Types::ListZonalShiftsResponse
    ManagedResourceSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceSummary, name: "member"))
    ManagedResourceSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn"))
    ManagedResourceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ManagedResourceSummary.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "availabilityZones", traits: {"smithy.api#required" => {}}))
    ManagedResourceSummary.add_member(:applied_weights, ::Smithy::Schema::Shapes::MemberShape.new(target: AppliedWeights, name: "appliedWeights"))
    ManagedResourceSummary.add_member(:zonal_shifts, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftsInResource, name: "zonalShifts"))
    ManagedResourceSummary.add_member(:autoshifts, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoshiftsInResource, name: "autoshifts"))
    ManagedResourceSummary.add_member(:zonal_autoshift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalAutoshiftStatus, name: "zonalAutoshiftStatus"))
    ManagedResourceSummary.add_member(:practice_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalAutoshiftStatus, name: "practiceRunStatus"))
    ManagedResourceSummary.type = Types::ManagedResourceSummary
    OutcomeAlarms.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlCondition, name: "member"))
    PracticeRunConfiguration.add_member(:blocking_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockingAlarms, name: "blockingAlarms"))
    PracticeRunConfiguration.add_member(:outcome_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: OutcomeAlarms, name: "outcomeAlarms", traits: {"smithy.api#required" => {}}))
    PracticeRunConfiguration.add_member(:blocked_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedWindows, name: "blockedWindows"))
    PracticeRunConfiguration.add_member(:allowed_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedWindows, name: "allowedWindows"))
    PracticeRunConfiguration.add_member(:blocked_dates, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedDates, name: "blockedDates", traits: {"smithy.api#default" => []}))
    PracticeRunConfiguration.type = Types::PracticeRunConfiguration
    PracticeRunOutcome.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    PracticeRunOutcome.add_member(:interrupted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERRUPTED", traits: {"smithy.api#enumValue" => "INTERRUPTED"}))
    PracticeRunOutcome.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    PracticeRunOutcome.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    PracticeRunOutcome.add_member(:capacity_check_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPACITY_CHECK_FAILED", traits: {"smithy.api#enumValue" => "CAPACITY_CHECK_FAILED"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ShiftType.add_member(:zonal_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZONAL_SHIFT", traits: {"smithy.api#enumValue" => "ZONAL_SHIFT"}))
    ShiftType.add_member(:practice_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRACTICE_RUN", traits: {"smithy.api#enumValue" => "PRACTICE_RUN"}))
    ShiftType.add_member(:fis_experiment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIS_EXPERIMENT", traits: {"smithy.api#enumValue" => "FIS_EXPERIMENT"}))
    ShiftType.add_member(:zonal_autoshift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZONAL_AUTOSHIFT", traits: {"smithy.api#enumValue" => "ZONAL_AUTOSHIFT"}))
    StartPracticeRunRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#required" => {}}))
    StartPracticeRunRequest.add_member(:away_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "awayFrom", traits: {"smithy.api#required" => {}}))
    StartPracticeRunRequest.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftComment, name: "comment", traits: {"smithy.api#required" => {}}))
    StartPracticeRunRequest.type = Types::StartPracticeRunRequest
    StartPracticeRunResponse.add_member(:zonal_shift_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftId, name: "zonalShiftId", traits: {"smithy.api#required" => {}}))
    StartPracticeRunResponse.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#required" => {}}))
    StartPracticeRunResponse.add_member(:away_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "awayFrom", traits: {"smithy.api#required" => {}}))
    StartPracticeRunResponse.add_member(:expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiryTime, name: "expiryTime", traits: {"smithy.api#required" => {}}))
    StartPracticeRunResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "startTime", traits: {"smithy.api#required" => {}}))
    StartPracticeRunResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StartPracticeRunResponse.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftComment, name: "comment", traits: {"smithy.api#required" => {}}))
    StartPracticeRunResponse.type = Types::StartPracticeRunResponse
    StartZonalShiftOutput.add_member(:zonal_shift_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftId, name: "zonalShiftId", traits: {"smithy.api#required" => {}}))
    StartZonalShiftOutput.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#required" => {}}))
    StartZonalShiftOutput.add_member(:away_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "awayFrom", traits: {"smithy.api#required" => {}}))
    StartZonalShiftOutput.add_member(:expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiryTime, name: "expiryTime", traits: {"smithy.api#required" => {}}))
    StartZonalShiftOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "startTime", traits: {"smithy.api#required" => {}}))
    StartZonalShiftOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StartZonalShiftOutput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftComment, name: "comment", traits: {"smithy.api#required" => {}}))
    StartZonalShiftOutput.type = Types::StartZonalShiftOutput
    StartZonalShiftRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#required" => {}}))
    StartZonalShiftRequest.add_member(:away_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "awayFrom", traits: {"smithy.api#required" => {}}))
    StartZonalShiftRequest.add_member(:expires_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiresIn, name: "expiresIn", traits: {"smithy.api#required" => {}}))
    StartZonalShiftRequest.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftComment, name: "comment", traits: {"smithy.api#required" => {}}))
    StartZonalShiftRequest.type = Types::StartZonalShiftRequest
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UpdateAutoshiftObserverNotificationStatusRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoshiftObserverNotificationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateAutoshiftObserverNotificationStatusRequest.type = Types::UpdateAutoshiftObserverNotificationStatusRequest
    UpdateAutoshiftObserverNotificationStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoshiftObserverNotificationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateAutoshiftObserverNotificationStatusResponse.type = Types::UpdateAutoshiftObserverNotificationStatusResponse
    UpdatePracticeRunConfigurationRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePracticeRunConfigurationRequest.add_member(:blocked_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedWindows, name: "blockedWindows"))
    UpdatePracticeRunConfigurationRequest.add_member(:blocked_dates, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockedDates, name: "blockedDates"))
    UpdatePracticeRunConfigurationRequest.add_member(:blocking_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockingAlarms, name: "blockingAlarms"))
    UpdatePracticeRunConfigurationRequest.add_member(:allowed_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedWindows, name: "allowedWindows"))
    UpdatePracticeRunConfigurationRequest.add_member(:outcome_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: OutcomeAlarms, name: "outcomeAlarms"))
    UpdatePracticeRunConfigurationRequest.type = Types::UpdatePracticeRunConfigurationRequest
    UpdatePracticeRunConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdatePracticeRunConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdatePracticeRunConfigurationResponse.add_member(:zonal_autoshift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalAutoshiftStatus, name: "zonalAutoshiftStatus", traits: {"smithy.api#required" => {}}))
    UpdatePracticeRunConfigurationResponse.add_member(:practice_run_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PracticeRunConfiguration, name: "practiceRunConfiguration", traits: {"smithy.api#required" => {}}))
    UpdatePracticeRunConfigurationResponse.type = Types::UpdatePracticeRunConfigurationResponse
    UpdateZonalAutoshiftConfigurationRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateZonalAutoshiftConfigurationRequest.add_member(:zonal_autoshift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalAutoshiftStatus, name: "zonalAutoshiftStatus", traits: {"smithy.api#required" => {}}))
    UpdateZonalAutoshiftConfigurationRequest.type = Types::UpdateZonalAutoshiftConfigurationRequest
    UpdateZonalAutoshiftConfigurationResponse.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateZonalAutoshiftConfigurationResponse.add_member(:zonal_autoshift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalAutoshiftStatus, name: "zonalAutoshiftStatus", traits: {"smithy.api#required" => {}}))
    UpdateZonalAutoshiftConfigurationResponse.type = Types::UpdateZonalAutoshiftConfigurationResponse
    UpdateZonalShiftOutput.add_member(:zonal_shift_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftId, name: "zonalShiftId", traits: {"smithy.api#required" => {}}))
    UpdateZonalShiftOutput.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateZonalShiftOutput.add_member(:away_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "awayFrom", traits: {"smithy.api#required" => {}}))
    UpdateZonalShiftOutput.add_member(:expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiryTime, name: "expiryTime", traits: {"smithy.api#required" => {}}))
    UpdateZonalShiftOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "startTime", traits: {"smithy.api#required" => {}}))
    UpdateZonalShiftOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateZonalShiftOutput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftComment, name: "comment", traits: {"smithy.api#required" => {}}))
    UpdateZonalShiftOutput.type = Types::UpdateZonalShiftOutput
    UpdateZonalShiftRequest.add_member(:zonal_shift_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftId, name: "zonalShiftId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateZonalShiftRequest.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftComment, name: "comment"))
    UpdateZonalShiftRequest.add_member(:expires_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiresIn, name: "expiresIn"))
    UpdateZonalShiftRequest.type = Types::UpdateZonalShiftRequest
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:invalid_expires_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_EXPIRES_IN", traits: {"smithy.api#enumValue" => "InvalidExpiresIn"}))
    ValidationExceptionReason.add_member(:invalid_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_STATUS", traits: {"smithy.api#enumValue" => "InvalidStatus"}))
    ValidationExceptionReason.add_member(:missing_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_VALUE", traits: {"smithy.api#enumValue" => "MissingValue"}))
    ValidationExceptionReason.add_member(:invalid_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_TOKEN", traits: {"smithy.api#enumValue" => "InvalidToken"}))
    ValidationExceptionReason.add_member(:invalid_resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_RESOURCE_IDENTIFIER", traits: {"smithy.api#enumValue" => "InvalidResourceIdentifier"}))
    ValidationExceptionReason.add_member(:invalid_az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_AZ", traits: {"smithy.api#enumValue" => "InvalidAz"}))
    ValidationExceptionReason.add_member(:unsupported_az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_AZ", traits: {"smithy.api#enumValue" => "UnsupportedAz"}))
    ValidationExceptionReason.add_member(:invalid_alarm_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ALARM_CONDITION", traits: {"smithy.api#enumValue" => "InvalidAlarmCondition"}))
    ValidationExceptionReason.add_member(:invalid_condition_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_CONDITION_TYPE", traits: {"smithy.api#enumValue" => "InvalidConditionType"}))
    ValidationExceptionReason.add_member(:invalid_practice_blocker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PRACTICE_BLOCKER", traits: {"smithy.api#enumValue" => "InvalidPracticeBlocker"}))
    ValidationExceptionReason.add_member(:fis_experiment_update_not_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIS_EXPERIMENT_UPDATE_NOT_ALLOWED", traits: {"smithy.api#enumValue" => "FISExperimentUpdateNotAllowed"}))
    ValidationExceptionReason.add_member(:autoshift_update_not_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOSHIFT_UPDATE_NOT_ALLOWED", traits: {"smithy.api#enumValue" => "AutoshiftUpdateNotAllowed"}))
    ValidationExceptionReason.add_member(:unsupported_practice_cancel_shift_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_PRACTICE_CANCEL_SHIFT_TYPE", traits: {"smithy.api#enumValue" => "UnsupportedPracticeCancelShiftType"}))
    ValidationExceptionReason.add_member(:invalid_practice_allowed_window, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PRACTICE_ALLOWED_WINDOW", traits: {"smithy.api#enumValue" => "InvalidPracticeAllowedWindow"}))
    ValidationExceptionReason.add_member(:conflicting_practice_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFLICTING_PRACTICE_WINDOWS", traits: {"smithy.api#enumValue" => "InvalidPracticeWindows"}))
    ZonalAutoshiftStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ZonalAutoshiftStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ZonalShiftInResource.add_member(:applied_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AppliedStatus, name: "appliedStatus", traits: {"smithy.api#required" => {}}))
    ZonalShiftInResource.add_member(:zonal_shift_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftId, name: "zonalShiftId", traits: {"smithy.api#required" => {}}))
    ZonalShiftInResource.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#required" => {}}))
    ZonalShiftInResource.add_member(:away_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "awayFrom", traits: {"smithy.api#required" => {}}))
    ZonalShiftInResource.add_member(:expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiryTime, name: "expiryTime", traits: {"smithy.api#required" => {}}))
    ZonalShiftInResource.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "startTime", traits: {"smithy.api#required" => {}}))
    ZonalShiftInResource.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftComment, name: "comment", traits: {"smithy.api#required" => {}}))
    ZonalShiftInResource.add_member(:shift_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShiftType, name: "shiftType"))
    ZonalShiftInResource.add_member(:practice_run_outcome, ::Smithy::Schema::Shapes::MemberShape.new(target: PracticeRunOutcome, name: "practiceRunOutcome"))
    ZonalShiftInResource.type = Types::ZonalShiftInResource
    ZonalShiftStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ZonalShiftStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ZonalShiftStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    ZonalShiftSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftSummary, name: "member"))
    ZonalShiftSummary.add_member(:zonal_shift_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftId, name: "zonalShiftId", traits: {"smithy.api#required" => {}}))
    ZonalShiftSummary.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#required" => {}}))
    ZonalShiftSummary.add_member(:away_from, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "awayFrom", traits: {"smithy.api#required" => {}}))
    ZonalShiftSummary.add_member(:expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiryTime, name: "expiryTime", traits: {"smithy.api#required" => {}}))
    ZonalShiftSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "startTime", traits: {"smithy.api#required" => {}}))
    ZonalShiftSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ZonalShiftSummary.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftComment, name: "comment", traits: {"smithy.api#required" => {}}))
    ZonalShiftSummary.add_member(:shift_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShiftType, name: "shiftType"))
    ZonalShiftSummary.add_member(:practice_run_outcome, ::Smithy::Schema::Shapes::MemberShape.new(target: PracticeRunOutcome, name: "practiceRunOutcome"))
    ZonalShiftSummary.type = Types::ZonalShiftSummary
    ZonalShiftsInResource.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftInResource, name: "member"))

    PercDataPlane = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.arczonalshift#PercDataPlane"
      service.name = "PercDataPlane"
      service.version = "2022-10-30"
      service.traits = {"aws.api#service" => {"sdkId" => "ARC Zonal Shift", "endpointPrefix" => "arc-zonal-shift", "cloudFormationName" => "ARCZonalShift"}, "aws.auth#sigv4" => {"name" => "arc-zonal-shift"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-ErrorType", "x-amzn-RequestId", "x-amzn-ErrorMessage", "x-amzn-trace-id", "Date"]}, "smithy.api#title" => "AWS ARC - Zonal Shift", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://arc-zonal-shift-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://arc-zonal-shift-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://arc-zonal-shift.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://arc-zonal-shift.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:cancel_practice_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#CancelPracticeRun"
        operation.name = "CancelPracticeRun"
        operation.input = CancelPracticeRunRequest
        operation.output = CancelPracticeRunResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/practiceruns/{zonalShiftId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_zonal_shift, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#CancelZonalShift"
        operation.name = "CancelZonalShift"
        operation.input = CancelZonalShiftRequest
        operation.output = CancelZonalShiftOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/zonalshifts/{zonalShiftId}", "code" => 200}}
      end)
      service.add_operation(:create_practice_run_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#CreatePracticeRunConfiguration"
        operation.name = "CreatePracticeRunConfiguration"
        operation.input = CreatePracticeRunConfigurationRequest
        operation.output = CreatePracticeRunConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/configuration", "code" => 201}}
      end)
      service.add_operation(:delete_practice_run_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#DeletePracticeRunConfiguration"
        operation.name = "DeletePracticeRunConfiguration"
        operation.input = DeletePracticeRunConfigurationRequest
        operation.output = DeletePracticeRunConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/configuration/{resourceIdentifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_autoshift_observer_notification_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#GetAutoshiftObserverNotificationStatus"
        operation.name = "GetAutoshiftObserverNotificationStatus"
        operation.input = GetAutoshiftObserverNotificationStatusRequest
        operation.output = GetAutoshiftObserverNotificationStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/autoshift-observer-notification", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_managed_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#GetManagedResource"
        operation.name = "GetManagedResource"
        operation.input = GetManagedResourceRequest
        operation.output = GetManagedResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/managedresources/{resourceIdentifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_autoshifts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#ListAutoshifts"
        operation.name = "ListAutoshifts"
        operation.input = ListAutoshiftsRequest
        operation.output = ListAutoshiftsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/autoshifts", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAutoshifts.new
      end)
      service.add_operation(:list_managed_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#ListManagedResources"
        operation.name = "ListManagedResources"
        operation.input = ListManagedResourcesRequest
        operation.output = ListManagedResourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/managedresources", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListManagedResources.new
      end)
      service.add_operation(:list_zonal_shifts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#ListZonalShifts"
        operation.name = "ListZonalShifts"
        operation.input = ListZonalShiftsRequest
        operation.output = ListZonalShiftsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/zonalshifts", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListZonalShifts.new
      end)
      service.add_operation(:start_practice_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#StartPracticeRun"
        operation.name = "StartPracticeRun"
        operation.input = StartPracticeRunRequest
        operation.output = StartPracticeRunResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/practiceruns", "code" => 200}}
      end)
      service.add_operation(:start_zonal_shift, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#StartZonalShift"
        operation.name = "StartZonalShift"
        operation.input = StartZonalShiftRequest
        operation.output = StartZonalShiftOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/zonalshifts", "code" => 201}}
      end)
      service.add_operation(:update_autoshift_observer_notification_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#UpdateAutoshiftObserverNotificationStatus"
        operation.name = "UpdateAutoshiftObserverNotificationStatus"
        operation.input = UpdateAutoshiftObserverNotificationStatusRequest
        operation.output = UpdateAutoshiftObserverNotificationStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/autoshift-observer-notification", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_practice_run_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#UpdatePracticeRunConfiguration"
        operation.name = "UpdatePracticeRunConfiguration"
        operation.input = UpdatePracticeRunConfigurationRequest
        operation.output = UpdatePracticeRunConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/configuration/{resourceIdentifier}", "code" => 200}}
      end)
      service.add_operation(:update_zonal_autoshift_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#UpdateZonalAutoshiftConfiguration"
        operation.name = "UpdateZonalAutoshiftConfiguration"
        operation.input = UpdateZonalAutoshiftConfigurationRequest
        operation.output = UpdateZonalAutoshiftConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/managedresources/{resourceIdentifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_zonal_shift, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arczonalshift#UpdateZonalShift"
        operation.name = "UpdateZonalShift"
        operation.input = UpdateZonalShiftRequest
        operation.output = UpdateZonalShiftOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/zonalshifts/{zonalShiftId}", "code" => 200}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
