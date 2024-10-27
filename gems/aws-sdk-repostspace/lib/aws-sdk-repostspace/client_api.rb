# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Repostspace
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessorId = Shapes::StringShape.new(name: 'AccessorId')
    AccessorIdList = Shapes::ListShape.new(name: 'AccessorIdList')
    AdminId = Shapes::StringShape.new(name: 'AdminId')
    Arn = Shapes::StringShape.new(name: 'Arn')
    BatchAddRoleInput = Shapes::StructureShape.new(name: 'BatchAddRoleInput')
    BatchAddRoleOutput = Shapes::StructureShape.new(name: 'BatchAddRoleOutput')
    BatchError = Shapes::StructureShape.new(name: 'BatchError')
    BatchErrorList = Shapes::ListShape.new(name: 'BatchErrorList')
    BatchRemoveRoleInput = Shapes::StructureShape.new(name: 'BatchRemoveRoleInput')
    BatchRemoveRoleOutput = Shapes::StructureShape.new(name: 'BatchRemoveRoleOutput')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    ConfigurationStatus = Shapes::StringShape.new(name: 'ConfigurationStatus')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentSize = Shapes::IntegerShape.new(name: 'ContentSize')
    CreateSpaceInput = Shapes::StructureShape.new(name: 'CreateSpaceInput')
    CreateSpaceOutput = Shapes::StructureShape.new(name: 'CreateSpaceOutput')
    DeleteSpaceInput = Shapes::StructureShape.new(name: 'DeleteSpaceInput')
    DeregisterAdminInput = Shapes::StructureShape.new(name: 'DeregisterAdminInput')
    ErrorCode = Shapes::IntegerShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetSpaceInput = Shapes::StructureShape.new(name: 'GetSpaceInput')
    GetSpaceOutput = Shapes::StructureShape.new(name: 'GetSpaceOutput')
    GroupAdmins = Shapes::ListShape.new(name: 'GroupAdmins')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InviteBody = Shapes::StringShape.new(name: 'InviteBody')
    InviteTitle = Shapes::StringShape.new(name: 'InviteTitle')
    KMSKey = Shapes::StringShape.new(name: 'KMSKey')
    ListSpacesInput = Shapes::StructureShape.new(name: 'ListSpacesInput')
    ListSpacesLimit = Shapes::IntegerShape.new(name: 'ListSpacesLimit')
    ListSpacesOutput = Shapes::StructureShape.new(name: 'ListSpacesOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ProvisioningStatus = Shapes::StringShape.new(name: 'ProvisioningStatus')
    RegisterAdminInput = Shapes::StructureShape.new(name: 'RegisterAdminInput')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Role = Shapes::StringShape.new(name: 'Role')
    RoleList = Shapes::ListShape.new(name: 'RoleList')
    Roles = Shapes::MapShape.new(name: 'Roles')
    SendInvitesInput = Shapes::StructureShape.new(name: 'SendInvitesInput')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SpaceData = Shapes::StructureShape.new(name: 'SpaceData')
    SpaceDescription = Shapes::StringShape.new(name: 'SpaceDescription')
    SpaceId = Shapes::StringShape.new(name: 'SpaceId')
    SpaceName = Shapes::StringShape.new(name: 'SpaceName')
    SpaceSubdomain = Shapes::StringShape.new(name: 'SpaceSubdomain')
    SpacesList = Shapes::ListShape.new(name: 'SpacesList')
    StorageLimit = Shapes::IntegerShape.new(name: 'StorageLimit')
    String = Shapes::StringShape.new(name: 'String')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TierLevel = Shapes::StringShape.new(name: 'TierLevel')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateSpaceInput = Shapes::StructureShape.new(name: 'UpdateSpaceInput')
    Url = Shapes::StringShape.new(name: 'Url')
    UserAdmins = Shapes::ListShape.new(name: 'UserAdmins')
    UserCount = Shapes::IntegerShape.new(name: 'UserCount')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VanityDomainStatus = Shapes::StringShape.new(name: 'VanityDomainStatus')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessorIdList.member = Shapes::ShapeRef.new(shape: AccessorId)

    BatchAddRoleInput.add_member(:accessor_ids, Shapes::ShapeRef.new(shape: AccessorIdList, required: true, location_name: "accessorIds"))
    BatchAddRoleInput.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "role"))
    BatchAddRoleInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location: "uri", location_name: "spaceId"))
    BatchAddRoleInput.struct_class = Types::BatchAddRoleInput

    BatchAddRoleOutput.add_member(:added_accessor_ids, Shapes::ShapeRef.new(shape: AccessorIdList, required: true, location_name: "addedAccessorIds"))
    BatchAddRoleOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchErrorList, required: true, location_name: "errors"))
    BatchAddRoleOutput.struct_class = Types::BatchAddRoleOutput

    BatchError.add_member(:accessor_id, Shapes::ShapeRef.new(shape: AccessorId, required: true, location_name: "accessorId"))
    BatchError.add_member(:error, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "error"))
    BatchError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    BatchError.struct_class = Types::BatchError

    BatchErrorList.member = Shapes::ShapeRef.new(shape: BatchError)

    BatchRemoveRoleInput.add_member(:accessor_ids, Shapes::ShapeRef.new(shape: AccessorIdList, required: true, location_name: "accessorIds"))
    BatchRemoveRoleInput.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "role"))
    BatchRemoveRoleInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location: "uri", location_name: "spaceId"))
    BatchRemoveRoleInput.struct_class = Types::BatchRemoveRoleInput

    BatchRemoveRoleOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchErrorList, required: true, location_name: "errors"))
    BatchRemoveRoleOutput.add_member(:removed_accessor_ids, Shapes::ShapeRef.new(shape: AccessorIdList, required: true, location_name: "removedAccessorIds"))
    BatchRemoveRoleOutput.struct_class = Types::BatchRemoveRoleOutput

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateSpaceInput.add_member(:description, Shapes::ShapeRef.new(shape: SpaceDescription, location_name: "description"))
    CreateSpaceInput.add_member(:name, Shapes::ShapeRef.new(shape: SpaceName, required: true, location_name: "name"))
    CreateSpaceInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn"))
    CreateSpaceInput.add_member(:subdomain, Shapes::ShapeRef.new(shape: SpaceSubdomain, required: true, location_name: "subdomain"))
    CreateSpaceInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateSpaceInput.add_member(:tier, Shapes::ShapeRef.new(shape: TierLevel, required: true, location_name: "tier"))
    CreateSpaceInput.add_member(:user_kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "userKMSKey"))
    CreateSpaceInput.struct_class = Types::CreateSpaceInput

    CreateSpaceOutput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    CreateSpaceOutput.struct_class = Types::CreateSpaceOutput

    DeleteSpaceInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location: "uri", location_name: "spaceId"))
    DeleteSpaceInput.struct_class = Types::DeleteSpaceInput

    DeregisterAdminInput.add_member(:admin_id, Shapes::ShapeRef.new(shape: AdminId, required: true, location: "uri", location_name: "adminId"))
    DeregisterAdminInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location: "uri", location_name: "spaceId"))
    DeregisterAdminInput.struct_class = Types::DeregisterAdminInput

    GetSpaceInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location: "uri", location_name: "spaceId"))
    GetSpaceInput.struct_class = Types::GetSpaceInput

    GetSpaceOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    GetSpaceOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "clientId"))
    GetSpaceOutput.add_member(:configuration_status, Shapes::ShapeRef.new(shape: ConfigurationStatus, required: true, location_name: "configurationStatus"))
    GetSpaceOutput.add_member(:content_size, Shapes::ShapeRef.new(shape: ContentSize, location_name: "contentSize"))
    GetSpaceOutput.add_member(:create_date_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createDateTime"))
    GetSpaceOutput.add_member(:customer_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "customerRoleArn"))
    GetSpaceOutput.add_member(:delete_date_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "deleteDateTime"))
    GetSpaceOutput.add_member(:description, Shapes::ShapeRef.new(shape: SpaceDescription, location_name: "description"))
    GetSpaceOutput.add_member(:group_admins, Shapes::ShapeRef.new(shape: GroupAdmins, deprecated: true, location_name: "groupAdmins", metadata: {"deprecatedMessage"=>"This property has been depracted and will be replaced by the roles property."}))
    GetSpaceOutput.add_member(:name, Shapes::ShapeRef.new(shape: SpaceName, required: true, location_name: "name"))
    GetSpaceOutput.add_member(:random_domain, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "randomDomain"))
    GetSpaceOutput.add_member(:roles, Shapes::ShapeRef.new(shape: Roles, location_name: "roles"))
    GetSpaceOutput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    GetSpaceOutput.add_member(:status, Shapes::ShapeRef.new(shape: ProvisioningStatus, required: true, location_name: "status"))
    GetSpaceOutput.add_member(:storage_limit, Shapes::ShapeRef.new(shape: StorageLimit, required: true, location_name: "storageLimit"))
    GetSpaceOutput.add_member(:tier, Shapes::ShapeRef.new(shape: TierLevel, required: true, location_name: "tier"))
    GetSpaceOutput.add_member(:user_admins, Shapes::ShapeRef.new(shape: UserAdmins, deprecated: true, location_name: "userAdmins", metadata: {"deprecatedMessage"=>"This property has been depracted and will be replaced by the roles property."}))
    GetSpaceOutput.add_member(:user_count, Shapes::ShapeRef.new(shape: UserCount, location_name: "userCount"))
    GetSpaceOutput.add_member(:user_kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "userKMSKey"))
    GetSpaceOutput.add_member(:vanity_domain, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "vanityDomain"))
    GetSpaceOutput.add_member(:vanity_domain_status, Shapes::ShapeRef.new(shape: VanityDomainStatus, required: true, location_name: "vanityDomainStatus"))
    GetSpaceOutput.struct_class = Types::GetSpaceOutput

    GroupAdmins.member = Shapes::ShapeRef.new(shape: AdminId)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListSpacesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSpacesLimit, location: "querystring", location_name: "maxResults"))
    ListSpacesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListSpacesInput.struct_class = Types::ListSpacesInput

    ListSpacesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSpacesOutput.add_member(:spaces, Shapes::ShapeRef.new(shape: SpacesList, required: true, location_name: "spaces"))
    ListSpacesOutput.struct_class = Types::ListSpacesOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    RegisterAdminInput.add_member(:admin_id, Shapes::ShapeRef.new(shape: AdminId, required: true, location: "uri", location_name: "adminId"))
    RegisterAdminInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location: "uri", location_name: "spaceId"))
    RegisterAdminInput.struct_class = Types::RegisterAdminInput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RoleList.member = Shapes::ShapeRef.new(shape: Role)

    Roles.key = Shapes::ShapeRef.new(shape: AccessorId)
    Roles.value = Shapes::ShapeRef.new(shape: RoleList)

    SendInvitesInput.add_member(:accessor_ids, Shapes::ShapeRef.new(shape: AccessorIdList, required: true, location_name: "accessorIds"))
    SendInvitesInput.add_member(:body, Shapes::ShapeRef.new(shape: InviteBody, required: true, location_name: "body"))
    SendInvitesInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location: "uri", location_name: "spaceId"))
    SendInvitesInput.add_member(:title, Shapes::ShapeRef.new(shape: InviteTitle, required: true, location_name: "title"))
    SendInvitesInput.struct_class = Types::SendInvitesInput

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SpaceData.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    SpaceData.add_member(:configuration_status, Shapes::ShapeRef.new(shape: ConfigurationStatus, required: true, location_name: "configurationStatus"))
    SpaceData.add_member(:content_size, Shapes::ShapeRef.new(shape: ContentSize, location_name: "contentSize"))
    SpaceData.add_member(:create_date_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createDateTime"))
    SpaceData.add_member(:delete_date_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "deleteDateTime"))
    SpaceData.add_member(:description, Shapes::ShapeRef.new(shape: SpaceDescription, location_name: "description"))
    SpaceData.add_member(:name, Shapes::ShapeRef.new(shape: SpaceName, required: true, location_name: "name"))
    SpaceData.add_member(:random_domain, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "randomDomain"))
    SpaceData.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    SpaceData.add_member(:status, Shapes::ShapeRef.new(shape: ProvisioningStatus, required: true, location_name: "status"))
    SpaceData.add_member(:storage_limit, Shapes::ShapeRef.new(shape: StorageLimit, required: true, location_name: "storageLimit"))
    SpaceData.add_member(:tier, Shapes::ShapeRef.new(shape: TierLevel, required: true, location_name: "tier"))
    SpaceData.add_member(:user_count, Shapes::ShapeRef.new(shape: UserCount, location_name: "userCount"))
    SpaceData.add_member(:user_kms_key, Shapes::ShapeRef.new(shape: KMSKey, location_name: "userKMSKey"))
    SpaceData.add_member(:vanity_domain, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "vanityDomain"))
    SpaceData.add_member(:vanity_domain_status, Shapes::ShapeRef.new(shape: VanityDomainStatus, required: true, location_name: "vanityDomainStatus"))
    SpaceData.struct_class = Types::SpaceData

    SpacesList.member = Shapes::ShapeRef.new(shape: SpaceData)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateSpaceInput.add_member(:description, Shapes::ShapeRef.new(shape: SpaceDescription, location_name: "description"))
    UpdateSpaceInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn"))
    UpdateSpaceInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location: "uri", location_name: "spaceId"))
    UpdateSpaceInput.add_member(:tier, Shapes::ShapeRef.new(shape: TierLevel, location_name: "tier"))
    UpdateSpaceInput.struct_class = Types::UpdateSpaceInput

    UserAdmins.member = Shapes::ShapeRef.new(shape: AdminId)

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-05-13"

      api.metadata = {
        "apiVersion" => "2022-05-13",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "repostspace",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS re:Post Private",
        "serviceId" => "repostspace",
        "signatureVersion" => "v4",
        "signingName" => "repostspace",
        "uid" => "repostspace-2022-05-13",
      }

      api.add_operation(:batch_add_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchAddRole"
        o.http_method = "POST"
        o.http_request_uri = "/spaces/{spaceId}/roles"
        o.input = Shapes::ShapeRef.new(shape: BatchAddRoleInput)
        o.output = Shapes::ShapeRef.new(shape: BatchAddRoleOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_remove_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchRemoveRole"
        o.http_method = "PATCH"
        o.http_request_uri = "/spaces/{spaceId}/roles"
        o.input = Shapes::ShapeRef.new(shape: BatchRemoveRoleInput)
        o.output = Shapes::ShapeRef.new(shape: BatchRemoveRoleOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSpace"
        o.http_method = "POST"
        o.http_request_uri = "/spaces"
        o.input = Shapes::ShapeRef.new(shape: CreateSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSpaceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSpace"
        o.http_method = "DELETE"
        o.http_request_uri = "/spaces/{spaceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:deregister_admin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterAdmin"
        o.http_method = "DELETE"
        o.http_request_uri = "/spaces/{spaceId}/admins/{adminId}"
        o.input = Shapes::ShapeRef.new(shape: DeregisterAdminInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSpace"
        o.http_method = "GET"
        o.http_request_uri = "/spaces/{spaceId}"
        o.input = Shapes::ShapeRef.new(shape: GetSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: GetSpaceOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_spaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSpaces"
        o.http_method = "GET"
        o.http_request_uri = "/spaces"
        o.input = Shapes::ShapeRef.new(shape: ListSpacesInput)
        o.output = Shapes::ShapeRef.new(shape: ListSpacesOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:register_admin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterAdmin"
        o.http_method = "POST"
        o.http_request_uri = "/spaces/{spaceId}/admins/{adminId}"
        o.input = Shapes::ShapeRef.new(shape: RegisterAdminInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:send_invites, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendInvites"
        o.http_method = "POST"
        o.http_request_uri = "/spaces/{spaceId}/invite"
        o.input = Shapes::ShapeRef.new(shape: SendInvitesInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSpace"
        o.http_method = "PUT"
        o.http_request_uri = "/spaces/{spaceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
