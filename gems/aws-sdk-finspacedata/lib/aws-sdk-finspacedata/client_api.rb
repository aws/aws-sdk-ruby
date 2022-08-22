# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FinSpaceData
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessKeyId = Shapes::StringShape.new(name: 'AccessKeyId')
    AliasString = Shapes::StringShape.new(name: 'AliasString')
    ApiAccess = Shapes::StringShape.new(name: 'ApiAccess')
    ApplicationPermission = Shapes::StringShape.new(name: 'ApplicationPermission')
    ApplicationPermissionList = Shapes::ListShape.new(name: 'ApplicationPermissionList')
    AssociateUserToPermissionGroupRequest = Shapes::StructureShape.new(name: 'AssociateUserToPermissionGroupRequest')
    AssociateUserToPermissionGroupResponse = Shapes::StructureShape.new(name: 'AssociateUserToPermissionGroupResponse')
    AwsCredentials = Shapes::StructureShape.new(name: 'AwsCredentials')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChangeType = Shapes::StringShape.new(name: 'ChangeType')
    ChangesetArn = Shapes::StringShape.new(name: 'ChangesetArn')
    ChangesetErrorInfo = Shapes::StructureShape.new(name: 'ChangesetErrorInfo')
    ChangesetId = Shapes::StringShape.new(name: 'ChangesetId')
    ChangesetList = Shapes::ListShape.new(name: 'ChangesetList')
    ChangesetSummary = Shapes::StructureShape.new(name: 'ChangesetSummary')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ColumnDataType = Shapes::StringShape.new(name: 'ColumnDataType')
    ColumnDefinition = Shapes::StructureShape.new(name: 'ColumnDefinition')
    ColumnDescription = Shapes::StringShape.new(name: 'ColumnDescription')
    ColumnList = Shapes::ListShape.new(name: 'ColumnList')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ColumnNameList = Shapes::ListShape.new(name: 'ColumnNameList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateChangesetRequest = Shapes::StructureShape.new(name: 'CreateChangesetRequest')
    CreateChangesetResponse = Shapes::StructureShape.new(name: 'CreateChangesetResponse')
    CreateDataViewRequest = Shapes::StructureShape.new(name: 'CreateDataViewRequest')
    CreateDataViewResponse = Shapes::StructureShape.new(name: 'CreateDataViewResponse')
    CreateDatasetRequest = Shapes::StructureShape.new(name: 'CreateDatasetRequest')
    CreateDatasetResponse = Shapes::StructureShape.new(name: 'CreateDatasetResponse')
    CreatePermissionGroupRequest = Shapes::StructureShape.new(name: 'CreatePermissionGroupRequest')
    CreatePermissionGroupResponse = Shapes::StructureShape.new(name: 'CreatePermissionGroupResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    Credentials = Shapes::StructureShape.new(name: 'Credentials')
    DataViewArn = Shapes::StringShape.new(name: 'DataViewArn')
    DataViewDestinationType = Shapes::StringShape.new(name: 'DataViewDestinationType')
    DataViewDestinationTypeParams = Shapes::StructureShape.new(name: 'DataViewDestinationTypeParams')
    DataViewErrorInfo = Shapes::StructureShape.new(name: 'DataViewErrorInfo')
    DataViewId = Shapes::StringShape.new(name: 'DataViewId')
    DataViewList = Shapes::ListShape.new(name: 'DataViewList')
    DataViewStatus = Shapes::StringShape.new(name: 'DataViewStatus')
    DataViewSummary = Shapes::StructureShape.new(name: 'DataViewSummary')
    Dataset = Shapes::StructureShape.new(name: 'Dataset')
    DatasetArn = Shapes::StringShape.new(name: 'DatasetArn')
    DatasetDescription = Shapes::StringShape.new(name: 'DatasetDescription')
    DatasetId = Shapes::StringShape.new(name: 'DatasetId')
    DatasetKind = Shapes::StringShape.new(name: 'DatasetKind')
    DatasetList = Shapes::ListShape.new(name: 'DatasetList')
    DatasetOwnerInfo = Shapes::StructureShape.new(name: 'DatasetOwnerInfo')
    DatasetStatus = Shapes::StringShape.new(name: 'DatasetStatus')
    DatasetTitle = Shapes::StringShape.new(name: 'DatasetTitle')
    DeleteDatasetRequest = Shapes::StructureShape.new(name: 'DeleteDatasetRequest')
    DeleteDatasetResponse = Shapes::StructureShape.new(name: 'DeleteDatasetResponse')
    DeletePermissionGroupRequest = Shapes::StructureShape.new(name: 'DeletePermissionGroupRequest')
    DeletePermissionGroupResponse = Shapes::StructureShape.new(name: 'DeletePermissionGroupResponse')
    DisableUserRequest = Shapes::StructureShape.new(name: 'DisableUserRequest')
    DisableUserResponse = Shapes::StructureShape.new(name: 'DisableUserResponse')
    DisassociateUserFromPermissionGroupRequest = Shapes::StructureShape.new(name: 'DisassociateUserFromPermissionGroupRequest')
    DisassociateUserFromPermissionGroupResponse = Shapes::StructureShape.new(name: 'DisassociateUserFromPermissionGroupResponse')
    Email = Shapes::StringShape.new(name: 'Email')
    EnableUserRequest = Shapes::StructureShape.new(name: 'EnableUserRequest')
    EnableUserResponse = Shapes::StructureShape.new(name: 'EnableUserResponse')
    ErrorCategory = Shapes::StringShape.new(name: 'ErrorCategory')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExportFileFormat = Shapes::StringShape.new(name: 'ExportFileFormat')
    FirstName = Shapes::StringShape.new(name: 'FirstName')
    FormatParams = Shapes::MapShape.new(name: 'FormatParams')
    GetChangesetRequest = Shapes::StructureShape.new(name: 'GetChangesetRequest')
    GetChangesetResponse = Shapes::StructureShape.new(name: 'GetChangesetResponse')
    GetDataViewRequest = Shapes::StructureShape.new(name: 'GetDataViewRequest')
    GetDataViewResponse = Shapes::StructureShape.new(name: 'GetDataViewResponse')
    GetDatasetRequest = Shapes::StructureShape.new(name: 'GetDatasetRequest')
    GetDatasetResponse = Shapes::StructureShape.new(name: 'GetDatasetResponse')
    GetExternalDataViewAccessDetailsRequest = Shapes::StructureShape.new(name: 'GetExternalDataViewAccessDetailsRequest')
    GetExternalDataViewAccessDetailsResponse = Shapes::StructureShape.new(name: 'GetExternalDataViewAccessDetailsResponse')
    GetPermissionGroupRequest = Shapes::StructureShape.new(name: 'GetPermissionGroupRequest')
    GetPermissionGroupResponse = Shapes::StructureShape.new(name: 'GetPermissionGroupResponse')
    GetProgrammaticAccessCredentialsRequest = Shapes::StructureShape.new(name: 'GetProgrammaticAccessCredentialsRequest')
    GetProgrammaticAccessCredentialsResponse = Shapes::StructureShape.new(name: 'GetProgrammaticAccessCredentialsResponse')
    GetUserRequest = Shapes::StructureShape.new(name: 'GetUserRequest')
    GetUserResponse = Shapes::StructureShape.new(name: 'GetUserResponse')
    GetWorkingLocationRequest = Shapes::StructureShape.new(name: 'GetWorkingLocationRequest')
    GetWorkingLocationResponse = Shapes::StructureShape.new(name: 'GetWorkingLocationResponse')
    IdType = Shapes::StringShape.new(name: 'IdType')
    IngestionStatus = Shapes::StringShape.new(name: 'IngestionStatus')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LastName = Shapes::StringShape.new(name: 'LastName')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListChangesetsRequest = Shapes::StructureShape.new(name: 'ListChangesetsRequest')
    ListChangesetsResponse = Shapes::StructureShape.new(name: 'ListChangesetsResponse')
    ListDataViewsRequest = Shapes::StructureShape.new(name: 'ListDataViewsRequest')
    ListDataViewsResponse = Shapes::StructureShape.new(name: 'ListDataViewsResponse')
    ListDatasetsRequest = Shapes::StructureShape.new(name: 'ListDatasetsRequest')
    ListDatasetsResponse = Shapes::StructureShape.new(name: 'ListDatasetsResponse')
    ListPermissionGroupsByUserRequest = Shapes::StructureShape.new(name: 'ListPermissionGroupsByUserRequest')
    ListPermissionGroupsByUserResponse = Shapes::StructureShape.new(name: 'ListPermissionGroupsByUserResponse')
    ListPermissionGroupsRequest = Shapes::StructureShape.new(name: 'ListPermissionGroupsRequest')
    ListPermissionGroupsResponse = Shapes::StructureShape.new(name: 'ListPermissionGroupsResponse')
    ListUsersByPermissionGroupRequest = Shapes::StructureShape.new(name: 'ListUsersByPermissionGroupRequest')
    ListUsersByPermissionGroupResponse = Shapes::StructureShape.new(name: 'ListUsersByPermissionGroupResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    OwnerName = Shapes::StringShape.new(name: 'OwnerName')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PartitionColumnList = Shapes::ListShape.new(name: 'PartitionColumnList')
    Password = Shapes::StringShape.new(name: 'Password')
    PermissionGroup = Shapes::StructureShape.new(name: 'PermissionGroup')
    PermissionGroupByUser = Shapes::StructureShape.new(name: 'PermissionGroupByUser')
    PermissionGroupByUserList = Shapes::ListShape.new(name: 'PermissionGroupByUserList')
    PermissionGroupDescription = Shapes::StringShape.new(name: 'PermissionGroupDescription')
    PermissionGroupId = Shapes::StringShape.new(name: 'PermissionGroupId')
    PermissionGroupList = Shapes::ListShape.new(name: 'PermissionGroupList')
    PermissionGroupMembershipStatus = Shapes::StringShape.new(name: 'PermissionGroupMembershipStatus')
    PermissionGroupName = Shapes::StringShape.new(name: 'PermissionGroupName')
    PermissionGroupParams = Shapes::StructureShape.new(name: 'PermissionGroupParams')
    PhoneNumber = Shapes::StringShape.new(name: 'PhoneNumber')
    ResetUserPasswordRequest = Shapes::StructureShape.new(name: 'ResetUserPasswordRequest')
    ResetUserPasswordResponse = Shapes::StructureShape.new(name: 'ResetUserPasswordResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePermission = Shapes::StructureShape.new(name: 'ResourcePermission')
    ResourcePermissionsList = Shapes::ListShape.new(name: 'ResourcePermissionsList')
    ResultLimit = Shapes::IntegerShape.new(name: 'ResultLimit')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3DestinationFormatOptions = Shapes::MapShape.new(name: 'S3DestinationFormatOptions')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    SchemaDefinition = Shapes::StructureShape.new(name: 'SchemaDefinition')
    SchemaUnion = Shapes::StructureShape.new(name: 'SchemaUnion')
    SecretAccessKey = Shapes::StringShape.new(name: 'SecretAccessKey')
    SessionDuration = Shapes::IntegerShape.new(name: 'SessionDuration')
    SessionToken = Shapes::StringShape.new(name: 'SessionToken')
    SortColumnList = Shapes::ListShape.new(name: 'SortColumnList')
    SourceParams = Shapes::MapShape.new(name: 'SourceParams')
    StatusCode = Shapes::IntegerShape.new(name: 'StatusCode')
    StringMapKey = Shapes::StringShape.new(name: 'StringMapKey')
    StringMapValue = Shapes::StringShape.new(name: 'StringMapValue')
    StringValueLength1to250 = Shapes::StringShape.new(name: 'StringValueLength1to250')
    StringValueLength1to255 = Shapes::StringShape.new(name: 'StringValueLength1to255')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimestampEpoch = Shapes::IntegerShape.new(name: 'TimestampEpoch')
    UpdateChangesetRequest = Shapes::StructureShape.new(name: 'UpdateChangesetRequest')
    UpdateChangesetResponse = Shapes::StructureShape.new(name: 'UpdateChangesetResponse')
    UpdateDatasetRequest = Shapes::StructureShape.new(name: 'UpdateDatasetRequest')
    UpdateDatasetResponse = Shapes::StructureShape.new(name: 'UpdateDatasetResponse')
    UpdatePermissionGroupRequest = Shapes::StructureShape.new(name: 'UpdatePermissionGroupRequest')
    UpdatePermissionGroupResponse = Shapes::StructureShape.new(name: 'UpdatePermissionGroupResponse')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    User = Shapes::StructureShape.new(name: 'User')
    UserByPermissionGroup = Shapes::StructureShape.new(name: 'UserByPermissionGroup')
    UserByPermissionGroupList = Shapes::ListShape.new(name: 'UserByPermissionGroupList')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserStatus = Shapes::StringShape.new(name: 'UserStatus')
    UserType = Shapes::StringShape.new(name: 'UserType')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    locationType = Shapes::StringShape.new(name: 'locationType')
    stringValueLength1to1024 = Shapes::StringShape.new(name: 'stringValueLength1to1024')
    stringValueLength1to255 = Shapes::StringShape.new(name: 'stringValueLength1to255')
    stringValueLength1to63 = Shapes::StringShape.new(name: 'stringValueLength1to63')
    stringValueMaxLength1000 = Shapes::StringShape.new(name: 'stringValueMaxLength1000')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ApplicationPermissionList.member = Shapes::ShapeRef.new(shape: ApplicationPermission)

    AssociateUserToPermissionGroupRequest.add_member(:permission_group_id, Shapes::ShapeRef.new(shape: PermissionGroupId, required: true, location: "uri", location_name: "permissionGroupId"))
    AssociateUserToPermissionGroupRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    AssociateUserToPermissionGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    AssociateUserToPermissionGroupRequest.struct_class = Types::AssociateUserToPermissionGroupRequest

    AssociateUserToPermissionGroupResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "statusCode"))
    AssociateUserToPermissionGroupResponse.struct_class = Types::AssociateUserToPermissionGroupResponse

    AwsCredentials.add_member(:access_key_id, Shapes::ShapeRef.new(shape: AccessKeyId, location_name: "accessKeyId"))
    AwsCredentials.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: SecretAccessKey, location_name: "secretAccessKey"))
    AwsCredentials.add_member(:session_token, Shapes::ShapeRef.new(shape: SessionToken, location_name: "sessionToken"))
    AwsCredentials.add_member(:expiration, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "expiration"))
    AwsCredentials.struct_class = Types::AwsCredentials

    ChangesetErrorInfo.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    ChangesetErrorInfo.add_member(:error_category, Shapes::ShapeRef.new(shape: ErrorCategory, location_name: "errorCategory"))
    ChangesetErrorInfo.struct_class = Types::ChangesetErrorInfo

    ChangesetList.member = Shapes::ShapeRef.new(shape: ChangesetSummary)

    ChangesetSummary.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    ChangesetSummary.add_member(:changeset_arn, Shapes::ShapeRef.new(shape: ChangesetArn, location_name: "changesetArn"))
    ChangesetSummary.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    ChangesetSummary.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, location_name: "changeType"))
    ChangesetSummary.add_member(:source_params, Shapes::ShapeRef.new(shape: SourceParams, location_name: "sourceParams"))
    ChangesetSummary.add_member(:format_params, Shapes::ShapeRef.new(shape: FormatParams, location_name: "formatParams"))
    ChangesetSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    ChangesetSummary.add_member(:status, Shapes::ShapeRef.new(shape: IngestionStatus, location_name: "status"))
    ChangesetSummary.add_member(:error_info, Shapes::ShapeRef.new(shape: ChangesetErrorInfo, location_name: "errorInfo"))
    ChangesetSummary.add_member(:active_until_timestamp, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "activeUntilTimestamp", metadata: {"box"=>true}))
    ChangesetSummary.add_member(:active_from_timestamp, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "activeFromTimestamp", metadata: {"box"=>true}))
    ChangesetSummary.add_member(:updates_changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "updatesChangesetId"))
    ChangesetSummary.add_member(:updated_by_changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "updatedByChangesetId"))
    ChangesetSummary.struct_class = Types::ChangesetSummary

    ColumnDefinition.add_member(:data_type, Shapes::ShapeRef.new(shape: ColumnDataType, location_name: "dataType"))
    ColumnDefinition.add_member(:column_name, Shapes::ShapeRef.new(shape: ColumnName, location_name: "columnName"))
    ColumnDefinition.add_member(:column_description, Shapes::ShapeRef.new(shape: ColumnDescription, location_name: "columnDescription"))
    ColumnDefinition.struct_class = Types::ColumnDefinition

    ColumnList.member = Shapes::ShapeRef.new(shape: ColumnDefinition)

    ColumnNameList.member = Shapes::ShapeRef.new(shape: ColumnName)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: errorMessage, location_name: "reason"))
    ConflictException.struct_class = Types::ConflictException

    CreateChangesetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateChangesetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    CreateChangesetRequest.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, required: true, location_name: "changeType"))
    CreateChangesetRequest.add_member(:source_params, Shapes::ShapeRef.new(shape: SourceParams, required: true, location_name: "sourceParams"))
    CreateChangesetRequest.add_member(:format_params, Shapes::ShapeRef.new(shape: FormatParams, required: true, location_name: "formatParams"))
    CreateChangesetRequest.struct_class = Types::CreateChangesetRequest

    CreateChangesetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    CreateChangesetResponse.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    CreateChangesetResponse.struct_class = Types::CreateChangesetResponse

    CreateDataViewRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDataViewRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    CreateDataViewRequest.add_member(:auto_update, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoUpdate"))
    CreateDataViewRequest.add_member(:sort_columns, Shapes::ShapeRef.new(shape: SortColumnList, location_name: "sortColumns"))
    CreateDataViewRequest.add_member(:partition_columns, Shapes::ShapeRef.new(shape: PartitionColumnList, location_name: "partitionColumns"))
    CreateDataViewRequest.add_member(:as_of_timestamp, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "asOfTimestamp", metadata: {"box"=>true}))
    CreateDataViewRequest.add_member(:destination_type_params, Shapes::ShapeRef.new(shape: DataViewDestinationTypeParams, required: true, location_name: "destinationTypeParams"))
    CreateDataViewRequest.struct_class = Types::CreateDataViewRequest

    CreateDataViewResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    CreateDataViewResponse.add_member(:data_view_id, Shapes::ShapeRef.new(shape: DataViewId, location_name: "dataViewId"))
    CreateDataViewResponse.struct_class = Types::CreateDataViewResponse

    CreateDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDatasetRequest.add_member(:dataset_title, Shapes::ShapeRef.new(shape: DatasetTitle, required: true, location_name: "datasetTitle"))
    CreateDatasetRequest.add_member(:kind, Shapes::ShapeRef.new(shape: DatasetKind, required: true, location_name: "kind"))
    CreateDatasetRequest.add_member(:dataset_description, Shapes::ShapeRef.new(shape: DatasetDescription, location_name: "datasetDescription"))
    CreateDatasetRequest.add_member(:owner_info, Shapes::ShapeRef.new(shape: DatasetOwnerInfo, location_name: "ownerInfo"))
    CreateDatasetRequest.add_member(:permission_group_params, Shapes::ShapeRef.new(shape: PermissionGroupParams, required: true, location_name: "permissionGroupParams"))
    CreateDatasetRequest.add_member(:alias, Shapes::ShapeRef.new(shape: AliasString, location_name: "alias"))
    CreateDatasetRequest.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaUnion, location_name: "schemaDefinition"))
    CreateDatasetRequest.struct_class = Types::CreateDatasetRequest

    CreateDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    CreateDatasetResponse.struct_class = Types::CreateDatasetResponse

    CreatePermissionGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: PermissionGroupName, required: true, location_name: "name"))
    CreatePermissionGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: PermissionGroupDescription, location_name: "description"))
    CreatePermissionGroupRequest.add_member(:application_permissions, Shapes::ShapeRef.new(shape: ApplicationPermissionList, required: true, location_name: "applicationPermissions"))
    CreatePermissionGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreatePermissionGroupRequest.struct_class = Types::CreatePermissionGroupRequest

    CreatePermissionGroupResponse.add_member(:permission_group_id, Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: "permissionGroupId"))
    CreatePermissionGroupResponse.struct_class = Types::CreatePermissionGroupResponse

    CreateUserRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "emailAddress"))
    CreateUserRequest.add_member(:type, Shapes::ShapeRef.new(shape: UserType, required: true, location_name: "type"))
    CreateUserRequest.add_member(:first_name, Shapes::ShapeRef.new(shape: FirstName, location_name: "firstName"))
    CreateUserRequest.add_member(:last_name, Shapes::ShapeRef.new(shape: LastName, location_name: "lastName"))
    CreateUserRequest.add_member(:api_access, Shapes::ShapeRef.new(shape: ApiAccess, location_name: "ApiAccess"))
    CreateUserRequest.add_member(:api_access_principal_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "apiAccessPrincipalArn"))
    CreateUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    CreateUserResponse.struct_class = Types::CreateUserResponse

    Credentials.add_member(:access_key_id, Shapes::ShapeRef.new(shape: stringValueLength1to255, location_name: "accessKeyId"))
    Credentials.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: stringValueMaxLength1000, location_name: "secretAccessKey"))
    Credentials.add_member(:session_token, Shapes::ShapeRef.new(shape: stringValueMaxLength1000, location_name: "sessionToken"))
    Credentials.struct_class = Types::Credentials

    DataViewDestinationTypeParams.add_member(:destination_type, Shapes::ShapeRef.new(shape: DataViewDestinationType, required: true, location_name: "destinationType"))
    DataViewDestinationTypeParams.add_member(:s3_destination_export_file_format, Shapes::ShapeRef.new(shape: ExportFileFormat, location_name: "s3DestinationExportFileFormat"))
    DataViewDestinationTypeParams.add_member(:s3_destination_export_file_format_options, Shapes::ShapeRef.new(shape: S3DestinationFormatOptions, location_name: "s3DestinationExportFileFormatOptions"))
    DataViewDestinationTypeParams.struct_class = Types::DataViewDestinationTypeParams

    DataViewErrorInfo.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    DataViewErrorInfo.add_member(:error_category, Shapes::ShapeRef.new(shape: ErrorCategory, location_name: "errorCategory"))
    DataViewErrorInfo.struct_class = Types::DataViewErrorInfo

    DataViewList.member = Shapes::ShapeRef.new(shape: DataViewSummary)

    DataViewSummary.add_member(:data_view_id, Shapes::ShapeRef.new(shape: DataViewId, location_name: "dataViewId"))
    DataViewSummary.add_member(:data_view_arn, Shapes::ShapeRef.new(shape: DataViewArn, location_name: "dataViewArn"))
    DataViewSummary.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    DataViewSummary.add_member(:as_of_timestamp, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "asOfTimestamp", metadata: {"box"=>true}))
    DataViewSummary.add_member(:partition_columns, Shapes::ShapeRef.new(shape: PartitionColumnList, location_name: "partitionColumns"))
    DataViewSummary.add_member(:sort_columns, Shapes::ShapeRef.new(shape: SortColumnList, location_name: "sortColumns"))
    DataViewSummary.add_member(:status, Shapes::ShapeRef.new(shape: DataViewStatus, location_name: "status"))
    DataViewSummary.add_member(:error_info, Shapes::ShapeRef.new(shape: DataViewErrorInfo, location_name: "errorInfo"))
    DataViewSummary.add_member(:destination_type_properties, Shapes::ShapeRef.new(shape: DataViewDestinationTypeParams, location_name: "destinationTypeProperties"))
    DataViewSummary.add_member(:auto_update, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoUpdate"))
    DataViewSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    DataViewSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastModifiedTime"))
    DataViewSummary.struct_class = Types::DataViewSummary

    Dataset.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    Dataset.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "datasetArn"))
    Dataset.add_member(:dataset_title, Shapes::ShapeRef.new(shape: DatasetTitle, location_name: "datasetTitle"))
    Dataset.add_member(:kind, Shapes::ShapeRef.new(shape: DatasetKind, location_name: "kind"))
    Dataset.add_member(:dataset_description, Shapes::ShapeRef.new(shape: DatasetDescription, location_name: "datasetDescription"))
    Dataset.add_member(:owner_info, Shapes::ShapeRef.new(shape: DatasetOwnerInfo, location_name: "ownerInfo"))
    Dataset.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    Dataset.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastModifiedTime"))
    Dataset.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaUnion, location_name: "schemaDefinition"))
    Dataset.add_member(:alias, Shapes::ShapeRef.new(shape: AliasString, location_name: "alias"))
    Dataset.struct_class = Types::Dataset

    DatasetList.member = Shapes::ShapeRef.new(shape: Dataset)

    DatasetOwnerInfo.add_member(:name, Shapes::ShapeRef.new(shape: OwnerName, location_name: "name"))
    DatasetOwnerInfo.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "phoneNumber"))
    DatasetOwnerInfo.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    DatasetOwnerInfo.struct_class = Types::DatasetOwnerInfo

    DeleteDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    DeleteDatasetRequest.struct_class = Types::DeleteDatasetRequest

    DeleteDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    DeleteDatasetResponse.struct_class = Types::DeleteDatasetResponse

    DeletePermissionGroupRequest.add_member(:permission_group_id, Shapes::ShapeRef.new(shape: PermissionGroupId, required: true, location: "uri", location_name: "permissionGroupId"))
    DeletePermissionGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeletePermissionGroupRequest.struct_class = Types::DeletePermissionGroupRequest

    DeletePermissionGroupResponse.add_member(:permission_group_id, Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: "permissionGroupId"))
    DeletePermissionGroupResponse.struct_class = Types::DeletePermissionGroupResponse

    DisableUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    DisableUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DisableUserRequest.struct_class = Types::DisableUserRequest

    DisableUserResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    DisableUserResponse.struct_class = Types::DisableUserResponse

    DisassociateUserFromPermissionGroupRequest.add_member(:permission_group_id, Shapes::ShapeRef.new(shape: PermissionGroupId, required: true, location: "uri", location_name: "permissionGroupId"))
    DisassociateUserFromPermissionGroupRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    DisassociateUserFromPermissionGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DisassociateUserFromPermissionGroupRequest.struct_class = Types::DisassociateUserFromPermissionGroupRequest

    DisassociateUserFromPermissionGroupResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "statusCode"))
    DisassociateUserFromPermissionGroupResponse.struct_class = Types::DisassociateUserFromPermissionGroupResponse

    EnableUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    EnableUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    EnableUserRequest.struct_class = Types::EnableUserRequest

    EnableUserResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    EnableUserResponse.struct_class = Types::EnableUserResponse

    FormatParams.key = Shapes::ShapeRef.new(shape: StringMapKey)
    FormatParams.value = Shapes::ShapeRef.new(shape: StringMapValue)

    GetChangesetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    GetChangesetRequest.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, required: true, location: "uri", location_name: "changesetId"))
    GetChangesetRequest.struct_class = Types::GetChangesetRequest

    GetChangesetResponse.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    GetChangesetResponse.add_member(:changeset_arn, Shapes::ShapeRef.new(shape: ChangesetArn, location_name: "changesetArn"))
    GetChangesetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    GetChangesetResponse.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, location_name: "changeType"))
    GetChangesetResponse.add_member(:source_params, Shapes::ShapeRef.new(shape: SourceParams, location_name: "sourceParams"))
    GetChangesetResponse.add_member(:format_params, Shapes::ShapeRef.new(shape: FormatParams, location_name: "formatParams"))
    GetChangesetResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    GetChangesetResponse.add_member(:status, Shapes::ShapeRef.new(shape: IngestionStatus, location_name: "status"))
    GetChangesetResponse.add_member(:error_info, Shapes::ShapeRef.new(shape: ChangesetErrorInfo, location_name: "errorInfo"))
    GetChangesetResponse.add_member(:active_until_timestamp, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "activeUntilTimestamp", metadata: {"box"=>true}))
    GetChangesetResponse.add_member(:active_from_timestamp, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "activeFromTimestamp", metadata: {"box"=>true}))
    GetChangesetResponse.add_member(:updates_changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "updatesChangesetId"))
    GetChangesetResponse.add_member(:updated_by_changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "updatedByChangesetId"))
    GetChangesetResponse.struct_class = Types::GetChangesetResponse

    GetDataViewRequest.add_member(:data_view_id, Shapes::ShapeRef.new(shape: DataViewId, required: true, location: "uri", location_name: "dataviewId"))
    GetDataViewRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    GetDataViewRequest.struct_class = Types::GetDataViewRequest

    GetDataViewResponse.add_member(:auto_update, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoUpdate"))
    GetDataViewResponse.add_member(:partition_columns, Shapes::ShapeRef.new(shape: PartitionColumnList, location_name: "partitionColumns"))
    GetDataViewResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    GetDataViewResponse.add_member(:as_of_timestamp, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "asOfTimestamp", metadata: {"box"=>true}))
    GetDataViewResponse.add_member(:error_info, Shapes::ShapeRef.new(shape: DataViewErrorInfo, location_name: "errorInfo"))
    GetDataViewResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastModifiedTime"))
    GetDataViewResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    GetDataViewResponse.add_member(:sort_columns, Shapes::ShapeRef.new(shape: SortColumnList, location_name: "sortColumns"))
    GetDataViewResponse.add_member(:data_view_id, Shapes::ShapeRef.new(shape: DataViewId, location_name: "dataViewId"))
    GetDataViewResponse.add_member(:data_view_arn, Shapes::ShapeRef.new(shape: DataViewArn, location_name: "dataViewArn"))
    GetDataViewResponse.add_member(:destination_type_params, Shapes::ShapeRef.new(shape: DataViewDestinationTypeParams, location_name: "destinationTypeParams"))
    GetDataViewResponse.add_member(:status, Shapes::ShapeRef.new(shape: DataViewStatus, location_name: "status"))
    GetDataViewResponse.struct_class = Types::GetDataViewResponse

    GetDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: StringValueLength1to255, required: true, location: "uri", location_name: "datasetId"))
    GetDatasetRequest.struct_class = Types::GetDatasetRequest

    GetDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    GetDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, location_name: "datasetArn"))
    GetDatasetResponse.add_member(:dataset_title, Shapes::ShapeRef.new(shape: DatasetTitle, location_name: "datasetTitle"))
    GetDatasetResponse.add_member(:kind, Shapes::ShapeRef.new(shape: DatasetKind, location_name: "kind"))
    GetDatasetResponse.add_member(:dataset_description, Shapes::ShapeRef.new(shape: DatasetDescription, location_name: "datasetDescription"))
    GetDatasetResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    GetDatasetResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastModifiedTime"))
    GetDatasetResponse.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaUnion, location_name: "schemaDefinition"))
    GetDatasetResponse.add_member(:alias, Shapes::ShapeRef.new(shape: AliasString, location_name: "alias"))
    GetDatasetResponse.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "status"))
    GetDatasetResponse.struct_class = Types::GetDatasetResponse

    GetExternalDataViewAccessDetailsRequest.add_member(:data_view_id, Shapes::ShapeRef.new(shape: DataViewId, required: true, location: "uri", location_name: "dataviewId"))
    GetExternalDataViewAccessDetailsRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    GetExternalDataViewAccessDetailsRequest.struct_class = Types::GetExternalDataViewAccessDetailsRequest

    GetExternalDataViewAccessDetailsResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: AwsCredentials, location_name: "credentials"))
    GetExternalDataViewAccessDetailsResponse.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    GetExternalDataViewAccessDetailsResponse.struct_class = Types::GetExternalDataViewAccessDetailsResponse

    GetPermissionGroupRequest.add_member(:permission_group_id, Shapes::ShapeRef.new(shape: PermissionGroupId, required: true, location: "uri", location_name: "permissionGroupId"))
    GetPermissionGroupRequest.struct_class = Types::GetPermissionGroupRequest

    GetPermissionGroupResponse.add_member(:permission_group, Shapes::ShapeRef.new(shape: PermissionGroup, location_name: "permissionGroup"))
    GetPermissionGroupResponse.struct_class = Types::GetPermissionGroupResponse

    GetProgrammaticAccessCredentialsRequest.add_member(:duration_in_minutes, Shapes::ShapeRef.new(shape: SessionDuration, location: "querystring", location_name: "durationInMinutes"))
    GetProgrammaticAccessCredentialsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "querystring", location_name: "environmentId"))
    GetProgrammaticAccessCredentialsRequest.struct_class = Types::GetProgrammaticAccessCredentialsRequest

    GetProgrammaticAccessCredentialsResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: Credentials, location_name: "credentials"))
    GetProgrammaticAccessCredentialsResponse.add_member(:duration_in_minutes, Shapes::ShapeRef.new(shape: SessionDuration, location_name: "durationInMinutes"))
    GetProgrammaticAccessCredentialsResponse.struct_class = Types::GetProgrammaticAccessCredentialsResponse

    GetUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    GetUserRequest.struct_class = Types::GetUserRequest

    GetUserResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    GetUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: UserStatus, location_name: "status"))
    GetUserResponse.add_member(:first_name, Shapes::ShapeRef.new(shape: FirstName, location_name: "firstName"))
    GetUserResponse.add_member(:last_name, Shapes::ShapeRef.new(shape: LastName, location_name: "lastName"))
    GetUserResponse.add_member(:email_address, Shapes::ShapeRef.new(shape: Email, location_name: "emailAddress"))
    GetUserResponse.add_member(:type, Shapes::ShapeRef.new(shape: UserType, location_name: "type"))
    GetUserResponse.add_member(:api_access, Shapes::ShapeRef.new(shape: ApiAccess, location_name: "apiAccess"))
    GetUserResponse.add_member(:api_access_principal_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "apiAccessPrincipalArn"))
    GetUserResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    GetUserResponse.add_member(:last_enabled_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastEnabledTime"))
    GetUserResponse.add_member(:last_disabled_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastDisabledTime"))
    GetUserResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastModifiedTime"))
    GetUserResponse.add_member(:last_login_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastLoginTime"))
    GetUserResponse.struct_class = Types::GetUserResponse

    GetWorkingLocationRequest.add_member(:location_type, Shapes::ShapeRef.new(shape: locationType, location_name: "locationType"))
    GetWorkingLocationRequest.struct_class = Types::GetWorkingLocationRequest

    GetWorkingLocationResponse.add_member(:s3_uri, Shapes::ShapeRef.new(shape: stringValueLength1to1024, location_name: "s3Uri"))
    GetWorkingLocationResponse.add_member(:s3_path, Shapes::ShapeRef.new(shape: stringValueLength1to1024, location_name: "s3Path"))
    GetWorkingLocationResponse.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: stringValueLength1to63, location_name: "s3Bucket"))
    GetWorkingLocationResponse.struct_class = Types::GetWorkingLocationResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListChangesetsRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    ListChangesetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultLimit, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListChangesetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListChangesetsRequest.struct_class = Types::ListChangesetsRequest

    ListChangesetsResponse.add_member(:changesets, Shapes::ShapeRef.new(shape: ChangesetList, location_name: "changesets"))
    ListChangesetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListChangesetsResponse.struct_class = Types::ListChangesetsResponse

    ListDataViewsRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    ListDataViewsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDataViewsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultLimit, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListDataViewsRequest.struct_class = Types::ListDataViewsRequest

    ListDataViewsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDataViewsResponse.add_member(:data_views, Shapes::ShapeRef.new(shape: DataViewList, location_name: "dataViews"))
    ListDataViewsResponse.struct_class = Types::ListDataViewsResponse

    ListDatasetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDatasetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultLimit, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListDatasetsRequest.struct_class = Types::ListDatasetsRequest

    ListDatasetsResponse.add_member(:datasets, Shapes::ShapeRef.new(shape: DatasetList, location_name: "datasets"))
    ListDatasetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDatasetsResponse.struct_class = Types::ListDatasetsResponse

    ListPermissionGroupsByUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    ListPermissionGroupsByUserRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListPermissionGroupsByUserRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultLimit, required: true, location: "querystring", location_name: "maxResults"))
    ListPermissionGroupsByUserRequest.struct_class = Types::ListPermissionGroupsByUserRequest

    ListPermissionGroupsByUserResponse.add_member(:permission_groups, Shapes::ShapeRef.new(shape: PermissionGroupByUserList, location_name: "permissionGroups"))
    ListPermissionGroupsByUserResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPermissionGroupsByUserResponse.struct_class = Types::ListPermissionGroupsByUserResponse

    ListPermissionGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListPermissionGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultLimit, required: true, location: "querystring", location_name: "maxResults"))
    ListPermissionGroupsRequest.struct_class = Types::ListPermissionGroupsRequest

    ListPermissionGroupsResponse.add_member(:permission_groups, Shapes::ShapeRef.new(shape: PermissionGroupList, location_name: "permissionGroups"))
    ListPermissionGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPermissionGroupsResponse.struct_class = Types::ListPermissionGroupsResponse

    ListUsersByPermissionGroupRequest.add_member(:permission_group_id, Shapes::ShapeRef.new(shape: PermissionGroupId, required: true, location: "uri", location_name: "permissionGroupId"))
    ListUsersByPermissionGroupRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListUsersByPermissionGroupRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultLimit, required: true, location: "querystring", location_name: "maxResults"))
    ListUsersByPermissionGroupRequest.struct_class = Types::ListUsersByPermissionGroupRequest

    ListUsersByPermissionGroupResponse.add_member(:users, Shapes::ShapeRef.new(shape: UserByPermissionGroupList, location_name: "users"))
    ListUsersByPermissionGroupResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListUsersByPermissionGroupResponse.struct_class = Types::ListUsersByPermissionGroupResponse

    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultLimit, required: true, location: "querystring", location_name: "maxResults"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: UserList, location_name: "users"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    PartitionColumnList.member = Shapes::ShapeRef.new(shape: StringValueLength1to255)

    PermissionGroup.add_member(:permission_group_id, Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: "permissionGroupId"))
    PermissionGroup.add_member(:name, Shapes::ShapeRef.new(shape: PermissionGroupName, location_name: "name"))
    PermissionGroup.add_member(:description, Shapes::ShapeRef.new(shape: PermissionGroupDescription, location_name: "description"))
    PermissionGroup.add_member(:application_permissions, Shapes::ShapeRef.new(shape: ApplicationPermissionList, location_name: "applicationPermissions"))
    PermissionGroup.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    PermissionGroup.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastModifiedTime"))
    PermissionGroup.add_member(:membership_status, Shapes::ShapeRef.new(shape: PermissionGroupMembershipStatus, location_name: "membershipStatus"))
    PermissionGroup.struct_class = Types::PermissionGroup

    PermissionGroupByUser.add_member(:permission_group_id, Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: "permissionGroupId"))
    PermissionGroupByUser.add_member(:name, Shapes::ShapeRef.new(shape: PermissionGroupName, location_name: "name"))
    PermissionGroupByUser.add_member(:membership_status, Shapes::ShapeRef.new(shape: PermissionGroupMembershipStatus, location_name: "membershipStatus"))
    PermissionGroupByUser.struct_class = Types::PermissionGroupByUser

    PermissionGroupByUserList.member = Shapes::ShapeRef.new(shape: PermissionGroupByUser)

    PermissionGroupList.member = Shapes::ShapeRef.new(shape: PermissionGroup)

    PermissionGroupParams.add_member(:permission_group_id, Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: "permissionGroupId"))
    PermissionGroupParams.add_member(:dataset_permissions, Shapes::ShapeRef.new(shape: ResourcePermissionsList, location_name: "datasetPermissions"))
    PermissionGroupParams.struct_class = Types::PermissionGroupParams

    ResetUserPasswordRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    ResetUserPasswordRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    ResetUserPasswordRequest.struct_class = Types::ResetUserPasswordRequest

    ResetUserPasswordResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    ResetUserPasswordResponse.add_member(:temporary_password, Shapes::ShapeRef.new(shape: Password, location_name: "temporaryPassword"))
    ResetUserPasswordResponse.struct_class = Types::ResetUserPasswordResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.add_member(:reason, Shapes::ShapeRef.new(shape: errorMessage, location_name: "reason"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePermission.add_member(:permission, Shapes::ShapeRef.new(shape: StringValueLength1to250, location_name: "permission"))
    ResourcePermission.struct_class = Types::ResourcePermission

    ResourcePermissionsList.member = Shapes::ShapeRef.new(shape: ResourcePermission)

    S3DestinationFormatOptions.key = Shapes::ShapeRef.new(shape: StringMapKey)
    S3DestinationFormatOptions.value = Shapes::ShapeRef.new(shape: StringMapValue)

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "bucket"))
    S3Location.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "key"))
    S3Location.struct_class = Types::S3Location

    SchemaDefinition.add_member(:columns, Shapes::ShapeRef.new(shape: ColumnList, location_name: "columns"))
    SchemaDefinition.add_member(:primary_key_columns, Shapes::ShapeRef.new(shape: ColumnNameList, location_name: "primaryKeyColumns"))
    SchemaDefinition.struct_class = Types::SchemaDefinition

    SchemaUnion.add_member(:tabular_schema_config, Shapes::ShapeRef.new(shape: SchemaDefinition, location_name: "tabularSchemaConfig"))
    SchemaUnion.struct_class = Types::SchemaUnion

    SortColumnList.member = Shapes::ShapeRef.new(shape: StringValueLength1to255)

    SourceParams.key = Shapes::ShapeRef.new(shape: StringMapKey)
    SourceParams.value = Shapes::ShapeRef.new(shape: StringMapValue)

    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateChangesetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateChangesetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    UpdateChangesetRequest.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, required: true, location: "uri", location_name: "changesetId"))
    UpdateChangesetRequest.add_member(:source_params, Shapes::ShapeRef.new(shape: SourceParams, required: true, location_name: "sourceParams"))
    UpdateChangesetRequest.add_member(:format_params, Shapes::ShapeRef.new(shape: FormatParams, required: true, location_name: "formatParams"))
    UpdateChangesetRequest.struct_class = Types::UpdateChangesetRequest

    UpdateChangesetResponse.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    UpdateChangesetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    UpdateChangesetResponse.struct_class = Types::UpdateChangesetResponse

    UpdateDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    UpdateDatasetRequest.add_member(:dataset_title, Shapes::ShapeRef.new(shape: DatasetTitle, required: true, location_name: "datasetTitle"))
    UpdateDatasetRequest.add_member(:kind, Shapes::ShapeRef.new(shape: DatasetKind, required: true, location_name: "kind"))
    UpdateDatasetRequest.add_member(:dataset_description, Shapes::ShapeRef.new(shape: DatasetDescription, location_name: "datasetDescription"))
    UpdateDatasetRequest.add_member(:alias, Shapes::ShapeRef.new(shape: AliasString, location_name: "alias"))
    UpdateDatasetRequest.add_member(:schema_definition, Shapes::ShapeRef.new(shape: SchemaUnion, location_name: "schemaDefinition"))
    UpdateDatasetRequest.struct_class = Types::UpdateDatasetRequest

    UpdateDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, location_name: "datasetId"))
    UpdateDatasetResponse.struct_class = Types::UpdateDatasetResponse

    UpdatePermissionGroupRequest.add_member(:permission_group_id, Shapes::ShapeRef.new(shape: PermissionGroupId, required: true, location: "uri", location_name: "permissionGroupId"))
    UpdatePermissionGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: PermissionGroupName, location_name: "name"))
    UpdatePermissionGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: PermissionGroupDescription, location_name: "description"))
    UpdatePermissionGroupRequest.add_member(:application_permissions, Shapes::ShapeRef.new(shape: ApplicationPermissionList, location_name: "applicationPermissions"))
    UpdatePermissionGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdatePermissionGroupRequest.struct_class = Types::UpdatePermissionGroupRequest

    UpdatePermissionGroupResponse.add_member(:permission_group_id, Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: "permissionGroupId"))
    UpdatePermissionGroupResponse.struct_class = Types::UpdatePermissionGroupResponse

    UpdateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    UpdateUserRequest.add_member(:type, Shapes::ShapeRef.new(shape: UserType, location_name: "type"))
    UpdateUserRequest.add_member(:first_name, Shapes::ShapeRef.new(shape: FirstName, location_name: "firstName"))
    UpdateUserRequest.add_member(:last_name, Shapes::ShapeRef.new(shape: LastName, location_name: "lastName"))
    UpdateUserRequest.add_member(:api_access, Shapes::ShapeRef.new(shape: ApiAccess, location_name: "apiAccess"))
    UpdateUserRequest.add_member(:api_access_principal_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "apiAccessPrincipalArn"))
    UpdateUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    User.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    User.add_member(:status, Shapes::ShapeRef.new(shape: UserStatus, location_name: "status"))
    User.add_member(:first_name, Shapes::ShapeRef.new(shape: FirstName, location_name: "firstName"))
    User.add_member(:last_name, Shapes::ShapeRef.new(shape: LastName, location_name: "lastName"))
    User.add_member(:email_address, Shapes::ShapeRef.new(shape: Email, location_name: "emailAddress"))
    User.add_member(:type, Shapes::ShapeRef.new(shape: UserType, location_name: "type"))
    User.add_member(:api_access, Shapes::ShapeRef.new(shape: ApiAccess, location_name: "apiAccess"))
    User.add_member(:api_access_principal_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "apiAccessPrincipalArn"))
    User.add_member(:create_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "createTime"))
    User.add_member(:last_enabled_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastEnabledTime"))
    User.add_member(:last_disabled_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastDisabledTime"))
    User.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastModifiedTime"))
    User.add_member(:last_login_time, Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: "lastLoginTime"))
    User.struct_class = Types::User

    UserByPermissionGroup.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    UserByPermissionGroup.add_member(:status, Shapes::ShapeRef.new(shape: UserStatus, location_name: "status"))
    UserByPermissionGroup.add_member(:first_name, Shapes::ShapeRef.new(shape: FirstName, location_name: "firstName"))
    UserByPermissionGroup.add_member(:last_name, Shapes::ShapeRef.new(shape: LastName, location_name: "lastName"))
    UserByPermissionGroup.add_member(:email_address, Shapes::ShapeRef.new(shape: Email, location_name: "emailAddress"))
    UserByPermissionGroup.add_member(:type, Shapes::ShapeRef.new(shape: UserType, location_name: "type"))
    UserByPermissionGroup.add_member(:api_access, Shapes::ShapeRef.new(shape: ApiAccess, location_name: "apiAccess"))
    UserByPermissionGroup.add_member(:api_access_principal_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "apiAccessPrincipalArn"))
    UserByPermissionGroup.add_member(:membership_status, Shapes::ShapeRef.new(shape: PermissionGroupMembershipStatus, location_name: "membershipStatus"))
    UserByPermissionGroup.struct_class = Types::UserByPermissionGroup

    UserByPermissionGroupList.member = Shapes::ShapeRef.new(shape: UserByPermissionGroup)

    UserList.member = Shapes::ShapeRef.new(shape: User)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: errorMessage, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-13"

      api.metadata = {
        "apiVersion" => "2020-07-13",
        "endpointPrefix" => "finspace-api",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "FinSpace Data",
        "serviceFullName" => "FinSpace Public API",
        "serviceId" => "finspace data",
        "signatureVersion" => "v4",
        "signingName" => "finspace-api",
        "uid" => "finspace-2020-07-13",
      }

      api.add_operation(:associate_user_to_permission_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateUserToPermissionGroup"
        o.http_method = "POST"
        o.http_request_uri = "/permission-group/{permissionGroupId}/users/{userId}"
        o.input = Shapes::ShapeRef.new(shape: AssociateUserToPermissionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateUserToPermissionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_changeset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChangeset"
        o.http_method = "POST"
        o.http_request_uri = "/datasets/{datasetId}/changesetsv2"
        o.input = Shapes::ShapeRef.new(shape: CreateChangesetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChangesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_data_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataView"
        o.http_method = "POST"
        o.http_request_uri = "/datasets/{datasetId}/dataviewsv2"
        o.input = Shapes::ShapeRef.new(shape: CreateDataViewRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataset"
        o.http_method = "POST"
        o.http_request_uri = "/datasetsv2"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_permission_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePermissionGroup"
        o.http_method = "POST"
        o.http_request_uri = "/permission-group"
        o.input = Shapes::ShapeRef.new(shape: CreatePermissionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePermissionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/user"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataset"
        o.http_method = "DELETE"
        o.http_request_uri = "/datasetsv2/{datasetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_permission_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePermissionGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/permission-group/{permissionGroupId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePermissionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePermissionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disable_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableUser"
        o.http_method = "POST"
        o.http_request_uri = "/user/{userId}/disable"
        o.input = Shapes::ShapeRef.new(shape: DisableUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_user_from_permission_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateUserFromPermissionGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/permission-group/{permissionGroupId}/users/{userId}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateUserFromPermissionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateUserFromPermissionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:enable_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableUser"
        o.http_method = "POST"
        o.http_request_uri = "/user/{userId}/enable"
        o.input = Shapes::ShapeRef.new(shape: EnableUserRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_changeset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChangeset"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetId}/changesetsv2/{changesetId}"
        o.input = Shapes::ShapeRef.new(shape: GetChangesetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChangesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_data_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataView"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetId}/dataviewsv2/{dataviewId}"
        o.input = Shapes::ShapeRef.new(shape: GetDataViewRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataset"
        o.http_method = "GET"
        o.http_request_uri = "/datasetsv2/{datasetId}"
        o.input = Shapes::ShapeRef.new(shape: GetDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_external_data_view_access_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExternalDataViewAccessDetails"
        o.http_method = "POST"
        o.http_request_uri = "/datasets/{datasetId}/dataviewsv2/{dataviewId}/external-access-details"
        o.input = Shapes::ShapeRef.new(shape: GetExternalDataViewAccessDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExternalDataViewAccessDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_permission_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPermissionGroup"
        o.http_method = "GET"
        o.http_request_uri = "/permission-group/{permissionGroupId}"
        o.input = Shapes::ShapeRef.new(shape: GetPermissionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPermissionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_programmatic_access_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProgrammaticAccessCredentials"
        o.http_method = "GET"
        o.http_request_uri = "/credentials/programmatic"
        o.input = Shapes::ShapeRef.new(shape: GetProgrammaticAccessCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProgrammaticAccessCredentialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUser"
        o.http_method = "GET"
        o.http_request_uri = "/user/{userId}"
        o.input = Shapes::ShapeRef.new(shape: GetUserRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_working_location, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkingLocation"
        o.http_method = "POST"
        o.http_request_uri = "/workingLocationV1"
        o.input = Shapes::ShapeRef.new(shape: GetWorkingLocationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkingLocationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_changesets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChangesets"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetId}/changesetsv2"
        o.input = Shapes::ShapeRef.new(shape: ListChangesetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChangesetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataViews"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetId}/dataviewsv2"
        o.input = Shapes::ShapeRef.new(shape: ListDataViewsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataViewsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_datasets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasets"
        o.http_method = "GET"
        o.http_request_uri = "/datasetsv2"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_permission_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPermissionGroups"
        o.http_method = "GET"
        o.http_request_uri = "/permission-group"
        o.input = Shapes::ShapeRef.new(shape: ListPermissionGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPermissionGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_permission_groups_by_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPermissionGroupsByUser"
        o.http_method = "GET"
        o.http_request_uri = "/user/{userId}/permission-groups"
        o.input = Shapes::ShapeRef.new(shape: ListPermissionGroupsByUserRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPermissionGroupsByUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "GET"
        o.http_request_uri = "/user"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_users_by_permission_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsersByPermissionGroup"
        o.http_method = "GET"
        o.http_request_uri = "/permission-group/{permissionGroupId}/users"
        o.input = Shapes::ShapeRef.new(shape: ListUsersByPermissionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersByPermissionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:reset_user_password, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetUserPassword"
        o.http_method = "POST"
        o.http_request_uri = "/user/{userId}/password"
        o.input = Shapes::ShapeRef.new(shape: ResetUserPasswordRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetUserPasswordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_changeset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChangeset"
        o.http_method = "PUT"
        o.http_request_uri = "/datasets/{datasetId}/changesetsv2/{changesetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChangesetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChangesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataset"
        o.http_method = "PUT"
        o.http_request_uri = "/datasetsv2/{datasetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_permission_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePermissionGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/permission-group/{permissionGroupId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePermissionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePermissionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "PUT"
        o.http_request_uri = "/user/{userId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
