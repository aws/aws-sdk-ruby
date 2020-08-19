# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LakeFormation
  # @api private
  module ClientApi

    include Seahorse::Model

    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    BatchGrantPermissionsRequest = Shapes::StructureShape.new(name: 'BatchGrantPermissionsRequest')
    BatchGrantPermissionsResponse = Shapes::StructureShape.new(name: 'BatchGrantPermissionsResponse')
    BatchPermissionsFailureEntry = Shapes::StructureShape.new(name: 'BatchPermissionsFailureEntry')
    BatchPermissionsFailureList = Shapes::ListShape.new(name: 'BatchPermissionsFailureList')
    BatchPermissionsRequestEntry = Shapes::StructureShape.new(name: 'BatchPermissionsRequestEntry')
    BatchPermissionsRequestEntryList = Shapes::ListShape.new(name: 'BatchPermissionsRequestEntryList')
    BatchRevokePermissionsRequest = Shapes::StructureShape.new(name: 'BatchRevokePermissionsRequest')
    BatchRevokePermissionsResponse = Shapes::StructureShape.new(name: 'BatchRevokePermissionsResponse')
    CatalogIdString = Shapes::StringShape.new(name: 'CatalogIdString')
    CatalogResource = Shapes::StructureShape.new(name: 'CatalogResource')
    ColumnNames = Shapes::ListShape.new(name: 'ColumnNames')
    ColumnWildcard = Shapes::StructureShape.new(name: 'ColumnWildcard')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    DataLakePrincipal = Shapes::StructureShape.new(name: 'DataLakePrincipal')
    DataLakePrincipalList = Shapes::ListShape.new(name: 'DataLakePrincipalList')
    DataLakePrincipalString = Shapes::StringShape.new(name: 'DataLakePrincipalString')
    DataLakeResourceType = Shapes::StringShape.new(name: 'DataLakeResourceType')
    DataLakeSettings = Shapes::StructureShape.new(name: 'DataLakeSettings')
    DataLocationResource = Shapes::StructureShape.new(name: 'DataLocationResource')
    DatabaseResource = Shapes::StructureShape.new(name: 'DatabaseResource')
    DeregisterResourceRequest = Shapes::StructureShape.new(name: 'DeregisterResourceRequest')
    DeregisterResourceResponse = Shapes::StructureShape.new(name: 'DeregisterResourceResponse')
    DescribeResourceRequest = Shapes::StructureShape.new(name: 'DescribeResourceRequest')
    DescribeResourceResponse = Shapes::StructureShape.new(name: 'DescribeResourceResponse')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    DetailsMap = Shapes::StructureShape.new(name: 'DetailsMap')
    EntityNotFoundException = Shapes::StructureShape.new(name: 'EntityNotFoundException')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    FieldNameString = Shapes::StringShape.new(name: 'FieldNameString')
    FilterCondition = Shapes::StructureShape.new(name: 'FilterCondition')
    FilterConditionList = Shapes::ListShape.new(name: 'FilterConditionList')
    GetDataLakeSettingsRequest = Shapes::StructureShape.new(name: 'GetDataLakeSettingsRequest')
    GetDataLakeSettingsResponse = Shapes::StructureShape.new(name: 'GetDataLakeSettingsResponse')
    GetEffectivePermissionsForPathRequest = Shapes::StructureShape.new(name: 'GetEffectivePermissionsForPathRequest')
    GetEffectivePermissionsForPathResponse = Shapes::StructureShape.new(name: 'GetEffectivePermissionsForPathResponse')
    GrantPermissionsRequest = Shapes::StructureShape.new(name: 'GrantPermissionsRequest')
    GrantPermissionsResponse = Shapes::StructureShape.new(name: 'GrantPermissionsResponse')
    IAMRoleArn = Shapes::StringShape.new(name: 'IAMRoleArn')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    LastModifiedTimestamp = Shapes::TimestampShape.new(name: 'LastModifiedTimestamp')
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
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceArnString = Shapes::StringShape.new(name: 'ResourceArnString')
    ResourceInfo = Shapes::StructureShape.new(name: 'ResourceInfo')
    ResourceInfoList = Shapes::ListShape.new(name: 'ResourceInfoList')
    ResourceShareList = Shapes::ListShape.new(name: 'ResourceShareList')
    RevokePermissionsRequest = Shapes::StructureShape.new(name: 'RevokePermissionsRequest')
    RevokePermissionsResponse = Shapes::StructureShape.new(name: 'RevokePermissionsResponse')
    StringValue = Shapes::StringShape.new(name: 'StringValue')
    StringValueList = Shapes::ListShape.new(name: 'StringValueList')
    TableResource = Shapes::StructureShape.new(name: 'TableResource')
    TableWildcard = Shapes::StructureShape.new(name: 'TableWildcard')
    TableWithColumnsResource = Shapes::StructureShape.new(name: 'TableWithColumnsResource')
    Token = Shapes::StringShape.new(name: 'Token')
    TrustedResourceOwners = Shapes::ListShape.new(name: 'TrustedResourceOwners')
    UpdateResourceRequest = Shapes::StructureShape.new(name: 'UpdateResourceRequest')
    UpdateResourceResponse = Shapes::StructureShape.new(name: 'UpdateResourceResponse')

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

    ColumnNames.member = Shapes::ShapeRef.new(shape: NameString)

    ColumnWildcard.add_member(:excluded_column_names, Shapes::ShapeRef.new(shape: ColumnNames, location_name: "ExcludedColumnNames"))
    ColumnWildcard.struct_class = Types::ColumnWildcard

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: MessageString, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

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

    DatabaseResource.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    DatabaseResource.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    DatabaseResource.struct_class = Types::DatabaseResource

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

    Resource.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogResource, location_name: "Catalog"))
    Resource.add_member(:database, Shapes::ShapeRef.new(shape: DatabaseResource, location_name: "Database"))
    Resource.add_member(:table, Shapes::ShapeRef.new(shape: TableResource, location_name: "Table"))
    Resource.add_member(:table_with_columns, Shapes::ShapeRef.new(shape: TableWithColumnsResource, location_name: "TableWithColumns"))
    Resource.add_member(:data_location, Shapes::ShapeRef.new(shape: DataLocationResource, location_name: "DataLocation"))
    Resource.struct_class = Types::Resource

    ResourceInfo.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, location_name: "ResourceArn"))
    ResourceInfo.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "RoleArn"))
    ResourceInfo.add_member(:last_modified, Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: "LastModified"))
    ResourceInfo.struct_class = Types::ResourceInfo

    ResourceInfoList.member = Shapes::ShapeRef.new(shape: ResourceInfo)

    ResourceShareList.member = Shapes::ShapeRef.new(shape: RAMResourceShareArn)

    RevokePermissionsRequest.add_member(:catalog_id, Shapes::ShapeRef.new(shape: CatalogIdString, location_name: "CatalogId"))
    RevokePermissionsRequest.add_member(:principal, Shapes::ShapeRef.new(shape: DataLakePrincipal, required: true, location_name: "Principal"))
    RevokePermissionsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "Resource"))
    RevokePermissionsRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, required: true, location_name: "Permissions"))
    RevokePermissionsRequest.add_member(:permissions_with_grant_option, Shapes::ShapeRef.new(shape: PermissionList, location_name: "PermissionsWithGrantOption"))
    RevokePermissionsRequest.struct_class = Types::RevokePermissionsRequest

    RevokePermissionsResponse.struct_class = Types::RevokePermissionsResponse

    StringValueList.member = Shapes::ShapeRef.new(shape: StringValue)

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

    TrustedResourceOwners.member = Shapes::ShapeRef.new(shape: CatalogIdString)

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
