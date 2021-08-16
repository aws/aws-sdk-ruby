# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LakeFormation
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddLFTagsToResourceRequest = Shapes::StructureShape.new(name: 'AddLFTagsToResourceRequest')
    AddLFTagsToResourceResponse = Shapes::StructureShape.new(name: 'AddLFTagsToResourceResponse')
    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    BatchGrantPermissionsRequest = Shapes::StructureShape.new(name: 'BatchGrantPermissionsRequest')
    BatchGrantPermissionsResponse = Shapes::StructureShape.new(name: 'BatchGrantPermissionsResponse')
    BatchPermissionsFailureEntry = Shapes::StructureShape.new(name: 'BatchPermissionsFailureEntry')
    BatchPermissionsFailureList = Shapes::ListShape.new(name: 'BatchPermissionsFailureList')
    BatchPermissionsRequestEntry = Shapes::StructureShape.new(name: 'BatchPermissionsRequestEntry')
    BatchPermissionsRequestEntryList = Shapes::ListShape.new(name: 'BatchPermissionsRequestEntryList')
    BatchRevokePermissionsRequest = Shapes::StructureShape.new(name: 'BatchRevokePermissionsRequest')
    BatchRevokePermissionsResponse = Shapes::StructureShape.new(name: 'BatchRevokePermissionsResponse')
    BooleanNullable = Shapes::BooleanShape.new(name: 'BooleanNullable')
    CatalogIdString = Shapes::StringShape.new(name: 'CatalogIdString')
    CatalogResource = Shapes::StructureShape.new(name: 'CatalogResource')
    ColumnLFTag = Shapes::StructureShape.new(name: 'ColumnLFTag')
    ColumnLFTagsList = Shapes::ListShape.new(name: 'ColumnLFTagsList')
    ColumnNames = Shapes::ListShape.new(name: 'ColumnNames')
    ColumnWildcard = Shapes::StructureShape.new(name: 'ColumnWildcard')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    CreateLFTagRequest = Shapes::StructureShape.new(name: 'CreateLFTagRequest')
    CreateLFTagResponse = Shapes::StructureShape.new(name: 'CreateLFTagResponse')
    DataLakePrincipal = Shapes::StructureShape.new(name: 'DataLakePrincipal')
    DataLakePrincipalList = Shapes::ListShape.new(name: 'DataLakePrincipalList')
    DataLakePrincipalString = Shapes::StringShape.new(name: 'DataLakePrincipalString')
    DataLakeResourceType = Shapes::StringShape.new(name: 'DataLakeResourceType')
    DataLakeSettings = Shapes::StructureShape.new(name: 'DataLakeSettings')
    DataLocationResource = Shapes::StructureShape.new(name: 'DataLocationResource')
    DatabaseLFTagsList = Shapes::ListShape.new(name: 'DatabaseLFTagsList')
    DatabaseResource = Shapes::StructureShape.new(name: 'DatabaseResource')
    DeleteLFTagRequest = Shapes::StructureShape.new(name: 'DeleteLFTagRequest')
    DeleteLFTagResponse = Shapes::StructureShape.new(name: 'DeleteLFTagResponse')
    DeregisterResourceRequest = Shapes::StructureShape.new(name: 'DeregisterResourceRequest')
    DeregisterResourceResponse = Shapes::StructureShape.new(name: 'DeregisterResourceResponse')
    DescribeResourceRequest = Shapes::StructureShape.new(name: 'DescribeResourceRequest')
    DescribeResourceResponse = Shapes::StructureShape.new(name: 'DescribeResourceResponse')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    DetailsMap = Shapes::StructureShape.new(name: 'DetailsMap')
    EntityNotFoundException = Shapes::StructureShape.new(name: 'EntityNotFoundException')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    Expression = Shapes::ListShape.new(name: 'Expression')
    FieldNameString = Shapes::StringShape.new(name: 'FieldNameString')
    FilterCondition = Shapes::StructureShape.new(name: 'FilterCondition')
    FilterConditionList = Shapes::ListShape.new(name: 'FilterConditionList')
    GetDataLakeSettingsRequest = Shapes::StructureShape.new(name: 'GetDataLakeSettingsRequest')
    GetDataLakeSettingsResponse = Shapes::StructureShape.new(name: 'GetDataLakeSettingsResponse')
    GetEffectivePermissionsForPathRequest = Shapes::StructureShape.new(name: 'GetEffectivePermissionsForPathRequest')
    GetEffectivePermissionsForPathResponse = Shapes::StructureShape.new(name: 'GetEffectivePermissionsForPathResponse')
    GetLFTagRequest = Shapes::StructureShape.new(name: 'GetLFTagRequest')
    GetLFTagResponse = Shapes::StructureShape.new(name: 'GetLFTagResponse')
    GetResourceLFTagsRequest = Shapes::StructureShape.new(name: 'GetResourceLFTagsRequest')
    GetResourceLFTagsResponse = Shapes::StructureShape.new(name: 'GetResourceLFTagsResponse')
    GlueEncryptionException = Shapes::StructureShape.new(name: 'GlueEncryptionException')
    GrantPermissionsRequest = Shapes::StructureShape.new(name: 'GrantPermissionsRequest')
    GrantPermissionsResponse = Shapes::StructureShape.new(name: 'GrantPermissionsResponse')
    IAMRoleArn = Shapes::StringShape.new(name: 'IAMRoleArn')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    LFTag = Shapes::StructureShape.new(name: 'LFTag')
    LFTagError = Shapes::StructureShape.new(name: 'LFTagError')
    LFTagErrors = Shapes::ListShape.new(name: 'LFTagErrors')
    LFTagKey = Shapes::StringShape.new(name: 'LFTagKey')
    LFTagKeyResource = Shapes::StructureShape.new(name: 'LFTagKeyResource')
    LFTagPair = Shapes::StructureShape.new(name: 'LFTagPair')
    LFTagPolicyResource = Shapes::StructureShape.new(name: 'LFTagPolicyResource')
    LFTagValue = Shapes::StringShape.new(name: 'LFTagValue')
    LFTagsList = Shapes::ListShape.new(name: 'LFTagsList')
    LastModifiedTimestamp = Shapes::TimestampShape.new(name: 'LastModifiedTimestamp')
    ListLFTagsRequest = Shapes::StructureShape.new(name: 'ListLFTagsRequest')
    ListLFTagsResponse = Shapes::StructureShape.new(name: 'ListLFTagsResponse')
    ListPermissionsRequest = Shapes::StructureShape.new(name: 'ListPermissionsRequest')
    ListPermissionsResponse = Shapes::StructureShape.new(name: 'ListPermissionsResponse')
    ListResourcesRequest = Shapes::StructureShape.new(name: 'ListResourcesRequest')
    ListResourcesResponse = Shapes::StructureShape.new(name: 'ListResourcesResponse')
    MessageString = Shapes::StringShape.new(name: 'MessageString')
    NameString = Shapes::StringShape.new(name: 'NameString')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    OperationTimeoutException = Shapes::StructureShape.new(name: 'OperationTimeoutException')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    Permission = Shapes::StringShape.new(name: 'Permission')
    PermissionList = Shapes::ListShape.new(name: 'PermissionList')
    PrincipalPermissions = Shapes::StructureShape.new(name: 'PrincipalPermissions')
    PrincipalPermissionsList = Shapes::ListShape.new(name: 'PrincipalPermissionsList')
    PrincipalResourcePermissions = Shapes::StructureShape.new(name: 'PrincipalResourcePermissions')
    PrincipalResourcePermissionsList = Shapes::ListShape.new(name: 'PrincipalResourcePermissionsList')
    PutDataLakeSettingsRequest = Shapes::StructureShape.new(name: 'PutDataLakeSettingsRequest')
    PutDataLakeSettingsResponse = Shapes::StructureShape.new(name: 'PutDataLakeSettingsResponse')
    RAMResourceShareArn = Shapes::StringShape.new(name: 'RAMResourceShareArn')
    RegisterResourceRequest = Shapes::StructureShape.new(name: 'RegisterResourceRequest')
    RegisterResourceResponse = Shapes::StructureShape.new(name: 'RegisterResourceResponse')
    RemoveLFTagsFromResourceRequest = Shapes::StructureShape.new(name: 'RemoveLFTagsFromResourceRequest')
    RemoveLFTagsFromResourceResponse = Shapes::StructureShape.new(name: 'RemoveLFTagsFromResourceResponse')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceArnString = Shapes::StringShape.new(name: 'ResourceArnString')
    ResourceInfo = Shapes::StructureShape.new(name: 'ResourceInfo')
    ResourceInfoList = Shapes::ListShape.new(name: 'ResourceInfoList')
    ResourceNumberLimitExceededException = Shapes::StructureShape.new(name: 'ResourceNumberLimitExceededException')
    ResourceShareList = Shapes::ListShape.new(name: 'ResourceShareList')
    ResourceShareType = Shapes::StringShape.new(name: 'ResourceShareType')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RevokePermissionsRequest = Shapes::StructureShape.new(name: 'RevokePermissionsRequest')
    RevokePermissionsResponse = Shapes::StructureShape.new(name: 'RevokePermissionsResponse')
    SearchDatabasesByLFTagsRequest = Shapes::StructureShape.new(name: 'SearchDatabasesByLFTagsRequest')
    SearchDatabasesByLFTagsResponse = Shapes::StructureShape.new(name: 'SearchDatabasesByLFTagsResponse')
    SearchTablesByLFTagsRequest = Shapes::StructureShape.new(name: 'SearchTablesByLFTagsRequest')
    SearchTablesByLFTagsResponse = Shapes::StructureShape.new(name: 'SearchTablesByLFTagsResponse')
    StringValue = Shapes::StringShape.new(name: 'StringValue')
    StringValueList = Shapes::ListShape.new(name: 'StringValueList')
    TableLFTagsList = Shapes::ListShape.new(name: 'TableLFTagsList')
    TableResource = Shapes::StructureShape.new(name: 'TableResource')
    TableWildcard = Shapes::StructureShape.new(name: 'TableWildcard')
    TableWithColumnsResource = Shapes::StructureShape.new(name: 'TableWithColumnsResource')
    TagValueList = Shapes::ListShape.new(name: 'TagValueList')
    TaggedDatabase = Shapes::StructureShape.new(name: 'TaggedDatabase')
    TaggedTable = Shapes::StructureShape.new(name: 'TaggedTable')
    Token = Shapes::StringShape.new(name: 'Token')
    TrustedResourceOwners = Shapes::ListShape.new(name: 'TrustedResourceOwners')
    UpdateLFTagRequest = Shapes::StructureShape.new(name: 'UpdateLFTagRequest')
    UpdateLFTagResponse = Shapes::StructureShape.new(name: 'UpdateLFTagResponse')
    UpdateResourceRequest = Shapes::StructureShape.new(name: 'UpdateResourceRequest')
    UpdateResourceResponse = Shapes::StructureShape.new(name: 'UpdateResourceResponse')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddLFTagsToResourceRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    AddLFTagsToResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    AddLFTagsToResourceRequest.add_member(:lf_tags, Shapes::ShapeRef.new(shape: LFTagsList, required: true, location_name: "LFTags"))
    AddLFTagsToResourceRequest.struct_class = Types::AddLFTagsToResourceRequest

    AddLFTagsToResourceResponse.add_member(:failures, Shapes::ShapeRef.new(shape: LFTagErrors, location_name: "Failures"))
    AddLFTagsToResourceResponse.struct_class = Types::AddLFTagsToResourceResponse

    AlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    AlreadyExistsException.struct_class = Types::AlreadyExistsException

    BatchGrantPermissionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    BatchGrantPermissionsRequest.add_member(:entries, Shapes::ShapeRef.new(shape: BatchPermissionsRequestEntryList, required: true, location_name: "Entries"))
    BatchGrantPermissionsRequest.struct_class = Types::BatchGrantPermissionsRequest

    BatchGrantPermissionsResponse.add_member(:failures, Shapes::ShapeRef.new(shape: BatchPermissionsFailureList, location_name: "Failures"))
    BatchGrantPermissionsResponse.struct_class = Types::BatchGrantPermissionsResponse

    BatchPermissionsFailureEntry.add_member(:request_entry, Shapes::ShapeRef.new(shape: BatchPermissionsRequestEntry, location_name: "RequestEntry"))
    BatchPermissionsFailureEntry.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "Error"))
    BatchPermissionsFailureEntry.struct_class = Types::BatchPermissionsFailureEntry

    BatchPermissionsFailureList.member = Shapes::ShapeRef.new(shape: BatchPermissionsFailureEntry)

    BatchPermissionsRequestEntry.add_member(:id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "Id"))
    BatchPermissionsRequestEntry.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: "Principal"))
    BatchPermissionsRequestEntry.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, location_name: "Resource"))
    BatchPermissionsRequestEntry.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    BatchPermissionsRequestEntry.add_member(:permissions_with_grant_option, Shapes::ShapeRef.new(shape: PermissionList, location_name: "PermissionsWithGrantOption"))
    BatchPermissionsRequestEntry.struct_class = Types::BatchPermissionsRequestEntry

    BatchPermissionsRequestEntryList.member = Shapes::ShapeRef.new(shape: BatchPermissionsRequestEntry)

    BatchRevokePermissionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    BatchRevokePermissionsRequest.add_member(:entries, Shapes::ShapeRef.new(shape: BatchPermissionsRequestEntryList, required: true, location_name: "Entries"))
    BatchRevokePermissionsRequest.struct_class = Types::BatchRevokePermissionsRequest

    BatchRevokePermissionsResponse.add_member(:failures, Shapes::ShapeRef.new(shape: BatchPermissionsFailureList, location_name: "Failures"))
    BatchRevokePermissionsResponse.struct_class = Types::BatchRevokePermissionsResponse

    CatalogResource.struct_class = Types::CatalogResource

    ColumnLFTag.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    ColumnLFTag.add_member(:lf_tags, Shapes::ShapeRef.new(shape: LFTagsList, location_name: "LFTags"))
    ColumnLFTag.struct_class = Types::ColumnLFTag

    ColumnLFTagsList.member = Shapes::ShapeRef.new(shape: ColumnLFTag)

    ColumnNames.member = Shapes::ShapeRef.new(shape: NameString)

    ColumnWildcard.add_member(:excluded_column_names, Shapes::ShapeRef.new(shape: ColumnNames, location_name: "ExcludedColumnNames"))
    ColumnWildcard.struct_class = Types::ColumnWildcard

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    CreateLFTagRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    CreateLFTagRequest.add_member(:tag_key, Shapes::ShapeRef.new(shape: LFTagKey, required: true, location_name: "TagKey"))
    CreateLFTagRequest.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, required: true, location_name: "TagValues"))
    CreateLFTagRequest.struct_class = Types::CreateLFTagRequest

    CreateLFTagResponse.struct_class = Types::CreateLFTagResponse

    DataLakePrincipal.add_member(:data_lake_principal_identifier, Shapes::ShapeRef.new(shape: DataLakePrincipalString, location_name: "DataLakePrincipalIdentifier"))
    DataLakePrincipal.struct_class = Types::DataLakePrincipal

    DataLakePrincipalList.member = Shapes::ShapeRef.new(shape: DataLakePrincipal)

    DataLakeSettings.add_member(:data_lake_admins, Shapes::ShapeRef.new(shape: DataLakePrincipalList, location_name: "DataLakeAdmins"))
    DataLakeSettings.add_member(:create_database_default_permissions, Shapes::ShapeRef.new(shape: PrincipalPermissionsList, location_name: "CreateDatabaseDefaultPermissions"))
    DataLakeSettings.add_member(:create_table_default_permissions, Shapes::ShapeRef.new(shape: PrincipalPermissionsList, location_name: "CreateTableDefaultPermissions"))
    DataLakeSettings.add_member(:trusted_resource_owners, Shapes::ShapeRef.new(shape: TrustedResourceOwners, location_name: "TrustedResourceOwners"))
    DataLakeSettings.struct_class = Types::DataLakeSettings

    DataLocationResource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DataLocationResource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    DataLocationResource.struct_class = Types::DataLocationResource

    DatabaseLFTagsList.member = Shapes::ShapeRef.new(shape: TaggedDatabase)

    DatabaseResource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DatabaseResource.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DatabaseResource.struct_class = Types::DatabaseResource

    DeleteLFTagRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DeleteLFTagRequest.add_member(:tag_key, Shapes::ShapeRef.new(shape: LFTagKey, required: true, location_name: "TagKey"))
    DeleteLFTagRequest.struct_class = Types::DeleteLFTagRequest

    DeleteLFTagResponse.struct_class = Types::DeleteLFTagResponse

    DeregisterResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    DeregisterResourceRequest.struct_class = Types::DeregisterResourceRequest

    DeregisterResourceResponse.struct_class = Types::DeregisterResourceResponse

    DescribeResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    DescribeResourceRequest.struct_class = Types::DescribeResourceRequest

    DescribeResourceResponse.add_member(:resource_info, Shapes::ShapeRef.new(shape: ResourceInfo, location_name: "ResourceInfo"))
    DescribeResourceResponse.struct_class = Types::DescribeResourceResponse

    DetailsMap.add_member(:resource_share, Shapes::ShapeRef.new(shape: ResourceShareList, location_name: "ResourceShare"))
    DetailsMap.struct_class = Types::DetailsMap

    EntityNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    EntityNotFoundException.struct_class = Types::EntityNotFoundException

    ErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: NameString, location_name: "ErrorCode"))
    ErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "ErrorMessage"))
    ErrorDetail.struct_class = Types::ErrorDetail

    Expression.member = Shapes::ShapeRef.new(shape: LFTag)

    FilterCondition.add_member(:field, Shapes::ShapeRef.new(shape: FieldNameString, location_name: "Field"))
    FilterCondition.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "ComparisonOperator"))
    FilterCondition.add_member(:string_value_list, Shapes::ShapeRef.new(shape: StringValueList, location_name: "StringValueList"))
    FilterCondition.struct_class = Types::FilterCondition

    FilterConditionList.member = Shapes::ShapeRef.new(shape: FilterCondition)

    GetDataLakeSettingsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetDataLakeSettingsRequest.struct_class = Types::GetDataLakeSettingsRequest

    GetDataLakeSettingsResponse.add_member(:data_lake_settings, Shapes::ShapeRef.new(shape: DataLakeSettings, location_name: "DataLakeSettings"))
    GetDataLakeSettingsResponse.struct_class = Types::GetDataLakeSettingsResponse

    GetEffectivePermissionsForPathRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetEffectivePermissionsForPathRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    GetEffectivePermissionsForPathRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetEffectivePermissionsForPathRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    GetEffectivePermissionsForPathRequest.struct_class = Types::GetEffectivePermissionsForPathRequest

    GetEffectivePermissionsForPathResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: PrincipalResourcePermissionsList, location_name: "Permissions"))
    GetEffectivePermissionsForPathResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetEffectivePermissionsForPathResponse.struct_class = Types::GetEffectivePermissionsForPathResponse

    GetLFTagRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetLFTagRequest.add_member(:tag_key, Shapes::ShapeRef.new(shape: LFTagKey, required: true, location_name: "TagKey"))
    GetLFTagRequest.struct_class = Types::GetLFTagRequest

    GetLFTagResponse.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetLFTagResponse.add_member(:tag_key, Shapes::ShapeRef.new(shape: LFTagKey, location_name: "TagKey"))
    GetLFTagResponse.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValues"))
    GetLFTagResponse.struct_class = Types::GetLFTagResponse

    GetResourceLFTagsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GetResourceLFTagsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    GetResourceLFTagsRequest.add_member(:show_assigned_lf_tags, Shapes::ShapeRef.new(shape: BooleanNullable, location_name: "ShowAssignedLFTags"))
    GetResourceLFTagsRequest.struct_class = Types::GetResourceLFTagsRequest

    GetResourceLFTagsResponse.add_member(:lf_tag_on_database, Shapes::ShapeRef.new(shape: LFTagsList, location_name: "LFTagOnDatabase"))
    GetResourceLFTagsResponse.add_member(:lf_tags_on_table, Shapes::ShapeRef.new(shape: LFTagsList, location_name: "LFTagsOnTable"))
    GetResourceLFTagsResponse.add_member(:lf_tags_on_columns, Shapes::ShapeRef.new(shape: ColumnLFTagsList, location_name: "LFTagsOnColumns"))
    GetResourceLFTagsResponse.struct_class = Types::GetResourceLFTagsResponse

    GlueEncryptionException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    GlueEncryptionException.struct_class = Types::GlueEncryptionException

    GrantPermissionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    GrantPermissionsRequest.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, required: true, location_name: "Principal"))
    GrantPermissionsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    GrantPermissionsRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, required: true, location_name: "Permissions"))
    GrantPermissionsRequest.add_member(:permissions_with_grant_option, Shapes::ShapeRef.new(shape: PermissionList, location_name: "PermissionsWithGrantOption"))
    GrantPermissionsRequest.struct_class = Types::GrantPermissionsRequest

    GrantPermissionsResponse.struct_class = Types::GrantPermissionsResponse

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    LFTag.add_member(:tag_key, Shapes::ShapeRef.new(shape: LFTagKey, required: true, location_name: "TagKey"))
    LFTag.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, required: true, location_name: "TagValues"))
    LFTag.struct_class = Types::LFTag

    LFTagError.add_member(:lf_tag, Shapes::ShapeRef.new(shape: LFTagPair, location_name: "LFTag"))
    LFTagError.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "Error"))
    LFTagError.struct_class = Types::LFTagError

    LFTagErrors.member = Shapes::ShapeRef.new(shape: LFTagError)

    LFTagKeyResource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    LFTagKeyResource.add_member(:tag_key, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "TagKey"))
    LFTagKeyResource.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, required: true, location_name: "TagValues"))
    LFTagKeyResource.struct_class = Types::LFTagKeyResource

    LFTagPair.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    LFTagPair.add_member(:tag_key, Shapes::ShapeRef.new(shape: LFTagKey, required: true, location_name: "TagKey"))
    LFTagPair.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, required: true, location_name: "TagValues"))
    LFTagPair.struct_class = Types::LFTagPair

    LFTagPolicyResource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    LFTagPolicyResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    LFTagPolicyResource.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    LFTagPolicyResource.struct_class = Types::LFTagPolicyResource

    LFTagsList.member = Shapes::ShapeRef.new(shape: LFTagPair)

    ListLFTagsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    ListLFTagsRequest.add_member(:resource_share_type, Shapes::ShapeRef.new(shape: ResourceShareType, location_name: "ResourceShareType"))
    ListLFTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListLFTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListLFTagsRequest.struct_class = Types::ListLFTagsRequest

    ListLFTagsResponse.add_member(:lf_tags, Shapes::ShapeRef.new(shape: LFTagsList, location_name: "LFTags"))
    ListLFTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListLFTagsResponse.struct_class = Types::ListLFTagsResponse

    ListPermissionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    ListPermissionsRequest.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: "Principal"))
    ListPermissionsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: DataLakeResourceType, location_name: "ResourceType"))
    ListPermissionsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, location_name: "Resource"))
    ListPermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListPermissionsRequest.struct_class = Types::ListPermissionsRequest

    ListPermissionsResponse.add_member(:principal_resource_permissions, Shapes::ShapeRef.new(shape: PrincipalResourcePermissionsList, location_name: "PrincipalResourcePermissions"))
    ListPermissionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionsResponse.struct_class = Types::ListPermissionsResponse

    ListResourcesRequest.add_member(:filter_condition_list, Shapes::ShapeRef.new(shape: FilterConditionList, location_name: "FilterConditionList"))
    ListResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListResourcesRequest.struct_class = Types::ListResourcesRequest

    ListResourcesResponse.add_member(:resource_info_list, Shapes::ShapeRef.new(shape: ResourceInfoList, location_name: "ResourceInfoList"))
    ListResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListResourcesResponse.struct_class = Types::ListResourcesResponse

    OperationTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    OperationTimeoutException.struct_class = Types::OperationTimeoutException

    PermissionList.member = Shapes::ShapeRef.new(shape: Permission)

    PrincipalPermissions.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: "Principal"))
    PrincipalPermissions.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    PrincipalPermissions.struct_class = Types::PrincipalPermissions

    PrincipalPermissionsList.member = Shapes::ShapeRef.new(shape: PrincipalPermissions)

    PrincipalResourcePermissions.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, location_name: "Principal"))
    PrincipalResourcePermissions.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, location_name: "Resource"))
    PrincipalResourcePermissions.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    PrincipalResourcePermissions.add_member(:permissions_with_grant_option, Shapes::ShapeRef.new(shape: PermissionList, location_name: "PermissionsWithGrantOption"))
    PrincipalResourcePermissions.add_member(:additional_details, Shapes::ShapeRef.new(shape: DetailsMap, location_name: "AdditionalDetails"))
    PrincipalResourcePermissions.struct_class = Types::PrincipalResourcePermissions

    PrincipalResourcePermissionsList.member = Shapes::ShapeRef.new(shape: PrincipalResourcePermissions)

    PutDataLakeSettingsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    PutDataLakeSettingsRequest.add_member(:data_lake_settings, Shapes::ShapeRef.new(shape: DataLakeSettings, required: true, location_name: "DataLakeSettings"))
    PutDataLakeSettingsRequest.struct_class = Types::PutDataLakeSettingsRequest

    PutDataLakeSettingsResponse.struct_class = Types::PutDataLakeSettingsResponse

    RegisterResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    RegisterResourceRequest.add_member(:use_service_linked_role, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "UseServiceLinkedRole"))
    RegisterResourceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "RoleArn"))
    RegisterResourceRequest.struct_class = Types::RegisterResourceRequest

    RegisterResourceResponse.struct_class = Types::RegisterResourceResponse

    RemoveLFTagsFromResourceRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    RemoveLFTagsFromResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    RemoveLFTagsFromResourceRequest.add_member(:lf_tags, Shapes::ShapeRef.new(shape: LFTagsList, required: true, location_name: "LFTags"))
    RemoveLFTagsFromResourceRequest.struct_class = Types::RemoveLFTagsFromResourceRequest

    RemoveLFTagsFromResourceResponse.add_member(:failures, Shapes::ShapeRef.new(shape: LFTagErrors, location_name: "Failures"))
    RemoveLFTagsFromResourceResponse.struct_class = Types::RemoveLFTagsFromResourceResponse

    Resource.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogResource, location_name: "Catalog"))
    Resource.add_member(:database, Shapes::ShapeRef.new(shape: DatabaseResource, location_name: "Database"))
    Resource.add_member(:table, Shapes::ShapeRef.new(shape: TableResource, location_name: "Table"))
    Resource.add_member(:table_with_columns, Shapes::ShapeRef.new(shape: TableWithColumnsResource, location_name: "TableWithColumns"))
    Resource.add_member(:data_location, Shapes::ShapeRef.new(shape: DataLocationResource, location_name: "DataLocation"))
    Resource.add_member(:lf_tag, Shapes::ShapeRef.new(shape: LFTagKeyResource, location_name: "LFTag"))
    Resource.add_member(:lf_tag_policy, Shapes::ShapeRef.new(shape: LFTagPolicyResource, location_name: "LFTagPolicy"))
    Resource.struct_class = Types::Resource

    ResourceInfo.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, location_name: "ResourceArn"))
    ResourceInfo.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "RoleArn"))
    ResourceInfo.add_member(:last_modified, Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: "LastModified"))
    ResourceInfo.struct_class = Types::ResourceInfo

    ResourceInfoList.member = Shapes::ShapeRef.new(shape: ResourceInfo)

    ResourceNumberLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ResourceNumberLimitExceededException.struct_class = Types::ResourceNumberLimitExceededException

    ResourceShareList.member = Shapes::ShapeRef.new(shape: RAMResourceShareArn)

    RevokePermissionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    RevokePermissionsRequest.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, required: true, location_name: "Principal"))
    RevokePermissionsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    RevokePermissionsRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, required: true, location_name: "Permissions"))
    RevokePermissionsRequest.add_member(:permissions_with_grant_option, Shapes::ShapeRef.new(shape: PermissionList, location_name: "PermissionsWithGrantOption"))
    RevokePermissionsRequest.struct_class = Types::RevokePermissionsRequest

    RevokePermissionsResponse.struct_class = Types::RevokePermissionsResponse

    SearchDatabasesByLFTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchDatabasesByLFTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    SearchDatabasesByLFTagsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    SearchDatabasesByLFTagsRequest.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    SearchDatabasesByLFTagsRequest.struct_class = Types::SearchDatabasesByLFTagsRequest

    SearchDatabasesByLFTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchDatabasesByLFTagsResponse.add_member(:database_list, Shapes::ShapeRef.new(shape: DatabaseLFTagsList, location_name: "DatabaseList"))
    SearchDatabasesByLFTagsResponse.struct_class = Types::SearchDatabasesByLFTagsResponse

    SearchTablesByLFTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchTablesByLFTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    SearchTablesByLFTagsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    SearchTablesByLFTagsRequest.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    SearchTablesByLFTagsRequest.struct_class = Types::SearchTablesByLFTagsRequest

    SearchTablesByLFTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    SearchTablesByLFTagsResponse.add_member(:table_list, Shapes::ShapeRef.new(shape: TableLFTagsList, location_name: "TableList"))
    SearchTablesByLFTagsResponse.struct_class = Types::SearchTablesByLFTagsResponse

    StringValueList.member = Shapes::ShapeRef.new(shape: StringValue)

    TableLFTagsList.member = Shapes::ShapeRef.new(shape: TaggedTable)

    TableResource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    TableResource.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    TableResource.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    TableResource.add_member(:table_wildcard, Shapes::ShapeRef.new(shape: TableWildcard, location_name: "TableWildcard"))
    TableResource.struct_class = Types::TableResource

    TableWildcard.struct_class = Types::TableWildcard

    TableWithColumnsResource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    TableWithColumnsResource.add_member(:database_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "DatabaseName"))
    TableWithColumnsResource.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    TableWithColumnsResource.add_member(:column_names, Shapes::ShapeRef.new(shape: ColumnNames, location_name: "ColumnNames"))
    TableWithColumnsResource.add_member(:column_wildcard, Shapes::ShapeRef.new(shape: ColumnWildcard, location_name: "ColumnWildcard"))
    TableWithColumnsResource.struct_class = Types::TableWithColumnsResource

    TagValueList.member = Shapes::ShapeRef.new(shape: LFTagValue)

    TaggedDatabase.add_member(:database, Shapes::ShapeRef.new(shape: DatabaseResource, location_name: "Database"))
    TaggedDatabase.add_member(:lf_tags, Shapes::ShapeRef.new(shape: LFTagsList, location_name: "LFTags"))
    TaggedDatabase.struct_class = Types::TaggedDatabase

    TaggedTable.add_member(:table, Shapes::ShapeRef.new(shape: TableResource, location_name: "Table"))
    TaggedTable.add_member(:lf_tag_on_database, Shapes::ShapeRef.new(shape: LFTagsList, location_name: "LFTagOnDatabase"))
    TaggedTable.add_member(:lf_tags_on_table, Shapes::ShapeRef.new(shape: LFTagsList, location_name: "LFTagsOnTable"))
    TaggedTable.add_member(:lf_tags_on_columns, Shapes::ShapeRef.new(shape: ColumnLFTagsList, location_name: "LFTagsOnColumns"))
    TaggedTable.struct_class = Types::TaggedTable

    TrustedResourceOwners.member = Shapes::ShapeRef.new(shape: CatalogIdString)

    UpdateLFTagRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    UpdateLFTagRequest.add_member(:tag_key, Shapes::ShapeRef.new(shape: LFTagKey, required: true, location_name: "TagKey"))
    UpdateLFTagRequest.add_member(:tag_values_to_delete, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValuesToDelete"))
    UpdateLFTagRequest.add_member(:tag_values_to_add, Shapes::ShapeRef.new(shape: TagValueList, location_name: "TagValuesToAdd"))
    UpdateLFTagRequest.struct_class = Types::UpdateLFTagRequest

    UpdateLFTagResponse.struct_class = Types::UpdateLFTagResponse

    UpdateResourceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "RoleArn"))
    UpdateResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    UpdateResourceRequest.struct_class = Types::UpdateResourceRequest

    UpdateResourceResponse.struct_class = Types::UpdateResourceResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-03-31"

      api.metadata = {
        "apiVersion" => "2017-03-31",
        "endpointPrefix" => "lakeformation",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Lake Formation",
        "serviceId" => "LakeFormation",
        "signatureVersion" => "v4",
        "signingName" => "lakeformation",
        "targetPrefix" => "AWSLakeFormation",
        "uid" => "lakeformation-2017-03-31",
      }

      api.add_operation(:add_lf_tags_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddLFTagsToResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddLFTagsToResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: AddLFTagsToResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:batch_grant_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGrantPermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGrantPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGrantPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:batch_revoke_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchRevokePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchRevokePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchRevokePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:create_lf_tag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLFTag"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLFTagRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLFTagResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNumberLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_lf_tag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLFTag"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLFTagRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLFTagResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:deregister_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:describe_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:get_data_lake_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataLakeSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDataLakeSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataLakeSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:get_effective_permissions_for_path, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEffectivePermissionsForPath"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEffectivePermissionsForPathRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEffectivePermissionsForPathResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_lf_tag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLFTag"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLFTagRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLFTagResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_resource_lf_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceLFTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourceLFTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceLFTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:grant_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GrantPermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GrantPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GrantPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:list_lf_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLFTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLFTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLFTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
      end)

      api.add_operation(:list_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_data_lake_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDataLakeSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutDataLakeSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDataLakeSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:register_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
      end)

      api.add_operation(:remove_lf_tags_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveLFTagsFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveLFTagsFromResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveLFTagsFromResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:revoke_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:search_databases_by_lf_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchDatabasesByLFTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchDatabasesByLFTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchDatabasesByLFTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:search_tables_by_lf_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchTablesByLFTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchTablesByLFTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchTablesByLFTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: GlueEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_lf_tag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLFTag"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLFTagRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLFTagResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: OperationTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)
    end

  end
end
