# frozen_string_literal: true

# This is generated code!

module Aws::Finspacedata
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#AccessKeyId', name: 'AccessKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    AliasString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#AliasString', name: 'AliasString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^alias\\/\\S+$"})
    ApiAccess = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.finspacedata#ApiAccess', name: 'ApiAccess')
    ApplicationPermission = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.finspacedata#ApplicationPermission', name: 'ApplicationPermission')
    ApplicationPermissionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.finspacedata#ApplicationPermissionList', name: 'ApplicationPermissionList')
    AssociateUserToPermissionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#AssociateUserToPermissionGroupRequest', name: 'AssociateUserToPermissionGroupRequest')
    AssociateUserToPermissionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#AssociateUserToPermissionGroupResponse', name: 'AssociateUserToPermissionGroupResponse')
    AwsCredentials = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#AwsCredentials', name: 'AwsCredentials', traits: {"smithy.api#sensitive" => {}})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.finspacedata#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    ChangeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.finspacedata#ChangeType', name: 'ChangeType')
    ChangesetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#ChangesetArn', name: 'ChangesetArn')
    ChangesetErrorInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ChangesetErrorInfo', name: 'ChangesetErrorInfo')
    ChangesetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#ChangesetId', name: 'ChangesetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 26}})
    ChangesetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.finspacedata#ChangesetList', name: 'ChangesetList')
    ChangesetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ChangesetSummary', name: 'ChangesetSummary')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    ColumnDataType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.finspacedata#ColumnDataType', name: 'ColumnDataType')
    ColumnDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ColumnDefinition', name: 'ColumnDefinition')
    ColumnDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#ColumnDescription', name: 'ColumnDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ColumnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.finspacedata#ColumnList', name: 'ColumnList')
    ColumnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#ColumnName', name: 'ColumnName', traits: {"smithy.api#length" => {"min" => 0, "max" => 126}, "smithy.api#pattern" => "\\S"})
    ColumnNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.finspacedata#ColumnNameList', name: 'ColumnNameList')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateChangesetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#CreateChangesetRequest', name: 'CreateChangesetRequest')
    CreateChangesetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#CreateChangesetResponse', name: 'CreateChangesetResponse')
    CreateDataViewRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#CreateDataViewRequest', name: 'CreateDataViewRequest')
    CreateDataViewResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#CreateDataViewResponse', name: 'CreateDataViewResponse')
    CreateDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#CreateDatasetRequest', name: 'CreateDatasetRequest')
    CreateDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#CreateDatasetResponse', name: 'CreateDatasetResponse')
    CreatePermissionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#CreatePermissionGroupRequest', name: 'CreatePermissionGroupRequest')
    CreatePermissionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#CreatePermissionGroupResponse', name: 'CreatePermissionGroupResponse')
    CreateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#CreateUserRequest', name: 'CreateUserRequest')
    CreateUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#CreateUserResponse', name: 'CreateUserResponse')
    Credentials = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#Credentials', name: 'Credentials', traits: {"smithy.api#sensitive" => {}})
    DataViewArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#DataViewArn', name: 'DataViewArn')
    DataViewDestinationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#DataViewDestinationType', name: 'DataViewDestinationType')
    DataViewDestinationTypeParams = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#DataViewDestinationTypeParams', name: 'DataViewDestinationTypeParams')
    DataViewErrorInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#DataViewErrorInfo', name: 'DataViewErrorInfo')
    DataViewId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#DataViewId', name: 'DataViewId', traits: {"smithy.api#length" => {"min" => 1, "max" => 26}})
    DataViewList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.finspacedata#DataViewList', name: 'DataViewList')
    DataViewStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.finspacedata#DataViewStatus', name: 'DataViewStatus')
    DataViewSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#DataViewSummary', name: 'DataViewSummary')
    Dataset = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#Dataset', name: 'Dataset')
    DatasetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#DatasetArn', name: 'DatasetArn')
    DatasetDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#DatasetDescription', name: 'DatasetDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    DatasetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#DatasetId', name: 'DatasetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 26}})
    DatasetKind = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.finspacedata#DatasetKind', name: 'DatasetKind')
    DatasetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.finspacedata#DatasetList', name: 'DatasetList')
    DatasetOwnerInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#DatasetOwnerInfo', name: 'DatasetOwnerInfo')
    DatasetStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.finspacedata#DatasetStatus', name: 'DatasetStatus')
    DatasetTitle = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#DatasetTitle', name: 'DatasetTitle', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "\\S"})
    DeleteDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#DeleteDatasetRequest', name: 'DeleteDatasetRequest')
    DeleteDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#DeleteDatasetResponse', name: 'DeleteDatasetResponse')
    DeletePermissionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#DeletePermissionGroupRequest', name: 'DeletePermissionGroupRequest')
    DeletePermissionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#DeletePermissionGroupResponse', name: 'DeletePermissionGroupResponse')
    DisableUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#DisableUserRequest', name: 'DisableUserRequest')
    DisableUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#DisableUserResponse', name: 'DisableUserResponse')
    DisassociateUserFromPermissionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#DisassociateUserFromPermissionGroupRequest', name: 'DisassociateUserFromPermissionGroupRequest')
    DisassociateUserFromPermissionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#DisassociateUserFromPermissionGroupResponse', name: 'DisassociateUserFromPermissionGroupResponse')
    Email = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#Email', name: 'Email', traits: {"smithy.api#length" => {"min" => 4, "max" => 320}, "smithy.api#pattern" => "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$", "smithy.api#sensitive" => {}})
    EnableUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#EnableUserRequest', name: 'EnableUserRequest')
    EnableUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#EnableUserResponse', name: 'EnableUserResponse')
    ErrorCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.finspacedata#ErrorCategory', name: 'ErrorCategory')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ErrorMessage2 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#ErrorMessage2', name: 'ErrorMessage2')
    ExportFileFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.finspacedata#ExportFileFormat', name: 'ExportFileFormat')
    FirstName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#FirstName', name: 'FirstName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    FormatParams = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.finspacedata#FormatParams', name: 'FormatParams')
    GetChangesetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetChangesetRequest', name: 'GetChangesetRequest')
    GetChangesetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetChangesetResponse', name: 'GetChangesetResponse')
    GetDataViewRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetDataViewRequest', name: 'GetDataViewRequest')
    GetDataViewResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetDataViewResponse', name: 'GetDataViewResponse')
    GetDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetDatasetRequest', name: 'GetDatasetRequest')
    GetDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetDatasetResponse', name: 'GetDatasetResponse')
    GetExternalDataViewAccessDetailsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetExternalDataViewAccessDetailsRequest', name: 'GetExternalDataViewAccessDetailsRequest')
    GetExternalDataViewAccessDetailsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetExternalDataViewAccessDetailsResponse', name: 'GetExternalDataViewAccessDetailsResponse')
    GetPermissionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetPermissionGroupRequest', name: 'GetPermissionGroupRequest')
    GetPermissionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetPermissionGroupResponse', name: 'GetPermissionGroupResponse')
    GetProgrammaticAccessCredentialsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetProgrammaticAccessCredentialsRequest', name: 'GetProgrammaticAccessCredentialsRequest')
    GetProgrammaticAccessCredentialsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetProgrammaticAccessCredentialsResponse', name: 'GetProgrammaticAccessCredentialsResponse')
    GetUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetUserRequest', name: 'GetUserRequest')
    GetUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetUserResponse', name: 'GetUserResponse')
    GetWorkingLocationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetWorkingLocationRequest', name: 'GetWorkingLocationRequest')
    GetWorkingLocationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#GetWorkingLocationResponse', name: 'GetWorkingLocationResponse')
    IdType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#IdType', name: 'IdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 26}})
    IngestionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.finspacedata#IngestionStatus', name: 'IngestionStatus')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LastName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#LastName', name: 'LastName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListChangesetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ListChangesetsRequest', name: 'ListChangesetsRequest')
    ListChangesetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ListChangesetsResponse', name: 'ListChangesetsResponse')
    ListDataViewsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ListDataViewsRequest', name: 'ListDataViewsRequest')
    ListDataViewsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ListDataViewsResponse', name: 'ListDataViewsResponse')
    ListDatasetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ListDatasetsRequest', name: 'ListDatasetsRequest')
    ListDatasetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ListDatasetsResponse', name: 'ListDatasetsResponse')
    ListPermissionGroupsByUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ListPermissionGroupsByUserRequest', name: 'ListPermissionGroupsByUserRequest')
    ListPermissionGroupsByUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ListPermissionGroupsByUserResponse', name: 'ListPermissionGroupsByUserResponse')
    ListPermissionGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ListPermissionGroupsRequest', name: 'ListPermissionGroupsRequest')
    ListPermissionGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ListPermissionGroupsResponse', name: 'ListPermissionGroupsResponse')
    ListUsersByPermissionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ListUsersByPermissionGroupRequest', name: 'ListUsersByPermissionGroupRequest')
    ListUsersByPermissionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ListUsersByPermissionGroupResponse', name: 'ListUsersByPermissionGroupResponse')
    ListUsersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ListUsersRequest', name: 'ListUsersRequest')
    ListUsersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ListUsersResponse', name: 'ListUsersResponse')
    OwnerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#OwnerName', name: 'OwnerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 250}, "smithy.api#pattern" => "\\S"})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#PaginationToken', name: 'PaginationToken')
    PartitionColumnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.finspacedata#PartitionColumnList', name: 'PartitionColumnList')
    Password = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#Password', name: 'Password', traits: {"smithy.api#length" => {"min" => 8, "max" => 20}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    PermissionGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#PermissionGroup', name: 'PermissionGroup')
    PermissionGroupByUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#PermissionGroupByUser', name: 'PermissionGroupByUser')
    PermissionGroupByUserList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.finspacedata#PermissionGroupByUserList', name: 'PermissionGroupByUserList')
    PermissionGroupDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#PermissionGroupDescription', name: 'PermissionGroupDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 4000}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    PermissionGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#PermissionGroupId', name: 'PermissionGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 26}, "smithy.api#pattern" => "\\S"})
    PermissionGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.finspacedata#PermissionGroupList', name: 'PermissionGroupList')
    PermissionGroupMembershipStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.finspacedata#PermissionGroupMembershipStatus', name: 'PermissionGroupMembershipStatus')
    PermissionGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#PermissionGroupName', name: 'PermissionGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    PermissionGroupParams = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#PermissionGroupParams', name: 'PermissionGroupParams')
    PhoneNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#PhoneNumber', name: 'PhoneNumber', traits: {"smithy.api#length" => {"min" => 10, "max" => 20}, "smithy.api#pattern" => "^[\\+0-9\\#\\,\\(][\\+0-9\\-\\.\\/\\(\\)\\,\\#\\s]+$"})
    ResetUserPasswordRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ResetUserPasswordRequest', name: 'ResetUserPasswordRequest')
    ResetUserPasswordResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ResetUserPasswordResponse', name: 'ResetUserPasswordResponse')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePermission = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ResourcePermission', name: 'ResourcePermission')
    ResourcePermissionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.finspacedata#ResourcePermissionsList', name: 'ResourcePermissionsList')
    ResultLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.finspacedata#ResultLimit', name: 'ResultLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^.*\\S.*$"})
    S3DestinationFormatOptions = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.finspacedata#S3DestinationFormatOptions', name: 'S3DestinationFormatOptions')
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*\\S.*$"})
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#S3Location', name: 'S3Location')
    SchemaDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#SchemaDefinition', name: 'SchemaDefinition')
    SchemaUnion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#SchemaUnion', name: 'SchemaUnion')
    SecretAccessKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#SecretAccessKey', name: 'SecretAccessKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$", "smithy.api#sensitive" => {}})
    SessionDuration = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.finspacedata#SessionDuration', name: 'SessionDuration', traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    SessionToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#SessionToken', name: 'SessionToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$", "smithy.api#sensitive" => {}})
    SortColumnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.finspacedata#SortColumnList', name: 'SortColumnList')
    SourceParams = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.finspacedata#SourceParams', name: 'SourceParams')
    StatusCode = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.finspacedata#StatusCode', name: 'StatusCode', traits: {"smithy.api#default" => 0})
    StringMapKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#StringMapKey', name: 'StringMapKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    StringMapValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#StringMapValue', name: 'StringMapValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    StringValueLength1to250 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#StringValueLength1to250', name: 'StringValueLength1to250', traits: {"smithy.api#length" => {"min" => 1, "max" => 250}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    StringValueLength1to255 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#StringValueLength1to255', name: 'StringValueLength1to255', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    StringValueLength1to2552 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#StringValueLength1to2552', name: 'StringValueLength1to2552', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimestampEpoch = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.finspacedata#TimestampEpoch', name: 'TimestampEpoch', traits: {"smithy.api#default" => 0})
    UpdateChangesetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#UpdateChangesetRequest', name: 'UpdateChangesetRequest')
    UpdateChangesetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#UpdateChangesetResponse', name: 'UpdateChangesetResponse')
    UpdateDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#UpdateDatasetRequest', name: 'UpdateDatasetRequest')
    UpdateDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#UpdateDatasetResponse', name: 'UpdateDatasetResponse')
    UpdatePermissionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#UpdatePermissionGroupRequest', name: 'UpdatePermissionGroupRequest')
    UpdatePermissionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#UpdatePermissionGroupResponse', name: 'UpdatePermissionGroupResponse')
    UpdateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#UpdateUserRequest', name: 'UpdateUserRequest')
    UpdateUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#UpdateUserResponse', name: 'UpdateUserResponse')
    User = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#User', name: 'User')
    UserByPermissionGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#UserByPermissionGroup', name: 'UserByPermissionGroup')
    UserByPermissionGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.finspacedata#UserByPermissionGroupList', name: 'UserByPermissionGroupList')
    UserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#UserId', name: 'UserId', traits: {"smithy.api#length" => {"min" => 1, "max" => 26}, "smithy.api#pattern" => "\\S"})
    UserList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.finspacedata#UserList', name: 'UserList')
    UserStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.finspacedata#UserStatus', name: 'UserStatus')
    UserType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.finspacedata#UserType', name: 'UserType')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.finspacedata#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LocationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.finspacedata#locationType', name: 'LocationType')
    StringValueLength1to1024 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#stringValueLength1to1024', name: 'StringValueLength1to1024', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    StringValueLength1to63 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#stringValueLength1to63', name: 'StringValueLength1to63', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "\\S"})
    StringValueMaxLength1000 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.finspacedata#stringValueMaxLength1000', name: 'StringValueMaxLength1000', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage2, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ApiAccess.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ApiAccess.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ApplicationPermission.add_member(:create_dataset, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CreateDataset', traits: {"smithy.api#enumValue" => "CreateDataset"}))
    ApplicationPermission.add_member(:manage_clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ManageClusters', traits: {"smithy.api#enumValue" => "ManageClusters"}))
    ApplicationPermission.add_member(:manage_users_and_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ManageUsersAndGroups', traits: {"smithy.api#enumValue" => "ManageUsersAndGroups"}))
    ApplicationPermission.add_member(:manage_attribute_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ManageAttributeSets', traits: {"smithy.api#enumValue" => "ManageAttributeSets"}))
    ApplicationPermission.add_member(:view_audit_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ViewAuditData', traits: {"smithy.api#enumValue" => "ViewAuditData"}))
    ApplicationPermission.add_member(:access_notebooks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccessNotebooks', traits: {"smithy.api#enumValue" => "AccessNotebooks"}))
    ApplicationPermission.add_member(:get_temporary_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GetTemporaryCredentials', traits: {"smithy.api#enumValue" => "GetTemporaryCredentials"}))
    ApplicationPermissionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationPermission)
    AssociateUserToPermissionGroupRequest.add_member(:permission_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: 'permissionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the permission group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateUserToPermissionGroupRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the user.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateUserToPermissionGroupRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#idempotencyToken" => {}}))
    AssociateUserToPermissionGroupRequest.type = Types::AssociateUserToPermissionGroupRequest
    AssociateUserToPermissionGroupResponse.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The returned status code of the response.</p>", "smithy.api#httpResponseCode" => {}}))
    AssociateUserToPermissionGroupResponse.type = Types::AssociateUserToPermissionGroupResponse
    AwsCredentials.add_member(:access_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessKeyId, location_name: 'accessKeyId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the security credentials.</p>"}))
    AwsCredentials.add_member(:secret_access_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretAccessKey, location_name: 'secretAccessKey', traits: {"smithy.api#documentation" => "<p> The secret access key that can be used to sign requests.</p>"}))
    AwsCredentials.add_member(:session_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionToken, location_name: 'sessionToken', traits: {"smithy.api#documentation" => "<p> The token that users must pass to use the credentials.</p>"}))
    AwsCredentials.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'expiration', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The Epoch time when the current credentials expire.</p>"}))
    AwsCredentials.type = Types::AwsCredentials
    ChangeType.add_member(:replace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLACE', traits: {"smithy.api#enumValue" => "REPLACE"}))
    ChangeType.add_member(:append, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPEND', traits: {"smithy.api#enumValue" => "APPEND"}))
    ChangeType.add_member(:modify, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFY', traits: {"smithy.api#enumValue" => "MODIFY"}))
    ChangesetErrorInfo.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The text of the error message.</p>"}))
    ChangesetErrorInfo.add_member(:error_category, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCategory, location_name: 'errorCategory', traits: {"smithy.api#documentation" => "<p>The category of the error.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>VALIDATION</code> – The inputs to this request are invalid.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SERVICE_QUOTA_EXCEEDED</code> – Service quotas have been exceeded. Please\n          contact AWS support to increase quotas.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACCESS_DENIED</code> – Missing required permission to perform this\n          request.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RESOURCE_NOT_FOUND</code> – One or more inputs to this request were not\n          found.</p>\n            </li>\n            <li>\n               <p>\n                  <code>THROTTLING</code> – The system temporarily lacks sufficient resources to process\n          the request.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INTERNAL_SERVICE_EXCEPTION</code> – An internal service error has\n          occurred.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CANCELLED</code> – Cancelled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>USER_RECOVERABLE</code> – A user recoverable error has occurred.</p>\n            </li>\n         </ul>"}))
    ChangesetErrorInfo.type = Types::ChangesetErrorInfo
    ChangesetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetSummary)
    ChangesetSummary.add_member(:changeset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetId, location_name: 'changesetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a Changeset.</p>"}))
    ChangesetSummary.add_member(:changeset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetArn, location_name: 'changesetArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the Changeset.</p>"}))
    ChangesetSummary.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the FinSpace Dataset in which the Changeset is created.</p>"}))
    ChangesetSummary.add_member(:change_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeType, location_name: 'changeType', traits: {"smithy.api#documentation" => "<p>Type that indicates how a Changeset is applied to a Dataset.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>REPLACE</code> – Changeset is considered as a replacement to all prior loaded\n          Changesets.</p>\n            </li>\n            <li>\n               <p>\n                  <code>APPEND</code> – Changeset is considered as an addition to the end of all prior\n          loaded Changesets.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MODIFY</code> – Changeset is considered as a replacement to a specific prior\n          ingested Changeset.</p>\n            </li>\n         </ul>"}))
    ChangesetSummary.add_member(:source_params, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceParams, location_name: 'sourceParams', traits: {"smithy.api#documentation" => "<p>Options that define the location of the data being ingested.</p>"}))
    ChangesetSummary.add_member(:format_params, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatParams, location_name: 'formatParams', traits: {"smithy.api#documentation" => "<p>Options that define the structure of the source file(s).</p>"}))
    ChangesetSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'createTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The timestamp at which the Changeset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    ChangesetSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Status of the Changeset ingestion.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code> – Changeset is pending creation.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – Changeset creation has failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCESS</code> – Changeset creation has succeeded.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RUNNING</code> – Changeset creation is running.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOP_REQUESTED</code> – User requested Changeset creation to stop.</p>\n            </li>\n         </ul>"}))
    ChangesetSummary.add_member(:error_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetErrorInfo, location_name: 'errorInfo', traits: {"smithy.api#documentation" => "<p>The structure with error messages.</p>"}))
    ChangesetSummary.add_member(:active_until_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'activeUntilTimestamp', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Time until which the Changeset is active. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    ChangesetSummary.add_member(:active_from_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'activeFromTimestamp', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Beginning time from which the Changeset is active. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    ChangesetSummary.add_member(:updates_changeset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetId, location_name: 'updatesChangesetId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Changeset that is updated.</p>"}))
    ChangesetSummary.add_member(:updated_by_changeset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetId, location_name: 'updatedByChangesetId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the updated Changeset.</p>"}))
    ChangesetSummary.type = Types::ChangesetSummary
    ColumnDataType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    ColumnDataType.add_member(:char, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHAR', traits: {"smithy.api#enumValue" => "CHAR"}))
    ColumnDataType.add_member(:integer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTEGER', traits: {"smithy.api#enumValue" => "INTEGER"}))
    ColumnDataType.add_member(:tinyint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TINYINT', traits: {"smithy.api#enumValue" => "TINYINT"}))
    ColumnDataType.add_member(:smallint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMALLINT', traits: {"smithy.api#enumValue" => "SMALLINT"}))
    ColumnDataType.add_member(:bigint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BIGINT', traits: {"smithy.api#enumValue" => "BIGINT"}))
    ColumnDataType.add_member(:float, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLOAT', traits: {"smithy.api#enumValue" => "FLOAT"}))
    ColumnDataType.add_member(:double, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE', traits: {"smithy.api#enumValue" => "DOUBLE"}))
    ColumnDataType.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATE', traits: {"smithy.api#enumValue" => "DATE"}))
    ColumnDataType.add_member(:datetime, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATETIME', traits: {"smithy.api#enumValue" => "DATETIME"}))
    ColumnDataType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    ColumnDataType.add_member(:binary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BINARY', traits: {"smithy.api#enumValue" => "BINARY"}))
    ColumnDefinition.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnDataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>Data type of a column.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>STRING</code> – A String data type.</p>\n               <p>\n                  <code>CHAR</code> – A char data type.</p>\n               <p>\n                  <code>INTEGER</code> – An integer data type.</p>\n               <p>\n                  <code>TINYINT</code> – A tinyint data type.</p>\n               <p>\n                  <code>SMALLINT</code> – A smallint data type.</p>\n               <p>\n                  <code>BIGINT</code> – A bigint data type.</p>\n               <p>\n                  <code>FLOAT</code> – A float data type.</p>\n               <p>\n                  <code>DOUBLE</code> – A double data type.</p>\n               <p>\n                  <code>DATE</code> – A date data type.</p>\n               <p>\n                  <code>DATETIME</code> – A datetime data type.</p>\n               <p>\n                  <code>BOOLEAN</code> – A boolean data type.</p>\n               <p>\n                  <code>BINARY</code> – A binary data type.</p>\n            </li>\n         </ul>"}))
    ColumnDefinition.add_member(:column_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'columnName', traits: {"smithy.api#documentation" => "<p>The name of a column.</p>"}))
    ColumnDefinition.add_member(:column_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnDescription, location_name: 'columnDescription', traits: {"smithy.api#documentation" => "<p>Description for a column.</p>"}))
    ColumnDefinition.type = Types::ColumnDefinition
    ColumnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnDefinition)
    ColumnNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage2, location_name: 'message'))
    ConflictException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage2, location_name: 'reason'))
    ConflictException.type = Types::ConflictException
    CreateChangesetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateChangesetRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the FinSpace Dataset where the Changeset will be created.\n    </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChangesetRequest.add_member(:change_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeType, location_name: 'changeType', traits: {"smithy.api#documentation" => "<p>The option to indicate how a Changeset will be applied to a Dataset.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>REPLACE</code> – Changeset will be considered as a replacement to all prior\n          loaded Changesets.</p>\n            </li>\n            <li>\n               <p>\n                  <code>APPEND</code> – Changeset will be considered as an addition to the end of all\n          prior loaded Changesets.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MODIFY</code> – Changeset is considered as a replacement to a specific prior ingested Changeset.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateChangesetRequest.add_member(:source_params, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceParams, location_name: 'sourceParams', traits: {"smithy.api#documentation" => "<p>Options that define the location of the data being ingested (<code>s3SourcePath</code>) and the source of the changeset (<code>sourceType</code>).</p>\n         <p>Both <code>s3SourcePath</code> and <code>sourceType</code> are required attributes.</p>\n         <p>Here is an example of how you could specify the <code>sourceParams</code>:</p>\n         <p>\n            <code>\n        \"sourceParams\": \n        {\n        \"s3SourcePath\": \"s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv\",\n        \"sourceType\": \"S3\"\n        }\n      </code>\n         </p>\n         <p>The S3 path that you specify must allow the FinSpace role access. To do that, you first need to configure the IAM policy on S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#access-s3-buckets\">Loading data from an Amazon S3 Bucket using the FinSpace API</a> section.</p>", "smithy.api#required" => {}}))
    CreateChangesetRequest.add_member(:format_params, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatParams, location_name: 'formatParams', traits: {"smithy.api#documentation" => "<p>Options that define the structure of the source file(s) including the format type (<code>formatType</code>), header row (<code>withHeader</code>), data separation character (<code>separator</code>) and the type of compression (<code>compression</code>).\n    </p>\n         <p>\n            <code>formatType</code> is a required attribute and can have the following values:\n    </p>\n         <ul>\n            <li>\n               <p>\n                  <code>PARQUET</code> – Parquet source file format.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CSV</code> – CSV source file format.</p>\n            </li>\n            <li>\n               <p>\n                  <code>JSON</code> – JSON source file format.</p>\n            </li>\n            <li>\n               <p>\n                  <code>XML</code> – XML source file format.</p>\n            </li>\n         </ul>\n         <p>Here is an example of how you could specify the <code>formatParams</code>:</p>\n         <p>\n            <code>\n          \"formatParams\": \n        {\n         \"formatType\": \"CSV\",\n         \"withHeader\": \"true\",\n         \"separator\": \",\",\n         \"compression\":\"None\"\n         } \n      </code>\n         </p>\n         <p>Note that if you only provide <code>formatType</code> as <code>CSV</code>, the rest of the attributes will automatically default to CSV values as following:</p>\n         <p>\n            <code>\n          {\n          \"withHeader\": \"true\",\n          \"separator\": \",\"\n           }\n        </code>\n         </p>\n         <p> For more information about supported file formats, see <a href=\"https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html\">Supported Data Types and File Formats</a> in the FinSpace User Guide.</p>", "smithy.api#required" => {}}))
    CreateChangesetRequest.type = Types::CreateChangesetRequest
    CreateChangesetResponse.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the FinSpace Dataset where the Changeset is created.</p>"}))
    CreateChangesetResponse.add_member(:changeset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetId, location_name: 'changesetId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Changeset that is created.</p>"}))
    CreateChangesetResponse.type = Types::CreateChangesetResponse
    CreateDataViewRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateDataViewRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique Dataset identifier that is used to create a Dataview.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataViewRequest.add_member(:auto_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'autoUpdate', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Flag to indicate Dataview should be updated automatically.</p>"}))
    CreateDataViewRequest.add_member(:sort_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: SortColumnList, location_name: 'sortColumns', traits: {"smithy.api#documentation" => "<p>Columns to be used for sorting the data.</p>"}))
    CreateDataViewRequest.add_member(:partition_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionColumnList, location_name: 'partitionColumns', traits: {"smithy.api#documentation" => "<p>Ordered set of column names used to partition data.</p>"}))
    CreateDataViewRequest.add_member(:as_of_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'asOfTimestamp', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Beginning time to use for the Dataview. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    CreateDataViewRequest.add_member(:destination_type_params, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewDestinationTypeParams, location_name: 'destinationTypeParams', traits: {"smithy.api#documentation" => "<p>Options that define the destination type for the Dataview.</p>", "smithy.api#required" => {}}))
    CreateDataViewRequest.type = Types::CreateDataViewRequest
    CreateDataViewResponse.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Dataset used for the Dataview.</p>"}))
    CreateDataViewResponse.add_member(:data_view_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewId, location_name: 'dataViewId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the created Dataview.</p>"}))
    CreateDataViewResponse.type = Types::CreateDataViewResponse
    CreateDatasetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateDatasetRequest.add_member(:dataset_title, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetTitle, location_name: 'datasetTitle', traits: {"smithy.api#documentation" => "<p>Display title for a FinSpace Dataset.</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:kind, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetKind, location_name: 'kind', traits: {"smithy.api#documentation" => "<p>The format in which Dataset data is structured.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>TABULAR</code> – Data is structured in a tabular format.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetDescription, location_name: 'datasetDescription', traits: {"smithy.api#documentation" => "<p>Description of a Dataset.</p>"}))
    CreateDatasetRequest.add_member(:owner_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetOwnerInfo, location_name: 'ownerInfo', traits: {"smithy.api#documentation" => "<p>Contact information for a Dataset owner.</p>"}))
    CreateDatasetRequest.add_member(:permission_group_params, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupParams, location_name: 'permissionGroupParams', traits: {"smithy.api#documentation" => "<p>Permission group parameters for Dataset permissions.</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasString, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The unique resource identifier for a Dataset.</p>"}))
    CreateDatasetRequest.add_member(:schema_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaUnion, location_name: 'schemaDefinition', traits: {"smithy.api#documentation" => "<p>Definition for a schema on a tabular Dataset.</p>"}))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the created Dataset.</p>"}))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreatePermissionGroupRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the permission group.</p>", "smithy.api#required" => {}}))
    CreatePermissionGroupRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description for the permission group.</p>"}))
    CreatePermissionGroupRequest.add_member(:application_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationPermissionList, location_name: 'applicationPermissions', traits: {"smithy.api#documentation" => "<p>The option to indicate FinSpace application permissions that are granted to a specific group.</p>\n         <important>\n            <p>When assigning application permissions, be aware that the permission <code>ManageUsersAndGroups</code> allows users to grant themselves or others access to any functionality in their FinSpace environment's application. It should only be granted to trusted users.</p>\n         </important>\n         <ul>\n            <li>\n               <p>\n                  <code>CreateDataset</code> – Group members can create new datasets.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ManageClusters</code> – Group members can manage Apache Spark clusters from FinSpace notebooks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ManageUsersAndGroups</code> – Group members can manage users and permission groups. This is a privileged permission that allows users to grant themselves or others access to any functionality in the application. It should only be granted to trusted users.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ManageAttributeSets</code> – Group members can manage attribute sets.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ViewAuditData</code> – Group members can view audit data.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AccessNotebooks</code> – Group members will have access to FinSpace notebooks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>GetTemporaryCredentials</code> – Group members can get temporary API credentials.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreatePermissionGroupRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#idempotencyToken" => {}}))
    CreatePermissionGroupRequest.type = Types::CreatePermissionGroupRequest
    CreatePermissionGroupResponse.add_member(:permission_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: 'permissionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the permission group.</p>"}))
    CreatePermissionGroupResponse.type = Types::CreatePermissionGroupResponse
    CreateUserRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'emailAddress', traits: {"smithy.api#documentation" => "<p>The email address of the user that you want to register. The email address serves as a uniquer identifier for each user and cannot be changed after it's created.</p>", "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The option to indicate the type of user. Use one of the following options to specify this parameter:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SUPER_USER</code> – A user with permission to all the functionality and data in FinSpace.</p>\n            </li>\n            <li>\n               <p>\n                  <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permission group.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:first_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FirstName, location_name: 'firstName', traits: {"smithy.api#documentation" => "<p>The first name of the user that you want to register.</p>"}))
    CreateUserRequest.add_member(:last_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LastName, location_name: 'lastName', traits: {"smithy.api#documentation" => "<p>The last name of the user that you want to register.</p>"}))
    CreateUserRequest.add_member(:api_access, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiAccess, location_name: 'apiAccess', traits: {"smithy.api#documentation" => "<p>The option to indicate whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – The user has permissions to use the APIs.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>\n            </li>\n         </ul>"}))
    CreateUserRequest.add_member(:api_access_principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'apiAccessPrincipalArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>"}))
    CreateUserRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the user.</p>"}))
    CreateUserResponse.type = Types::CreateUserResponse
    Credentials.add_member(:access_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValueLength1to2552, location_name: 'accessKeyId', traits: {"smithy.api#documentation" => "<p>The access key identifier.</p>"}))
    Credentials.add_member(:secret_access_key, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValueMaxLength1000, location_name: 'secretAccessKey', traits: {"smithy.api#documentation" => "<p>The access key.</p>"}))
    Credentials.add_member(:session_token, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValueMaxLength1000, location_name: 'sessionToken', traits: {"smithy.api#documentation" => "<p>The session token.</p>"}))
    Credentials.type = Types::Credentials
    DataViewDestinationTypeParams.add_member(:destination_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewDestinationType, location_name: 'destinationType', traits: {"smithy.api#documentation" => "<p>Destination type for a Dataview.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>GLUE_TABLE</code> – Glue table destination type.</p>\n            </li>\n            <li>\n               <p>\n                  <code>S3</code> – S3 destination type.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DataViewDestinationTypeParams.add_member(:s3_destination_export_file_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFileFormat, location_name: 's3DestinationExportFileFormat', traits: {"smithy.api#documentation" => "<p>Dataview export file format.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PARQUET</code> – Parquet export file format.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELIMITED_TEXT</code> – Delimited text export file format.</p>\n            </li>\n         </ul>"}))
    DataViewDestinationTypeParams.add_member(:s3_destination_export_file_format_options, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DestinationFormatOptions, location_name: 's3DestinationExportFileFormatOptions', traits: {"smithy.api#documentation" => "<p>Format Options for S3 Destination type.</p>\n         <p>Here is an example of how you could specify the <code>s3DestinationExportFileFormatOptions</code>\n         </p>\n         <p>\n            <code>\n        {\n        \"header\": \"true\",\n        \"delimiter\": \",\",\n        \"compression\": \"gzip\"\n        }</code>\n         </p>"}))
    DataViewDestinationTypeParams.type = Types::DataViewDestinationTypeParams
    DataViewErrorInfo.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The text of the error message.</p>"}))
    DataViewErrorInfo.add_member(:error_category, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCategory, location_name: 'errorCategory', traits: {"smithy.api#documentation" => "<p>The category of the error.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>VALIDATION</code> – The inputs to this request are invalid.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SERVICE_QUOTA_EXCEEDED</code> – Service quotas have been exceeded. Please\n          contact AWS support to increase quotas.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACCESS_DENIED</code> – Missing required permission to perform this\n          request.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RESOURCE_NOT_FOUND</code> – One or more inputs to this request were not\n          found.</p>\n            </li>\n            <li>\n               <p>\n                  <code>THROTTLING</code> – The system temporarily lacks sufficient resources to process\n          the request.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INTERNAL_SERVICE_EXCEPTION</code> – An internal service error has\n          occurred.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CANCELLED</code> – Cancelled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>USER_RECOVERABLE</code> – A user recoverable error has occurred.</p>\n            </li>\n         </ul>"}))
    DataViewErrorInfo.type = Types::DataViewErrorInfo
    DataViewList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewSummary)
    DataViewStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    DataViewStatus.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    DataViewStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DataViewStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    DataViewStatus.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMEOUT', traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    DataViewStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DataViewStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    DataViewStatus.add_member(:failed_cleanup_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_CLEANUP_FAILED', traits: {"smithy.api#enumValue" => "FAILED_CLEANUP_FAILED"}))
    DataViewSummary.add_member(:data_view_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewId, location_name: 'dataViewId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Dataview.</p>"}))
    DataViewSummary.add_member(:data_view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewArn, location_name: 'dataViewArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the Dataview.</p>"}))
    DataViewSummary.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>Th unique identifier for the Dataview Dataset.</p>"}))
    DataViewSummary.add_member(:as_of_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'asOfTimestamp', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Time range to use for the Dataview. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    DataViewSummary.add_member(:partition_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionColumnList, location_name: 'partitionColumns', traits: {"smithy.api#documentation" => "<p>Ordered set of column names used to partition data.</p>"}))
    DataViewSummary.add_member(:sort_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: SortColumnList, location_name: 'sortColumns', traits: {"smithy.api#documentation" => "<p>Columns to be used for sorting the data.</p>"}))
    DataViewSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of a Dataview creation.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>RUNNING</code> – Dataview creation is running.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STARTING</code> – Dataview creation is starting.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – Dataview creation has failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CANCELLED</code> – Dataview creation has been cancelled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TIMEOUT</code> – Dataview creation has timed out.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCESS</code> – Dataview creation has succeeded.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PENDING</code> – Dataview creation is pending.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED_CLEANUP_FAILED</code> – Dataview creation failed and resource cleanup failed.</p>\n            </li>\n         </ul>"}))
    DataViewSummary.add_member(:error_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewErrorInfo, location_name: 'errorInfo', traits: {"smithy.api#documentation" => "<p>The structure with error messages.</p>"}))
    DataViewSummary.add_member(:destination_type_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewDestinationTypeParams, location_name: 'destinationTypeProperties', traits: {"smithy.api#documentation" => "<p>Information about the Dataview destination.</p>"}))
    DataViewSummary.add_member(:auto_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'autoUpdate', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The flag to indicate Dataview should be updated automatically.</p>"}))
    DataViewSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'createTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The timestamp at which the Dataview was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    DataViewSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'lastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The last time that a Dataview was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    DataViewSummary.type = Types::DataViewSummary
    Dataset.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>An identifier for a Dataset.</p>"}))
    Dataset.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the Dataset.</p>"}))
    Dataset.add_member(:dataset_title, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetTitle, location_name: 'datasetTitle', traits: {"smithy.api#documentation" => "<p>Display title for a Dataset.</p>"}))
    Dataset.add_member(:kind, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetKind, location_name: 'kind', traits: {"smithy.api#documentation" => "<p>The format in which Dataset data is structured.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>TABULAR</code> – Data is structured in a tabular format.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>\n            </li>\n         </ul>"}))
    Dataset.add_member(:dataset_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetDescription, location_name: 'datasetDescription', traits: {"smithy.api#documentation" => "<p>Description for a Dataset.</p>"}))
    Dataset.add_member(:owner_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetOwnerInfo, location_name: 'ownerInfo', traits: {"smithy.api#documentation" => "<p>Contact information for a Dataset owner.</p>"}))
    Dataset.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'createTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The timestamp at which the Dataset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    Dataset.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'lastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The last time that the Dataset was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    Dataset.add_member(:schema_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaUnion, location_name: 'schemaDefinition', traits: {"smithy.api#documentation" => "<p>Definition for a schema on a tabular Dataset.</p>"}))
    Dataset.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasString, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The unique resource identifier for a Dataset.</p>"}))
    Dataset.type = Types::Dataset
    DatasetKind.add_member(:tabular, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABULAR', traits: {"smithy.api#enumValue" => "TABULAR"}))
    DatasetKind.add_member(:non_tabular, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NON_TABULAR', traits: {"smithy.api#enumValue" => "NON_TABULAR"}))
    DatasetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Dataset)
    DatasetOwnerInfo.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the Dataset owner.</p>"}))
    DatasetOwnerInfo.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'phoneNumber', traits: {"smithy.api#documentation" => "<p>Phone number for the Dataset owner.</p>"}))
    DatasetOwnerInfo.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'email', traits: {"smithy.api#documentation" => "<p>Email address for the Dataset owner.</p>"}))
    DatasetOwnerInfo.type = Types::DatasetOwnerInfo
    DatasetStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    DatasetStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DatasetStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DatasetStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    DeleteDatasetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteDatasetRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Dataset to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteDatasetResponse.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the deleted Dataset.</p>"}))
    DeleteDatasetResponse.type = Types::DeleteDatasetResponse
    DeletePermissionGroupRequest.add_member(:permission_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: 'permissionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the permission group that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePermissionGroupRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeletePermissionGroupRequest.type = Types::DeletePermissionGroupRequest
    DeletePermissionGroupResponse.add_member(:permission_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: 'permissionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the deleted permission group.</p>"}))
    DeletePermissionGroupResponse.type = Types::DeletePermissionGroupResponse
    DisableUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the user that you want to deactivate.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisableUserRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#idempotencyToken" => {}}))
    DisableUserRequest.type = Types::DisableUserRequest
    DisableUserResponse.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the deactivated user.</p>"}))
    DisableUserResponse.type = Types::DisableUserResponse
    DisassociateUserFromPermissionGroupRequest.add_member(:permission_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: 'permissionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the permission group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateUserFromPermissionGroupRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the user.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateUserFromPermissionGroupRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DisassociateUserFromPermissionGroupRequest.type = Types::DisassociateUserFromPermissionGroupRequest
    DisassociateUserFromPermissionGroupResponse.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'statusCode', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The returned status code of the response.</p>", "smithy.api#httpResponseCode" => {}}))
    DisassociateUserFromPermissionGroupResponse.type = Types::DisassociateUserFromPermissionGroupResponse
    EnableUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the user that you want to activate.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EnableUserRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#idempotencyToken" => {}}))
    EnableUserRequest.type = Types::EnableUserRequest
    EnableUserResponse.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the active user.</p>"}))
    EnableUserResponse.type = Types::EnableUserResponse
    ErrorCategory.add_member(:validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION', traits: {"smithy.api#enumValue" => "VALIDATION"}))
    ErrorCategory.add_member(:service_quota_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "SERVICE_QUOTA_EXCEEDED"}))
    ErrorCategory.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    ErrorCategory.add_member(:resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    ErrorCategory.add_member(:throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THROTTLING', traits: {"smithy.api#enumValue" => "THROTTLING"}))
    ErrorCategory.add_member(:internal_service_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_SERVICE_EXCEPTION', traits: {"smithy.api#enumValue" => "INTERNAL_SERVICE_EXCEPTION"}))
    ErrorCategory.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ErrorCategory.add_member(:user_recoverable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_RECOVERABLE', traits: {"smithy.api#enumValue" => "USER_RECOVERABLE"}))
    ExportFileFormat.add_member(:parquet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARQUET', traits: {"smithy.api#enumValue" => "PARQUET"}))
    ExportFileFormat.add_member(:delimited_text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIMITED_TEXT', traits: {"smithy.api#enumValue" => "DELIMITED_TEXT"}))
    FormatParams.key = Smithy::Schema::Shapes::ShapeRef.new(shape: StringMapKey)
    FormatParams.value = Smithy::Schema::Shapes::ShapeRef.new(shape: StringMapValue)
    GetChangesetRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the FinSpace Dataset where the Changeset is created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChangesetRequest.add_member(:changeset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetId, location_name: 'changesetId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Changeset for which to get data.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChangesetRequest.type = Types::GetChangesetRequest
    GetChangesetResponse.add_member(:changeset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetId, location_name: 'changesetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a Changeset.</p>"}))
    GetChangesetResponse.add_member(:changeset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetArn, location_name: 'changesetArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the Changeset.</p>"}))
    GetChangesetResponse.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the FinSpace Dataset where the Changeset is created.</p>"}))
    GetChangesetResponse.add_member(:change_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeType, location_name: 'changeType', traits: {"smithy.api#documentation" => "<p>Type that indicates how a Changeset is applied to a Dataset.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>REPLACE</code> – Changeset is considered as a replacement to all prior loaded Changesets.</p>\n            </li>\n            <li>\n               <p>\n                  <code>APPEND</code> – Changeset is considered as an addition to the end of all prior loaded Changesets.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MODIFY</code> – Changeset is considered as a replacement to a specific prior ingested Changeset.</p>\n            </li>\n         </ul>"}))
    GetChangesetResponse.add_member(:source_params, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceParams, location_name: 'sourceParams', traits: {"smithy.api#documentation" => "<p>Options that define the location of the data being ingested.</p>"}))
    GetChangesetResponse.add_member(:format_params, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatParams, location_name: 'formatParams', traits: {"smithy.api#documentation" => "<p>Structure of the source file(s).</p>"}))
    GetChangesetResponse.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'createTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The timestamp at which the Changeset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    GetChangesetResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of Changeset creation operation.</p>"}))
    GetChangesetResponse.add_member(:error_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetErrorInfo, location_name: 'errorInfo', traits: {"smithy.api#documentation" => "<p>The structure with error messages.</p>"}))
    GetChangesetResponse.add_member(:active_until_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'activeUntilTimestamp', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Time until which the Changeset is active. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    GetChangesetResponse.add_member(:active_from_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'activeFromTimestamp', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Beginning time from which the Changeset is active. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    GetChangesetResponse.add_member(:updates_changeset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetId, location_name: 'updatesChangesetId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Changeset that is being updated.</p>"}))
    GetChangesetResponse.add_member(:updated_by_changeset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetId, location_name: 'updatedByChangesetId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the updated Changeset.</p>"}))
    GetChangesetResponse.type = Types::GetChangesetResponse
    GetDataViewRequest.add_member(:data_view_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewId, location_name: 'dataViewId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Dataview.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataViewRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Dataset used in the Dataview.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataViewRequest.type = Types::GetDataViewRequest
    GetDataViewResponse.add_member(:auto_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'autoUpdate', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Flag to indicate Dataview should be updated automatically.</p>"}))
    GetDataViewResponse.add_member(:partition_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionColumnList, location_name: 'partitionColumns', traits: {"smithy.api#documentation" => "<p>Ordered set of column names used to partition data.</p>"}))
    GetDataViewResponse.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Dataset used in the Dataview.</p>"}))
    GetDataViewResponse.add_member(:as_of_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'asOfTimestamp', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Time range to use for the Dataview. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    GetDataViewResponse.add_member(:error_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewErrorInfo, location_name: 'errorInfo', traits: {"smithy.api#documentation" => "<p>Information about an error that occurred for the Dataview.</p>"}))
    GetDataViewResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'lastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The last time that a Dataview was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    GetDataViewResponse.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'createTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The timestamp at which the Dataview was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    GetDataViewResponse.add_member(:sort_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: SortColumnList, location_name: 'sortColumns', traits: {"smithy.api#documentation" => "<p>Columns to be used for sorting the data.</p>"}))
    GetDataViewResponse.add_member(:data_view_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewId, location_name: 'dataViewId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Dataview.</p>"}))
    GetDataViewResponse.add_member(:data_view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewArn, location_name: 'dataViewArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the Dataview.</p>"}))
    GetDataViewResponse.add_member(:destination_type_params, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewDestinationTypeParams, location_name: 'destinationTypeParams', traits: {"smithy.api#documentation" => "<p>Options that define the destination type for the Dataview.</p>"}))
    GetDataViewResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of a Dataview creation.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>RUNNING</code> – Dataview creation is running.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STARTING</code> – Dataview creation is starting.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – Dataview creation has failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CANCELLED</code> – Dataview creation has been cancelled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TIMEOUT</code> – Dataview creation has timed out.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCESS</code> – Dataview creation has succeeded.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PENDING</code> – Dataview creation is pending.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED_CLEANUP_FAILED</code> – Dataview creation failed and resource cleanup failed.</p>\n            </li>\n         </ul>"}))
    GetDataViewResponse.type = Types::GetDataViewResponse
    GetDatasetRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValueLength1to255, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a Dataset.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDatasetRequest.type = Types::GetDatasetRequest
    GetDatasetResponse.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a Dataset.</p>"}))
    GetDatasetResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetArn, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the Dataset.</p>"}))
    GetDatasetResponse.add_member(:dataset_title, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetTitle, location_name: 'datasetTitle', traits: {"smithy.api#documentation" => "<p>Display title for a Dataset.</p>"}))
    GetDatasetResponse.add_member(:kind, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetKind, location_name: 'kind', traits: {"smithy.api#documentation" => "<p>The format in which Dataset data is structured.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>TABULAR</code> – Data is structured in a tabular format.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>\n            </li>\n         </ul>"}))
    GetDatasetResponse.add_member(:dataset_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetDescription, location_name: 'datasetDescription', traits: {"smithy.api#documentation" => "<p>A description of the Dataset.</p>"}))
    GetDatasetResponse.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'createTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The timestamp at which the Dataset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    GetDatasetResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'lastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The last time that the Dataset was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>"}))
    GetDatasetResponse.add_member(:schema_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaUnion, location_name: 'schemaDefinition', traits: {"smithy.api#documentation" => "<p>Definition for a schema on a tabular Dataset.</p>"}))
    GetDatasetResponse.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasString, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The unique resource identifier for a Dataset.</p>"}))
    GetDatasetResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Status of the Dataset creation.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code> – Dataset is pending creation.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – Dataset creation has failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCESS</code> – Dataset creation has succeeded.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RUNNING</code> – Dataset creation is running.</p>\n            </li>\n         </ul>"}))
    GetDatasetResponse.type = Types::GetDatasetResponse
    GetExternalDataViewAccessDetailsRequest.add_member(:data_view_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewId, location_name: 'dataViewId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Dataview that you want to access.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExternalDataViewAccessDetailsRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Dataset.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExternalDataViewAccessDetailsRequest.type = Types::GetExternalDataViewAccessDetailsRequest
    GetExternalDataViewAccessDetailsResponse.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsCredentials, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>The credentials required to access the external Dataview from the S3 location.</p>"}))
    GetExternalDataViewAccessDetailsResponse.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location', traits: {"smithy.api#documentation" => "<p>The location where the external Dataview is stored.</p>"}))
    GetExternalDataViewAccessDetailsResponse.type = Types::GetExternalDataViewAccessDetailsResponse
    GetPermissionGroupRequest.add_member(:permission_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: 'permissionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the permission group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPermissionGroupRequest.type = Types::GetPermissionGroupRequest
    GetPermissionGroupResponse.add_member(:permission_group, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroup, location_name: 'permissionGroup'))
    GetPermissionGroupResponse.type = Types::GetPermissionGroupResponse
    GetProgrammaticAccessCredentialsRequest.add_member(:duration_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionDuration, location_name: 'durationInMinutes', traits: {"smithy.api#documentation" => "<p>The time duration in which the credentials remain valid. </p>", "smithy.api#httpQuery" => "durationInMinutes"}))
    GetProgrammaticAccessCredentialsRequest.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The FinSpace environment identifier.</p>", "smithy.api#httpQuery" => "environmentId", "smithy.api#required" => {}}))
    GetProgrammaticAccessCredentialsRequest.type = Types::GetProgrammaticAccessCredentialsRequest
    GetProgrammaticAccessCredentialsResponse.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Credentials, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>Returns the programmatic credentials.</p>"}))
    GetProgrammaticAccessCredentialsResponse.add_member(:duration_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionDuration, location_name: 'durationInMinutes', traits: {"smithy.api#documentation" => "<p>Returns the duration in which the credentials will remain valid.</p>"}))
    GetProgrammaticAccessCredentialsResponse.type = Types::GetProgrammaticAccessCredentialsResponse
    GetUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the user to get data for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserRequest.type = Types::GetUserRequest
    GetUserResponse.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the user that is retrieved.</p>"}))
    GetUserResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the user. </p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code> – The creation is in progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ENABLED</code> – The user is created and is currently active.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – The user is currently inactive.</p>\n            </li>\n         </ul>"}))
    GetUserResponse.add_member(:first_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FirstName, location_name: 'firstName', traits: {"smithy.api#documentation" => "<p>The first name of the user.</p>"}))
    GetUserResponse.add_member(:last_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LastName, location_name: 'lastName', traits: {"smithy.api#documentation" => "<p>The last name of the user.</p>"}))
    GetUserResponse.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'emailAddress', traits: {"smithy.api#documentation" => "<p>The email address that is associated with the user.</p>"}))
    GetUserResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Indicates the type of user.  </p>\n         <ul>\n            <li>\n               <p>\n                  <code>SUPER_USER</code> – A user with permission to all the functionality and data in FinSpace.</p>\n            </li>\n         </ul>\n         <ul>\n            <li>\n               <p>\n                  <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permission group.</p>\n            </li>\n         </ul>"}))
    GetUserResponse.add_member(:api_access, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiAccess, location_name: 'apiAccess', traits: {"smithy.api#documentation" => "<p>Indicates whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations. </p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – The user has permissions to use the APIs.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>\n            </li>\n         </ul>"}))
    GetUserResponse.add_member(:api_access_principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'apiAccessPrincipalArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>"}))
    GetUserResponse.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'createTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The timestamp at which the user was created in FinSpace. The value is determined as epoch time in milliseconds. </p>"}))
    GetUserResponse.add_member(:last_enabled_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'lastEnabledTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Describes the last time the user was activated. The value is determined as epoch time in milliseconds.</p>"}))
    GetUserResponse.add_member(:last_disabled_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'lastDisabledTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Describes the last time the user was deactivated. The value is determined as epoch time in milliseconds.</p>"}))
    GetUserResponse.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'lastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Describes the last time the user details were updated. The value is determined as epoch time in milliseconds.</p>"}))
    GetUserResponse.add_member(:last_login_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'lastLoginTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Describes the last time that the user logged into their account. The value is determined as epoch time in milliseconds.</p>"}))
    GetUserResponse.type = Types::GetUserResponse
    GetWorkingLocationRequest.add_member(:location_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LocationType, location_name: 'locationType', traits: {"smithy.api#documentation" => "<p>Specify the type of the working location.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SAGEMAKER</code> – Use the Amazon S3 location as a temporary location to store data content when\n          working with FinSpace Notebooks that run on SageMaker studio.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INGESTION</code> – Use the Amazon S3 location as a staging location to copy your\n          data content and then use the location with the Changeset creation operation.</p>\n            </li>\n         </ul>"}))
    GetWorkingLocationRequest.type = Types::GetWorkingLocationRequest
    GetWorkingLocationResponse.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValueLength1to1024, location_name: 's3Uri', traits: {"smithy.api#documentation" => "<p>Returns the Amazon S3 URI for the working location.</p>"}))
    GetWorkingLocationResponse.add_member(:s3_path, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValueLength1to1024, location_name: 's3Path', traits: {"smithy.api#documentation" => "<p>Returns the Amazon S3 Path for the working location.</p>"}))
    GetWorkingLocationResponse.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValueLength1to63, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p>Returns the Amazon S3 bucket name for the working location.</p>"}))
    GetWorkingLocationResponse.type = Types::GetWorkingLocationResponse
    IngestionStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    IngestionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    IngestionStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    IngestionStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    IngestionStatus.add_member(:stop_requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_REQUESTED', traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage2, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage2, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListChangesetsRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the FinSpace Dataset to which the Changeset belongs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChangesetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultLimit, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListChangesetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where a results page should begin.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListChangesetsRequest.type = Types::ListChangesetsRequest
    ListChangesetsResponse.add_member(:changesets, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetList, location_name: 'changesets', traits: {"smithy.api#documentation" => "<p>List of Changesets found.</p>"}))
    ListChangesetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where a results page should begin.</p>"}))
    ListChangesetsResponse.type = Types::ListChangesetsResponse
    ListDataViewsRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Dataset for which to retrieve Dataviews.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataViewsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where a results page should begin.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataViewsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultLimit, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataViewsRequest.type = Types::ListDataViewsRequest
    ListDataViewsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where a results page should begin.</p>"}))
    ListDataViewsResponse.add_member(:data_views, Smithy::Schema::Shapes::ShapeRef.new(shape: DataViewList, location_name: 'dataViews', traits: {"smithy.api#documentation" => "<p>A list of Dataviews.</p>"}))
    ListDataViewsResponse.type = Types::ListDataViewsResponse
    ListDatasetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where a results page should begin.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDatasetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultLimit, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:datasets, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetList, location_name: 'datasets', traits: {"smithy.api#documentation" => "<p>List of Datasets.</p>"}))
    ListDatasetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where a results page should begin.</p>"}))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListPermissionGroupsByUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the user.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPermissionGroupsByUserRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where a results page should begin.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPermissionGroupsByUserRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultLimit, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results per page.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#required" => {}}))
    ListPermissionGroupsByUserRequest.type = Types::ListPermissionGroupsByUserRequest
    ListPermissionGroupsByUserResponse.add_member(:permission_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupByUserList, location_name: 'permissionGroups', traits: {"smithy.api#documentation" => "<p>A list of returned permission groups.</p>"}))
    ListPermissionGroupsByUserResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where a results page should begin.</p>"}))
    ListPermissionGroupsByUserResponse.type = Types::ListPermissionGroupsByUserResponse
    ListPermissionGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where a results page should begin.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPermissionGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultLimit, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results per page.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#required" => {}}))
    ListPermissionGroupsRequest.type = Types::ListPermissionGroupsRequest
    ListPermissionGroupsResponse.add_member(:permission_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupList, location_name: 'permissionGroups', traits: {"smithy.api#documentation" => "<p>A list of all the permission groups.</p>"}))
    ListPermissionGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where a results page should begin.</p>"}))
    ListPermissionGroupsResponse.type = Types::ListPermissionGroupsResponse
    ListUsersByPermissionGroupRequest.add_member(:permission_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: 'permissionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the permission group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListUsersByPermissionGroupRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where a results page should begin.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListUsersByPermissionGroupRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultLimit, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results per page.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#required" => {}}))
    ListUsersByPermissionGroupRequest.type = Types::ListUsersByPermissionGroupRequest
    ListUsersByPermissionGroupResponse.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: UserByPermissionGroupList, location_name: 'users', traits: {"smithy.api#documentation" => "<p>Lists details of all users in a specific permission group.</p>"}))
    ListUsersByPermissionGroupResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where a results page should begin.</p>"}))
    ListUsersByPermissionGroupResponse.type = Types::ListUsersByPermissionGroupResponse
    ListUsersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where a results page should begin.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListUsersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultLimit, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results per page.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#required" => {}}))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResponse.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'users', traits: {"smithy.api#documentation" => "<p>A list of all the users.</p>"}))
    ListUsersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates where a results page should begin.</p>"}))
    ListUsersResponse.type = Types::ListUsersResponse
    PartitionColumnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StringValueLength1to255)
    PermissionGroup.add_member(:permission_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: 'permissionGroupId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the permission group.</p>"}))
    PermissionGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the permission group.</p>"}))
    PermissionGroup.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> A brief description for the permission group.</p>"}))
    PermissionGroup.add_member(:application_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationPermissionList, location_name: 'applicationPermissions', traits: {"smithy.api#documentation" => "<p>Indicates the permissions that are granted to a specific group for accessing the FinSpace application.</p>\n         <important>\n            <p>When assigning application permissions, be aware that the permission <code>ManageUsersAndGroups</code> allows users to grant themselves or others access to any functionality in their FinSpace environment's application. It should only be granted to trusted users.</p>\n         </important>\n         <ul>\n            <li>\n               <p>\n                  <code>CreateDataset</code> – Group members can create new datasets.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ManageClusters</code> – Group members can manage Apache Spark clusters from FinSpace notebooks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ManageUsersAndGroups</code> – Group members can manage users and permission groups. This is a privileged permission that allows users to grant themselves or others access to any functionality in the application. It should only be granted to trusted users.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ManageAttributeSets</code> – Group members can manage attribute sets.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ViewAuditData</code> – Group members can view audit data.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AccessNotebooks</code> – Group members will have access to FinSpace notebooks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>GetTemporaryCredentials</code> – Group members can get temporary API credentials.</p>\n            </li>\n         </ul>"}))
    PermissionGroup.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'createTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The timestamp at which the group was created in FinSpace. The value is determined as epoch time in milliseconds.\n    </p>"}))
    PermissionGroup.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'lastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Describes the last time the permission group was updated. The value is determined as epoch time in milliseconds.\n    </p>"}))
    PermissionGroup.add_member(:membership_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupMembershipStatus, location_name: 'membershipStatus', traits: {"smithy.api#documentation" => "<p>Indicates the status of the user within a permission group.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ADDITION_IN_PROGRESS</code> – The user is currently being added to the permission group.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ADDITION_SUCCESS</code> – The user is successfully added to the permission group.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REMOVAL_IN_PROGRESS</code> – The user is currently being removed from the permission group.</p>\n            </li>\n         </ul>"}))
    PermissionGroup.type = Types::PermissionGroup
    PermissionGroupByUser.add_member(:permission_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: 'permissionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the permission group.</p>"}))
    PermissionGroupByUser.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the permission group.</p>"}))
    PermissionGroupByUser.add_member(:membership_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupMembershipStatus, location_name: 'membershipStatus', traits: {"smithy.api#documentation" => "<p>Indicates the status of the user within a permission group.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ADDITION_IN_PROGRESS</code> – The user is currently being added to the permission group.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ADDITION_SUCCESS</code> – The user is successfully added to the permission group.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REMOVAL_IN_PROGRESS</code> – The user is currently being removed from the permission group.</p>\n            </li>\n         </ul>"}))
    PermissionGroupByUser.type = Types::PermissionGroupByUser
    PermissionGroupByUserList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupByUser)
    PermissionGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroup)
    PermissionGroupMembershipStatus.add_member(:addition_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDITION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "ADDITION_IN_PROGRESS"}))
    PermissionGroupMembershipStatus.add_member(:addition_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDITION_SUCCESS', traits: {"smithy.api#enumValue" => "ADDITION_SUCCESS"}))
    PermissionGroupMembershipStatus.add_member(:removal_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVAL_IN_PROGRESS', traits: {"smithy.api#enumValue" => "REMOVAL_IN_PROGRESS"}))
    PermissionGroupParams.add_member(:permission_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: 'permissionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the <code>PermissionGroup</code>.</p>"}))
    PermissionGroupParams.add_member(:dataset_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePermissionsList, location_name: 'datasetPermissions', traits: {"smithy.api#documentation" => "<p>List of resource permissions.</p>"}))
    PermissionGroupParams.type = Types::PermissionGroupParams
    ResetUserPasswordRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the user that a temporary password is requested for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetUserPasswordRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#idempotencyToken" => {}}))
    ResetUserPasswordRequest.type = Types::ResetUserPasswordRequest
    ResetUserPasswordResponse.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the user that a new password is generated for.</p>"}))
    ResetUserPasswordResponse.add_member(:temporary_password, Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: 'temporaryPassword', traits: {"smithy.api#documentation" => "<p>A randomly generated temporary password for the requested user. This password expires in 7 days.</p>"}))
    ResetUserPasswordResponse.type = Types::ResetUserPasswordResponse
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage2, location_name: 'message'))
    ResourceNotFoundException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage2, location_name: 'reason'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePermission.add_member(:permission, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValueLength1to250, location_name: 'permission', traits: {"smithy.api#documentation" => "<p>Permission for a resource.</p>"}))
    ResourcePermission.type = Types::ResourcePermission
    ResourcePermissionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePermission)
    S3DestinationFormatOptions.key = Smithy::Schema::Shapes::ShapeRef.new(shape: StringMapKey)
    S3DestinationFormatOptions.value = Smithy::Schema::Shapes::ShapeRef.new(shape: StringMapValue)
    S3Location.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p> The name of the S3 bucket.</p>", "smithy.api#required" => {}}))
    S3Location.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'key', traits: {"smithy.api#documentation" => "<p> The path of the folder, within the S3 bucket that contains the Dataset.</p>", "smithy.api#required" => {}}))
    S3Location.type = Types::S3Location
    SchemaDefinition.add_member(:columns, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnList, location_name: 'columns', traits: {"smithy.api#documentation" => "<p>List of column definitions.</p>"}))
    SchemaDefinition.add_member(:primary_key_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnNameList, location_name: 'primaryKeyColumns', traits: {"smithy.api#documentation" => "<p>List of column names used for primary key.</p>"}))
    SchemaDefinition.type = Types::SchemaDefinition
    SchemaUnion.add_member(:tabular_schema_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaDefinition, location_name: 'tabularSchemaConfig', traits: {"smithy.api#documentation" => "<p>The configuration for a schema on a tabular Dataset.</p>"}))
    SchemaUnion.type = Types::SchemaUnion
    SortColumnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StringValueLength1to255)
    SourceParams.key = Smithy::Schema::Shapes::ShapeRef.new(shape: StringMapKey)
    SourceParams.value = Smithy::Schema::Shapes::ShapeRef.new(shape: StringMapValue)
    ThrottlingException.type = Types::ThrottlingException
    UpdateChangesetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateChangesetRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the FinSpace Dataset in which the Changeset is created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChangesetRequest.add_member(:changeset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetId, location_name: 'changesetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Changeset to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChangesetRequest.add_member(:source_params, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceParams, location_name: 'sourceParams', traits: {"smithy.api#documentation" => "<p>Options that define the location of the data being ingested (<code>s3SourcePath</code>) and the source of the changeset (<code>sourceType</code>).</p>\n         <p>Both <code>s3SourcePath</code> and <code>sourceType</code> are required attributes.</p>\n         <p>Here is an example of how you could specify the <code>sourceParams</code>:</p>\n         <p>\n            <code>\n        \"sourceParams\": \n        {\n        \"s3SourcePath\": \"s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv\",\n        \"sourceType\": \"S3\"\n        }\n      </code>\n         </p>\n         <p>The S3 path that you specify must allow the FinSpace role access. To do that, you first need to configure the IAM policy on S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#access-s3-buckets\">Loading data from an Amazon S3 Bucket using the FinSpace API</a>section.</p>", "smithy.api#required" => {}}))
    UpdateChangesetRequest.add_member(:format_params, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatParams, location_name: 'formatParams', traits: {"smithy.api#documentation" => "<p>Options that define the structure of the source file(s) including the format type (<code>formatType</code>), header row (<code>withHeader</code>), data separation character (<code>separator</code>) and the type of compression (<code>compression</code>).\n    </p>\n         <p>\n            <code>formatType</code> is a required attribute and can have the following values:\n    </p>\n         <ul>\n            <li>\n               <p>\n                  <code>PARQUET</code> – Parquet source file format.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CSV</code> – CSV source file format.</p>\n            </li>\n            <li>\n               <p>\n                  <code>JSON</code> – JSON source file format.</p>\n            </li>\n            <li>\n               <p>\n                  <code>XML</code> – XML source file format.</p>\n            </li>\n         </ul>\n         <p>Here is an example of how you could specify the <code>formatParams</code>:</p>\n         <p>\n            <code>\n        \"formatParams\": \n        {\n        \"formatType\": \"CSV\",\n        \"withHeader\": \"true\",\n        \"separator\": \",\",\n        \"compression\":\"None\"\n        } \n      </code>\n         </p>\n         <p>Note that if you only provide <code>formatType</code> as <code>CSV</code>, the rest of the attributes will automatically default to CSV values as following:</p>\n         <p>\n            <code>\n        {\n        \"withHeader\": \"true\",\n        \"separator\": \",\"\n        }\n        </code>\n         </p>\n         <p> For more information about supported file formats, see <a href=\"https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html\">Supported Data Types and File Formats</a> in the FinSpace User Guide.</p>", "smithy.api#required" => {}}))
    UpdateChangesetRequest.type = Types::UpdateChangesetRequest
    UpdateChangesetResponse.add_member(:changeset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangesetId, location_name: 'changesetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Changeset to update.</p>"}))
    UpdateChangesetResponse.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the FinSpace Dataset in which the Changeset is created.</p>"}))
    UpdateChangesetResponse.type = Types::UpdateChangesetResponse
    UpdateDatasetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateDatasetRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Dataset to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:dataset_title, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetTitle, location_name: 'datasetTitle', traits: {"smithy.api#documentation" => "<p>A display title for the Dataset.</p>", "smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:kind, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetKind, location_name: 'kind', traits: {"smithy.api#documentation" => "<p>The format in which the Dataset data is structured.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>TABULAR</code> – Data is structured in a tabular format.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:dataset_description, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetDescription, location_name: 'datasetDescription', traits: {"smithy.api#documentation" => "<p>A description for the Dataset.</p>"}))
    UpdateDatasetRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasString, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The unique resource identifier for a Dataset.</p>"}))
    UpdateDatasetRequest.add_member(:schema_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaUnion, location_name: 'schemaDefinition', traits: {"smithy.api#documentation" => "<p>Definition for a schema on a tabular Dataset.</p>"}))
    UpdateDatasetRequest.type = Types::UpdateDatasetRequest
    UpdateDatasetResponse.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetId, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for updated Dataset.</p>"}))
    UpdateDatasetResponse.type = Types::UpdateDatasetResponse
    UpdatePermissionGroupRequest.add_member(:permission_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: 'permissionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the permission group to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePermissionGroupRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the permission group.</p>"}))
    UpdatePermissionGroupRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description for the permission group.</p>"}))
    UpdatePermissionGroupRequest.add_member(:application_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationPermissionList, location_name: 'applicationPermissions', traits: {"smithy.api#documentation" => "<p>The permissions that are granted to a specific group for accessing the FinSpace application.</p>\n         <important>\n            <p>When assigning application permissions, be aware that the permission <code>ManageUsersAndGroups</code> allows users to grant themselves or others access to any functionality in their FinSpace environment's application. It should only be granted to trusted users.</p>\n         </important>\n         <ul>\n            <li>\n               <p>\n                  <code>CreateDataset</code> – Group members can create new datasets.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ManageClusters</code> – Group members can manage Apache Spark clusters from FinSpace notebooks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ManageUsersAndGroups</code> – Group members can manage users and permission groups. This is a privileged permission that allows users to grant themselves or others access to any functionality in the application. It should only be granted to trusted users.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ManageAttributeSets</code> – Group members can manage attribute sets.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ViewAuditData</code> – Group members can view audit data.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AccessNotebooks</code> – Group members will have access to FinSpace notebooks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>GetTemporaryCredentials</code> – Group members can get temporary API credentials.</p>\n            </li>\n         </ul>"}))
    UpdatePermissionGroupRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdatePermissionGroupRequest.type = Types::UpdatePermissionGroupRequest
    UpdatePermissionGroupResponse.add_member(:permission_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupId, location_name: 'permissionGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the updated permission group.</p>"}))
    UpdatePermissionGroupResponse.type = Types::UpdatePermissionGroupResponse
    UpdateUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the user that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The option to indicate the type of user.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SUPER_USER</code>– A user with permission to all the functionality and data in FinSpace.</p>\n            </li>\n            <li>\n               <p>\n                  <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permission group.</p>\n            </li>\n         </ul>"}))
    UpdateUserRequest.add_member(:first_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FirstName, location_name: 'firstName', traits: {"smithy.api#documentation" => "<p>The first name of the user.</p>"}))
    UpdateUserRequest.add_member(:last_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LastName, location_name: 'lastName', traits: {"smithy.api#documentation" => "<p>The last name of the user.</p>"}))
    UpdateUserRequest.add_member(:api_access, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiAccess, location_name: 'apiAccess', traits: {"smithy.api#documentation" => "<p>The option to indicate whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – The user has permissions to use the APIs.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>\n            </li>\n         </ul>"}))
    UpdateUserRequest.add_member(:api_access_principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'apiAccessPrincipalArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>"}))
    UpdateUserRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that ensures idempotency. This token expires in 10 minutes.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResponse.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the updated user.</p>"}))
    UpdateUserResponse.type = Types::UpdateUserResponse
    User.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the user.</p>"}))
    User.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the user. </p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code> – The user creation is in progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ENABLED</code> – The user is created and is currently active.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – The user is currently inactive.</p>\n            </li>\n         </ul>"}))
    User.add_member(:first_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FirstName, location_name: 'firstName', traits: {"smithy.api#documentation" => "<p>The first name of the user.</p>"}))
    User.add_member(:last_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LastName, location_name: 'lastName', traits: {"smithy.api#documentation" => "<p> The last name of the user.</p>"}))
    User.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'emailAddress', traits: {"smithy.api#documentation" => "<p>The email address of the user. The email address serves as a uniquer identifier for each user and cannot be changed after it's created.</p>"}))
    User.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'type', traits: {"smithy.api#documentation" => "<p> Indicates the type of user.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SUPER_USER</code> – A user with permission to all the functionality and data in FinSpace.</p>\n            </li>\n            <li>\n               <p>\n                  <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permission group.</p>\n            </li>\n         </ul>"}))
    User.add_member(:api_access, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiAccess, location_name: 'apiAccess', traits: {"smithy.api#documentation" => "<p>Indicates whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – The user has permissions to use the APIs.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>\n            </li>\n         </ul>"}))
    User.add_member(:api_access_principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'apiAccessPrincipalArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>"}))
    User.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'createTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The timestamp at which the user was created in FinSpace. The value is determined as epoch time in milliseconds. </p>"}))
    User.add_member(:last_enabled_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'lastEnabledTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> Describes the last time the user was activated. The value is determined as epoch time in milliseconds.\n    </p>"}))
    User.add_member(:last_disabled_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'lastDisabledTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Describes the last time the user was deactivated. The value is determined as epoch time in milliseconds.</p>"}))
    User.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'lastModifiedTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Describes the last time the user was updated. The value is determined as epoch time in milliseconds.\n    </p>"}))
    User.add_member(:last_login_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampEpoch, location_name: 'lastLoginTime', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Describes the last time that the user logged into their account. The value is determined as epoch time in milliseconds.\n    </p>"}))
    User.type = Types::User
    UserByPermissionGroup.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the user.</p>"}))
    UserByPermissionGroup.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the user. </p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code> – The user creation is in progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ENABLED</code> – The user is created and is currently active.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – The user is currently inactive.</p>\n            </li>\n         </ul>"}))
    UserByPermissionGroup.add_member(:first_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FirstName, location_name: 'firstName', traits: {"smithy.api#documentation" => "<p>The first name of the user.</p>"}))
    UserByPermissionGroup.add_member(:last_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LastName, location_name: 'lastName', traits: {"smithy.api#documentation" => "<p>The last name of the user.</p>"}))
    UserByPermissionGroup.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'emailAddress', traits: {"smithy.api#documentation" => "<p>The email address of the user. The email address serves as a unique identifier for each user and cannot be changed after it's created.</p>"}))
    UserByPermissionGroup.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'type', traits: {"smithy.api#documentation" => "<p> Indicates the type of user.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SUPER_USER</code> – A user with permission to all the functionality and data in FinSpace.</p>\n            </li>\n            <li>\n               <p>\n                  <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permission group.</p>\n            </li>\n         </ul>"}))
    UserByPermissionGroup.add_member(:api_access, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiAccess, location_name: 'apiAccess', traits: {"smithy.api#documentation" => "<p>Indicates whether the user can access FinSpace API operations.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – The user has permissions to use the API operations.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> –  The user does not have permissions to use any API operations.</p>\n            </li>\n         </ul>"}))
    UserByPermissionGroup.add_member(:api_access_principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'apiAccessPrincipalArn', traits: {"smithy.api#documentation" => "<p>The IAM ARN identifier that is attached to FinSpace API calls.</p>"}))
    UserByPermissionGroup.add_member(:membership_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionGroupMembershipStatus, location_name: 'membershipStatus', traits: {"smithy.api#documentation" => "<p>Indicates the status of the user within a permission group.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ADDITION_IN_PROGRESS</code> – The user is currently being added to the permission group.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ADDITION_SUCCESS</code> – The user is successfully added to the permission group.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REMOVAL_IN_PROGRESS</code> – The user is currently being removed from the permission group.</p>\n            </li>\n         </ul>"}))
    UserByPermissionGroup.type = Types::UserByPermissionGroup
    UserByPermissionGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserByPermissionGroup)
    UserList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: User)
    UserStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    UserStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    UserStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    UserType.add_member(:super_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPER_USER', traits: {"smithy.api#enumValue" => "SUPER_USER"}))
    UserType.add_member(:app_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APP_USER', traits: {"smithy.api#enumValue" => "APP_USER"}))
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage2, location_name: 'message'))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage2, location_name: 'reason'))
    ValidationException.type = Types::ValidationException
    LocationType.add_member(:ingestion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INGESTION', traits: {"smithy.api#enumValue" => "INGESTION"}))
    LocationType.add_member(:sagemaker, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAGEMAKER', traits: {"smithy.api#enumValue" => "SAGEMAKER"}))

    AWSHabaneroPublicAPI = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.finspacedata#AWSHabaneroPublicAPI"
      service.name = "AWSHabaneroPublicAPI"
      service.version = "2020-07-13"
      service.traits = {"aws.api#service" => {"sdkId" => "finspace data", "arnNamespace" => "finspace-api", "cloudFormationName" => "Finspacedata", "cloudTrailEventSource" => "finspacedata.amazonaws.com", "docId" => "finspace-2020-07-13", "endpointPrefix" => "finspace-api"}, "aws.auth#sigv4" => {"name" => "finspace-api"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "FinSpace Public API"}
      service.add_operation(:associate_user_to_permission_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#AssociateUserToPermissionGroup"
        operation.name = "AssociateUserToPermissionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateUserToPermissionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateUserToPermissionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/permission-group/{permissionGroupId}/users/{userId}", "code" => 200}}
      end)
      service.add_operation(:create_changeset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#CreateChangeset"
        operation.name = "CreateChangeset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChangesetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChangesetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/datasets/{datasetId}/changesetsv2", "code" => 200}}
      end)
      service.add_operation(:create_data_view, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#CreateDataView"
        operation.name = "CreateDataView"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataViewRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataViewResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/datasets/{datasetId}/dataviewsv2", "code" => 200}}
      end)
      service.add_operation(:create_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/datasetsv2", "code" => 200}}
      end)
      service.add_operation(:create_permission_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#CreatePermissionGroup"
        operation.name = "CreatePermissionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePermissionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePermissionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/permission-group", "code" => 200}}
      end)
      service.add_operation(:create_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#CreateUser"
        operation.name = "CreateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/user", "code" => 200}}
      end)
      service.add_operation(:delete_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/datasetsv2/{datasetId}", "code" => 200}}
      end)
      service.add_operation(:delete_permission_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#DeletePermissionGroup"
        operation.name = "DeletePermissionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/permission-group/{permissionGroupId}", "code" => 200}}
      end)
      service.add_operation(:disable_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#DisableUser"
        operation.name = "DisableUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/user/{userId}/disable", "code" => 200}}
      end)
      service.add_operation(:disassociate_user_from_permission_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#DisassociateUserFromPermissionGroup"
        operation.name = "DisassociateUserFromPermissionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateUserFromPermissionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateUserFromPermissionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/permission-group/{permissionGroupId}/users/{userId}", "code" => 200}}
      end)
      service.add_operation(:enable_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#EnableUser"
        operation.name = "EnableUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/user/{userId}/enable", "code" => 200}}
      end)
      service.add_operation(:get_changeset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetChangeset"
        operation.name = "GetChangeset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangesetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangesetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetId}/changesetsv2/{changesetId}", "code" => 200}}
      end)
      service.add_operation(:get_data_view, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetDataView"
        operation.name = "GetDataView"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataViewRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataViewResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetId}/dataviewsv2/{dataViewId}", "code" => 200}}
      end)
      service.add_operation(:get_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetDataset"
        operation.name = "GetDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasetsv2/{datasetId}", "code" => 200}}
      end)
      service.add_operation(:get_external_data_view_access_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetExternalDataViewAccessDetails"
        operation.name = "GetExternalDataViewAccessDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExternalDataViewAccessDetailsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExternalDataViewAccessDetailsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/datasets/{datasetId}/dataviewsv2/{dataViewId}/external-access-details", "code" => 200}}
      end)
      service.add_operation(:get_permission_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetPermissionGroup"
        operation.name = "GetPermissionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPermissionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPermissionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/permission-group/{permissionGroupId}", "code" => 200}}
      end)
      service.add_operation(:get_programmatic_access_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetProgrammaticAccessCredentials"
        operation.name = "GetProgrammaticAccessCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProgrammaticAccessCredentialsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProgrammaticAccessCredentialsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/credentials/programmatic", "code" => 200}}
      end)
      service.add_operation(:get_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetUser"
        operation.name = "GetUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/user/{userId}", "code" => 200}}
      end)
      service.add_operation(:get_working_location, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetWorkingLocation"
        operation.name = "GetWorkingLocation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkingLocationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkingLocationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workingLocationV1", "code" => 200}}
      end)
      service.add_operation(:list_changesets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ListChangesets"
        operation.name = "ListChangesets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChangesetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChangesetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetId}/changesetsv2", "code" => 200}}
        operation[:paginator] = Paginators::ListChangesets.new
      end)
      service.add_operation(:list_data_views, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ListDataViews"
        operation.name = "ListDataViews"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataViewsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataViewsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetId}/dataviewsv2", "code" => 200}}
        operation[:paginator] = Paginators::ListDataViews.new
      end)
      service.add_operation(:list_datasets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasetsv2", "code" => 200}}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_permission_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ListPermissionGroups"
        operation.name = "ListPermissionGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/permission-group", "code" => 200}}
        operation[:paginator] = Paginators::ListPermissionGroups.new
      end)
      service.add_operation(:list_permission_groups_by_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ListPermissionGroupsByUser"
        operation.name = "ListPermissionGroupsByUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionGroupsByUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionGroupsByUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/user/{userId}/permission-groups", "code" => 200}}
      end)
      service.add_operation(:list_users, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ListUsers"
        operation.name = "ListUsers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/user", "code" => 200}}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:list_users_by_permission_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ListUsersByPermissionGroup"
        operation.name = "ListUsersByPermissionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersByPermissionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersByPermissionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/permission-group/{permissionGroupId}/users", "code" => 200}}
      end)
      service.add_operation(:reset_user_password, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ResetUserPassword"
        operation.name = "ResetUserPassword"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetUserPasswordRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetUserPasswordResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/user/{userId}/password", "code" => 200}}
      end)
      service.add_operation(:update_changeset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#UpdateChangeset"
        operation.name = "UpdateChangeset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChangesetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChangesetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/datasets/{datasetId}/changesetsv2/{changesetId}", "code" => 200}}
      end)
      service.add_operation(:update_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#UpdateDataset"
        operation.name = "UpdateDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/datasetsv2/{datasetId}", "code" => 200}}
      end)
      service.add_operation(:update_permission_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#UpdatePermissionGroup"
        operation.name = "UpdatePermissionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePermissionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePermissionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/permission-group/{permissionGroupId}", "code" => 200}}
      end)
      service.add_operation(:update_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/user/{userId}", "code" => 200}}
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
