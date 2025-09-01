# frozen_string_literal: true

# This is generated code!

module Aws::WorkSpacesThinClient
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActivationCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#ActivationCode', name: 'ActivationCode', traits: {"smithy.api#pattern" => "^[a-z]{2}[a-z0-9]{6}$", "smithy.api#sensitive" => {}})
    ApplyTimeOf = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesthinclient#ApplyTimeOf', name: 'ApplyTimeOf')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[0-9]{0,12}:[a-zA-Z0-9\\-\\/\\._]+$"})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#CreateEnvironmentRequest', name: 'CreateEnvironmentRequest')
    CreateEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#CreateEnvironmentResponse', name: 'CreateEnvironmentResponse')
    DayOfWeek = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesthinclient#DayOfWeek', name: 'DayOfWeek')
    DayOfWeekList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesthinclient#DayOfWeekList', name: 'DayOfWeekList', traits: {"smithy.api#length" => {"min" => 1, "max" => 7}})
    DeleteDeviceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#DeleteDeviceRequest', name: 'DeleteDeviceRequest')
    DeleteDeviceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#DeleteDeviceResponse', name: 'DeleteDeviceResponse')
    DeleteEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#DeleteEnvironmentRequest', name: 'DeleteEnvironmentRequest')
    DeleteEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#DeleteEnvironmentResponse', name: 'DeleteEnvironmentResponse')
    DeregisterDeviceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#DeregisterDeviceRequest', name: 'DeregisterDeviceRequest')
    DeregisterDeviceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#DeregisterDeviceResponse', name: 'DeregisterDeviceResponse')
    DesktopEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#DesktopEndpoint', name: 'DesktopEndpoint', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(https:\\/\\/)[a-z0-9]+([\\-\\.]{1}[a-z0-9]+)*\\.[a-z]{2,32}(:[0-9]{1,5})?(\\/.*)?$", "smithy.api#sensitive" => {}})
    DesktopType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesthinclient#DesktopType', name: 'DesktopType')
    Device = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#Device', name: 'Device')
    DeviceCreationTagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#DeviceCreationTagKey', name: 'DeviceCreationTagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[A-Za-z0-9 _=@:.+-/]+$"})
    DeviceCreationTagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#DeviceCreationTagValue', name: 'DeviceCreationTagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9 _=@:.+-/]+$"})
    DeviceCreationTagsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.workspacesthinclient#DeviceCreationTagsMap', name: 'DeviceCreationTagsMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    DeviceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#DeviceId', name: 'DeviceId', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{24}$"})
    DeviceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesthinclient#DeviceList', name: 'DeviceList')
    DeviceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#DeviceName', name: 'DeviceName', traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^$|^[0-9\\p{IsAlphabetic}+:,.@'\" -]*$", "smithy.api#sensitive" => {}})
    DeviceSoftwareSetComplianceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesthinclient#DeviceSoftwareSetComplianceStatus', name: 'DeviceSoftwareSetComplianceStatus')
    DeviceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesthinclient#DeviceStatus', name: 'DeviceStatus')
    DeviceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#DeviceSummary', name: 'DeviceSummary')
    Environment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#Environment', name: 'Environment')
    EnvironmentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#EnvironmentId', name: 'EnvironmentId', traits: {"smithy.api#pattern" => "^[a-z0-9]{9}$"})
    EnvironmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesthinclient#EnvironmentList', name: 'EnvironmentList')
    EnvironmentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#EnvironmentName', name: 'EnvironmentName', traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^$|^[0-9\\p{IsAlphabetic}+:,.@'\" -][0-9\\p{IsAlphabetic}+=:,.@'\" -]*$", "smithy.api#sensitive" => {}})
    EnvironmentSoftwareSetComplianceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesthinclient#EnvironmentSoftwareSetComplianceStatus', name: 'EnvironmentSoftwareSetComplianceStatus')
    EnvironmentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#EnvironmentSummary', name: 'EnvironmentSummary')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#ExceptionMessage', name: 'ExceptionMessage')
    FieldName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#FieldName', name: 'FieldName')
    GetDeviceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#GetDeviceRequest', name: 'GetDeviceRequest')
    GetDeviceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#GetDeviceResponse', name: 'GetDeviceResponse')
    GetEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#GetEnvironmentRequest', name: 'GetEnvironmentRequest')
    GetEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#GetEnvironmentResponse', name: 'GetEnvironmentResponse')
    GetSoftwareSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#GetSoftwareSetRequest', name: 'GetSoftwareSetRequest')
    GetSoftwareSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#GetSoftwareSetResponse', name: 'GetSoftwareSetResponse')
    Hour = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspacesthinclient#Hour', name: 'Hour', traits: {"smithy.api#range" => {"min" => 0, "max" => 23}})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=\\/,.@-]+:kms:[a-zA-Z0-9\\-]*:[0-9]{0,12}:key\\/[a-zA-Z0-9-]+$"})
    ListDevicesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#ListDevicesRequest', name: 'ListDevicesRequest')
    ListDevicesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#ListDevicesResponse', name: 'ListDevicesResponse')
    ListEnvironmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#ListEnvironmentsRequest', name: 'ListEnvironmentsRequest')
    ListEnvironmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#ListEnvironmentsResponse', name: 'ListEnvironmentsResponse')
    ListSoftwareSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#ListSoftwareSetsRequest', name: 'ListSoftwareSetsRequest')
    ListSoftwareSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#ListSoftwareSetsResponse', name: 'ListSoftwareSetsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaintenanceWindow = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#MaintenanceWindow', name: 'MaintenanceWindow')
    MaintenanceWindowType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesthinclient#MaintenanceWindowType', name: 'MaintenanceWindowType')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspacesthinclient#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    Minute = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspacesthinclient#Minute', name: 'Minute', traits: {"smithy.api#range" => {"min" => 0, "max" => 59}})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    QuotaCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#QuotaCode', name: 'QuotaCode')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#ResourceId', name: 'ResourceId')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#ResourceType', name: 'ResourceType')
    RetryAfterSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspacesthinclient#RetryAfterSeconds', name: 'RetryAfterSeconds')
    ServiceCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#ServiceCode', name: 'ServiceCode')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Software = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#Software', name: 'Software')
    SoftwareList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesthinclient#SoftwareList', name: 'SoftwareList')
    SoftwareSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#SoftwareSet', name: 'SoftwareSet')
    SoftwareSetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#SoftwareSetId', name: 'SoftwareSetId', traits: {"smithy.api#pattern" => "^[0-9]{1,9}$"})
    SoftwareSetIdOrEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#SoftwareSetIdOrEmptyString', name: 'SoftwareSetIdOrEmptyString', traits: {"smithy.api#pattern" => "^[0-9]{0,9}$"})
    SoftwareSetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesthinclient#SoftwareSetList', name: 'SoftwareSetList')
    SoftwareSetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#SoftwareSetSummary', name: 'SoftwareSetSummary')
    SoftwareSetUpdateMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesthinclient#SoftwareSetUpdateMode', name: 'SoftwareSetUpdateMode')
    SoftwareSetUpdateSchedule = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesthinclient#SoftwareSetUpdateSchedule', name: 'SoftwareSetUpdateSchedule')
    SoftwareSetUpdateStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesthinclient#SoftwareSetUpdateStatus', name: 'SoftwareSetUpdateStatus')
    SoftwareSetValidationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesthinclient#SoftwareSetValidationStatus', name: 'SoftwareSetValidationStatus')
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesthinclient#TagKeys', name: 'TagKeys', traits: {"smithy.api#sensitive" => {}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#TagResourceResponse', name: 'TagResourceResponse')
    TagsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.workspacesthinclient#TagsMap', name: 'TagsMap', traits: {"smithy.api#sensitive" => {}})
    TargetDeviceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesthinclient#TargetDeviceStatus', name: 'TargetDeviceStatus')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.workspacesthinclient#Timestamp', name: 'Timestamp')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateDeviceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#UpdateDeviceRequest', name: 'UpdateDeviceRequest')
    UpdateDeviceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#UpdateDeviceResponse', name: 'UpdateDeviceResponse')
    UpdateEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#UpdateEnvironmentRequest', name: 'UpdateEnvironmentRequest')
    UpdateEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#UpdateEnvironmentResponse', name: 'UpdateEnvironmentResponse')
    UpdateSoftwareSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#UpdateSoftwareSetRequest', name: 'UpdateSoftwareSetRequest')
    UpdateSoftwareSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#UpdateSoftwareSetResponse', name: 'UpdateSoftwareSetResponse')
    UserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspacesthinclient#UserId', name: 'UserId', traits: {"smithy.api#sensitive" => {}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspacesthinclient#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspacesthinclient#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspacesthinclient#ValidationExceptionReason', name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ApplyTimeOf.add_member(:utc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UTC', traits: {"smithy.api#enumValue" => "UTC"}))
    ApplyTimeOf.add_member(:device, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVICE', traits: {"smithy.api#enumValue" => "DEVICE"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource associated with the request.</p>"}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource associated with the request.</p>"}))
    ConflictException.type = Types::ConflictException
    CreateEnvironmentRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the environment.</p>"}))
    CreateEnvironmentRequest.add_member(:desktop_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'desktopArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the desktop to stream from Amazon WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:desktop_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: DesktopEndpoint, location_name: 'desktopEndpoint', traits: {"smithy.api#documentation" => "<p>The URL for the identity provider login (only for environments that use AppStream 2.0).</p>"}))
    CreateEnvironmentRequest.add_member(:software_set_update_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetUpdateSchedule, location_name: 'softwareSetUpdateSchedule', traits: {"smithy.api#documentation" => "<p>An option to define if software updates should be applied within a maintenance window.</p>"}))
    CreateEnvironmentRequest.add_member(:maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: 'maintenanceWindow', traits: {"smithy.api#documentation" => "<p>A specification for a time window to apply software updates.</p>"}))
    CreateEnvironmentRequest.add_member(:software_set_update_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetUpdateMode, location_name: 'softwareSetUpdateMode', traits: {"smithy.api#documentation" => "<p>An option to define which software updates to apply.</p>"}))
    CreateEnvironmentRequest.add_member(:desired_software_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'desiredSoftwareSetId', traits: {"smithy.api#documentation" => "<p>The ID of the software set to apply.</p>"}))
    CreateEnvironmentRequest.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Key Management Service key to use to encrypt the environment.</p>"}))
    CreateEnvironmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateEnvironmentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>"}))
    CreateEnvironmentRequest.add_member(:device_creation_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceCreationTagsMap, location_name: 'deviceCreationTags', traits: {"smithy.api#documentation" => "<p>A map of the key-value pairs of the tag or tags to assign to the newly created devices for this environment.</p>"}))
    CreateEnvironmentRequest.type = Types::CreateEnvironmentRequest
    CreateEnvironmentResponse.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummary, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>Describes an environment.</p>", "smithy.api#nestedProperties" => {}}))
    CreateEnvironmentResponse.type = Types::CreateEnvironmentResponse
    DayOfWeek.add_member(:monday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONDAY', traits: {"smithy.api#enumValue" => "MONDAY"}))
    DayOfWeek.add_member(:tuesday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TUESDAY', traits: {"smithy.api#enumValue" => "TUESDAY"}))
    DayOfWeek.add_member(:wednesday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEDNESDAY', traits: {"smithy.api#enumValue" => "WEDNESDAY"}))
    DayOfWeek.add_member(:thursday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THURSDAY', traits: {"smithy.api#enumValue" => "THURSDAY"}))
    DayOfWeek.add_member(:friday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FRIDAY', traits: {"smithy.api#enumValue" => "FRIDAY"}))
    DayOfWeek.add_member(:saturday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SATURDAY', traits: {"smithy.api#enumValue" => "SATURDAY"}))
    DayOfWeek.add_member(:sunday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUNDAY', traits: {"smithy.api#enumValue" => "SUNDAY"}))
    DayOfWeekList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek)
    DeleteDeviceRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the device to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeviceRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteDeviceRequest.type = Types::DeleteDeviceRequest
    DeleteDeviceResponse.type = Types::DeleteDeviceResponse
    DeleteEnvironmentRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the environment to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEnvironmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteEnvironmentRequest.type = Types::DeleteEnvironmentRequest
    DeleteEnvironmentResponse.type = Types::DeleteEnvironmentResponse
    DeregisterDeviceRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the device to deregister.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterDeviceRequest.add_member(:target_device_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDeviceStatus, location_name: 'targetDeviceStatus', traits: {"smithy.api#documentation" => "<p>The desired new status for the device.</p>"}))
    DeregisterDeviceRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>", "smithy.api#idempotencyToken" => {}}))
    DeregisterDeviceRequest.type = Types::DeregisterDeviceRequest
    DeregisterDeviceResponse.type = Types::DeregisterDeviceResponse
    DesktopType.add_member(:workspaces, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKSPACES', traits: {"smithy.api#enumValue" => "workspaces"}))
    DesktopType.add_member(:appstream, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPSTREAM', traits: {"smithy.api#enumValue" => "appstream"}))
    DesktopType.add_member(:workspaces_web, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKSPACES_WEB', traits: {"smithy.api#enumValue" => "workspaces-web"}))
    Device.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>"}))
    Device.add_member(:serial_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serialNumber', traits: {"smithy.api#documentation" => "<p>The hardware serial number of the device.</p>"}))
    Device.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the device.</p>"}))
    Device.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'model', traits: {"smithy.api#documentation" => "<p>The model number of the device.</p>"}))
    Device.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The ID of the environment the device is associated with.</p>"}))
    Device.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the device.</p>"}))
    Device.add_member(:current_software_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'currentSoftwareSetId', traits: {"smithy.api#documentation" => "<p>The ID of the software set currently installed on the device.</p>"}))
    Device.add_member(:current_software_set_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'currentSoftwareSetVersion', traits: {"smithy.api#documentation" => "<p>The version of the software set currently installed on the device.</p>"}))
    Device.add_member(:desired_software_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'desiredSoftwareSetId', traits: {"smithy.api#documentation" => "<p>The ID of the software set which the device has been set to.</p>"}))
    Device.add_member(:pending_software_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'pendingSoftwareSetId', traits: {"smithy.api#documentation" => "<p>The ID of the software set that is pending to be installed on the device.</p>"}))
    Device.add_member(:pending_software_set_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'pendingSoftwareSetVersion', traits: {"smithy.api#documentation" => "<p>The version of the software set that is pending to be installed on the device.</p>"}))
    Device.add_member(:software_set_update_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetUpdateSchedule, location_name: 'softwareSetUpdateSchedule', traits: {"smithy.api#documentation" => "<p>An option to define if software updates should be applied within a maintenance window.</p>"}))
    Device.add_member(:software_set_compliance_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceSoftwareSetComplianceStatus, location_name: 'softwareSetComplianceStatus', traits: {"smithy.api#documentation" => "<p>Describes if the software currently installed on the device is a supported version.</p>"}))
    Device.add_member(:software_set_update_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetUpdateStatus, location_name: 'softwareSetUpdateStatus', traits: {"smithy.api#documentation" => "<p>Describes if the device has a supported version of software installed.</p>"}))
    Device.add_member(:last_connected_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastConnectedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of the most recent session on the device.</p>"}))
    Device.add_member(:last_posture_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastPostureAt', traits: {"smithy.api#documentation" => "<p>The timestamp of the most recent check-in of the device.</p>"}))
    Device.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the device was created.</p>"}))
    Device.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the device was updated.</p>"}))
    Device.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the device.</p>"}))
    Device.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Key Management Service key used to encrypt the device.</p>"}))
    Device.add_member(:last_user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'lastUserId', traits: {"smithy.api#documentation" => "<p>The user ID of the most recent session on the device.</p>"}))
    Device.type = Types::Device
    DeviceCreationTagsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceCreationTagKey)
    DeviceCreationTagsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceCreationTagValue)
    DeviceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceSummary)
    DeviceSoftwareSetComplianceStatus.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    DeviceSoftwareSetComplianceStatus.add_member(:compliant, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLIANT', traits: {"smithy.api#enumValue" => "COMPLIANT"}))
    DeviceSoftwareSetComplianceStatus.add_member(:not_compliant, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_COMPLIANT', traits: {"smithy.api#enumValue" => "NOT_COMPLIANT"}))
    DeviceStatus.add_member(:registered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTERED', traits: {"smithy.api#enumValue" => "REGISTERED"}))
    DeviceStatus.add_member(:deregistering, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEREGISTERING', traits: {"smithy.api#enumValue" => "DEREGISTERING"}))
    DeviceStatus.add_member(:deregistered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEREGISTERED', traits: {"smithy.api#enumValue" => "DEREGISTERED"}))
    DeviceStatus.add_member(:archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARCHIVED', traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    DeviceSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>"}))
    DeviceSummary.add_member(:serial_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serialNumber', traits: {"smithy.api#documentation" => "<p>The hardware serial number of the device.</p>"}))
    DeviceSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the device.</p>"}))
    DeviceSummary.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'model', traits: {"smithy.api#documentation" => "<p>The model number of the device.</p>"}))
    DeviceSummary.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The ID of the environment the device is associated with.</p>"}))
    DeviceSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the device.</p>"}))
    DeviceSummary.add_member(:current_software_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'currentSoftwareSetId', traits: {"smithy.api#documentation" => "<p>The ID of the software set currently installed on the device.</p>"}))
    DeviceSummary.add_member(:desired_software_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'desiredSoftwareSetId', traits: {"smithy.api#documentation" => "<p>The ID of the software set which the device has been set to.</p>"}))
    DeviceSummary.add_member(:pending_software_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'pendingSoftwareSetId', traits: {"smithy.api#documentation" => "<p>The ID of the software set that is pending to be installed on the device.</p>"}))
    DeviceSummary.add_member(:software_set_update_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetUpdateSchedule, location_name: 'softwareSetUpdateSchedule', traits: {"smithy.api#documentation" => "<p>An option to define if software updates should be applied within a maintenance window.</p>"}))
    DeviceSummary.add_member(:last_connected_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastConnectedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of the most recent session on the device.</p>"}))
    DeviceSummary.add_member(:last_posture_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastPostureAt', traits: {"smithy.api#documentation" => "<p>The timestamp of the most recent check-in of the device.</p>"}))
    DeviceSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the device was created.</p>"}))
    DeviceSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the device was updated.</p>"}))
    DeviceSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the device.</p>"}))
    DeviceSummary.add_member(:last_user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'lastUserId', traits: {"smithy.api#documentation" => "<p>The user ID of the most recent session on the device.</p>"}))
    DeviceSummary.type = Types::DeviceSummary
    Environment.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the environment.</p>"}))
    Environment.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>"}))
    Environment.add_member(:desktop_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'desktopArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the desktop to stream from Amazon WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.</p>"}))
    Environment.add_member(:desktop_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: DesktopEndpoint, location_name: 'desktopEndpoint', traits: {"smithy.api#documentation" => "<p>The URL for the identity provider login (only for environments that use AppStream 2.0).</p>"}))
    Environment.add_member(:desktop_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DesktopType, location_name: 'desktopType', traits: {"smithy.api#documentation" => "<p>The type of streaming desktop for the environment.</p>"}))
    Environment.add_member(:activation_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivationCode, location_name: 'activationCode', traits: {"smithy.api#documentation" => "<p>The activation code to register a device to the environment.</p>"}))
    Environment.add_member(:registered_devices_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'registeredDevicesCount', traits: {"smithy.api#documentation" => "<p>The number of devices registered to the environment.</p>"}))
    Environment.add_member(:software_set_update_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetUpdateSchedule, location_name: 'softwareSetUpdateSchedule', traits: {"smithy.api#documentation" => "<p>An option to define if software updates should be applied within a maintenance window.</p>"}))
    Environment.add_member(:maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: 'maintenanceWindow', traits: {"smithy.api#documentation" => "<p>A specification for a time window to apply software updates.</p>"}))
    Environment.add_member(:software_set_update_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetUpdateMode, location_name: 'softwareSetUpdateMode', traits: {"smithy.api#documentation" => "<p>An option to define which software updates to apply.</p>"}))
    Environment.add_member(:desired_software_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'desiredSoftwareSetId', traits: {"smithy.api#documentation" => "<p>The ID of the software set to apply.</p>"}))
    Environment.add_member(:pending_software_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'pendingSoftwareSetId', traits: {"smithy.api#documentation" => "<p>The ID of the software set that is pending to be installed.</p>"}))
    Environment.add_member(:pending_software_set_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'pendingSoftwareSetVersion', traits: {"smithy.api#documentation" => "<p>The version of the software set that is pending to be installed.</p>"}))
    Environment.add_member(:software_set_compliance_status, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSoftwareSetComplianceStatus, location_name: 'softwareSetComplianceStatus', traits: {"smithy.api#documentation" => "<p>Describes if the software currently installed on all devices in the environment is a supported version.</p>"}))
    Environment.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the environment was created.</p>"}))
    Environment.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the device was updated.</p>"}))
    Environment.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the environment.</p>"}))
    Environment.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Key Management Service key used to encrypt the environment.</p>"}))
    Environment.add_member(:device_creation_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceCreationTagsMap, location_name: 'deviceCreationTags', traits: {"smithy.api#documentation" => "<p>The tag keys and optional values for the newly created devices for this environment.</p>"}))
    Environment.type = Types::Environment
    EnvironmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummary)
    EnvironmentSoftwareSetComplianceStatus.add_member(:no_registered_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_REGISTERED_DEVICES', traits: {"smithy.api#enumValue" => "NO_REGISTERED_DEVICES"}))
    EnvironmentSoftwareSetComplianceStatus.add_member(:compliant, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLIANT', traits: {"smithy.api#enumValue" => "COMPLIANT"}))
    EnvironmentSoftwareSetComplianceStatus.add_member(:not_compliant, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_COMPLIANT', traits: {"smithy.api#enumValue" => "NOT_COMPLIANT"}))
    EnvironmentSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the environment.</p>"}))
    EnvironmentSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>"}))
    EnvironmentSummary.add_member(:desktop_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'desktopArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the desktop to stream from Amazon WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.</p>"}))
    EnvironmentSummary.add_member(:desktop_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: DesktopEndpoint, location_name: 'desktopEndpoint', traits: {"smithy.api#documentation" => "<p>The URL for the identity provider login (only for environments that use AppStream 2.0).</p>"}))
    EnvironmentSummary.add_member(:desktop_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DesktopType, location_name: 'desktopType', traits: {"smithy.api#documentation" => "<p>The type of streaming desktop for the environment.</p>"}))
    EnvironmentSummary.add_member(:activation_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivationCode, location_name: 'activationCode', traits: {"smithy.api#documentation" => "<p>The activation code to register a device to the environment.</p>"}))
    EnvironmentSummary.add_member(:software_set_update_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetUpdateSchedule, location_name: 'softwareSetUpdateSchedule', traits: {"smithy.api#documentation" => "<p>An option to define if software updates should be applied within a maintenance window.</p>"}))
    EnvironmentSummary.add_member(:maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: 'maintenanceWindow', traits: {"smithy.api#documentation" => "<p>A specification for a time window to apply software updates.</p>"}))
    EnvironmentSummary.add_member(:software_set_update_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetUpdateMode, location_name: 'softwareSetUpdateMode', traits: {"smithy.api#documentation" => "<p>An option to define which software updates to apply.</p>"}))
    EnvironmentSummary.add_member(:desired_software_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'desiredSoftwareSetId', traits: {"smithy.api#documentation" => "<p>The ID of the software set to apply.</p>"}))
    EnvironmentSummary.add_member(:pending_software_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'pendingSoftwareSetId', traits: {"smithy.api#documentation" => "<p>The ID of the software set that is pending to be installed.</p>"}))
    EnvironmentSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the environment was created.</p>"}))
    EnvironmentSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the device was updated.</p>"}))
    EnvironmentSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the environment.</p>"}))
    EnvironmentSummary.type = Types::EnvironmentSummary
    GetDeviceRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the device for which to return information.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeviceRequest.type = Types::GetDeviceRequest
    GetDeviceResponse.add_member(:device, Smithy::Schema::Shapes::ShapeRef.new(shape: Device, location_name: 'device', traits: {"smithy.api#documentation" => "<p>Describes an device.</p>"}))
    GetDeviceResponse.type = Types::GetDeviceResponse
    GetEnvironmentRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the environment for which to return information.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEnvironmentRequest.type = Types::GetEnvironmentRequest
    GetEnvironmentResponse.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>Describes an environment.</p>", "smithy.api#nestedProperties" => {}}))
    GetEnvironmentResponse.type = Types::GetEnvironmentResponse
    GetSoftwareSetRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the software set for which to return information.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSoftwareSetRequest.type = Types::GetSoftwareSetRequest
    GetSoftwareSetResponse.add_member(:software_set, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSet, location_name: 'softwareSet', traits: {"smithy.api#documentation" => "<p>Describes a software set.</p>"}))
    GetSoftwareSetResponse.type = Types::GetSoftwareSetResponse
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds to wait before retrying the next request.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListDevicesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDevicesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDevicesRequest.type = Types::ListDevicesRequest
    ListDevicesResponse.add_member(:devices, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceList, location_name: 'devices', traits: {"smithy.api#documentation" => "<p>Describes devices.</p>"}))
    ListDevicesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>"}))
    ListDevicesResponse.type = Types::ListDevicesResponse
    ListEnvironmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListEnvironmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListEnvironmentsRequest.type = Types::ListEnvironmentsRequest
    ListEnvironmentsResponse.add_member(:environments, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentList, location_name: 'environments', traits: {"smithy.api#documentation" => "<p>Describes environments.</p>"}))
    ListEnvironmentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>"}))
    ListEnvironmentsResponse.type = Types::ListEnvironmentsResponse
    ListSoftwareSetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSoftwareSetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSoftwareSetsRequest.type = Types::ListSoftwareSetsRequest
    ListSoftwareSetsResponse.add_member(:software_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetList, location_name: 'softwareSets', traits: {"smithy.api#documentation" => "<p>Describes software sets.</p>"}))
    ListSoftwareSetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>"}))
    ListSoftwareSetsResponse.type = Types::ListSoftwareSetsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for which you want to retrieve tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of the key-value pairs for the tag or tags assigned to the specified resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MaintenanceWindow.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceWindowType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>An option to select the default or custom maintenance window.</p>", "smithy.api#required" => {}}))
    MaintenanceWindow.add_member(:start_time_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Hour, location_name: 'startTimeHour', traits: {"smithy.api#documentation" => "<p>The hour for the maintenance window start (<code>00</code>-<code>23</code>).</p>"}))
    MaintenanceWindow.add_member(:start_time_minute, Smithy::Schema::Shapes::ShapeRef.new(shape: Minute, location_name: 'startTimeMinute', traits: {"smithy.api#documentation" => "<p>The minutes past the hour for the maintenance window start (<code>00</code>-<code>59</code>).</p>"}))
    MaintenanceWindow.add_member(:end_time_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Hour, location_name: 'endTimeHour', traits: {"smithy.api#documentation" => "<p>The hour for the maintenance window end (<code>00</code>-<code>23</code>).</p>"}))
    MaintenanceWindow.add_member(:end_time_minute, Smithy::Schema::Shapes::ShapeRef.new(shape: Minute, location_name: 'endTimeMinute', traits: {"smithy.api#documentation" => "<p>The minutes for the maintenance window end (<code>00</code>-<code>59</code>).</p>"}))
    MaintenanceWindow.add_member(:days_of_the_week, Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeekList, location_name: 'daysOfTheWeek', traits: {"smithy.api#documentation" => "<p>The days of the week during which the maintenance window is open.</p>"}))
    MaintenanceWindow.add_member(:apply_time_of, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyTimeOf, location_name: 'applyTimeOf', traits: {"smithy.api#documentation" => "<p>The option to set the maintenance window during the device local time or Universal Coordinated Time (UTC).</p>"}))
    MaintenanceWindow.type = Types::MaintenanceWindow
    MaintenanceWindowType.add_member(:system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM', traits: {"smithy.api#enumValue" => "SYSTEM"}))
    MaintenanceWindowType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource associated with the request.</p>"}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource associated with the request.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that exceeds the service quota.</p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that exceeds the service quota.</p>"}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The code for the service in <a href=\"https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html\">Service Quotas</a>.</p>"}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The code for the quota in <a href=\"https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html\">Service Quotas</a>.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Software.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the software component.</p>"}))
    Software.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the software component.</p>"}))
    Software.type = Types::Software
    SoftwareList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Software)
    SoftwareSet.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the software set.</p>"}))
    SoftwareSet.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the software set.</p>"}))
    SoftwareSet.add_member(:released_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'releasedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the software set was released.</p>"}))
    SoftwareSet.add_member(:supported_until, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'supportedUntil', traits: {"smithy.api#documentation" => "<p>The timestamp of the end of support for the software set.</p>"}))
    SoftwareSet.add_member(:validation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetValidationStatus, location_name: 'validationStatus', traits: {"smithy.api#documentation" => "<p>An option to define if the software set has been validated.</p>"}))
    SoftwareSet.add_member(:software, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareList, location_name: 'software', traits: {"smithy.api#documentation" => "<p>A list of the software components in the software set.</p>"}))
    SoftwareSet.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the software set.</p>"}))
    SoftwareSet.type = Types::SoftwareSet
    SoftwareSetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetSummary)
    SoftwareSetSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the software set.</p>"}))
    SoftwareSetSummary.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the software set.</p>"}))
    SoftwareSetSummary.add_member(:released_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'releasedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the software set was released.</p>"}))
    SoftwareSetSummary.add_member(:supported_until, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'supportedUntil', traits: {"smithy.api#documentation" => "<p>The timestamp of the end of support for the software set.</p>"}))
    SoftwareSetSummary.add_member(:validation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetValidationStatus, location_name: 'validationStatus', traits: {"smithy.api#documentation" => "<p>An option to define if the software set has been validated.</p>"}))
    SoftwareSetSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the software set.</p>"}))
    SoftwareSetSummary.type = Types::SoftwareSetSummary
    SoftwareSetUpdateMode.add_member(:use_latest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USE_LATEST', traits: {"smithy.api#enumValue" => "USE_LATEST"}))
    SoftwareSetUpdateMode.add_member(:use_desired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USE_DESIRED', traits: {"smithy.api#enumValue" => "USE_DESIRED"}))
    SoftwareSetUpdateSchedule.add_member(:use_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USE_MAINTENANCE_WINDOW', traits: {"smithy.api#enumValue" => "USE_MAINTENANCE_WINDOW"}))
    SoftwareSetUpdateSchedule.add_member(:apply_immediately, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLY_IMMEDIATELY', traits: {"smithy.api#enumValue" => "APPLY_IMMEDIATELY"}))
    SoftwareSetUpdateStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    SoftwareSetUpdateStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    SoftwareSetUpdateStatus.add_member(:up_to_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UP_TO_DATE', traits: {"smithy.api#enumValue" => "UP_TO_DATE"}))
    SoftwareSetValidationStatus.add_member(:validated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATED', traits: {"smithy.api#enumValue" => "VALIDATED"}))
    SoftwareSetValidationStatus.add_member(:not_validated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_VALIDATED', traits: {"smithy.api#enumValue" => "NOT_VALIDATED"}))
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TargetDeviceStatus.add_member(:deregistered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEREGISTERED', traits: {"smithy.api#enumValue" => "DEREGISTERED"}))
    TargetDeviceStatus.add_member(:archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARCHIVED', traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The code for the service in <a href=\"https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html\">Service Quotas</a>.</p>"}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The code for the quota in <a href=\"https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html\">Service Quotas</a>.</p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds to wait before retrying the next request.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The keys of the key-value pairs for the tag or tags you want to remove from the specified resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDeviceRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the device to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeviceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the device to update.</p>"}))
    UpdateDeviceRequest.add_member(:desired_software_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'desiredSoftwareSetId', traits: {"smithy.api#documentation" => "<p>The ID of the software set to apply.</p>"}))
    UpdateDeviceRequest.add_member(:software_set_update_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetUpdateSchedule, location_name: 'softwareSetUpdateSchedule', traits: {"smithy.api#documentation" => "<p>An option to define if software updates should be applied within a maintenance window.</p>"}))
    UpdateDeviceRequest.type = Types::UpdateDeviceRequest
    UpdateDeviceResponse.add_member(:device, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceSummary, location_name: 'device', traits: {"smithy.api#documentation" => "<p>Describes a device.</p>"}))
    UpdateDeviceResponse.type = Types::UpdateDeviceResponse
    UpdateEnvironmentRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the environment to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEnvironmentRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the environment to update.</p>"}))
    UpdateEnvironmentRequest.add_member(:desktop_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'desktopArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the desktop to stream from Amazon WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.</p>"}))
    UpdateEnvironmentRequest.add_member(:desktop_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: DesktopEndpoint, location_name: 'desktopEndpoint', traits: {"smithy.api#documentation" => "<p>The URL for the identity provider login (only for environments that use AppStream 2.0).</p>"}))
    UpdateEnvironmentRequest.add_member(:software_set_update_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetUpdateSchedule, location_name: 'softwareSetUpdateSchedule', traits: {"smithy.api#documentation" => "<p>An option to define if software updates should be applied within a maintenance window.</p>"}))
    UpdateEnvironmentRequest.add_member(:maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceWindow, location_name: 'maintenanceWindow', traits: {"smithy.api#documentation" => "<p>A specification for a time window to apply software updates.</p>"}))
    UpdateEnvironmentRequest.add_member(:software_set_update_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetUpdateMode, location_name: 'softwareSetUpdateMode', traits: {"smithy.api#documentation" => "<p>An option to define which software updates to apply.</p>"}))
    UpdateEnvironmentRequest.add_member(:desired_software_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetIdOrEmptyString, location_name: 'desiredSoftwareSetId', traits: {"smithy.api#documentation" => "<p>The ID of the software set to apply.</p>"}))
    UpdateEnvironmentRequest.add_member(:device_creation_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceCreationTagsMap, location_name: 'deviceCreationTags', traits: {"smithy.api#documentation" => "<p>A map of the key-value pairs of the tag or tags to assign to the newly created devices for this environment.</p>"}))
    UpdateEnvironmentRequest.type = Types::UpdateEnvironmentRequest
    UpdateEnvironmentResponse.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummary, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>Describes an environment.</p>", "smithy.api#nestedProperties" => {}}))
    UpdateEnvironmentResponse.type = Types::UpdateEnvironmentResponse
    UpdateSoftwareSetRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the software set to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSoftwareSetRequest.add_member(:validation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareSetValidationStatus, location_name: 'validationStatus', traits: {"smithy.api#documentation" => "<p>An option to define if the software set has been validated.</p>", "smithy.api#required" => {}}))
    UpdateSoftwareSetRequest.type = Types::UpdateSoftwareSetRequest
    UpdateSoftwareSetResponse.type = Types::UpdateSoftwareSetResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>"}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>A list of fields that didn't validate.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message that describes the reason for the exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "other"}))

    ThinClient = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.workspacesthinclient#ThinClient"
      service.name = "ThinClient"
      service.version = "2023-08-22"
      service.traits = {"aws.api#service" => {"sdkId" => "WorkSpaces Thin Client", "arnNamespace" => "thinclient", "cloudTrailEventSource" => "thinclient.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "thinclient"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Amazon WorkSpaces Thin Client"}
      service.add_operation(:create_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#CreateEnvironment"
        operation.name = "CreateEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/environments", "code" => 201}}
      end)
      service.add_operation(:delete_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#DeleteDevice"
        operation.name = "DeleteDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeviceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeviceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/devices/{id}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#DeleteEnvironment"
        operation.name = "DeleteEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/environments/{id}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#DeregisterDevice"
        operation.name = "DeregisterDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterDeviceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterDeviceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/deregister-device/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#GetDevice"
        operation.name = "GetDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeviceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/devices/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#GetEnvironment"
        operation.name = "GetEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/environments/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_software_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#GetSoftwareSet"
        operation.name = "GetSoftwareSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSoftwareSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSoftwareSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/softwaresets/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_devices, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#ListDevices"
        operation.name = "ListDevices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/devices", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDevices.new
      end)
      service.add_operation(:list_environments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#ListEnvironments"
        operation.name = "ListEnvironments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/environments", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironments.new
      end)
      service.add_operation(:list_software_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#ListSoftwareSets"
        operation.name = "ListSoftwareSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSoftwareSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSoftwareSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/softwaresets", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSoftwareSets.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#UpdateDevice"
        operation.name = "UpdateDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeviceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeviceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/devices/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#UpdateEnvironment"
        operation.name = "UpdateEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/environments/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_software_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspacesthinclient#UpdateSoftwareSet"
        operation.name = "UpdateSoftwareSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSoftwareSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSoftwareSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/softwaresets/{id}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
