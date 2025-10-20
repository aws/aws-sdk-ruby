# frozen_string_literal: true

# This is generated code!

module Aws::Repostspace
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#AccessorId", name: "AccessorId")
    AccessorIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.repostspace#AccessorIdList", name: "AccessorIdList", traits: {"smithy.api#length" => {"max" => 1000}})
    AdminId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#AdminId", name: "AdminId")
    AllowedDomainsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.repostspace#AllowedDomainsList", name: "AllowedDomainsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    BatchAddChannelRoleToAccessorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#BatchAddChannelRoleToAccessorsInput", name: "BatchAddChannelRoleToAccessorsInput")
    BatchAddChannelRoleToAccessorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#BatchAddChannelRoleToAccessorsOutput", name: "BatchAddChannelRoleToAccessorsOutput")
    BatchAddRoleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#BatchAddRoleInput", name: "BatchAddRoleInput")
    BatchAddRoleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#BatchAddRoleOutput", name: "BatchAddRoleOutput")
    BatchError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#BatchError", name: "BatchError")
    BatchErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.repostspace#BatchErrorList", name: "BatchErrorList")
    BatchRemoveChannelRoleFromAccessorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#BatchRemoveChannelRoleFromAccessorsInput", name: "BatchRemoveChannelRoleFromAccessorsInput")
    BatchRemoveChannelRoleFromAccessorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#BatchRemoveChannelRoleFromAccessorsOutput", name: "BatchRemoveChannelRoleFromAccessorsOutput")
    BatchRemoveRoleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#BatchRemoveRoleInput", name: "BatchRemoveRoleInput")
    BatchRemoveRoleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#BatchRemoveRoleOutput", name: "BatchRemoveRoleOutput")
    ChannelData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#ChannelData", name: "ChannelData")
    ChannelDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#ChannelDescription", name: "ChannelDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    ChannelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#ChannelId", name: "ChannelId", traits: {"smithy.api#length" => {"min" => 24, "max" => 24}})
    ChannelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#ChannelName", name: "ChannelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    ChannelRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.repostspace#ChannelRole", name: "ChannelRole")
    ChannelRoleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.repostspace#ChannelRoleList", name: "ChannelRoleList")
    ChannelRoles = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.repostspace#ChannelRoles", name: "ChannelRoles")
    ChannelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.repostspace#ChannelStatus", name: "ChannelStatus")
    ChannelsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.repostspace#ChannelsList", name: "ChannelsList")
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#ClientId", name: "ClientId")
    ConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.repostspace#ConfigurationStatus", name: "ConfigurationStatus")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.repostspace#ContentSize", name: "ContentSize")
    CreateChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#CreateChannelInput", name: "CreateChannelInput")
    CreateChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#CreateChannelOutput", name: "CreateChannelOutput")
    CreateSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#CreateSpaceInput", name: "CreateSpaceInput")
    CreateSpaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#CreateSpaceOutput", name: "CreateSpaceOutput")
    DeleteSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#DeleteSpaceInput", name: "DeleteSpaceInput")
    DeregisterAdminInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#DeregisterAdminInput", name: "DeregisterAdminInput")
    EmailDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#EmailDomain", name: "EmailDomain", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    ErrorCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.repostspace#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#ErrorMessage", name: "ErrorMessage")
    FeatureEnableParameter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.repostspace#FeatureEnableParameter", name: "FeatureEnableParameter")
    FeatureEnableStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.repostspace#FeatureEnableStatus", name: "FeatureEnableStatus")
    GetChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#GetChannelInput", name: "GetChannelInput")
    GetChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#GetChannelOutput", name: "GetChannelOutput")
    GetSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#GetSpaceInput", name: "GetSpaceInput")
    GetSpaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#GetSpaceOutput", name: "GetSpaceOutput")
    GroupAdmins = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.repostspace#GroupAdmins", name: "GroupAdmins")
    GroupCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.repostspace#GroupCount", name: "GroupCount")
    IdentityStoreId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#IdentityStoreId", name: "IdentityStoreId")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InviteBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#InviteBody", name: "InviteBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 600}, "smithy.api#sensitive" => {}})
    InviteTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#InviteTitle", name: "InviteTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    KMSKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#KMSKey", name: "KMSKey")
    ListChannelsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#ListChannelsInput", name: "ListChannelsInput")
    ListChannelsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.repostspace#ListChannelsLimit", name: "ListChannelsLimit", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 100}})
    ListChannelsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#ListChannelsOutput", name: "ListChannelsOutput")
    ListSpacesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#ListSpacesInput", name: "ListSpacesInput")
    ListSpacesLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.repostspace#ListSpacesLimit", name: "ListSpacesLimit", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 100}})
    ListSpacesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#ListSpacesOutput", name: "ListSpacesOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ProvisioningStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#ProvisioningStatus", name: "ProvisioningStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    RegisterAdminInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#RegisterAdminInput", name: "RegisterAdminInput")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Role = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.repostspace#Role", name: "Role")
    RoleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.repostspace#RoleList", name: "RoleList")
    Roles = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.repostspace#Roles", name: "Roles")
    SendInvitesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#SendInvitesInput", name: "SendInvitesInput")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SpaceData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#SpaceData", name: "SpaceData")
    SpaceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#SpaceDescription", name: "SpaceDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    SpaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#SpaceId", name: "SpaceId")
    SpaceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#SpaceName", name: "SpaceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#sensitive" => {}})
    SpaceSubdomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#SpaceSubdomain", name: "SpaceSubdomain", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    SpacesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.repostspace#SpacesList", name: "SpacesList")
    StorageLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.repostspace#StorageLimit", name: "StorageLimit")
    SupportedEmailDomainsParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#SupportedEmailDomainsParameters", name: "SupportedEmailDomainsParameters")
    SupportedEmailDomainsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#SupportedEmailDomainsStatus", name: "SupportedEmailDomainsStatus")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.repostspace#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.repostspace#Tags", name: "Tags", traits: {"smithy.api#sensitive" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TierLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.repostspace#TierLevel", name: "TierLevel")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#UpdateChannelInput", name: "UpdateChannelInput")
    UpdateChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#UpdateChannelOutput", name: "UpdateChannelOutput")
    UpdateSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#UpdateSpaceInput", name: "UpdateSpaceInput")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.repostspace#Url", name: "Url")
    UserAdmins = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.repostspace#UserAdmins", name: "UserAdmins")
    UserCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.repostspace#UserCount", name: "UserCount")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.repostspace#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.repostspace#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.repostspace#ValidationExceptionReason", name: "ValidationExceptionReason")
    VanityDomainStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.repostspace#VanityDomainStatus", name: "VanityDomainStatus")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessorIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorId)
    AllowedDomainsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailDomain)
    BatchAddChannelRoleToAccessorsInput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchAddChannelRoleToAccessorsInput.add_member(:channel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: "channelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchAddChannelRoleToAccessorsInput.add_member(:accessor_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorIdList, location_name: "accessorIds", traits: {"smithy.api#required" => {}}))
    BatchAddChannelRoleToAccessorsInput.add_member(:channel_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRole, location_name: "channelRole", traits: {"smithy.api#required" => {}}))
    BatchAddChannelRoleToAccessorsInput.type = Types::BatchAddChannelRoleToAccessorsInput
    BatchAddChannelRoleToAccessorsOutput.add_member(:added_accessor_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorIdList, location_name: "addedAccessorIds", traits: {"smithy.api#required" => {}}))
    BatchAddChannelRoleToAccessorsOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchErrorList, location_name: "errors", traits: {"smithy.api#required" => {}}))
    BatchAddChannelRoleToAccessorsOutput.type = Types::BatchAddChannelRoleToAccessorsOutput
    BatchAddRoleInput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchAddRoleInput.add_member(:accessor_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorIdList, location_name: "accessorIds", traits: {"smithy.api#required" => {}}))
    BatchAddRoleInput.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: "role", traits: {"smithy.api#required" => {}}))
    BatchAddRoleInput.type = Types::BatchAddRoleInput
    BatchAddRoleOutput.add_member(:added_accessor_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorIdList, location_name: "addedAccessorIds", traits: {"smithy.api#required" => {}}))
    BatchAddRoleOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchErrorList, location_name: "errors", traits: {"smithy.api#required" => {}}))
    BatchAddRoleOutput.type = Types::BatchAddRoleOutput
    BatchError.add_member(:accessor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorId, location_name: "accessorId", traits: {"smithy.api#required" => {}}))
    BatchError.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: "error", traits: {"smithy.api#required" => {}}))
    BatchError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    BatchError.type = Types::BatchError
    BatchErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchError)
    BatchRemoveChannelRoleFromAccessorsInput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchRemoveChannelRoleFromAccessorsInput.add_member(:channel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: "channelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchRemoveChannelRoleFromAccessorsInput.add_member(:accessor_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorIdList, location_name: "accessorIds", traits: {"smithy.api#required" => {}}))
    BatchRemoveChannelRoleFromAccessorsInput.add_member(:channel_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRole, location_name: "channelRole", traits: {"smithy.api#required" => {}}))
    BatchRemoveChannelRoleFromAccessorsInput.type = Types::BatchRemoveChannelRoleFromAccessorsInput
    BatchRemoveChannelRoleFromAccessorsOutput.add_member(:removed_accessor_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorIdList, location_name: "removedAccessorIds", traits: {"smithy.api#required" => {}}))
    BatchRemoveChannelRoleFromAccessorsOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchErrorList, location_name: "errors", traits: {"smithy.api#required" => {}}))
    BatchRemoveChannelRoleFromAccessorsOutput.type = Types::BatchRemoveChannelRoleFromAccessorsOutput
    BatchRemoveRoleInput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchRemoveRoleInput.add_member(:accessor_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorIdList, location_name: "accessorIds", traits: {"smithy.api#required" => {}}))
    BatchRemoveRoleInput.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: "role", traits: {"smithy.api#required" => {}}))
    BatchRemoveRoleInput.type = Types::BatchRemoveRoleInput
    BatchRemoveRoleOutput.add_member(:removed_accessor_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorIdList, location_name: "removedAccessorIds", traits: {"smithy.api#required" => {}}))
    BatchRemoveRoleOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchErrorList, location_name: "errors", traits: {"smithy.api#required" => {}}))
    BatchRemoveRoleOutput.type = Types::BatchRemoveRoleOutput
    ChannelData.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#required" => {}}))
    ChannelData.add_member(:channel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: "channelId", traits: {"smithy.api#required" => {}}))
    ChannelData.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: "channelName", traits: {"smithy.api#required" => {}}))
    ChannelData.add_member(:channel_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelDescription, location_name: "channelDescription"))
    ChannelData.add_member(:create_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createDateTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ChannelData.add_member(:delete_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "deleteDateTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ChannelData.add_member(:channel_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelStatus, location_name: "channelStatus", traits: {"smithy.api#required" => {}}))
    ChannelData.add_member(:user_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserCount, location_name: "userCount", traits: {"smithy.api#required" => {}}))
    ChannelData.add_member(:group_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupCount, location_name: "groupCount", traits: {"smithy.api#required" => {}}))
    ChannelData.type = Types::ChannelData
    ChannelRole.add_member(:asker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASKER", traits: {"smithy.api#enumValue" => "ASKER"}))
    ChannelRole.add_member(:expert, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPERT", traits: {"smithy.api#enumValue" => "EXPERT"}))
    ChannelRole.add_member(:moderator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MODERATOR", traits: {"smithy.api#enumValue" => "MODERATOR"}))
    ChannelRole.add_member(:supportrequestor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUPPORTREQUESTOR", traits: {"smithy.api#enumValue" => "SUPPORTREQUESTOR"}))
    ChannelRoleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRole)
    ChannelRoles.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorId)
    ChannelRoles.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRoleList)
    ChannelStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ChannelStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ChannelStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ChannelStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ChannelStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ChannelStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ChannelsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelData)
    ConfigurationStatus.add_member(:configured, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFIGURED", traits: {"smithy.api#enumValue" => "CONFIGURED"}))
    ConfigurationStatus.add_member(:unconfigured, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNCONFIGURED", traits: {"smithy.api#enumValue" => "UNCONFIGURED"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateChannelInput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: "channelName", traits: {"smithy.api#required" => {}}))
    CreateChannelInput.add_member(:channel_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelDescription, location_name: "channelDescription"))
    CreateChannelInput.type = Types::CreateChannelInput
    CreateChannelOutput.add_member(:channel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: "channelId", traits: {"smithy.api#required" => {}}))
    CreateChannelOutput.type = Types::CreateChannelOutput
    CreateSpaceInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateSpaceInput.add_member(:subdomain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceSubdomain, location_name: "subdomain", traits: {"smithy.api#required" => {}}))
    CreateSpaceInput.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TierLevel, location_name: "tier", traits: {"smithy.api#required" => {}}))
    CreateSpaceInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceDescription, location_name: "description"))
    CreateSpaceInput.add_member(:user_kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: "userKMSKey"))
    CreateSpaceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateSpaceInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn"))
    CreateSpaceInput.add_member(:supported_email_domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedEmailDomainsParameters, location_name: "supportedEmailDomains"))
    CreateSpaceInput.type = Types::CreateSpaceInput
    CreateSpaceOutput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#required" => {}}))
    CreateSpaceOutput.type = Types::CreateSpaceOutput
    DeleteSpaceInput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSpaceInput.type = Types::DeleteSpaceInput
    DeregisterAdminInput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterAdminInput.add_member(:admin_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminId, location_name: "adminId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterAdminInput.type = Types::DeregisterAdminInput
    FeatureEnableParameter.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    FeatureEnableParameter.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    FeatureEnableStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    FeatureEnableStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    FeatureEnableStatus.add_member(:not_allowed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_ALLOWED", traits: {"smithy.api#enumValue" => "NOT_ALLOWED"}))
    GetChannelInput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelInput.add_member(:channel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: "channelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelInput.type = Types::GetChannelInput
    GetChannelOutput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#required" => {}}))
    GetChannelOutput.add_member(:channel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: "channelId", traits: {"smithy.api#required" => {}}))
    GetChannelOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: "channelName", traits: {"smithy.api#required" => {}}))
    GetChannelOutput.add_member(:channel_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelDescription, location_name: "channelDescription"))
    GetChannelOutput.add_member(:create_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createDateTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetChannelOutput.add_member(:delete_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "deleteDateTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetChannelOutput.add_member(:channel_roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelRoles, location_name: "channelRoles"))
    GetChannelOutput.add_member(:channel_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelStatus, location_name: "channelStatus", traits: {"smithy.api#required" => {}}))
    GetChannelOutput.type = Types::GetChannelOutput
    GetSpaceInput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpaceInput.type = Types::GetSpaceInput
    GetSpaceOutput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#required" => {}}))
    GetSpaceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetSpaceOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetSpaceOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetSpaceOutput.add_member(:configuration_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationStatus, location_name: "configurationStatus", traits: {"smithy.api#required" => {}}))
    GetSpaceOutput.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: "clientId", traits: {"smithy.api#required" => {}}))
    GetSpaceOutput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "identityStoreId"))
    GetSpaceOutput.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "applicationArn"))
    GetSpaceOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceDescription, location_name: "description"))
    GetSpaceOutput.add_member(:vanity_domain_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VanityDomainStatus, location_name: "vanityDomainStatus", traits: {"smithy.api#required" => {}}))
    GetSpaceOutput.add_member(:vanity_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "vanityDomain", traits: {"smithy.api#required" => {}}))
    GetSpaceOutput.add_member(:random_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "randomDomain", traits: {"smithy.api#required" => {}}))
    GetSpaceOutput.add_member(:customer_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "customerRoleArn"))
    GetSpaceOutput.add_member(:create_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createDateTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSpaceOutput.add_member(:delete_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "deleteDateTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetSpaceOutput.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TierLevel, location_name: "tier", traits: {"smithy.api#required" => {}}))
    GetSpaceOutput.add_member(:storage_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLimit, location_name: "storageLimit", traits: {"smithy.api#required" => {}}))
    GetSpaceOutput.add_member(:user_admins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAdmins, location_name: "userAdmins", traits: {"smithy.api#deprecated" => {"message" => "This property has been depracted and will be replaced by the roles property."}}))
    GetSpaceOutput.add_member(:group_admins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupAdmins, location_name: "groupAdmins", traits: {"smithy.api#deprecated" => {"message" => "This property has been depracted and will be replaced by the roles property."}}))
    GetSpaceOutput.add_member(:roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Roles, location_name: "roles"))
    GetSpaceOutput.add_member(:user_kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: "userKMSKey"))
    GetSpaceOutput.add_member(:user_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserCount, location_name: "userCount"))
    GetSpaceOutput.add_member(:content_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSize, location_name: "contentSize"))
    GetSpaceOutput.add_member(:supported_email_domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedEmailDomainsStatus, location_name: "supportedEmailDomains"))
    GetSpaceOutput.type = Types::GetSpaceOutput
    GroupAdmins.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminId)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListChannelsInput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChannelsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListChannelsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsLimit, location_name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListChannelsInput.type = Types::ListChannelsInput
    ListChannelsOutput.add_member(:channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelsList, location_name: "channels", traits: {"smithy.api#required" => {}}))
    ListChannelsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListChannelsOutput.type = Types::ListChannelsOutput
    ListSpacesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSpacesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpacesLimit, location_name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListSpacesInput.type = Types::ListSpacesInput
    ListSpacesOutput.add_member(:spaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpacesList, location_name: "spaces", traits: {"smithy.api#required" => {}}))
    ListSpacesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListSpacesOutput.type = Types::ListSpacesOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    RegisterAdminInput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterAdminInput.add_member(:admin_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminId, location_name: "adminId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterAdminInput.type = Types::RegisterAdminInput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Role.add_member(:expert, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPERT", traits: {"smithy.api#enumValue" => "EXPERT"}))
    Role.add_member(:moderator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MODERATOR", traits: {"smithy.api#enumValue" => "MODERATOR"}))
    Role.add_member(:administrator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADMINISTRATOR", traits: {"smithy.api#enumValue" => "ADMINISTRATOR"}))
    Role.add_member(:supportrequestor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUPPORTREQUESTOR", traits: {"smithy.api#enumValue" => "SUPPORTREQUESTOR"}))
    RoleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role)
    Roles.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorId)
    Roles.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleList)
    SendInvitesInput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendInvitesInput.add_member(:accessor_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorIdList, location_name: "accessorIds", traits: {"smithy.api#required" => {}}))
    SendInvitesInput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InviteTitle, location_name: "title", traits: {"smithy.api#required" => {}}))
    SendInvitesInput.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InviteBody, location_name: "body", traits: {"smithy.api#required" => {}}))
    SendInvitesInput.type = Types::SendInvitesInput
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SpaceData.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#required" => {}}))
    SpaceData.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    SpaceData.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    SpaceData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceDescription, location_name: "description"))
    SpaceData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    SpaceData.add_member(:configuration_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationStatus, location_name: "configurationStatus", traits: {"smithy.api#required" => {}}))
    SpaceData.add_member(:vanity_domain_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VanityDomainStatus, location_name: "vanityDomainStatus", traits: {"smithy.api#required" => {}}))
    SpaceData.add_member(:vanity_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "vanityDomain", traits: {"smithy.api#required" => {}}))
    SpaceData.add_member(:random_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "randomDomain", traits: {"smithy.api#required" => {}}))
    SpaceData.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TierLevel, location_name: "tier", traits: {"smithy.api#required" => {}}))
    SpaceData.add_member(:storage_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLimit, location_name: "storageLimit", traits: {"smithy.api#required" => {}}))
    SpaceData.add_member(:create_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createDateTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    SpaceData.add_member(:delete_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "deleteDateTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    SpaceData.add_member(:user_kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: "userKMSKey"))
    SpaceData.add_member(:user_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserCount, location_name: "userCount"))
    SpaceData.add_member(:content_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSize, location_name: "contentSize"))
    SpaceData.add_member(:supported_email_domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedEmailDomainsStatus, location_name: "supportedEmailDomains"))
    SpaceData.type = Types::SpaceData
    SpacesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceData)
    SupportedEmailDomainsParameters.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureEnableParameter, location_name: "enabled"))
    SupportedEmailDomainsParameters.add_member(:allowed_domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedDomainsList, location_name: "allowedDomains"))
    SupportedEmailDomainsParameters.type = Types::SupportedEmailDomainsParameters
    SupportedEmailDomainsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureEnableStatus, location_name: "enabled"))
    SupportedEmailDomainsStatus.add_member(:allowed_domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedDomainsList, location_name: "allowedDomains"))
    SupportedEmailDomainsStatus.type = Types::SupportedEmailDomainsStatus
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TierLevel.add_member(:basic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    TierLevel.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateChannelInput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelInput.add_member(:channel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: "channelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: "channelName", traits: {"smithy.api#required" => {}}))
    UpdateChannelInput.add_member(:channel_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelDescription, location_name: "channelDescription"))
    UpdateChannelInput.type = Types::UpdateChannelInput
    UpdateChannelOutput.type = Types::UpdateChannelOutput
    UpdateSpaceInput.add_member(:space_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSpaceInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceDescription, location_name: "description"))
    UpdateSpaceInput.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TierLevel, location_name: "tier"))
    UpdateSpaceInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn"))
    UpdateSpaceInput.add_member(:supported_email_domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedEmailDomainsParameters, location_name: "supportedEmailDomains"))
    UpdateSpaceInput.type = Types::UpdateSpaceInput
    UserAdmins.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminId)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))
    VanityDomainStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    VanityDomainStatus.add_member(:approved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    VanityDomainStatus.add_member(:unapproved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNAPPROVED", traits: {"smithy.api#enumValue" => "UNAPPROVED"}))

    RepostSpace = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.repostspace#RepostSpace"
      service.name = "RepostSpace"
      service.version = "2022-05-13"
      service.traits = {"aws.api#service" => {"arnNamespace" => "repostspace", "sdkId" => "repostspace", "cloudTrailEventSource" => "repostspace.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "repostspace"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id", "content-length", "x-api-key", "authorization", "x-amz-date", "x-amz-security-token"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"]}, "smithy.api#title" => "AWS re:Post Private"}
      service.add_operation(:batch_add_channel_role_to_accessors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#BatchAddChannelRoleToAccessors"
        operation.name = "BatchAddChannelRoleToAccessors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAddChannelRoleToAccessorsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAddChannelRoleToAccessorsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/spaces/{spaceId}/channels/{channelId}/roles", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_add_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#BatchAddRole"
        operation.name = "BatchAddRole"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAddRoleInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAddRoleOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/spaces/{spaceId}/roles", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_remove_channel_role_from_accessors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#BatchRemoveChannelRoleFromAccessors"
        operation.name = "BatchRemoveChannelRoleFromAccessors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchRemoveChannelRoleFromAccessorsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchRemoveChannelRoleFromAccessorsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/spaces/{spaceId}/channels/{channelId}/roles", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_remove_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#BatchRemoveRole"
        operation.name = "BatchRemoveRole"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchRemoveRoleInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchRemoveRoleOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/spaces/{spaceId}/roles", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/spaces/{spaceId}/channels", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#CreateSpace"
        operation.name = "CreateSpace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSpaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSpaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/spaces", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#DeleteSpace"
        operation.name = "DeleteSpace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSpaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/spaces/{spaceId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_admin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#DeregisterAdmin"
        operation.name = "DeregisterAdmin"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterAdminInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/spaces/{spaceId}/admins/{adminId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#GetChannel"
        operation.name = "GetChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/spaces/{spaceId}/channels/{channelId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#GetSpace"
        operation.name = "GetSpace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSpaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSpaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/spaces/{spaceId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#ListChannels"
        operation.name = "ListChannels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/spaces/{spaceId}/channels", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListChannels.new
      end)
      service.add_operation(:list_spaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#ListSpaces"
        operation.name = "ListSpaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpacesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpacesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/spaces", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSpaces.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:register_admin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#RegisterAdmin"
        operation.name = "RegisterAdmin"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterAdminInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/spaces/{spaceId}/admins/{adminId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:send_invites, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#SendInvites"
        operation.name = "SendInvites"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendInvitesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/spaces/{spaceId}/invite", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/spaces/{spaceId}/channels/{channelId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.repostspace#UpdateSpace"
        operation.name = "UpdateSpace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSpaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/spaces/{spaceId}", "code" => 200}, "smithy.api#idempotent" => {}}
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
