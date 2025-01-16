# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WorkSpacesThinClient
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActivationCode = Shapes::StringShape.new(name: 'ActivationCode')
    ApplyTimeOf = Shapes::StringShape.new(name: 'ApplyTimeOf')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateEnvironmentRequest')
    CreateEnvironmentResponse = Shapes::StructureShape.new(name: 'CreateEnvironmentResponse')
    DayOfWeek = Shapes::StringShape.new(name: 'DayOfWeek')
    DayOfWeekList = Shapes::ListShape.new(name: 'DayOfWeekList')
    DeleteDeviceRequest = Shapes::StructureShape.new(name: 'DeleteDeviceRequest')
    DeleteDeviceResponse = Shapes::StructureShape.new(name: 'DeleteDeviceResponse')
    DeleteEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteEnvironmentRequest')
    DeleteEnvironmentResponse = Shapes::StructureShape.new(name: 'DeleteEnvironmentResponse')
    DeregisterDeviceRequest = Shapes::StructureShape.new(name: 'DeregisterDeviceRequest')
    DeregisterDeviceResponse = Shapes::StructureShape.new(name: 'DeregisterDeviceResponse')
    DesktopEndpoint = Shapes::StringShape.new(name: 'DesktopEndpoint')
    DesktopType = Shapes::StringShape.new(name: 'DesktopType')
    Device = Shapes::StructureShape.new(name: 'Device')
    DeviceCreationTagKey = Shapes::StringShape.new(name: 'DeviceCreationTagKey')
    DeviceCreationTagValue = Shapes::StringShape.new(name: 'DeviceCreationTagValue')
    DeviceCreationTagsMap = Shapes::MapShape.new(name: 'DeviceCreationTagsMap')
    DeviceId = Shapes::StringShape.new(name: 'DeviceId')
    DeviceList = Shapes::ListShape.new(name: 'DeviceList')
    DeviceName = Shapes::StringShape.new(name: 'DeviceName')
    DeviceSoftwareSetComplianceStatus = Shapes::StringShape.new(name: 'DeviceSoftwareSetComplianceStatus')
    DeviceStatus = Shapes::StringShape.new(name: 'DeviceStatus')
    DeviceSummary = Shapes::StructureShape.new(name: 'DeviceSummary')
    Environment = Shapes::StructureShape.new(name: 'Environment')
    EnvironmentId = Shapes::StringShape.new(name: 'EnvironmentId')
    EnvironmentList = Shapes::ListShape.new(name: 'EnvironmentList')
    EnvironmentName = Shapes::StringShape.new(name: 'EnvironmentName')
    EnvironmentSoftwareSetComplianceStatus = Shapes::StringShape.new(name: 'EnvironmentSoftwareSetComplianceStatus')
    EnvironmentSummary = Shapes::StructureShape.new(name: 'EnvironmentSummary')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    GetDeviceRequest = Shapes::StructureShape.new(name: 'GetDeviceRequest')
    GetDeviceResponse = Shapes::StructureShape.new(name: 'GetDeviceResponse')
    GetEnvironmentRequest = Shapes::StructureShape.new(name: 'GetEnvironmentRequest')
    GetEnvironmentResponse = Shapes::StructureShape.new(name: 'GetEnvironmentResponse')
    GetSoftwareSetRequest = Shapes::StructureShape.new(name: 'GetSoftwareSetRequest')
    GetSoftwareSetResponse = Shapes::StructureShape.new(name: 'GetSoftwareSetResponse')
    Hour = Shapes::IntegerShape.new(name: 'Hour')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListDevicesRequest = Shapes::StructureShape.new(name: 'ListDevicesRequest')
    ListDevicesResponse = Shapes::StructureShape.new(name: 'ListDevicesResponse')
    ListEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentsRequest')
    ListEnvironmentsResponse = Shapes::StructureShape.new(name: 'ListEnvironmentsResponse')
    ListSoftwareSetsRequest = Shapes::StructureShape.new(name: 'ListSoftwareSetsRequest')
    ListSoftwareSetsResponse = Shapes::StructureShape.new(name: 'ListSoftwareSetsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaintenanceWindow = Shapes::StructureShape.new(name: 'MaintenanceWindow')
    MaintenanceWindowType = Shapes::StringShape.new(name: 'MaintenanceWindowType')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Minute = Shapes::IntegerShape.new(name: 'Minute')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    QuotaCode = Shapes::StringShape.new(name: 'QuotaCode')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Software = Shapes::StructureShape.new(name: 'Software')
    SoftwareList = Shapes::ListShape.new(name: 'SoftwareList')
    SoftwareSet = Shapes::StructureShape.new(name: 'SoftwareSet')
    SoftwareSetId = Shapes::StringShape.new(name: 'SoftwareSetId')
    SoftwareSetIdOrEmptyString = Shapes::StringShape.new(name: 'SoftwareSetIdOrEmptyString')
    SoftwareSetList = Shapes::ListShape.new(name: 'SoftwareSetList')
    SoftwareSetSummary = Shapes::StructureShape.new(name: 'SoftwareSetSummary')
    SoftwareSetUpdateMode = Shapes::StringShape.new(name: 'SoftwareSetUpdateMode')
    SoftwareSetUpdateSchedule = Shapes::StringShape.new(name: 'SoftwareSetUpdateSchedule')
    SoftwareSetUpdateStatus = Shapes::StringShape.new(name: 'SoftwareSetUpdateStatus')
    SoftwareSetValidationStatus = Shapes::StringShape.new(name: 'SoftwareSetValidationStatus')
    String = Shapes::StringShape.new(name: 'String')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TargetDeviceStatus = Shapes::StringShape.new(name: 'TargetDeviceStatus')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDeviceRequest = Shapes::StructureShape.new(name: 'UpdateDeviceRequest')
    UpdateDeviceResponse = Shapes::StructureShape.new(name: 'UpdateDeviceResponse')
    UpdateEnvironmentRequest = Shapes::StructureShape.new(name: 'UpdateEnvironmentRequest')
    UpdateEnvironmentResponse = Shapes::StructureShape.new(name: 'UpdateEnvironmentResponse')
    UpdateSoftwareSetRequest = Shapes::StructureShape.new(name: 'UpdateSoftwareSetRequest')
    UpdateSoftwareSetResponse = Shapes::StructureShape.new(name: 'UpdateSoftwareSetResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "name"))
    CreateEnvironmentRequest.add_member(:desktop_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "desktopArn"))
    CreateEnvironmentRequest.add_member(:desktop_endpoint, Shapes::ShapeRef.new(shape: DesktopEndpoint, location_name: "desktopEndpoint"))
    CreateEnvironmentRequest.add_member(:software_set_update_schedule, Shapes::ShapeRef.new(shape: SoftwareSetUpdateSchedule, location_name: "softwareSetUpdateSchedule"))
    CreateEnvironmentRequest.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "maintenanceWindow"))
    CreateEnvironmentRequest.add_member(:software_set_update_mode, Shapes::ShapeRef.new(shape: SoftwareSetUpdateMode, location_name: "softwareSetUpdateMode"))
    CreateEnvironmentRequest.add_member(:desired_software_set_id, Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: "desiredSoftwareSetId"))
    CreateEnvironmentRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateEnvironmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateEnvironmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateEnvironmentRequest.add_member(:device_creation_tags, Shapes::ShapeRef.new(shape: DeviceCreationTagsMap, location_name: "deviceCreationTags"))
    CreateEnvironmentRequest.struct_class = Types::CreateEnvironmentRequest

    CreateEnvironmentResponse.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentSummary, location_name: "environment"))
    CreateEnvironmentResponse.struct_class = Types::CreateEnvironmentResponse

    DayOfWeekList.member = Shapes::ShapeRef.new(shape: DayOfWeek)

    DeleteDeviceRequest.add_member(:id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location: "uri", location_name: "id"))
    DeleteDeviceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteDeviceRequest.struct_class = Types::DeleteDeviceRequest

    DeleteDeviceResponse.struct_class = Types::DeleteDeviceResponse

    DeleteEnvironmentRequest.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "id"))
    DeleteEnvironmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteEnvironmentRequest.struct_class = Types::DeleteEnvironmentRequest

    DeleteEnvironmentResponse.struct_class = Types::DeleteEnvironmentResponse

    DeregisterDeviceRequest.add_member(:id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location: "uri", location_name: "id"))
    DeregisterDeviceRequest.add_member(:target_device_status, Shapes::ShapeRef.new(shape: TargetDeviceStatus, location_name: "targetDeviceStatus"))
    DeregisterDeviceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeregisterDeviceRequest.struct_class = Types::DeregisterDeviceRequest

    DeregisterDeviceResponse.struct_class = Types::DeregisterDeviceResponse

    Device.add_member(:id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "id"))
    Device.add_member(:serial_number, Shapes::ShapeRef.new(shape: String, location_name: "serialNumber"))
    Device.add_member(:name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "name"))
    Device.add_member(:model, Shapes::ShapeRef.new(shape: String, location_name: "model"))
    Device.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    Device.add_member(:status, Shapes::ShapeRef.new(shape: DeviceStatus, location_name: "status"))
    Device.add_member(:current_software_set_id, Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: "currentSoftwareSetId"))
    Device.add_member(:current_software_set_version, Shapes::ShapeRef.new(shape: String, location_name: "currentSoftwareSetVersion"))
    Device.add_member(:desired_software_set_id, Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: "desiredSoftwareSetId"))
    Device.add_member(:pending_software_set_id, Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: "pendingSoftwareSetId"))
    Device.add_member(:pending_software_set_version, Shapes::ShapeRef.new(shape: String, location_name: "pendingSoftwareSetVersion"))
    Device.add_member(:software_set_update_schedule, Shapes::ShapeRef.new(shape: SoftwareSetUpdateSchedule, location_name: "softwareSetUpdateSchedule"))
    Device.add_member(:software_set_compliance_status, Shapes::ShapeRef.new(shape: DeviceSoftwareSetComplianceStatus, location_name: "softwareSetComplianceStatus"))
    Device.add_member(:software_set_update_status, Shapes::ShapeRef.new(shape: SoftwareSetUpdateStatus, location_name: "softwareSetUpdateStatus"))
    Device.add_member(:last_connected_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastConnectedAt"))
    Device.add_member(:last_posture_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastPostureAt"))
    Device.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Device.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Device.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    Device.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    Device.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    Device.struct_class = Types::Device

    DeviceCreationTagsMap.key = Shapes::ShapeRef.new(shape: DeviceCreationTagKey)
    DeviceCreationTagsMap.value = Shapes::ShapeRef.new(shape: DeviceCreationTagValue)

    DeviceList.member = Shapes::ShapeRef.new(shape: DeviceSummary)

    DeviceSummary.add_member(:id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "id"))
    DeviceSummary.add_member(:serial_number, Shapes::ShapeRef.new(shape: String, location_name: "serialNumber"))
    DeviceSummary.add_member(:name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "name"))
    DeviceSummary.add_member(:model, Shapes::ShapeRef.new(shape: String, location_name: "model"))
    DeviceSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    DeviceSummary.add_member(:status, Shapes::ShapeRef.new(shape: DeviceStatus, location_name: "status"))
    DeviceSummary.add_member(:current_software_set_id, Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: "currentSoftwareSetId"))
    DeviceSummary.add_member(:desired_software_set_id, Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: "desiredSoftwareSetId"))
    DeviceSummary.add_member(:pending_software_set_id, Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: "pendingSoftwareSetId"))
    DeviceSummary.add_member(:software_set_update_schedule, Shapes::ShapeRef.new(shape: SoftwareSetUpdateSchedule, location_name: "softwareSetUpdateSchedule"))
    DeviceSummary.add_member(:last_connected_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastConnectedAt"))
    DeviceSummary.add_member(:last_posture_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastPostureAt"))
    DeviceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    DeviceSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    DeviceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    DeviceSummary.struct_class = Types::DeviceSummary

    Environment.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "id"))
    Environment.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "name"))
    Environment.add_member(:desktop_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "desktopArn"))
    Environment.add_member(:desktop_endpoint, Shapes::ShapeRef.new(shape: DesktopEndpoint, location_name: "desktopEndpoint"))
    Environment.add_member(:desktop_type, Shapes::ShapeRef.new(shape: DesktopType, location_name: "desktopType"))
    Environment.add_member(:activation_code, Shapes::ShapeRef.new(shape: ActivationCode, location_name: "activationCode"))
    Environment.add_member(:registered_devices_count, Shapes::ShapeRef.new(shape: Integer, location_name: "registeredDevicesCount"))
    Environment.add_member(:software_set_update_schedule, Shapes::ShapeRef.new(shape: SoftwareSetUpdateSchedule, location_name: "softwareSetUpdateSchedule"))
    Environment.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "maintenanceWindow"))
    Environment.add_member(:software_set_update_mode, Shapes::ShapeRef.new(shape: SoftwareSetUpdateMode, location_name: "softwareSetUpdateMode"))
    Environment.add_member(:desired_software_set_id, Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: "desiredSoftwareSetId"))
    Environment.add_member(:pending_software_set_id, Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: "pendingSoftwareSetId"))
    Environment.add_member(:pending_software_set_version, Shapes::ShapeRef.new(shape: String, location_name: "pendingSoftwareSetVersion"))
    Environment.add_member(:software_set_compliance_status, Shapes::ShapeRef.new(shape: EnvironmentSoftwareSetComplianceStatus, location_name: "softwareSetComplianceStatus"))
    Environment.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Environment.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Environment.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    Environment.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    Environment.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    Environment.add_member(:device_creation_tags, Shapes::ShapeRef.new(shape: DeviceCreationTagsMap, location_name: "deviceCreationTags"))
    Environment.struct_class = Types::Environment

    EnvironmentList.member = Shapes::ShapeRef.new(shape: EnvironmentSummary)

    EnvironmentSummary.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "id"))
    EnvironmentSummary.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "name"))
    EnvironmentSummary.add_member(:desktop_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "desktopArn"))
    EnvironmentSummary.add_member(:desktop_endpoint, Shapes::ShapeRef.new(shape: DesktopEndpoint, location_name: "desktopEndpoint"))
    EnvironmentSummary.add_member(:desktop_type, Shapes::ShapeRef.new(shape: DesktopType, location_name: "desktopType"))
    EnvironmentSummary.add_member(:activation_code, Shapes::ShapeRef.new(shape: ActivationCode, location_name: "activationCode"))
    EnvironmentSummary.add_member(:software_set_update_schedule, Shapes::ShapeRef.new(shape: SoftwareSetUpdateSchedule, location_name: "softwareSetUpdateSchedule"))
    EnvironmentSummary.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "maintenanceWindow"))
    EnvironmentSummary.add_member(:software_set_update_mode, Shapes::ShapeRef.new(shape: SoftwareSetUpdateMode, location_name: "softwareSetUpdateMode"))
    EnvironmentSummary.add_member(:desired_software_set_id, Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: "desiredSoftwareSetId"))
    EnvironmentSummary.add_member(:pending_software_set_id, Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: "pendingSoftwareSetId"))
    EnvironmentSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    EnvironmentSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    EnvironmentSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    EnvironmentSummary.struct_class = Types::EnvironmentSummary

    GetDeviceRequest.add_member(:id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location: "uri", location_name: "id"))
    GetDeviceRequest.struct_class = Types::GetDeviceRequest

    GetDeviceResponse.add_member(:device, Shapes::ShapeRef.new(shape: Device, location_name: "device"))
    GetDeviceResponse.struct_class = Types::GetDeviceResponse

    GetEnvironmentRequest.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "id"))
    GetEnvironmentRequest.struct_class = Types::GetEnvironmentRequest

    GetEnvironmentResponse.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "environment"))
    GetEnvironmentResponse.struct_class = Types::GetEnvironmentResponse

    GetSoftwareSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: SoftwareSetId, required: true, location: "uri", location_name: "id"))
    GetSoftwareSetRequest.struct_class = Types::GetSoftwareSetRequest

    GetSoftwareSetResponse.add_member(:software_set, Shapes::ShapeRef.new(shape: SoftwareSet, location_name: "softwareSet"))
    GetSoftwareSetResponse.struct_class = Types::GetSoftwareSetResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDevicesRequest.struct_class = Types::ListDevicesRequest

    ListDevicesResponse.add_member(:devices, Shapes::ShapeRef.new(shape: DeviceList, location_name: "devices"))
    ListDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDevicesResponse.struct_class = Types::ListDevicesResponse

    ListEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEnvironmentsRequest.struct_class = Types::ListEnvironmentsRequest

    ListEnvironmentsResponse.add_member(:environments, Shapes::ShapeRef.new(shape: EnvironmentList, location_name: "environments"))
    ListEnvironmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentsResponse.struct_class = Types::ListEnvironmentsResponse

    ListSoftwareSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListSoftwareSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSoftwareSetsRequest.struct_class = Types::ListSoftwareSetsRequest

    ListSoftwareSetsResponse.add_member(:software_sets, Shapes::ShapeRef.new(shape: SoftwareSetList, location_name: "softwareSets"))
    ListSoftwareSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSoftwareSetsResponse.struct_class = Types::ListSoftwareSetsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MaintenanceWindow.add_member(:type, Shapes::ShapeRef.new(shape: MaintenanceWindowType, required: true, location_name: "type"))
    MaintenanceWindow.add_member(:start_time_hour, Shapes::ShapeRef.new(shape: Hour, location_name: "startTimeHour"))
    MaintenanceWindow.add_member(:start_time_minute, Shapes::ShapeRef.new(shape: Minute, location_name: "startTimeMinute"))
    MaintenanceWindow.add_member(:end_time_hour, Shapes::ShapeRef.new(shape: Hour, location_name: "endTimeHour"))
    MaintenanceWindow.add_member(:end_time_minute, Shapes::ShapeRef.new(shape: Minute, location_name: "endTimeMinute"))
    MaintenanceWindow.add_member(:days_of_the_week, Shapes::ShapeRef.new(shape: DayOfWeekList, location_name: "daysOfTheWeek"))
    MaintenanceWindow.add_member(:apply_time_of, Shapes::ShapeRef.new(shape: ApplyTimeOf, location_name: "applyTimeOf"))
    MaintenanceWindow.struct_class = Types::MaintenanceWindow

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Software.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Software.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    Software.struct_class = Types::Software

    SoftwareList.member = Shapes::ShapeRef.new(shape: Software)

    SoftwareSet.add_member(:id, Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: "id"))
    SoftwareSet.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    SoftwareSet.add_member(:released_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "releasedAt"))
    SoftwareSet.add_member(:supported_until, Shapes::ShapeRef.new(shape: Timestamp, location_name: "supportedUntil"))
    SoftwareSet.add_member(:validation_status, Shapes::ShapeRef.new(shape: SoftwareSetValidationStatus, location_name: "validationStatus"))
    SoftwareSet.add_member(:software, Shapes::ShapeRef.new(shape: SoftwareList, location_name: "software"))
    SoftwareSet.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    SoftwareSet.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    SoftwareSet.struct_class = Types::SoftwareSet

    SoftwareSetList.member = Shapes::ShapeRef.new(shape: SoftwareSetSummary)

    SoftwareSetSummary.add_member(:id, Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: "id"))
    SoftwareSetSummary.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    SoftwareSetSummary.add_member(:released_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "releasedAt"))
    SoftwareSetSummary.add_member(:supported_until, Shapes::ShapeRef.new(shape: Timestamp, location_name: "supportedUntil"))
    SoftwareSetSummary.add_member(:validation_status, Shapes::ShapeRef.new(shape: SoftwareSetValidationStatus, location_name: "validationStatus"))
    SoftwareSetSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    SoftwareSetSummary.struct_class = Types::SoftwareSetSummary

    TagKeys.member = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: String)
    TagsMap.value = Shapes::ShapeRef.new(shape: String)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDeviceRequest.add_member(:id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location: "uri", location_name: "id"))
    UpdateDeviceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "name"))
    UpdateDeviceRequest.add_member(:desired_software_set_id, Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: "desiredSoftwareSetId"))
    UpdateDeviceRequest.add_member(:software_set_update_schedule, Shapes::ShapeRef.new(shape: SoftwareSetUpdateSchedule, location_name: "softwareSetUpdateSchedule"))
    UpdateDeviceRequest.struct_class = Types::UpdateDeviceRequest

    UpdateDeviceResponse.add_member(:device, Shapes::ShapeRef.new(shape: DeviceSummary, location_name: "device"))
    UpdateDeviceResponse.struct_class = Types::UpdateDeviceResponse

    UpdateEnvironmentRequest.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "id"))
    UpdateEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "name"))
    UpdateEnvironmentRequest.add_member(:desktop_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "desktopArn"))
    UpdateEnvironmentRequest.add_member(:desktop_endpoint, Shapes::ShapeRef.new(shape: DesktopEndpoint, location_name: "desktopEndpoint"))
    UpdateEnvironmentRequest.add_member(:software_set_update_schedule, Shapes::ShapeRef.new(shape: SoftwareSetUpdateSchedule, location_name: "softwareSetUpdateSchedule"))
    UpdateEnvironmentRequest.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: "maintenanceWindow"))
    UpdateEnvironmentRequest.add_member(:software_set_update_mode, Shapes::ShapeRef.new(shape: SoftwareSetUpdateMode, location_name: "softwareSetUpdateMode"))
    UpdateEnvironmentRequest.add_member(:desired_software_set_id, Shapes::ShapeRef.new(shape: SoftwareSetIdOrEmptyString, location_name: "desiredSoftwareSetId"))
    UpdateEnvironmentRequest.add_member(:device_creation_tags, Shapes::ShapeRef.new(shape: DeviceCreationTagsMap, location_name: "deviceCreationTags"))
    UpdateEnvironmentRequest.struct_class = Types::UpdateEnvironmentRequest

    UpdateEnvironmentResponse.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentSummary, location_name: "environment"))
    UpdateEnvironmentResponse.struct_class = Types::UpdateEnvironmentResponse

    UpdateSoftwareSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: SoftwareSetId, required: true, location: "uri", location_name: "id"))
    UpdateSoftwareSetRequest.add_member(:validation_status, Shapes::ShapeRef.new(shape: SoftwareSetValidationStatus, required: true, location_name: "validationStatus"))
    UpdateSoftwareSetRequest.struct_class = Types::UpdateSoftwareSetRequest

    UpdateSoftwareSetResponse.struct_class = Types::UpdateSoftwareSetResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-08-22"

      api.metadata = {
        "apiVersion" => "2023-08-22",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "thinclient",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon WorkSpaces Thin Client",
        "serviceId" => "WorkSpaces Thin Client",
        "signatureVersion" => "v4",
        "signingName" => "thinclient",
        "uid" => "workspaces-thin-client-2023-08-22",
      }

      api.add_operation(:create_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/environments"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDevice"
        o.http_method = "DELETE"
        o.http_request_uri = "/devices/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironment"
        o.http_method = "DELETE"
        o.http_request_uri = "/environments/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:deregister_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterDevice"
        o.http_method = "POST"
        o.http_request_uri = "/deregister-device/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeregisterDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDevice"
        o.http_method = "GET"
        o.http_request_uri = "/devices/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironment"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_software_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSoftwareSet"
        o.http_method = "GET"
        o.http_request_uri = "/softwaresets/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetSoftwareSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSoftwareSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevices"
        o.http_method = "GET"
        o.http_request_uri = "/devices"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironments"
        o.http_method = "GET"
        o.http_request_uri = "/environments"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_software_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSoftwareSets"
        o.http_method = "GET"
        o.http_request_uri = "/softwaresets"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListSoftwareSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSoftwareSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDevice"
        o.http_method = "PATCH"
        o.http_request_uri = "/devices/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironment"
        o.http_method = "PATCH"
        o.http_request_uri = "/environments/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_software_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSoftwareSet"
        o.http_method = "PATCH"
        o.http_request_uri = "/softwaresets/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateSoftwareSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSoftwareSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
