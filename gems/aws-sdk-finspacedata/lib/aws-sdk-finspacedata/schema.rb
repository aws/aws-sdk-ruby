# frozen_string_literal: true

# This is generated code!

module Aws::Finspacedata
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#AccessKeyId", name: "AccessKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    AliasString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#AliasString", name: "AliasString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^alias\\/\\S+$"})
    ApiAccess = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.finspacedata#ApiAccess", name: "ApiAccess")
    ApplicationPermission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.finspacedata#ApplicationPermission", name: "ApplicationPermission")
    ApplicationPermissionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.finspacedata#ApplicationPermissionList", name: "ApplicationPermissionList")
    AssociateUserToPermissionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#AssociateUserToPermissionGroupRequest", name: "AssociateUserToPermissionGroupRequest")
    AssociateUserToPermissionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#AssociateUserToPermissionGroupResponse", name: "AssociateUserToPermissionGroupResponse")
    AwsCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#AwsCredentials", name: "AwsCredentials", traits: {"smithy.api#sensitive" => {}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.finspacedata#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    ChangeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.finspacedata#ChangeType", name: "ChangeType")
    ChangesetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#ChangesetArn", name: "ChangesetArn")
    ChangesetErrorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ChangesetErrorInfo", name: "ChangesetErrorInfo")
    ChangesetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#ChangesetId", name: "ChangesetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 26}})
    ChangesetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.finspacedata#ChangesetList", name: "ChangesetList")
    ChangesetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ChangesetSummary", name: "ChangesetSummary")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    ColumnDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.finspacedata#ColumnDataType", name: "ColumnDataType")
    ColumnDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ColumnDefinition", name: "ColumnDefinition")
    ColumnDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#ColumnDescription", name: "ColumnDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.finspacedata#ColumnList", name: "ColumnList")
    ColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#ColumnName", name: "ColumnName", traits: {"smithy.api#length" => {"min" => 0, "max" => 126}, "smithy.api#pattern" => "\\S"})
    ColumnNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.finspacedata#ColumnNameList", name: "ColumnNameList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateChangesetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#CreateChangesetRequest", name: "CreateChangesetRequest")
    CreateChangesetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#CreateChangesetResponse", name: "CreateChangesetResponse")
    CreateDataViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#CreateDataViewRequest", name: "CreateDataViewRequest")
    CreateDataViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#CreateDataViewResponse", name: "CreateDataViewResponse")
    CreateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#CreateDatasetRequest", name: "CreateDatasetRequest")
    CreateDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#CreateDatasetResponse", name: "CreateDatasetResponse")
    CreatePermissionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#CreatePermissionGroupRequest", name: "CreatePermissionGroupRequest")
    CreatePermissionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#CreatePermissionGroupResponse", name: "CreatePermissionGroupResponse")
    CreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#CreateUserRequest", name: "CreateUserRequest")
    CreateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#CreateUserResponse", name: "CreateUserResponse")
    Credentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#Credentials", name: "Credentials", traits: {"smithy.api#sensitive" => {}})
    DataViewArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#DataViewArn", name: "DataViewArn")
    DataViewDestinationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#DataViewDestinationType", name: "DataViewDestinationType")
    DataViewDestinationTypeParams = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#DataViewDestinationTypeParams", name: "DataViewDestinationTypeParams")
    DataViewErrorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#DataViewErrorInfo", name: "DataViewErrorInfo")
    DataViewId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#DataViewId", name: "DataViewId", traits: {"smithy.api#length" => {"min" => 1, "max" => 26}})
    DataViewList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.finspacedata#DataViewList", name: "DataViewList")
    DataViewStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.finspacedata#DataViewStatus", name: "DataViewStatus")
    DataViewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#DataViewSummary", name: "DataViewSummary")
    Dataset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#Dataset", name: "Dataset")
    DatasetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#DatasetArn", name: "DatasetArn")
    DatasetDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#DatasetDescription", name: "DatasetDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    DatasetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#DatasetId", name: "DatasetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 26}})
    DatasetKind = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.finspacedata#DatasetKind", name: "DatasetKind")
    DatasetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.finspacedata#DatasetList", name: "DatasetList")
    DatasetOwnerInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#DatasetOwnerInfo", name: "DatasetOwnerInfo")
    DatasetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.finspacedata#DatasetStatus", name: "DatasetStatus")
    DatasetTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#DatasetTitle", name: "DatasetTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "\\S"})
    DeleteDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#DeleteDatasetRequest", name: "DeleteDatasetRequest")
    DeleteDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#DeleteDatasetResponse", name: "DeleteDatasetResponse")
    DeletePermissionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#DeletePermissionGroupRequest", name: "DeletePermissionGroupRequest")
    DeletePermissionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#DeletePermissionGroupResponse", name: "DeletePermissionGroupResponse")
    DisableUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#DisableUserRequest", name: "DisableUserRequest")
    DisableUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#DisableUserResponse", name: "DisableUserResponse")
    DisassociateUserFromPermissionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#DisassociateUserFromPermissionGroupRequest", name: "DisassociateUserFromPermissionGroupRequest")
    DisassociateUserFromPermissionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#DisassociateUserFromPermissionGroupResponse", name: "DisassociateUserFromPermissionGroupResponse")
    Email = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#Email", name: "Email", traits: {"smithy.api#length" => {"min" => 4, "max" => 320}, "smithy.api#pattern" => "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$", "smithy.api#sensitive" => {}})
    EnableUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#EnableUserRequest", name: "EnableUserRequest")
    EnableUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#EnableUserResponse", name: "EnableUserResponse")
    ErrorCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.finspacedata#ErrorCategory", name: "ErrorCategory")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ErrorMessage2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#ErrorMessage2", name: "ErrorMessage2")
    ExportFileFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.finspacedata#ExportFileFormat", name: "ExportFileFormat")
    FirstName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#FirstName", name: "FirstName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    FormatParams = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.finspacedata#FormatParams", name: "FormatParams")
    GetChangesetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetChangesetRequest", name: "GetChangesetRequest")
    GetChangesetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetChangesetResponse", name: "GetChangesetResponse")
    GetDataViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetDataViewRequest", name: "GetDataViewRequest")
    GetDataViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetDataViewResponse", name: "GetDataViewResponse")
    GetDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetDatasetRequest", name: "GetDatasetRequest")
    GetDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetDatasetResponse", name: "GetDatasetResponse")
    GetExternalDataViewAccessDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetExternalDataViewAccessDetailsRequest", name: "GetExternalDataViewAccessDetailsRequest")
    GetExternalDataViewAccessDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetExternalDataViewAccessDetailsResponse", name: "GetExternalDataViewAccessDetailsResponse")
    GetPermissionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetPermissionGroupRequest", name: "GetPermissionGroupRequest")
    GetPermissionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetPermissionGroupResponse", name: "GetPermissionGroupResponse")
    GetProgrammaticAccessCredentialsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetProgrammaticAccessCredentialsRequest", name: "GetProgrammaticAccessCredentialsRequest")
    GetProgrammaticAccessCredentialsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetProgrammaticAccessCredentialsResponse", name: "GetProgrammaticAccessCredentialsResponse")
    GetUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetUserRequest", name: "GetUserRequest")
    GetUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetUserResponse", name: "GetUserResponse")
    GetWorkingLocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetWorkingLocationRequest", name: "GetWorkingLocationRequest")
    GetWorkingLocationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#GetWorkingLocationResponse", name: "GetWorkingLocationResponse")
    IdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#IdType", name: "IdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 26}})
    IngestionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.finspacedata#IngestionStatus", name: "IngestionStatus")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LastName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#LastName", name: "LastName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListChangesetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ListChangesetsRequest", name: "ListChangesetsRequest")
    ListChangesetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ListChangesetsResponse", name: "ListChangesetsResponse")
    ListDataViewsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ListDataViewsRequest", name: "ListDataViewsRequest")
    ListDataViewsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ListDataViewsResponse", name: "ListDataViewsResponse")
    ListDatasetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ListDatasetsRequest", name: "ListDatasetsRequest")
    ListDatasetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ListDatasetsResponse", name: "ListDatasetsResponse")
    ListPermissionGroupsByUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ListPermissionGroupsByUserRequest", name: "ListPermissionGroupsByUserRequest")
    ListPermissionGroupsByUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ListPermissionGroupsByUserResponse", name: "ListPermissionGroupsByUserResponse")
    ListPermissionGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ListPermissionGroupsRequest", name: "ListPermissionGroupsRequest")
    ListPermissionGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ListPermissionGroupsResponse", name: "ListPermissionGroupsResponse")
    ListUsersByPermissionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ListUsersByPermissionGroupRequest", name: "ListUsersByPermissionGroupRequest")
    ListUsersByPermissionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ListUsersByPermissionGroupResponse", name: "ListUsersByPermissionGroupResponse")
    ListUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ListUsersRequest", name: "ListUsersRequest")
    ListUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ListUsersResponse", name: "ListUsersResponse")
    OwnerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#OwnerName", name: "OwnerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}, "smithy.api#pattern" => "\\S"})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#PaginationToken", name: "PaginationToken")
    PartitionColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.finspacedata#PartitionColumnList", name: "PartitionColumnList")
    Password = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#Password", name: "Password", traits: {"smithy.api#length" => {"min" => 8, "max" => 20}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    PermissionGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#PermissionGroup", name: "PermissionGroup")
    PermissionGroupByUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#PermissionGroupByUser", name: "PermissionGroupByUser")
    PermissionGroupByUserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.finspacedata#PermissionGroupByUserList", name: "PermissionGroupByUserList")
    PermissionGroupDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#PermissionGroupDescription", name: "PermissionGroupDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 4000}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    PermissionGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#PermissionGroupId", name: "PermissionGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 26}, "smithy.api#pattern" => "\\S"})
    PermissionGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.finspacedata#PermissionGroupList", name: "PermissionGroupList")
    PermissionGroupMembershipStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.finspacedata#PermissionGroupMembershipStatus", name: "PermissionGroupMembershipStatus")
    PermissionGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#PermissionGroupName", name: "PermissionGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    PermissionGroupParams = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#PermissionGroupParams", name: "PermissionGroupParams")
    PhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#PhoneNumber", name: "PhoneNumber", traits: {"smithy.api#length" => {"min" => 10, "max" => 20}, "smithy.api#pattern" => "^[\\+0-9\\#\\,\\(][\\+0-9\\-\\.\\/\\(\\)\\,\\#\\s]+$"})
    ResetUserPasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ResetUserPasswordRequest", name: "ResetUserPasswordRequest")
    ResetUserPasswordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ResetUserPasswordResponse", name: "ResetUserPasswordResponse")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePermission = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ResourcePermission", name: "ResourcePermission")
    ResourcePermissionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.finspacedata#ResourcePermissionsList", name: "ResourcePermissionsList")
    ResultLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.finspacedata#ResultLimit", name: "ResultLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^.*\\S.*$"})
    S3DestinationFormatOptions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.finspacedata#S3DestinationFormatOptions", name: "S3DestinationFormatOptions")
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#S3Key", name: "S3Key", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*\\S.*$"})
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#S3Location", name: "S3Location")
    SchemaDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#SchemaDefinition", name: "SchemaDefinition")
    SchemaUnion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#SchemaUnion", name: "SchemaUnion")
    SecretAccessKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#SecretAccessKey", name: "SecretAccessKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$", "smithy.api#sensitive" => {}})
    SessionDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.finspacedata#SessionDuration", name: "SessionDuration", traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    SessionToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#SessionToken", name: "SessionToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$", "smithy.api#sensitive" => {}})
    SortColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.finspacedata#SortColumnList", name: "SortColumnList")
    SourceParams = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.finspacedata#SourceParams", name: "SourceParams")
    StatusCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.finspacedata#StatusCode", name: "StatusCode", traits: {"smithy.api#default" => 0})
    StringMapKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#StringMapKey", name: "StringMapKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    StringMapValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#StringMapValue", name: "StringMapValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    StringValueLength1to250 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#StringValueLength1to250", name: "StringValueLength1to250", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    StringValueLength1to255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#StringValueLength1to255", name: "StringValueLength1to255", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    StringValueLength1to2552 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#StringValueLength1to2552", name: "StringValueLength1to2552", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimestampEpoch = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.finspacedata#TimestampEpoch", name: "TimestampEpoch", traits: {"smithy.api#default" => 0})
    UpdateChangesetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#UpdateChangesetRequest", name: "UpdateChangesetRequest")
    UpdateChangesetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#UpdateChangesetResponse", name: "UpdateChangesetResponse")
    UpdateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#UpdateDatasetRequest", name: "UpdateDatasetRequest")
    UpdateDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#UpdateDatasetResponse", name: "UpdateDatasetResponse")
    UpdatePermissionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#UpdatePermissionGroupRequest", name: "UpdatePermissionGroupRequest")
    UpdatePermissionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#UpdatePermissionGroupResponse", name: "UpdatePermissionGroupResponse")
    UpdateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#UpdateUserRequest", name: "UpdateUserRequest")
    UpdateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#UpdateUserResponse", name: "UpdateUserResponse")
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#User", name: "User")
    UserByPermissionGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#UserByPermissionGroup", name: "UserByPermissionGroup")
    UserByPermissionGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.finspacedata#UserByPermissionGroupList", name: "UserByPermissionGroupList")
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#UserId", name: "UserId", traits: {"smithy.api#length" => {"min" => 1, "max" => 26}, "smithy.api#pattern" => "\\S"})
    UserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.finspacedata#UserList", name: "UserList")
    UserStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.finspacedata#UserStatus", name: "UserStatus")
    UserType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.finspacedata#UserType", name: "UserType")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.finspacedata#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.finspacedata#locationType", name: "LocationType")
    StringValueLength1to1024 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#stringValueLength1to1024", name: "StringValueLength1to1024", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    StringValueLength1to63 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#stringValueLength1to63", name: "StringValueLength1to63", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "\\S"})
    StringValueMaxLength1000 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.finspacedata#stringValueMaxLength1000", name: "StringValueMaxLength1000", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage2, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ApiAccess.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ApiAccess.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ApplicationPermission.add_member(:create_dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateDataset", traits: {"smithy.api#enumValue" => "CreateDataset"}))
    ApplicationPermission.add_member(:manage_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ManageClusters", traits: {"smithy.api#enumValue" => "ManageClusters"}))
    ApplicationPermission.add_member(:manage_users_and_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ManageUsersAndGroups", traits: {"smithy.api#enumValue" => "ManageUsersAndGroups"}))
    ApplicationPermission.add_member(:manage_attribute_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ManageAttributeSets", traits: {"smithy.api#enumValue" => "ManageAttributeSets"}))
    ApplicationPermission.add_member(:view_audit_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ViewAuditData", traits: {"smithy.api#enumValue" => "ViewAuditData"}))
    ApplicationPermission.add_member(:access_notebooks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessNotebooks", traits: {"smithy.api#enumValue" => "AccessNotebooks"}))
    ApplicationPermission.add_member(:get_temporary_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GetTemporaryCredentials", traits: {"smithy.api#enumValue" => "GetTemporaryCredentials"}))
    ApplicationPermissionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationPermission, name: "member"))
    AssociateUserToPermissionGroupRequest.add_member(:permission_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupId, name: "permissionGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateUserToPermissionGroupRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateUserToPermissionGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateUserToPermissionGroupRequest.type = Types::AssociateUserToPermissionGroupRequest
    AssociateUserToPermissionGroupResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode", traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}}))
    AssociateUserToPermissionGroupResponse.type = Types::AssociateUserToPermissionGroupResponse
    AwsCredentials.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyId, name: "accessKeyId"))
    AwsCredentials.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretAccessKey, name: "secretAccessKey"))
    AwsCredentials.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionToken, name: "sessionToken"))
    AwsCredentials.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "expiration", traits: {"smithy.api#default" => 0}))
    AwsCredentials.type = Types::AwsCredentials
    ChangeType.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    ChangeType.add_member(:append, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPEND", traits: {"smithy.api#enumValue" => "APPEND"}))
    ChangeType.add_member(:modify, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFY", traits: {"smithy.api#enumValue" => "MODIFY"}))
    ChangesetErrorInfo.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    ChangesetErrorInfo.add_member(:error_category, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCategory, name: "errorCategory"))
    ChangesetErrorInfo.type = Types::ChangesetErrorInfo
    ChangesetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetSummary, name: "member"))
    ChangesetSummary.add_member(:changeset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetId, name: "changesetId"))
    ChangesetSummary.add_member(:changeset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetArn, name: "changesetArn"))
    ChangesetSummary.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId"))
    ChangesetSummary.add_member(:change_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeType, name: "changeType"))
    ChangesetSummary.add_member(:source_params, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceParams, name: "sourceParams"))
    ChangesetSummary.add_member(:format_params, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatParams, name: "formatParams"))
    ChangesetSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "createTime", traits: {"smithy.api#default" => 0}))
    ChangesetSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionStatus, name: "status"))
    ChangesetSummary.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetErrorInfo, name: "errorInfo"))
    ChangesetSummary.add_member(:active_until_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "activeUntilTimestamp", traits: {"smithy.api#default" => nil}))
    ChangesetSummary.add_member(:active_from_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "activeFromTimestamp", traits: {"smithy.api#default" => nil}))
    ChangesetSummary.add_member(:updates_changeset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetId, name: "updatesChangesetId"))
    ChangesetSummary.add_member(:updated_by_changeset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetId, name: "updatedByChangesetId"))
    ChangesetSummary.type = Types::ChangesetSummary
    ColumnDataType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    ColumnDataType.add_member(:char, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHAR", traits: {"smithy.api#enumValue" => "CHAR"}))
    ColumnDataType.add_member(:integer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGER", traits: {"smithy.api#enumValue" => "INTEGER"}))
    ColumnDataType.add_member(:tinyint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TINYINT", traits: {"smithy.api#enumValue" => "TINYINT"}))
    ColumnDataType.add_member(:smallint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMALLINT", traits: {"smithy.api#enumValue" => "SMALLINT"}))
    ColumnDataType.add_member(:bigint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BIGINT", traits: {"smithy.api#enumValue" => "BIGINT"}))
    ColumnDataType.add_member(:float, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOAT", traits: {"smithy.api#enumValue" => "FLOAT"}))
    ColumnDataType.add_member(:double, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOUBLE", traits: {"smithy.api#enumValue" => "DOUBLE"}))
    ColumnDataType.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATE", traits: {"smithy.api#enumValue" => "DATE"}))
    ColumnDataType.add_member(:datetime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATETIME", traits: {"smithy.api#enumValue" => "DATETIME"}))
    ColumnDataType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    ColumnDataType.add_member(:binary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BINARY", traits: {"smithy.api#enumValue" => "BINARY"}))
    ColumnDefinition.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnDataType, name: "dataType"))
    ColumnDefinition.add_member(:column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "columnName"))
    ColumnDefinition.add_member(:column_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnDescription, name: "columnDescription"))
    ColumnDefinition.type = Types::ColumnDefinition
    ColumnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnDefinition, name: "member"))
    ColumnNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage2, name: "message"))
    ConflictException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage2, name: "reason"))
    ConflictException.type = Types::ConflictException
    CreateChangesetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateChangesetRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChangesetRequest.add_member(:change_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeType, name: "changeType", traits: {"smithy.api#required" => {}}))
    CreateChangesetRequest.add_member(:source_params, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceParams, name: "sourceParams", traits: {"smithy.api#required" => {}}))
    CreateChangesetRequest.add_member(:format_params, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatParams, name: "formatParams", traits: {"smithy.api#required" => {}}))
    CreateChangesetRequest.type = Types::CreateChangesetRequest
    CreateChangesetResponse.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId"))
    CreateChangesetResponse.add_member(:changeset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetId, name: "changesetId"))
    CreateChangesetResponse.type = Types::CreateChangesetResponse
    CreateDataViewRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataViewRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataViewRequest.add_member(:auto_update, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "autoUpdate", traits: {"smithy.api#default" => false}))
    CreateDataViewRequest.add_member(:sort_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: SortColumnList, name: "sortColumns"))
    CreateDataViewRequest.add_member(:partition_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionColumnList, name: "partitionColumns"))
    CreateDataViewRequest.add_member(:as_of_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "asOfTimestamp", traits: {"smithy.api#default" => nil}))
    CreateDataViewRequest.add_member(:destination_type_params, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewDestinationTypeParams, name: "destinationTypeParams", traits: {"smithy.api#required" => {}}))
    CreateDataViewRequest.type = Types::CreateDataViewRequest
    CreateDataViewResponse.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId"))
    CreateDataViewResponse.add_member(:data_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewId, name: "dataViewId"))
    CreateDataViewResponse.type = Types::CreateDataViewResponse
    CreateDatasetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDatasetRequest.add_member(:dataset_title, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetTitle, name: "datasetTitle", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:kind, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetKind, name: "kind", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetDescription, name: "datasetDescription"))
    CreateDatasetRequest.add_member(:owner_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetOwnerInfo, name: "ownerInfo"))
    CreateDatasetRequest.add_member(:permission_group_params, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupParams, name: "permissionGroupParams", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasString, name: "alias"))
    CreateDatasetRequest.add_member(:schema_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaUnion, name: "schemaDefinition"))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId"))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreatePermissionGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupName, name: "name", traits: {"smithy.api#required" => {}}))
    CreatePermissionGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupDescription, name: "description"))
    CreatePermissionGroupRequest.add_member(:application_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationPermissionList, name: "applicationPermissions", traits: {"smithy.api#required" => {}}))
    CreatePermissionGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePermissionGroupRequest.type = Types::CreatePermissionGroupRequest
    CreatePermissionGroupResponse.add_member(:permission_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupId, name: "permissionGroupId"))
    CreatePermissionGroupResponse.type = Types::CreatePermissionGroupResponse
    CreateUserRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "emailAddress", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FirstName, name: "firstName"))
    CreateUserRequest.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LastName, name: "lastName"))
    CreateUserRequest.add_member(:api_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiAccess, name: "apiAccess"))
    CreateUserRequest.add_member(:api_access_principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "apiAccessPrincipalArn"))
    CreateUserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    CreateUserResponse.type = Types::CreateUserResponse
    Credentials.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValueLength1to2552, name: "accessKeyId"))
    Credentials.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValueMaxLength1000, name: "secretAccessKey"))
    Credentials.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValueMaxLength1000, name: "sessionToken"))
    Credentials.type = Types::Credentials
    DataViewDestinationTypeParams.add_member(:destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewDestinationType, name: "destinationType", traits: {"smithy.api#required" => {}}))
    DataViewDestinationTypeParams.add_member(:s3_destination_export_file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFileFormat, name: "s3DestinationExportFileFormat"))
    DataViewDestinationTypeParams.add_member(:s3_destination_export_file_format_options, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationFormatOptions, name: "s3DestinationExportFileFormatOptions"))
    DataViewDestinationTypeParams.type = Types::DataViewDestinationTypeParams
    DataViewErrorInfo.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    DataViewErrorInfo.add_member(:error_category, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCategory, name: "errorCategory"))
    DataViewErrorInfo.type = Types::DataViewErrorInfo
    DataViewList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewSummary, name: "member"))
    DataViewStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    DataViewStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    DataViewStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DataViewStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    DataViewStatus.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMEOUT", traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    DataViewStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DataViewStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DataViewStatus.add_member(:failed_cleanup_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_CLEANUP_FAILED", traits: {"smithy.api#enumValue" => "FAILED_CLEANUP_FAILED"}))
    DataViewSummary.add_member(:data_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewId, name: "dataViewId"))
    DataViewSummary.add_member(:data_view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewArn, name: "dataViewArn"))
    DataViewSummary.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId"))
    DataViewSummary.add_member(:as_of_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "asOfTimestamp", traits: {"smithy.api#default" => nil}))
    DataViewSummary.add_member(:partition_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionColumnList, name: "partitionColumns"))
    DataViewSummary.add_member(:sort_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: SortColumnList, name: "sortColumns"))
    DataViewSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewStatus, name: "status"))
    DataViewSummary.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewErrorInfo, name: "errorInfo"))
    DataViewSummary.add_member(:destination_type_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewDestinationTypeParams, name: "destinationTypeProperties"))
    DataViewSummary.add_member(:auto_update, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "autoUpdate", traits: {"smithy.api#default" => false}))
    DataViewSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "createTime", traits: {"smithy.api#default" => 0}))
    DataViewSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "lastModifiedTime", traits: {"smithy.api#default" => 0}))
    DataViewSummary.type = Types::DataViewSummary
    Dataset.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId"))
    Dataset.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, name: "datasetArn"))
    Dataset.add_member(:dataset_title, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetTitle, name: "datasetTitle"))
    Dataset.add_member(:kind, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetKind, name: "kind"))
    Dataset.add_member(:dataset_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetDescription, name: "datasetDescription"))
    Dataset.add_member(:owner_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetOwnerInfo, name: "ownerInfo"))
    Dataset.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "createTime", traits: {"smithy.api#default" => 0}))
    Dataset.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "lastModifiedTime", traits: {"smithy.api#default" => 0}))
    Dataset.add_member(:schema_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaUnion, name: "schemaDefinition"))
    Dataset.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasString, name: "alias"))
    Dataset.type = Types::Dataset
    DatasetKind.add_member(:tabular, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABULAR", traits: {"smithy.api#enumValue" => "TABULAR"}))
    DatasetKind.add_member(:non_tabular, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_TABULAR", traits: {"smithy.api#enumValue" => "NON_TABULAR"}))
    DatasetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Dataset, name: "member"))
    DatasetOwnerInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerName, name: "name"))
    DatasetOwnerInfo.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "phoneNumber"))
    DatasetOwnerInfo.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "email"))
    DatasetOwnerInfo.type = Types::DatasetOwnerInfo
    DatasetStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DatasetStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DatasetStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DatasetStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    DeleteDatasetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteDatasetRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteDatasetResponse.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId"))
    DeleteDatasetResponse.type = Types::DeleteDatasetResponse
    DeletePermissionGroupRequest.add_member(:permission_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupId, name: "permissionGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePermissionGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeletePermissionGroupRequest.type = Types::DeletePermissionGroupRequest
    DeletePermissionGroupResponse.add_member(:permission_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupId, name: "permissionGroupId"))
    DeletePermissionGroupResponse.type = Types::DeletePermissionGroupResponse
    DisableUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisableUserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DisableUserRequest.type = Types::DisableUserRequest
    DisableUserResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    DisableUserResponse.type = Types::DisableUserResponse
    DisassociateUserFromPermissionGroupRequest.add_member(:permission_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupId, name: "permissionGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateUserFromPermissionGroupRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateUserFromPermissionGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DisassociateUserFromPermissionGroupRequest.type = Types::DisassociateUserFromPermissionGroupRequest
    DisassociateUserFromPermissionGroupResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "statusCode", traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}}))
    DisassociateUserFromPermissionGroupResponse.type = Types::DisassociateUserFromPermissionGroupResponse
    EnableUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EnableUserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    EnableUserRequest.type = Types::EnableUserRequest
    EnableUserResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    EnableUserResponse.type = Types::EnableUserResponse
    ErrorCategory.add_member(:validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION", traits: {"smithy.api#enumValue" => "VALIDATION"}))
    ErrorCategory.add_member(:service_quota_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_QUOTA_EXCEEDED", traits: {"smithy.api#enumValue" => "SERVICE_QUOTA_EXCEEDED"}))
    ErrorCategory.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    ErrorCategory.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    ErrorCategory.add_member(:throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THROTTLING", traits: {"smithy.api#enumValue" => "THROTTLING"}))
    ErrorCategory.add_member(:internal_service_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_SERVICE_EXCEPTION", traits: {"smithy.api#enumValue" => "INTERNAL_SERVICE_EXCEPTION"}))
    ErrorCategory.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ErrorCategory.add_member(:user_recoverable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_RECOVERABLE", traits: {"smithy.api#enumValue" => "USER_RECOVERABLE"}))
    ExportFileFormat.add_member(:parquet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARQUET", traits: {"smithy.api#enumValue" => "PARQUET"}))
    ExportFileFormat.add_member(:delimited_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELIMITED_TEXT", traits: {"smithy.api#enumValue" => "DELIMITED_TEXT"}))
    FormatParams.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMapKey, name: "key"))
    FormatParams.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMapValue, name: "value"))
    GetChangesetRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChangesetRequest.add_member(:changeset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetId, name: "changesetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChangesetRequest.type = Types::GetChangesetRequest
    GetChangesetResponse.add_member(:changeset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetId, name: "changesetId"))
    GetChangesetResponse.add_member(:changeset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetArn, name: "changesetArn"))
    GetChangesetResponse.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId"))
    GetChangesetResponse.add_member(:change_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeType, name: "changeType"))
    GetChangesetResponse.add_member(:source_params, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceParams, name: "sourceParams"))
    GetChangesetResponse.add_member(:format_params, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatParams, name: "formatParams"))
    GetChangesetResponse.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "createTime", traits: {"smithy.api#default" => 0}))
    GetChangesetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionStatus, name: "status"))
    GetChangesetResponse.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetErrorInfo, name: "errorInfo"))
    GetChangesetResponse.add_member(:active_until_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "activeUntilTimestamp", traits: {"smithy.api#default" => nil}))
    GetChangesetResponse.add_member(:active_from_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "activeFromTimestamp", traits: {"smithy.api#default" => nil}))
    GetChangesetResponse.add_member(:updates_changeset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetId, name: "updatesChangesetId"))
    GetChangesetResponse.add_member(:updated_by_changeset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetId, name: "updatedByChangesetId"))
    GetChangesetResponse.type = Types::GetChangesetResponse
    GetDataViewRequest.add_member(:data_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewId, name: "dataViewId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataViewRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataViewRequest.type = Types::GetDataViewRequest
    GetDataViewResponse.add_member(:auto_update, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "autoUpdate", traits: {"smithy.api#default" => false}))
    GetDataViewResponse.add_member(:partition_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionColumnList, name: "partitionColumns"))
    GetDataViewResponse.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId"))
    GetDataViewResponse.add_member(:as_of_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "asOfTimestamp", traits: {"smithy.api#default" => nil}))
    GetDataViewResponse.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewErrorInfo, name: "errorInfo"))
    GetDataViewResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "lastModifiedTime", traits: {"smithy.api#default" => 0}))
    GetDataViewResponse.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "createTime", traits: {"smithy.api#default" => 0}))
    GetDataViewResponse.add_member(:sort_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: SortColumnList, name: "sortColumns"))
    GetDataViewResponse.add_member(:data_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewId, name: "dataViewId"))
    GetDataViewResponse.add_member(:data_view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewArn, name: "dataViewArn"))
    GetDataViewResponse.add_member(:destination_type_params, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewDestinationTypeParams, name: "destinationTypeParams"))
    GetDataViewResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewStatus, name: "status"))
    GetDataViewResponse.type = Types::GetDataViewResponse
    GetDatasetRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValueLength1to255, name: "datasetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDatasetRequest.type = Types::GetDatasetRequest
    GetDatasetResponse.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId"))
    GetDatasetResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetArn, name: "datasetArn"))
    GetDatasetResponse.add_member(:dataset_title, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetTitle, name: "datasetTitle"))
    GetDatasetResponse.add_member(:kind, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetKind, name: "kind"))
    GetDatasetResponse.add_member(:dataset_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetDescription, name: "datasetDescription"))
    GetDatasetResponse.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "createTime", traits: {"smithy.api#default" => 0}))
    GetDatasetResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "lastModifiedTime", traits: {"smithy.api#default" => 0}))
    GetDatasetResponse.add_member(:schema_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaUnion, name: "schemaDefinition"))
    GetDatasetResponse.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasString, name: "alias"))
    GetDatasetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, name: "status"))
    GetDatasetResponse.type = Types::GetDatasetResponse
    GetExternalDataViewAccessDetailsRequest.add_member(:data_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewId, name: "dataViewId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExternalDataViewAccessDetailsRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExternalDataViewAccessDetailsRequest.type = Types::GetExternalDataViewAccessDetailsRequest
    GetExternalDataViewAccessDetailsResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCredentials, name: "credentials"))
    GetExternalDataViewAccessDetailsResponse.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "s3Location"))
    GetExternalDataViewAccessDetailsResponse.type = Types::GetExternalDataViewAccessDetailsResponse
    GetPermissionGroupRequest.add_member(:permission_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupId, name: "permissionGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPermissionGroupRequest.type = Types::GetPermissionGroupRequest
    GetPermissionGroupResponse.add_member(:permission_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroup, name: "permissionGroup"))
    GetPermissionGroupResponse.type = Types::GetPermissionGroupResponse
    GetProgrammaticAccessCredentialsRequest.add_member(:duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionDuration, name: "durationInMinutes", traits: {"smithy.api#httpQuery" => "durationInMinutes"}))
    GetProgrammaticAccessCredentialsRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "environmentId", traits: {"smithy.api#httpQuery" => "environmentId", "smithy.api#required" => {}}))
    GetProgrammaticAccessCredentialsRequest.type = Types::GetProgrammaticAccessCredentialsRequest
    GetProgrammaticAccessCredentialsResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Credentials, name: "credentials"))
    GetProgrammaticAccessCredentialsResponse.add_member(:duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionDuration, name: "durationInMinutes"))
    GetProgrammaticAccessCredentialsResponse.type = Types::GetProgrammaticAccessCredentialsResponse
    GetUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserRequest.type = Types::GetUserRequest
    GetUserResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    GetUserResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStatus, name: "status"))
    GetUserResponse.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FirstName, name: "firstName"))
    GetUserResponse.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LastName, name: "lastName"))
    GetUserResponse.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "emailAddress"))
    GetUserResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "type"))
    GetUserResponse.add_member(:api_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiAccess, name: "apiAccess"))
    GetUserResponse.add_member(:api_access_principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "apiAccessPrincipalArn"))
    GetUserResponse.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "createTime", traits: {"smithy.api#default" => 0}))
    GetUserResponse.add_member(:last_enabled_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "lastEnabledTime", traits: {"smithy.api#default" => 0}))
    GetUserResponse.add_member(:last_disabled_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "lastDisabledTime", traits: {"smithy.api#default" => 0}))
    GetUserResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "lastModifiedTime", traits: {"smithy.api#default" => 0}))
    GetUserResponse.add_member(:last_login_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "lastLoginTime", traits: {"smithy.api#default" => 0}))
    GetUserResponse.type = Types::GetUserResponse
    GetWorkingLocationRequest.add_member(:location_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationType, name: "locationType"))
    GetWorkingLocationRequest.type = Types::GetWorkingLocationRequest
    GetWorkingLocationResponse.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValueLength1to1024, name: "s3Uri"))
    GetWorkingLocationResponse.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValueLength1to1024, name: "s3Path"))
    GetWorkingLocationResponse.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValueLength1to63, name: "s3Bucket"))
    GetWorkingLocationResponse.type = Types::GetWorkingLocationResponse
    IngestionStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    IngestionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IngestionStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    IngestionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    IngestionStatus.add_member(:stop_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_REQUESTED", traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage2, name: "message"))
    InternalServerException.type = Types::InternalServerException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage2, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListChangesetsRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChangesetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultLimit, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListChangesetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListChangesetsRequest.type = Types::ListChangesetsRequest
    ListChangesetsResponse.add_member(:changesets, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetList, name: "changesets"))
    ListChangesetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListChangesetsResponse.type = Types::ListChangesetsResponse
    ListDataViewsRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataViewsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataViewsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultLimit, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDataViewsRequest.type = Types::ListDataViewsRequest
    ListDataViewsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListDataViewsResponse.add_member(:data_views, ::Smithy::Schema::Shapes::MemberShape.new(target: DataViewList, name: "dataViews"))
    ListDataViewsResponse.type = Types::ListDataViewsResponse
    ListDatasetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDatasetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultLimit, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:datasets, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetList, name: "datasets"))
    ListDatasetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListPermissionGroupsByUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPermissionGroupsByUserRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPermissionGroupsByUserRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultLimit, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#required" => {}}))
    ListPermissionGroupsByUserRequest.type = Types::ListPermissionGroupsByUserRequest
    ListPermissionGroupsByUserResponse.add_member(:permission_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupByUserList, name: "permissionGroups"))
    ListPermissionGroupsByUserResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListPermissionGroupsByUserResponse.type = Types::ListPermissionGroupsByUserResponse
    ListPermissionGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPermissionGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultLimit, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#required" => {}}))
    ListPermissionGroupsRequest.type = Types::ListPermissionGroupsRequest
    ListPermissionGroupsResponse.add_member(:permission_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupList, name: "permissionGroups"))
    ListPermissionGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListPermissionGroupsResponse.type = Types::ListPermissionGroupsResponse
    ListUsersByPermissionGroupRequest.add_member(:permission_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupId, name: "permissionGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListUsersByPermissionGroupRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListUsersByPermissionGroupRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultLimit, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#required" => {}}))
    ListUsersByPermissionGroupRequest.type = Types::ListUsersByPermissionGroupRequest
    ListUsersByPermissionGroupResponse.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UserByPermissionGroupList, name: "users"))
    ListUsersByPermissionGroupResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListUsersByPermissionGroupResponse.type = Types::ListUsersByPermissionGroupResponse
    ListUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultLimit, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#required" => {}}))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResponse.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "users"))
    ListUsersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListUsersResponse.type = Types::ListUsersResponse
    PartitionColumnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValueLength1to255, name: "member"))
    PermissionGroup.add_member(:permission_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupId, name: "permissionGroupId"))
    PermissionGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupName, name: "name"))
    PermissionGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupDescription, name: "description"))
    PermissionGroup.add_member(:application_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationPermissionList, name: "applicationPermissions"))
    PermissionGroup.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "createTime", traits: {"smithy.api#default" => 0}))
    PermissionGroup.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "lastModifiedTime", traits: {"smithy.api#default" => 0}))
    PermissionGroup.add_member(:membership_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupMembershipStatus, name: "membershipStatus"))
    PermissionGroup.type = Types::PermissionGroup
    PermissionGroupByUser.add_member(:permission_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupId, name: "permissionGroupId"))
    PermissionGroupByUser.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupName, name: "name"))
    PermissionGroupByUser.add_member(:membership_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupMembershipStatus, name: "membershipStatus"))
    PermissionGroupByUser.type = Types::PermissionGroupByUser
    PermissionGroupByUserList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupByUser, name: "member"))
    PermissionGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroup, name: "member"))
    PermissionGroupMembershipStatus.add_member(:addition_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDITION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "ADDITION_IN_PROGRESS"}))
    PermissionGroupMembershipStatus.add_member(:addition_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDITION_SUCCESS", traits: {"smithy.api#enumValue" => "ADDITION_SUCCESS"}))
    PermissionGroupMembershipStatus.add_member(:removal_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVAL_IN_PROGRESS", traits: {"smithy.api#enumValue" => "REMOVAL_IN_PROGRESS"}))
    PermissionGroupParams.add_member(:permission_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupId, name: "permissionGroupId"))
    PermissionGroupParams.add_member(:dataset_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePermissionsList, name: "datasetPermissions"))
    PermissionGroupParams.type = Types::PermissionGroupParams
    ResetUserPasswordRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetUserPasswordRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ResetUserPasswordRequest.type = Types::ResetUserPasswordRequest
    ResetUserPasswordResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    ResetUserPasswordResponse.add_member(:temporary_password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, name: "temporaryPassword"))
    ResetUserPasswordResponse.type = Types::ResetUserPasswordResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage2, name: "message"))
    ResourceNotFoundException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage2, name: "reason"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePermission.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValueLength1to250, name: "permission"))
    ResourcePermission.type = Types::ResourcePermission
    ResourcePermissionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePermission, name: "member"))
    S3DestinationFormatOptions.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMapKey, name: "key"))
    S3DestinationFormatOptions.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMapValue, name: "value"))
    S3Location.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucket", traits: {"smithy.api#required" => {}}))
    S3Location.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "key", traits: {"smithy.api#required" => {}}))
    S3Location.type = Types::S3Location
    SchemaDefinition.add_member(:columns, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnList, name: "columns"))
    SchemaDefinition.add_member(:primary_key_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnNameList, name: "primaryKeyColumns"))
    SchemaDefinition.type = Types::SchemaDefinition
    SchemaUnion.add_member(:tabular_schema_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaDefinition, name: "tabularSchemaConfig"))
    SchemaUnion.type = Types::SchemaUnion
    SortColumnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValueLength1to255, name: "member"))
    SourceParams.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMapKey, name: "key"))
    SourceParams.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMapValue, name: "value"))
    ThrottlingException.type = Types::ThrottlingException
    UpdateChangesetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateChangesetRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChangesetRequest.add_member(:changeset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetId, name: "changesetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChangesetRequest.add_member(:source_params, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceParams, name: "sourceParams", traits: {"smithy.api#required" => {}}))
    UpdateChangesetRequest.add_member(:format_params, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatParams, name: "formatParams", traits: {"smithy.api#required" => {}}))
    UpdateChangesetRequest.type = Types::UpdateChangesetRequest
    UpdateChangesetResponse.add_member(:changeset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangesetId, name: "changesetId"))
    UpdateChangesetResponse.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId"))
    UpdateChangesetResponse.type = Types::UpdateChangesetResponse
    UpdateDatasetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateDatasetRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:dataset_title, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetTitle, name: "datasetTitle", traits: {"smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:kind, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetKind, name: "kind", traits: {"smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:dataset_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetDescription, name: "datasetDescription"))
    UpdateDatasetRequest.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasString, name: "alias"))
    UpdateDatasetRequest.add_member(:schema_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaUnion, name: "schemaDefinition"))
    UpdateDatasetRequest.type = Types::UpdateDatasetRequest
    UpdateDatasetResponse.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetId, name: "datasetId"))
    UpdateDatasetResponse.type = Types::UpdateDatasetResponse
    UpdatePermissionGroupRequest.add_member(:permission_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupId, name: "permissionGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePermissionGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupName, name: "name"))
    UpdatePermissionGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupDescription, name: "description"))
    UpdatePermissionGroupRequest.add_member(:application_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationPermissionList, name: "applicationPermissions"))
    UpdatePermissionGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdatePermissionGroupRequest.type = Types::UpdatePermissionGroupRequest
    UpdatePermissionGroupResponse.add_member(:permission_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupId, name: "permissionGroupId"))
    UpdatePermissionGroupResponse.type = Types::UpdatePermissionGroupResponse
    UpdateUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "type"))
    UpdateUserRequest.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FirstName, name: "firstName"))
    UpdateUserRequest.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LastName, name: "lastName"))
    UpdateUserRequest.add_member(:api_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiAccess, name: "apiAccess"))
    UpdateUserRequest.add_member(:api_access_principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "apiAccessPrincipalArn"))
    UpdateUserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    UpdateUserResponse.type = Types::UpdateUserResponse
    User.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    User.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStatus, name: "status"))
    User.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FirstName, name: "firstName"))
    User.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LastName, name: "lastName"))
    User.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "emailAddress"))
    User.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "type"))
    User.add_member(:api_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiAccess, name: "apiAccess"))
    User.add_member(:api_access_principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "apiAccessPrincipalArn"))
    User.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "createTime", traits: {"smithy.api#default" => 0}))
    User.add_member(:last_enabled_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "lastEnabledTime", traits: {"smithy.api#default" => 0}))
    User.add_member(:last_disabled_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "lastDisabledTime", traits: {"smithy.api#default" => 0}))
    User.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "lastModifiedTime", traits: {"smithy.api#default" => 0}))
    User.add_member(:last_login_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampEpoch, name: "lastLoginTime", traits: {"smithy.api#default" => 0}))
    User.type = Types::User
    UserByPermissionGroup.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    UserByPermissionGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStatus, name: "status"))
    UserByPermissionGroup.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FirstName, name: "firstName"))
    UserByPermissionGroup.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LastName, name: "lastName"))
    UserByPermissionGroup.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "emailAddress"))
    UserByPermissionGroup.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "type"))
    UserByPermissionGroup.add_member(:api_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiAccess, name: "apiAccess"))
    UserByPermissionGroup.add_member(:api_access_principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "apiAccessPrincipalArn"))
    UserByPermissionGroup.add_member(:membership_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionGroupMembershipStatus, name: "membershipStatus"))
    UserByPermissionGroup.type = Types::UserByPermissionGroup
    UserByPermissionGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserByPermissionGroup, name: "member"))
    UserList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "member"))
    UserStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    UserStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    UserStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    UserType.add_member(:super_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPER_USER", traits: {"smithy.api#enumValue" => "SUPER_USER"}))
    UserType.add_member(:app_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APP_USER", traits: {"smithy.api#enumValue" => "APP_USER"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage2, name: "message"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage2, name: "reason"))
    ValidationException.type = Types::ValidationException
    LocationType.add_member(:ingestion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INGESTION", traits: {"smithy.api#enumValue" => "INGESTION"}))
    LocationType.add_member(:sagemaker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAGEMAKER", traits: {"smithy.api#enumValue" => "SAGEMAKER"}))

    AWSHabaneroPublicAPI = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.finspacedata#AWSHabaneroPublicAPI"
      service.name = "AWSHabaneroPublicAPI"
      service.version = "2020-07-13"
      service.traits = {"aws.api#service" => {"sdkId" => "finspace data", "arnNamespace" => "finspace-api", "cloudFormationName" => "Finspacedata", "cloudTrailEventSource" => "finspacedata.amazonaws.com", "docId" => "finspace-2020-07-13", "endpointPrefix" => "finspace-api"}, "aws.auth#sigv4" => {"name" => "finspace-api"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "FinSpace Public API"}
      service.add_operation(:associate_user_to_permission_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#AssociateUserToPermissionGroup"
        operation.name = "AssociateUserToPermissionGroup"
        operation.input = AssociateUserToPermissionGroupRequest
        operation.output = AssociateUserToPermissionGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/permission-group/{permissionGroupId}/users/{userId}", "code" => 200}}
      end)
      service.add_operation(:create_changeset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#CreateChangeset"
        operation.name = "CreateChangeset"
        operation.input = CreateChangesetRequest
        operation.output = CreateChangesetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/datasets/{datasetId}/changesetsv2", "code" => 200}}
      end)
      service.add_operation(:create_data_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#CreateDataView"
        operation.name = "CreateDataView"
        operation.input = CreateDataViewRequest
        operation.output = CreateDataViewResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/datasets/{datasetId}/dataviewsv2", "code" => 200}}
      end)
      service.add_operation(:create_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = CreateDatasetRequest
        operation.output = CreateDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/datasetsv2", "code" => 200}}
      end)
      service.add_operation(:create_permission_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#CreatePermissionGroup"
        operation.name = "CreatePermissionGroup"
        operation.input = CreatePermissionGroupRequest
        operation.output = CreatePermissionGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/permission-group", "code" => 200}}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#CreateUser"
        operation.name = "CreateUser"
        operation.input = CreateUserRequest
        operation.output = CreateUserResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/user", "code" => 200}}
      end)
      service.add_operation(:delete_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = DeleteDatasetRequest
        operation.output = DeleteDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/datasetsv2/{datasetId}", "code" => 200}}
      end)
      service.add_operation(:delete_permission_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#DeletePermissionGroup"
        operation.name = "DeletePermissionGroup"
        operation.input = DeletePermissionGroupRequest
        operation.output = DeletePermissionGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/permission-group/{permissionGroupId}", "code" => 200}}
      end)
      service.add_operation(:disable_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#DisableUser"
        operation.name = "DisableUser"
        operation.input = DisableUserRequest
        operation.output = DisableUserResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/user/{userId}/disable", "code" => 200}}
      end)
      service.add_operation(:disassociate_user_from_permission_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#DisassociateUserFromPermissionGroup"
        operation.name = "DisassociateUserFromPermissionGroup"
        operation.input = DisassociateUserFromPermissionGroupRequest
        operation.output = DisassociateUserFromPermissionGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/permission-group/{permissionGroupId}/users/{userId}", "code" => 200}}
      end)
      service.add_operation(:enable_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#EnableUser"
        operation.name = "EnableUser"
        operation.input = EnableUserRequest
        operation.output = EnableUserResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/user/{userId}/enable", "code" => 200}}
      end)
      service.add_operation(:get_changeset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetChangeset"
        operation.name = "GetChangeset"
        operation.input = GetChangesetRequest
        operation.output = GetChangesetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetId}/changesetsv2/{changesetId}", "code" => 200}}
      end)
      service.add_operation(:get_data_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetDataView"
        operation.name = "GetDataView"
        operation.input = GetDataViewRequest
        operation.output = GetDataViewResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetId}/dataviewsv2/{dataViewId}", "code" => 200}}
      end)
      service.add_operation(:get_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetDataset"
        operation.name = "GetDataset"
        operation.input = GetDatasetRequest
        operation.output = GetDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasetsv2/{datasetId}", "code" => 200}}
      end)
      service.add_operation(:get_external_data_view_access_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetExternalDataViewAccessDetails"
        operation.name = "GetExternalDataViewAccessDetails"
        operation.input = GetExternalDataViewAccessDetailsRequest
        operation.output = GetExternalDataViewAccessDetailsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/datasets/{datasetId}/dataviewsv2/{dataViewId}/external-access-details", "code" => 200}}
      end)
      service.add_operation(:get_permission_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetPermissionGroup"
        operation.name = "GetPermissionGroup"
        operation.input = GetPermissionGroupRequest
        operation.output = GetPermissionGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/permission-group/{permissionGroupId}", "code" => 200}}
      end)
      service.add_operation(:get_programmatic_access_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetProgrammaticAccessCredentials"
        operation.name = "GetProgrammaticAccessCredentials"
        operation.input = GetProgrammaticAccessCredentialsRequest
        operation.output = GetProgrammaticAccessCredentialsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/credentials/programmatic", "code" => 200}}
      end)
      service.add_operation(:get_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetUser"
        operation.name = "GetUser"
        operation.input = GetUserRequest
        operation.output = GetUserResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/user/{userId}", "code" => 200}}
      end)
      service.add_operation(:get_working_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#GetWorkingLocation"
        operation.name = "GetWorkingLocation"
        operation.input = GetWorkingLocationRequest
        operation.output = GetWorkingLocationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workingLocationV1", "code" => 200}}
      end)
      service.add_operation(:list_changesets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ListChangesets"
        operation.name = "ListChangesets"
        operation.input = ListChangesetsRequest
        operation.output = ListChangesetsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetId}/changesetsv2", "code" => 200}}
        operation[:paginator] = Paginators::ListChangesets.new
      end)
      service.add_operation(:list_data_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ListDataViews"
        operation.name = "ListDataViews"
        operation.input = ListDataViewsRequest
        operation.output = ListDataViewsResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetId}/dataviewsv2", "code" => 200}}
        operation[:paginator] = Paginators::ListDataViews.new
      end)
      service.add_operation(:list_datasets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = ListDatasetsRequest
        operation.output = ListDatasetsResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasetsv2", "code" => 200}}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_permission_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ListPermissionGroups"
        operation.name = "ListPermissionGroups"
        operation.input = ListPermissionGroupsRequest
        operation.output = ListPermissionGroupsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/permission-group", "code" => 200}}
        operation[:paginator] = Paginators::ListPermissionGroups.new
      end)
      service.add_operation(:list_permission_groups_by_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ListPermissionGroupsByUser"
        operation.name = "ListPermissionGroupsByUser"
        operation.input = ListPermissionGroupsByUserRequest
        operation.output = ListPermissionGroupsByUserResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/user/{userId}/permission-groups", "code" => 200}}
      end)
      service.add_operation(:list_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ListUsers"
        operation.name = "ListUsers"
        operation.input = ListUsersRequest
        operation.output = ListUsersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/user", "code" => 200}}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:list_users_by_permission_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ListUsersByPermissionGroup"
        operation.name = "ListUsersByPermissionGroup"
        operation.input = ListUsersByPermissionGroupRequest
        operation.output = ListUsersByPermissionGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "GET", "uri" => "/permission-group/{permissionGroupId}/users", "code" => 200}}
      end)
      service.add_operation(:reset_user_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#ResetUserPassword"
        operation.name = "ResetUserPassword"
        operation.input = ResetUserPasswordRequest
        operation.output = ResetUserPasswordResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "POST", "uri" => "/user/{userId}/password", "code" => 200}}
      end)
      service.add_operation(:update_changeset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#UpdateChangeset"
        operation.name = "UpdateChangeset"
        operation.input = UpdateChangesetRequest
        operation.output = UpdateChangesetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/datasets/{datasetId}/changesetsv2/{changesetId}", "code" => 200}}
      end)
      service.add_operation(:update_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#UpdateDataset"
        operation.name = "UpdateDataset"
        operation.input = UpdateDatasetRequest
        operation.output = UpdateDatasetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/datasetsv2/{datasetId}", "code" => 200}}
      end)
      service.add_operation(:update_permission_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#UpdatePermissionGroup"
        operation.name = "UpdatePermissionGroup"
        operation.input = UpdatePermissionGroupRequest
        operation.output = UpdatePermissionGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/permission-group/{permissionGroupId}", "code" => 200}}
      end)
      service.add_operation(:update_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.finspacedata#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = UpdateUserRequest
        operation.output = UpdateUserResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This method will be discontinued."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/user/{userId}", "code" => 200}}
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
