# frozen_string_literal: true

# This is generated code!

module Aws::WorkSpacesThinClient
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActivationCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#ActivationCode", name: "ActivationCode", traits: {"smithy.api#pattern" => "^[a-z]{2}[a-z0-9]{6}$", "smithy.api#sensitive" => {}})
    ApplyTimeOf = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesthinclient#ApplyTimeOf", name: "ApplyTimeOf")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[0-9]{0,12}:[a-zA-Z0-9\\-\\/\\._]+$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#CreateEnvironmentRequest", name: "CreateEnvironmentRequest")
    CreateEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#CreateEnvironmentResponse", name: "CreateEnvironmentResponse")
    DayOfWeek = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesthinclient#DayOfWeek", name: "DayOfWeek")
    DayOfWeekList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesthinclient#DayOfWeekList", name: "DayOfWeekList", traits: {"smithy.api#length" => {"min" => 1, "max" => 7}})
    DeleteDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#DeleteDeviceRequest", name: "DeleteDeviceRequest")
    DeleteDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#DeleteDeviceResponse", name: "DeleteDeviceResponse")
    DeleteEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#DeleteEnvironmentRequest", name: "DeleteEnvironmentRequest")
    DeleteEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#DeleteEnvironmentResponse", name: "DeleteEnvironmentResponse")
    DeregisterDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#DeregisterDeviceRequest", name: "DeregisterDeviceRequest")
    DeregisterDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#DeregisterDeviceResponse", name: "DeregisterDeviceResponse")
    DesktopEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#DesktopEndpoint", name: "DesktopEndpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(https:\\/\\/)[a-z0-9]+([\\-\\.]{1}[a-z0-9]+)*\\.[a-z]{2,32}(:[0-9]{1,5})?(\\/.*)?$", "smithy.api#sensitive" => {}})
    DesktopType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesthinclient#DesktopType", name: "DesktopType")
    Device = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#Device", name: "Device")
    DeviceCreationTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#DeviceCreationTagKey", name: "DeviceCreationTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[A-Za-z0-9 _=@:.+-/]+$"})
    DeviceCreationTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#DeviceCreationTagValue", name: "DeviceCreationTagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9 _=@:.+-/]+$"})
    DeviceCreationTagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.workspacesthinclient#DeviceCreationTagsMap", name: "DeviceCreationTagsMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    DeviceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#DeviceId", name: "DeviceId", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{24}$"})
    DeviceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesthinclient#DeviceList", name: "DeviceList")
    DeviceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#DeviceName", name: "DeviceName", traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^$|^[0-9\\p{IsAlphabetic}+:,.@'\" -]*$", "smithy.api#sensitive" => {}})
    DeviceSoftwareSetComplianceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesthinclient#DeviceSoftwareSetComplianceStatus", name: "DeviceSoftwareSetComplianceStatus")
    DeviceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesthinclient#DeviceStatus", name: "DeviceStatus")
    DeviceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#DeviceSummary", name: "DeviceSummary")
    Environment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#Environment", name: "Environment")
    EnvironmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#EnvironmentId", name: "EnvironmentId", traits: {"smithy.api#pattern" => "^[a-z0-9]{9}$"})
    EnvironmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesthinclient#EnvironmentList", name: "EnvironmentList")
    EnvironmentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#EnvironmentName", name: "EnvironmentName", traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^$|^[0-9\\p{IsAlphabetic}+:,.@'\" -][0-9\\p{IsAlphabetic}+=:,.@'\" -]*$", "smithy.api#sensitive" => {}})
    EnvironmentSoftwareSetComplianceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesthinclient#EnvironmentSoftwareSetComplianceStatus", name: "EnvironmentSoftwareSetComplianceStatus")
    EnvironmentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#EnvironmentSummary", name: "EnvironmentSummary")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#ExceptionMessage", name: "ExceptionMessage")
    FieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#FieldName", name: "FieldName")
    GetDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#GetDeviceRequest", name: "GetDeviceRequest")
    GetDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#GetDeviceResponse", name: "GetDeviceResponse")
    GetEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#GetEnvironmentRequest", name: "GetEnvironmentRequest")
    GetEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#GetEnvironmentResponse", name: "GetEnvironmentResponse")
    GetSoftwareSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#GetSoftwareSetRequest", name: "GetSoftwareSetRequest")
    GetSoftwareSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#GetSoftwareSetResponse", name: "GetSoftwareSetResponse")
    Hour = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspacesthinclient#Hour", name: "Hour", traits: {"smithy.api#range" => {"min" => 0, "max" => 23}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=\\/,.@-]+:kms:[a-zA-Z0-9\\-]*:[0-9]{0,12}:key\\/[a-zA-Z0-9-]+$"})
    ListDevicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#ListDevicesRequest", name: "ListDevicesRequest")
    ListDevicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#ListDevicesResponse", name: "ListDevicesResponse")
    ListEnvironmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#ListEnvironmentsRequest", name: "ListEnvironmentsRequest")
    ListEnvironmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#ListEnvironmentsResponse", name: "ListEnvironmentsResponse")
    ListSoftwareSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#ListSoftwareSetsRequest", name: "ListSoftwareSetsRequest")
    ListSoftwareSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#ListSoftwareSetsResponse", name: "ListSoftwareSetsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaintenanceWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#MaintenanceWindow", name: "MaintenanceWindow")
    MaintenanceWindowType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesthinclient#MaintenanceWindowType", name: "MaintenanceWindowType")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspacesthinclient#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    Minute = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspacesthinclient#Minute", name: "Minute", traits: {"smithy.api#range" => {"min" => 0, "max" => 59}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    QuotaCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#QuotaCode", name: "QuotaCode")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#ResourceId", name: "ResourceId")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#ResourceType", name: "ResourceType")
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspacesthinclient#RetryAfterSeconds", name: "RetryAfterSeconds")
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#ServiceCode", name: "ServiceCode")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Software = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#Software", name: "Software")
    SoftwareList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesthinclient#SoftwareList", name: "SoftwareList")
    SoftwareSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#SoftwareSet", name: "SoftwareSet")
    SoftwareSetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#SoftwareSetId", name: "SoftwareSetId", traits: {"smithy.api#pattern" => "^[0-9]{1,9}$"})
    SoftwareSetIdOrEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#SoftwareSetIdOrEmptyString", name: "SoftwareSetIdOrEmptyString", traits: {"smithy.api#pattern" => "^[0-9]{0,9}$"})
    SoftwareSetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesthinclient#SoftwareSetList", name: "SoftwareSetList")
    SoftwareSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#SoftwareSetSummary", name: "SoftwareSetSummary")
    SoftwareSetUpdateMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesthinclient#SoftwareSetUpdateMode", name: "SoftwareSetUpdateMode")
    SoftwareSetUpdateSchedule = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesthinclient#SoftwareSetUpdateSchedule", name: "SoftwareSetUpdateSchedule")
    SoftwareSetUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesthinclient#SoftwareSetUpdateStatus", name: "SoftwareSetUpdateStatus")
    SoftwareSetValidationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesthinclient#SoftwareSetValidationStatus", name: "SoftwareSetValidationStatus")
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesthinclient#TagKeys", name: "TagKeys", traits: {"smithy.api#sensitive" => {}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#TagResourceResponse", name: "TagResourceResponse")
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.workspacesthinclient#TagsMap", name: "TagsMap", traits: {"smithy.api#sensitive" => {}})
    TargetDeviceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesthinclient#TargetDeviceStatus", name: "TargetDeviceStatus")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.workspacesthinclient#Timestamp", name: "Timestamp")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#UpdateDeviceRequest", name: "UpdateDeviceRequest")
    UpdateDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#UpdateDeviceResponse", name: "UpdateDeviceResponse")
    UpdateEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#UpdateEnvironmentRequest", name: "UpdateEnvironmentRequest")
    UpdateEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#UpdateEnvironmentResponse", name: "UpdateEnvironmentResponse")
    UpdateSoftwareSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#UpdateSoftwareSetRequest", name: "UpdateSoftwareSetRequest")
    UpdateSoftwareSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#UpdateSoftwareSetResponse", name: "UpdateSoftwareSetResponse")
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspacesthinclient#UserId", name: "UserId", traits: {"smithy.api#sensitive" => {}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspacesthinclient#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspacesthinclient#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspacesthinclient#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ApplyTimeOf.add_member(:utc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UTC", traits: {"smithy.api#enumValue" => "UTC"}))
    ApplyTimeOf.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE", traits: {"smithy.api#enumValue" => "DEVICE"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, location_name: "resourceType"))
    ConflictException.type = Types::ConflictException
    CreateEnvironmentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, location_name: "name"))
    CreateEnvironmentRequest.add_member(:desktop_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "desktopArn", traits: {"smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:desktop_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DesktopEndpoint, location_name: "desktopEndpoint"))
    CreateEnvironmentRequest.add_member(:software_set_update_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetUpdateSchedule, location_name: "softwareSetUpdateSchedule"))
    CreateEnvironmentRequest.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, location_name: "maintenanceWindow"))
    CreateEnvironmentRequest.add_member(:software_set_update_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetUpdateMode, location_name: "softwareSetUpdateMode"))
    CreateEnvironmentRequest.add_member(:desired_software_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "desiredSoftwareSetId"))
    CreateEnvironmentRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateEnvironmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEnvironmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    CreateEnvironmentRequest.add_member(:device_creation_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCreationTagsMap, location_name: "deviceCreationTags"))
    CreateEnvironmentRequest.type = Types::CreateEnvironmentRequest
    CreateEnvironmentResponse.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentSummary, location_name: "environment", traits: {"smithy.api#nestedProperties" => {}}))
    CreateEnvironmentResponse.type = Types::CreateEnvironmentResponse
    DayOfWeek.add_member(:monday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MONDAY", traits: {"smithy.api#enumValue" => "MONDAY"}))
    DayOfWeek.add_member(:tuesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TUESDAY", traits: {"smithy.api#enumValue" => "TUESDAY"}))
    DayOfWeek.add_member(:wednesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEDNESDAY", traits: {"smithy.api#enumValue" => "WEDNESDAY"}))
    DayOfWeek.add_member(:thursday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THURSDAY", traits: {"smithy.api#enumValue" => "THURSDAY"}))
    DayOfWeek.add_member(:friday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FRIDAY", traits: {"smithy.api#enumValue" => "FRIDAY"}))
    DayOfWeek.add_member(:saturday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SATURDAY", traits: {"smithy.api#enumValue" => "SATURDAY"}))
    DayOfWeek.add_member(:sunday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUNDAY", traits: {"smithy.api#enumValue" => "SUNDAY"}))
    DayOfWeekList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeek)
    DeleteDeviceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeviceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteDeviceRequest.type = Types::DeleteDeviceRequest
    DeleteDeviceResponse.type = Types::DeleteDeviceResponse
    DeleteEnvironmentRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEnvironmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteEnvironmentRequest.type = Types::DeleteEnvironmentRequest
    DeleteEnvironmentResponse.type = Types::DeleteEnvironmentResponse
    DeregisterDeviceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterDeviceRequest.add_member(:target_device_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDeviceStatus, location_name: "targetDeviceStatus"))
    DeregisterDeviceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeregisterDeviceRequest.type = Types::DeregisterDeviceRequest
    DeregisterDeviceResponse.type = Types::DeregisterDeviceResponse
    DesktopType.add_member(:workspaces, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WORKSPACES", traits: {"smithy.api#enumValue" => "workspaces"}))
    DesktopType.add_member(:appstream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPSTREAM", traits: {"smithy.api#enumValue" => "appstream"}))
    DesktopType.add_member(:workspaces_web, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WORKSPACES_WEB", traits: {"smithy.api#enumValue" => "workspaces-web"}))
    Device.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, location_name: "id"))
    Device.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serialNumber"))
    Device.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, location_name: "name"))
    Device.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "model"))
    Device.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, location_name: "environmentId"))
    Device.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceStatus, location_name: "status"))
    Device.add_member(:current_software_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "currentSoftwareSetId"))
    Device.add_member(:current_software_set_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "currentSoftwareSetVersion"))
    Device.add_member(:desired_software_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "desiredSoftwareSetId"))
    Device.add_member(:pending_software_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "pendingSoftwareSetId"))
    Device.add_member(:pending_software_set_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "pendingSoftwareSetVersion"))
    Device.add_member(:software_set_update_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetUpdateSchedule, location_name: "softwareSetUpdateSchedule"))
    Device.add_member(:software_set_compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceSoftwareSetComplianceStatus, location_name: "softwareSetComplianceStatus"))
    Device.add_member(:software_set_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetUpdateStatus, location_name: "softwareSetUpdateStatus"))
    Device.add_member(:last_connected_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastConnectedAt"))
    Device.add_member(:last_posture_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastPostureAt"))
    Device.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    Device.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    Device.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn"))
    Device.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, location_name: "kmsKeyArn"))
    Device.add_member(:last_user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, location_name: "lastUserId"))
    Device.type = Types::Device
    DeviceCreationTagsMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCreationTagKey)
    DeviceCreationTagsMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCreationTagValue)
    DeviceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceSummary)
    DeviceSoftwareSetComplianceStatus.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DeviceSoftwareSetComplianceStatus.add_member(:compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLIANT", traits: {"smithy.api#enumValue" => "COMPLIANT"}))
    DeviceSoftwareSetComplianceStatus.add_member(:not_compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_COMPLIANT", traits: {"smithy.api#enumValue" => "NOT_COMPLIANT"}))
    DeviceStatus.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGISTERED", traits: {"smithy.api#enumValue" => "REGISTERED"}))
    DeviceStatus.add_member(:deregistering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEREGISTERING", traits: {"smithy.api#enumValue" => "DEREGISTERING"}))
    DeviceStatus.add_member(:deregistered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEREGISTERED", traits: {"smithy.api#enumValue" => "DEREGISTERED"}))
    DeviceStatus.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    DeviceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, location_name: "id"))
    DeviceSummary.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serialNumber"))
    DeviceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, location_name: "name"))
    DeviceSummary.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "model"))
    DeviceSummary.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, location_name: "environmentId"))
    DeviceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceStatus, location_name: "status"))
    DeviceSummary.add_member(:current_software_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "currentSoftwareSetId"))
    DeviceSummary.add_member(:desired_software_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "desiredSoftwareSetId"))
    DeviceSummary.add_member(:pending_software_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "pendingSoftwareSetId"))
    DeviceSummary.add_member(:software_set_update_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetUpdateSchedule, location_name: "softwareSetUpdateSchedule"))
    DeviceSummary.add_member(:last_connected_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastConnectedAt"))
    DeviceSummary.add_member(:last_posture_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "lastPostureAt"))
    DeviceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    DeviceSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    DeviceSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn"))
    DeviceSummary.add_member(:last_user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, location_name: "lastUserId"))
    DeviceSummary.type = Types::DeviceSummary
    Environment.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, location_name: "id"))
    Environment.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, location_name: "name"))
    Environment.add_member(:desktop_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "desktopArn"))
    Environment.add_member(:desktop_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DesktopEndpoint, location_name: "desktopEndpoint"))
    Environment.add_member(:desktop_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DesktopType, location_name: "desktopType"))
    Environment.add_member(:activation_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationCode, location_name: "activationCode"))
    Environment.add_member(:registered_devices_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "registeredDevicesCount"))
    Environment.add_member(:software_set_update_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetUpdateSchedule, location_name: "softwareSetUpdateSchedule"))
    Environment.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, location_name: "maintenanceWindow"))
    Environment.add_member(:software_set_update_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetUpdateMode, location_name: "softwareSetUpdateMode"))
    Environment.add_member(:desired_software_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "desiredSoftwareSetId"))
    Environment.add_member(:pending_software_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "pendingSoftwareSetId"))
    Environment.add_member(:pending_software_set_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "pendingSoftwareSetVersion"))
    Environment.add_member(:software_set_compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentSoftwareSetComplianceStatus, location_name: "softwareSetComplianceStatus"))
    Environment.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    Environment.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    Environment.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn"))
    Environment.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, location_name: "kmsKeyArn"))
    Environment.add_member(:device_creation_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCreationTagsMap, location_name: "deviceCreationTags"))
    Environment.type = Types::Environment
    EnvironmentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentSummary)
    EnvironmentSoftwareSetComplianceStatus.add_member(:no_registered_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_REGISTERED_DEVICES", traits: {"smithy.api#enumValue" => "NO_REGISTERED_DEVICES"}))
    EnvironmentSoftwareSetComplianceStatus.add_member(:compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLIANT", traits: {"smithy.api#enumValue" => "COMPLIANT"}))
    EnvironmentSoftwareSetComplianceStatus.add_member(:not_compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_COMPLIANT", traits: {"smithy.api#enumValue" => "NOT_COMPLIANT"}))
    EnvironmentSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, location_name: "id"))
    EnvironmentSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, location_name: "name"))
    EnvironmentSummary.add_member(:desktop_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "desktopArn"))
    EnvironmentSummary.add_member(:desktop_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DesktopEndpoint, location_name: "desktopEndpoint"))
    EnvironmentSummary.add_member(:desktop_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DesktopType, location_name: "desktopType"))
    EnvironmentSummary.add_member(:activation_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationCode, location_name: "activationCode"))
    EnvironmentSummary.add_member(:software_set_update_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetUpdateSchedule, location_name: "softwareSetUpdateSchedule"))
    EnvironmentSummary.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, location_name: "maintenanceWindow"))
    EnvironmentSummary.add_member(:software_set_update_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetUpdateMode, location_name: "softwareSetUpdateMode"))
    EnvironmentSummary.add_member(:desired_software_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "desiredSoftwareSetId"))
    EnvironmentSummary.add_member(:pending_software_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "pendingSoftwareSetId"))
    EnvironmentSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "createdAt"))
    EnvironmentSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "updatedAt"))
    EnvironmentSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn"))
    EnvironmentSummary.type = Types::EnvironmentSummary
    GetDeviceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeviceRequest.type = Types::GetDeviceRequest
    GetDeviceResponse.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: Device, location_name: "device"))
    GetDeviceResponse.type = Types::GetDeviceResponse
    GetEnvironmentRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEnvironmentRequest.type = Types::GetEnvironmentRequest
    GetEnvironmentResponse.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: Environment, location_name: "environment", traits: {"smithy.api#nestedProperties" => {}}))
    GetEnvironmentResponse.type = Types::GetEnvironmentResponse
    GetSoftwareSetRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSoftwareSetRequest.type = Types::GetSoftwareSetRequest
    GetSoftwareSetResponse.add_member(:software_set, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSet, location_name: "softwareSet"))
    GetSoftwareSetResponse.type = Types::GetSoftwareSetResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListDevicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDevicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDevicesRequest.type = Types::ListDevicesRequest
    ListDevicesResponse.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceList, location_name: "devices"))
    ListDevicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListDevicesResponse.type = Types::ListDevicesResponse
    ListEnvironmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEnvironmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEnvironmentsRequest.type = Types::ListEnvironmentsRequest
    ListEnvironmentsResponse.add_member(:environments, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentList, location_name: "environments"))
    ListEnvironmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListEnvironmentsResponse.type = Types::ListEnvironmentsResponse
    ListSoftwareSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSoftwareSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSoftwareSetsRequest.type = Types::ListSoftwareSetsRequest
    ListSoftwareSetsResponse.add_member(:software_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetList, location_name: "softwareSets"))
    ListSoftwareSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListSoftwareSetsResponse.type = Types::ListSoftwareSetsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MaintenanceWindow.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowType, location_name: "type", traits: {"smithy.api#required" => {}}))
    MaintenanceWindow.add_member(:start_time_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: Hour, location_name: "startTimeHour"))
    MaintenanceWindow.add_member(:start_time_minute, ::Smithy::Schema::Shapes::MemberShape.new(target: Minute, location_name: "startTimeMinute"))
    MaintenanceWindow.add_member(:end_time_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: Hour, location_name: "endTimeHour"))
    MaintenanceWindow.add_member(:end_time_minute, ::Smithy::Schema::Shapes::MemberShape.new(target: Minute, location_name: "endTimeMinute"))
    MaintenanceWindow.add_member(:days_of_the_week, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeekList, location_name: "daysOfTheWeek"))
    MaintenanceWindow.add_member(:apply_time_of, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplyTimeOf, location_name: "applyTimeOf"))
    MaintenanceWindow.type = Types::MaintenanceWindow
    MaintenanceWindowType.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSTEM", traits: {"smithy.api#enumValue" => "SYSTEM"}))
    MaintenanceWindowType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, location_name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaCode, location_name: "quotaCode"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Software.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    Software.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "version"))
    Software.type = Types::Software
    SoftwareList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Software)
    SoftwareSet.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "id"))
    SoftwareSet.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "version"))
    SoftwareSet.add_member(:released_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "releasedAt"))
    SoftwareSet.add_member(:supported_until, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "supportedUntil"))
    SoftwareSet.add_member(:validation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetValidationStatus, location_name: "validationStatus"))
    SoftwareSet.add_member(:software, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareList, location_name: "software"))
    SoftwareSet.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn"))
    SoftwareSet.type = Types::SoftwareSet
    SoftwareSetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetSummary)
    SoftwareSetSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "id"))
    SoftwareSetSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "version"))
    SoftwareSetSummary.add_member(:released_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "releasedAt"))
    SoftwareSetSummary.add_member(:supported_until, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "supportedUntil"))
    SoftwareSetSummary.add_member(:validation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetValidationStatus, location_name: "validationStatus"))
    SoftwareSetSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn"))
    SoftwareSetSummary.type = Types::SoftwareSetSummary
    SoftwareSetUpdateMode.add_member(:use_latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USE_LATEST", traits: {"smithy.api#enumValue" => "USE_LATEST"}))
    SoftwareSetUpdateMode.add_member(:use_desired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USE_DESIRED", traits: {"smithy.api#enumValue" => "USE_DESIRED"}))
    SoftwareSetUpdateSchedule.add_member(:use_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USE_MAINTENANCE_WINDOW", traits: {"smithy.api#enumValue" => "USE_MAINTENANCE_WINDOW"}))
    SoftwareSetUpdateSchedule.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPLY_IMMEDIATELY", traits: {"smithy.api#enumValue" => "APPLY_IMMEDIATELY"}))
    SoftwareSetUpdateStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    SoftwareSetUpdateStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    SoftwareSetUpdateStatus.add_member(:up_to_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UP_TO_DATE", traits: {"smithy.api#enumValue" => "UP_TO_DATE"}))
    SoftwareSetValidationStatus.add_member(:validated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATED", traits: {"smithy.api#enumValue" => "VALIDATED"}))
    SoftwareSetValidationStatus.add_member(:not_validated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_VALIDATED", traits: {"smithy.api#enumValue" => "NOT_VALIDATED"}))
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagsMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    TagsMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    TargetDeviceStatus.add_member(:deregistered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEREGISTERED", traits: {"smithy.api#enumValue" => "DEREGISTERED"}))
    TargetDeviceStatus.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaCode, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDeviceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeviceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, location_name: "name"))
    UpdateDeviceRequest.add_member(:desired_software_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "desiredSoftwareSetId"))
    UpdateDeviceRequest.add_member(:software_set_update_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetUpdateSchedule, location_name: "softwareSetUpdateSchedule"))
    UpdateDeviceRequest.type = Types::UpdateDeviceRequest
    UpdateDeviceResponse.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceSummary, location_name: "device"))
    UpdateDeviceResponse.type = Types::UpdateDeviceResponse
    UpdateEnvironmentRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEnvironmentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, location_name: "name"))
    UpdateEnvironmentRequest.add_member(:desktop_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "desktopArn"))
    UpdateEnvironmentRequest.add_member(:desktop_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DesktopEndpoint, location_name: "desktopEndpoint"))
    UpdateEnvironmentRequest.add_member(:software_set_update_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetUpdateSchedule, location_name: "softwareSetUpdateSchedule"))
    UpdateEnvironmentRequest.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, location_name: "maintenanceWindow"))
    UpdateEnvironmentRequest.add_member(:software_set_update_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetUpdateMode, location_name: "softwareSetUpdateMode"))
    UpdateEnvironmentRequest.add_member(:desired_software_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetIdOrEmptyString, location_name: "desiredSoftwareSetId"))
    UpdateEnvironmentRequest.add_member(:device_creation_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCreationTagsMap, location_name: "deviceCreationTags"))
    UpdateEnvironmentRequest.type = Types::UpdateEnvironmentRequest
    UpdateEnvironmentResponse.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentSummary, location_name: "environment", traits: {"smithy.api#nestedProperties" => {}}))
    UpdateEnvironmentResponse.type = Types::UpdateEnvironmentResponse
    UpdateSoftwareSetRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSoftwareSetRequest.add_member(:validation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareSetValidationStatus, location_name: "validationStatus", traits: {"smithy.api#required" => {}}))
    UpdateSoftwareSetRequest.type = Types::UpdateSoftwareSetRequest
    UpdateSoftwareSetResponse.type = Types::UpdateSoftwareSetResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))

    ThinClient = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.workspacesthinclient#ThinClient"
      service.name = "ThinClient"
      service.version = "2023-08-22"
      service.traits = {"aws.api#service" => {"sdkId" => "WorkSpaces Thin Client", "arnNamespace" => "thinclient", "cloudTrailEventSource" => "thinclient.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "thinclient"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Amazon WorkSpaces Thin Client"}
      service.add_operation(:create_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#CreateEnvironment"
        operation.name = "CreateEnvironment"
        operation.input = CreateEnvironmentRequest
        operation.output = CreateEnvironmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/environments", "code" => 201}}
      end)
      service.add_operation(:delete_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#DeleteDevice"
        operation.name = "DeleteDevice"
        operation.input = DeleteDeviceRequest
        operation.output = DeleteDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/devices/{id}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#DeleteEnvironment"
        operation.name = "DeleteEnvironment"
        operation.input = DeleteEnvironmentRequest
        operation.output = DeleteEnvironmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/environments/{id}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#DeregisterDevice"
        operation.name = "DeregisterDevice"
        operation.input = DeregisterDeviceRequest
        operation.output = DeregisterDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/deregister-device/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#GetDevice"
        operation.name = "GetDevice"
        operation.input = GetDeviceRequest
        operation.output = GetDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/devices/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#GetEnvironment"
        operation.name = "GetEnvironment"
        operation.input = GetEnvironmentRequest
        operation.output = GetEnvironmentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/environments/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_software_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#GetSoftwareSet"
        operation.name = "GetSoftwareSet"
        operation.input = GetSoftwareSetRequest
        operation.output = GetSoftwareSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/softwaresets/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#ListDevices"
        operation.name = "ListDevices"
        operation.input = ListDevicesRequest
        operation.output = ListDevicesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/devices", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDevices.new
      end)
      service.add_operation(:list_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#ListEnvironments"
        operation.name = "ListEnvironments"
        operation.input = ListEnvironmentsRequest
        operation.output = ListEnvironmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/environments", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironments.new
      end)
      service.add_operation(:list_software_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#ListSoftwareSets"
        operation.name = "ListSoftwareSets"
        operation.input = ListSoftwareSetsRequest
        operation.output = ListSoftwareSetsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/softwaresets", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSoftwareSets.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#UpdateDevice"
        operation.name = "UpdateDevice"
        operation.input = UpdateDeviceRequest
        operation.output = UpdateDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/devices/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#UpdateEnvironment"
        operation.name = "UpdateEnvironment"
        operation.input = UpdateEnvironmentRequest
        operation.output = UpdateEnvironmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/environments/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_software_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#UpdateSoftwareSet"
        operation.name = "UpdateSoftwareSet"
        operation.input = UpdateSoftwareSetRequest
        operation.output = UpdateSoftwareSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/softwaresets/{id}", "code" => 204}, "smithy.api#idempotent" => {}}
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
