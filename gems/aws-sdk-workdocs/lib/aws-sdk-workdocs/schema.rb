# frozen_string_literal: true

# This is generated code!

module Aws::WorkDocs
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AbortDocumentVersionUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#AbortDocumentVersionUploadRequest', name: 'AbortDocumentVersionUploadRequest')
    ActivateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#ActivateUserRequest', name: 'ActivateUserRequest')
    ActivateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#ActivateUserResponse', name: 'ActivateUserResponse')
    Activity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#Activity', name: 'Activity')
    ActivityNamesFilterType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#ActivityNamesFilterType', name: 'ActivityNamesFilterType', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\w,]+$"})
    ActivityType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#ActivityType', name: 'ActivityType')
    AddResourcePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#AddResourcePermissionsRequest', name: 'AddResourcePermissionsRequest')
    AddResourcePermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#AddResourcePermissionsResponse', name: 'AddResourcePermissionsResponse')
    AdditionalResponseFieldType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#AdditionalResponseFieldType', name: 'AdditionalResponseFieldType')
    AdditionalResponseFieldsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#AdditionalResponseFieldsList', name: 'AdditionalResponseFieldsList')
    AuthenticationHeaderType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#AuthenticationHeaderType', name: 'AuthenticationHeaderType', traits: {"smithy.api#length" => {"min" => 1, "max" => 8199}, "smithy.api#sensitive" => {}})
    BooleanEnumType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#BooleanEnumType', name: 'BooleanEnumType')
    BooleanType = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.workdocs#BooleanType', name: 'BooleanType', traits: {"smithy.api#default" => false})
    Comment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#Comment', name: 'Comment')
    CommentIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#CommentIdType', name: 'CommentIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+-.@]+$"})
    CommentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#CommentList', name: 'CommentList')
    CommentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#CommentMetadata', name: 'CommentMetadata')
    CommentStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#CommentStatusType', name: 'CommentStatusType')
    CommentTextType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#CommentTextType', name: 'CommentTextType', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    CommentVisibilityType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#CommentVisibilityType', name: 'CommentVisibilityType')
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictingOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#ConflictingOperationException', name: 'ConflictingOperationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentCategoryType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#ContentCategoryType', name: 'ContentCategoryType')
    CreateCommentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#CreateCommentRequest', name: 'CreateCommentRequest')
    CreateCommentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#CreateCommentResponse', name: 'CreateCommentResponse')
    CreateCustomMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#CreateCustomMetadataRequest', name: 'CreateCustomMetadataRequest')
    CreateCustomMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#CreateCustomMetadataResponse', name: 'CreateCustomMetadataResponse')
    CreateFolderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#CreateFolderRequest', name: 'CreateFolderRequest')
    CreateFolderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#CreateFolderResponse', name: 'CreateFolderResponse')
    CreateLabelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#CreateLabelsRequest', name: 'CreateLabelsRequest')
    CreateLabelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#CreateLabelsResponse', name: 'CreateLabelsResponse')
    CreateNotificationSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#CreateNotificationSubscriptionRequest', name: 'CreateNotificationSubscriptionRequest')
    CreateNotificationSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#CreateNotificationSubscriptionResponse', name: 'CreateNotificationSubscriptionResponse')
    CreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#CreateUserRequest', name: 'CreateUserRequest')
    CreateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#CreateUserResponse', name: 'CreateUserResponse')
    CustomMetadataKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#CustomMetadataKeyList', name: 'CustomMetadataKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 8}})
    CustomMetadataKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#CustomMetadataKeyType', name: 'CustomMetadataKeyType', traits: {"smithy.api#length" => {"min" => 1, "max" => 56}, "smithy.api#pattern" => "^[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*$"})
    CustomMetadataLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#CustomMetadataLimitExceededException', name: 'CustomMetadataLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    CustomMetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.workdocs#CustomMetadataMap', name: 'CustomMetadataMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    CustomMetadataValueType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#CustomMetadataValueType', name: 'CustomMetadataValueType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*$"})
    DateRangeType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DateRangeType', name: 'DateRangeType')
    DeactivateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DeactivateUserRequest', name: 'DeactivateUserRequest')
    DeactivatingLastSystemUserException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DeactivatingLastSystemUserException', name: 'DeactivatingLastSystemUserException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DeleteCommentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DeleteCommentRequest', name: 'DeleteCommentRequest')
    DeleteCustomMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DeleteCustomMetadataRequest', name: 'DeleteCustomMetadataRequest')
    DeleteCustomMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DeleteCustomMetadataResponse', name: 'DeleteCustomMetadataResponse')
    DeleteDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DeleteDocumentRequest', name: 'DeleteDocumentRequest')
    DeleteDocumentVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DeleteDocumentVersionRequest', name: 'DeleteDocumentVersionRequest')
    DeleteFolderContentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DeleteFolderContentsRequest', name: 'DeleteFolderContentsRequest')
    DeleteFolderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DeleteFolderRequest', name: 'DeleteFolderRequest')
    DeleteLabelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DeleteLabelsRequest', name: 'DeleteLabelsRequest')
    DeleteLabelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DeleteLabelsResponse', name: 'DeleteLabelsResponse')
    DeleteNotificationSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DeleteNotificationSubscriptionRequest', name: 'DeleteNotificationSubscriptionRequest')
    DeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DeleteUserRequest', name: 'DeleteUserRequest')
    DescribeActivitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeActivitiesRequest', name: 'DescribeActivitiesRequest')
    DescribeActivitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeActivitiesResponse', name: 'DescribeActivitiesResponse')
    DescribeCommentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeCommentsRequest', name: 'DescribeCommentsRequest')
    DescribeCommentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeCommentsResponse', name: 'DescribeCommentsResponse')
    DescribeDocumentVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeDocumentVersionsRequest', name: 'DescribeDocumentVersionsRequest')
    DescribeDocumentVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeDocumentVersionsResponse', name: 'DescribeDocumentVersionsResponse')
    DescribeFolderContentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeFolderContentsRequest', name: 'DescribeFolderContentsRequest')
    DescribeFolderContentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeFolderContentsResponse', name: 'DescribeFolderContentsResponse')
    DescribeGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeGroupsRequest', name: 'DescribeGroupsRequest')
    DescribeGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeGroupsResponse', name: 'DescribeGroupsResponse')
    DescribeNotificationSubscriptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeNotificationSubscriptionsRequest', name: 'DescribeNotificationSubscriptionsRequest')
    DescribeNotificationSubscriptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeNotificationSubscriptionsResponse', name: 'DescribeNotificationSubscriptionsResponse')
    DescribeResourcePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeResourcePermissionsRequest', name: 'DescribeResourcePermissionsRequest')
    DescribeResourcePermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeResourcePermissionsResponse', name: 'DescribeResourcePermissionsResponse')
    DescribeRootFoldersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeRootFoldersRequest', name: 'DescribeRootFoldersRequest')
    DescribeRootFoldersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeRootFoldersResponse', name: 'DescribeRootFoldersResponse')
    DescribeUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeUsersRequest', name: 'DescribeUsersRequest')
    DescribeUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DescribeUsersResponse', name: 'DescribeUsersResponse')
    DocumentContentType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#DocumentContentType', name: 'DocumentContentType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DocumentLockedForCommentsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DocumentLockedForCommentsException', name: 'DocumentLockedForCommentsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DocumentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DocumentMetadata', name: 'DocumentMetadata')
    DocumentMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#DocumentMetadataList', name: 'DocumentMetadataList')
    DocumentSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#DocumentSourceType', name: 'DocumentSourceType')
    DocumentSourceUrlMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.workdocs#DocumentSourceUrlMap', name: 'DocumentSourceUrlMap')
    DocumentStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#DocumentStatusType', name: 'DocumentStatusType')
    DocumentThumbnailType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#DocumentThumbnailType', name: 'DocumentThumbnailType')
    DocumentThumbnailUrlMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.workdocs#DocumentThumbnailUrlMap', name: 'DocumentThumbnailUrlMap')
    DocumentVersionIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#DocumentVersionIdType', name: 'DocumentVersionIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+-.@]+$"})
    DocumentVersionMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DocumentVersionMetadata', name: 'DocumentVersionMetadata')
    DocumentVersionMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#DocumentVersionMetadataList', name: 'DocumentVersionMetadataList')
    DocumentVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#DocumentVersionStatus', name: 'DocumentVersionStatus')
    DraftUploadOutOfSyncException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#DraftUploadOutOfSyncException', name: 'DraftUploadOutOfSyncException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EmailAddressType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#EmailAddressType', name: 'EmailAddressType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$", "smithy.api#sensitive" => {}})
    EntityAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#EntityAlreadyExistsException', name: 'EntityAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EntityIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#EntityIdList', name: 'EntityIdList')
    EntityNotExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#EntityNotExistsException', name: 'EntityNotExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ErrorMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#ErrorMessageType', name: 'ErrorMessageType')
    ExceptionCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#ExceptionCodeType', name: 'ExceptionCodeType')
    FailedDependencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#FailedDependencyException', name: 'FailedDependencyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    FieldNamesType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#FieldNamesType', name: 'FieldNamesType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w,]+$"})
    Filters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#Filters', name: 'Filters')
    FolderContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#FolderContentType', name: 'FolderContentType')
    FolderMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#FolderMetadata', name: 'FolderMetadata')
    FolderMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#FolderMetadataList', name: 'FolderMetadataList')
    GetCurrentUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GetCurrentUserRequest', name: 'GetCurrentUserRequest')
    GetCurrentUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GetCurrentUserResponse', name: 'GetCurrentUserResponse')
    GetDocumentPathRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GetDocumentPathRequest', name: 'GetDocumentPathRequest')
    GetDocumentPathResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GetDocumentPathResponse', name: 'GetDocumentPathResponse')
    GetDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GetDocumentRequest', name: 'GetDocumentRequest')
    GetDocumentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GetDocumentResponse', name: 'GetDocumentResponse')
    GetDocumentVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GetDocumentVersionRequest', name: 'GetDocumentVersionRequest')
    GetDocumentVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GetDocumentVersionResponse', name: 'GetDocumentVersionResponse')
    GetFolderPathRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GetFolderPathRequest', name: 'GetFolderPathRequest')
    GetFolderPathResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GetFolderPathResponse', name: 'GetFolderPathResponse')
    GetFolderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GetFolderRequest', name: 'GetFolderRequest')
    GetFolderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GetFolderResponse', name: 'GetFolderResponse')
    GetResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GetResourcesRequest', name: 'GetResourcesRequest')
    GetResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GetResourcesResponse', name: 'GetResourcesResponse')
    GroupMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#GroupMetadata', name: 'GroupMetadata')
    GroupMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#GroupMetadataList', name: 'GroupMetadataList')
    GroupNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#GroupNameType', name: 'GroupNameType')
    HashType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#HashType', name: 'HashType', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[&\\w+-.@]+$"})
    HeaderNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#HeaderNameType', name: 'HeaderNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w-]+$"})
    HeaderValueType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#HeaderValueType', name: 'HeaderValueType', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    IdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#IdType', name: 'IdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[&\\w+-.@]+$"})
    IllegalUserStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#IllegalUserStateException', name: 'IllegalUserStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InitiateDocumentVersionUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#InitiateDocumentVersionUploadRequest', name: 'InitiateDocumentVersionUploadRequest')
    InitiateDocumentVersionUploadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#InitiateDocumentVersionUploadResponse', name: 'InitiateDocumentVersionUploadResponse')
    InvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#InvalidArgumentException', name: 'InvalidArgumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCommentOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#InvalidCommentOperationException', name: 'InvalidCommentOperationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InvalidOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#InvalidOperationException', name: 'InvalidOperationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    InvalidPasswordException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#InvalidPasswordException', name: 'InvalidPasswordException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    LanguageCodeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#LanguageCodeType', name: 'LanguageCodeType')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    LimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workdocs#LimitType', name: 'LimitType', traits: {"smithy.api#range" => {"min" => 1, "max" => 999}})
    LocaleType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#LocaleType', name: 'LocaleType')
    LongRangeType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#LongRangeType', name: 'LongRangeType')
    LongType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workdocs#LongType', name: 'LongType')
    MarkerType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#MarkerType', name: 'MarkerType', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\u0000-\\u00FF]+$"})
    MessageType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#MessageType', name: 'MessageType', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#sensitive" => {}})
    NextMarkerType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#NextMarkerType', name: 'NextMarkerType', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\d]+$"})
    NotificationOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#NotificationOptions', name: 'NotificationOptions')
    OrderByFieldType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#OrderByFieldType', name: 'OrderByFieldType')
    OrderType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#OrderType', name: 'OrderType')
    OrganizationUserList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#OrganizationUserList', name: 'OrganizationUserList')
    PageMarkerType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#PageMarkerType', name: 'PageMarkerType', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Participants = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#Participants', name: 'Participants')
    PasswordType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#PasswordType', name: 'PasswordType', traits: {"smithy.api#length" => {"min" => 4, "max" => 32}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$", "smithy.api#sensitive" => {}})
    PermissionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#PermissionInfo', name: 'PermissionInfo')
    PermissionInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#PermissionInfoList', name: 'PermissionInfoList')
    PositiveIntegerType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workdocs#PositiveIntegerType', name: 'PositiveIntegerType', traits: {"smithy.api#range" => {"min" => 1}})
    PositiveSizeType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workdocs#PositiveSizeType', name: 'PositiveSizeType', traits: {"smithy.api#range" => {"min" => 0}})
    Principal = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#Principal', name: 'Principal')
    PrincipalList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#PrincipalList', name: 'PrincipalList')
    PrincipalRoleType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#PrincipalRoleType', name: 'PrincipalRoleType')
    PrincipalType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#PrincipalType', name: 'PrincipalType')
    ProhibitedStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#ProhibitedStateException', name: 'ProhibitedStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    RemoveAllResourcePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#RemoveAllResourcePermissionsRequest', name: 'RemoveAllResourcePermissionsRequest')
    RemoveResourcePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#RemoveResourcePermissionRequest', name: 'RemoveResourcePermissionRequest')
    RequestedEntityTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#RequestedEntityTooLargeException', name: 'RequestedEntityTooLargeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    ResourceAlreadyCheckedOutException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#ResourceAlreadyCheckedOutException', name: 'ResourceAlreadyCheckedOutException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceCollectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#ResourceCollectionType', name: 'ResourceCollectionType')
    ResourceIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#ResourceIdType', name: 'ResourceIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+-.@]+$"})
    ResourceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#ResourceMetadata', name: 'ResourceMetadata')
    ResourceNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#ResourceNameType', name: 'ResourceNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\u202D\\u202F-\\uFFFF]+$", "smithy.api#sensitive" => {}})
    ResourcePath = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#ResourcePath', name: 'ResourcePath')
    ResourcePathComponent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#ResourcePathComponent', name: 'ResourcePathComponent')
    ResourcePathComponentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#ResourcePathComponentList', name: 'ResourcePathComponentList')
    ResourceSortType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#ResourceSortType', name: 'ResourceSortType')
    ResourceStateType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#ResourceStateType', name: 'ResourceStateType')
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#ResourceType', name: 'ResourceType')
    ResponseItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#ResponseItem', name: 'ResponseItem')
    ResponseItemType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#ResponseItemType', name: 'ResponseItemType')
    ResponseItemWebUrl = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#ResponseItemWebUrl', name: 'ResponseItemWebUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\u0020-\\uFFFF]+$", "smithy.api#sensitive" => {}})
    ResponseItemsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#ResponseItemsList', name: 'ResponseItemsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    RestoreDocumentVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#RestoreDocumentVersionsRequest', name: 'RestoreDocumentVersionsRequest')
    RolePermissionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#RolePermissionType', name: 'RolePermissionType')
    RoleType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#RoleType', name: 'RoleType')
    SearchAncestorId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#SearchAncestorId', name: 'SearchAncestorId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    SearchAncestorIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#SearchAncestorIdList', name: 'SearchAncestorIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SearchCollectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#SearchCollectionType', name: 'SearchCollectionType')
    SearchCollectionTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#SearchCollectionTypeList', name: 'SearchCollectionTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    SearchContentCategoryTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#SearchContentCategoryTypeList', name: 'SearchContentCategoryTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 9}})
    SearchLabel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#SearchLabel', name: 'SearchLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    SearchLabelList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#SearchLabelList', name: 'SearchLabelList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SearchMarkerType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#SearchMarkerType', name: 'SearchMarkerType', traits: {"smithy.api#length" => {"min" => 1, "max" => 12288}, "smithy.api#pattern" => "^[\\u0000-\\u00FF]+$"})
    SearchPrincipalRoleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#SearchPrincipalRoleList', name: 'SearchPrincipalRoleList', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    SearchPrincipalType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#SearchPrincipalType', name: 'SearchPrincipalType')
    SearchPrincipalTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#SearchPrincipalTypeList', name: 'SearchPrincipalTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SearchQueryScopeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#SearchQueryScopeType', name: 'SearchQueryScopeType')
    SearchQueryScopeTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#SearchQueryScopeTypeList', name: 'SearchQueryScopeTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    SearchQueryType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#SearchQueryType', name: 'SearchQueryType', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\u0020-\\uFFFF]+$", "smithy.api#sensitive" => {}})
    SearchResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#SearchResourceType', name: 'SearchResourceType')
    SearchResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#SearchResourceTypeList', name: 'SearchResourceTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    SearchResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#SearchResourcesRequest', name: 'SearchResourcesRequest')
    SearchResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#SearchResourcesResponse', name: 'SearchResourcesResponse')
    SearchResultSortList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#SearchResultSortList', name: 'SearchResultSortList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    SearchResultsLimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workdocs#SearchResultsLimitType', name: 'SearchResultsLimitType', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    SearchSortResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#SearchSortResult', name: 'SearchSortResult')
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SharePrincipal = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#SharePrincipal', name: 'SharePrincipal')
    SharePrincipalList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#SharePrincipalList', name: 'SharePrincipalList')
    ShareResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#ShareResult', name: 'ShareResult')
    ShareResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#ShareResultsList', name: 'ShareResultsList')
    ShareStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#ShareStatusType', name: 'ShareStatusType')
    SharedLabel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#SharedLabel', name: 'SharedLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*$"})
    SharedLabels = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#SharedLabels', name: 'SharedLabels', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    SignedHeaderMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.workdocs#SignedHeaderMap', name: 'SignedHeaderMap')
    SizeType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workdocs#SizeType', name: 'SizeType')
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#SortOrder', name: 'SortOrder')
    StorageLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#StorageLimitExceededException', name: 'StorageLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    StorageLimitWillExceedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#StorageLimitWillExceedException', name: 'StorageLimitWillExceedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    StorageRuleType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#StorageRuleType', name: 'StorageRuleType')
    StorageType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#StorageType', name: 'StorageType')
    Subscription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#Subscription', name: 'Subscription')
    SubscriptionEndPointType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#SubscriptionEndPointType', name: 'SubscriptionEndPointType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#SubscriptionList', name: 'SubscriptionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    SubscriptionProtocolType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#SubscriptionProtocolType', name: 'SubscriptionProtocolType')
    SubscriptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#SubscriptionType', name: 'SubscriptionType')
    TextLocaleTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#TextLocaleTypeList', name: 'TextLocaleTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    TimeZoneIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#TimeZoneIdType', name: 'TimeZoneIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    TimestampType = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.workdocs#TimestampType', name: 'TimestampType')
    TooManyLabelsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#TooManyLabelsException', name: 'TooManyLabelsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TooManySubscriptionsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#TooManySubscriptionsException', name: 'TooManySubscriptionsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnauthorizedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#UnauthorizedOperationException', name: 'UnauthorizedOperationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    UnauthorizedResourceAccessException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#UnauthorizedResourceAccessException', name: 'UnauthorizedResourceAccessException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UpdateDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#UpdateDocumentRequest', name: 'UpdateDocumentRequest')
    UpdateDocumentVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#UpdateDocumentVersionRequest', name: 'UpdateDocumentVersionRequest')
    UpdateFolderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#UpdateFolderRequest', name: 'UpdateFolderRequest')
    UpdateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#UpdateUserRequest', name: 'UpdateUserRequest')
    UpdateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#UpdateUserResponse', name: 'UpdateUserResponse')
    UploadMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#UploadMetadata', name: 'UploadMetadata')
    UrlType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#UrlType', name: 'UrlType', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#User', name: 'User')
    UserActivities = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#UserActivities', name: 'UserActivities')
    UserAttributeValueType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#UserAttributeValueType', name: 'UserAttributeValueType', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    UserFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#UserFilterType', name: 'UserFilterType')
    UserIdsType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#UserIdsType', name: 'UserIdsType', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^[&\\w+-.@, ]+$"})
    UserMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#UserMetadata', name: 'UserMetadata')
    UserMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workdocs#UserMetadataList', name: 'UserMetadataList')
    UserSortType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#UserSortType', name: 'UserSortType')
    UserStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#UserStatusType', name: 'UserStatusType')
    UserStorageMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workdocs#UserStorageMetadata', name: 'UserStorageMetadata')
    UserType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workdocs#UserType', name: 'UserType')
    UsernameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workdocs#UsernameType', name: 'UsernameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?$", "smithy.api#sensitive" => {}})

    AbortDocumentVersionUploadRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    AbortDocumentVersionUploadRequest.add_member(:document_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'DocumentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortDocumentVersionUploadRequest.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionIdType, location_name: 'VersionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortDocumentVersionUploadRequest.type = Types::AbortDocumentVersionUploadRequest
    ActivateUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'UserId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ActivateUserRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    ActivateUserRequest.type = Types::ActivateUserRequest
    ActivateUserResponse.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'User'))
    ActivateUserResponse.type = Types::ActivateUserResponse
    Activity.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityType, location_name: 'Type'))
    Activity.add_member(:time_stamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'TimeStamp'))
    Activity.add_member(:is_indirect_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'IsIndirectActivity', traits: {"smithy.api#default" => false}))
    Activity.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'OrganizationId'))
    Activity.add_member(:initiator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserMetadata, location_name: 'Initiator'))
    Activity.add_member(:participants, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Participants, location_name: 'Participants'))
    Activity.add_member(:resource_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceMetadata, location_name: 'ResourceMetadata'))
    Activity.add_member(:original_parent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceMetadata, location_name: 'OriginalParent'))
    Activity.add_member(:comment_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentMetadata, location_name: 'CommentMetadata'))
    Activity.type = Types::Activity
    ActivityType.add_member(:document_checked_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_CHECKED_IN', traits: {"smithy.api#enumValue" => "DOCUMENT_CHECKED_IN"}))
    ActivityType.add_member(:document_checked_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_CHECKED_OUT', traits: {"smithy.api#enumValue" => "DOCUMENT_CHECKED_OUT"}))
    ActivityType.add_member(:document_renamed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_RENAMED', traits: {"smithy.api#enumValue" => "DOCUMENT_RENAMED"}))
    ActivityType.add_member(:document_version_uploaded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_VERSION_UPLOADED', traits: {"smithy.api#enumValue" => "DOCUMENT_VERSION_UPLOADED"}))
    ActivityType.add_member(:document_version_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_VERSION_DELETED', traits: {"smithy.api#enumValue" => "DOCUMENT_VERSION_DELETED"}))
    ActivityType.add_member(:document_version_viewed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_VERSION_VIEWED', traits: {"smithy.api#enumValue" => "DOCUMENT_VERSION_VIEWED"}))
    ActivityType.add_member(:document_version_downloaded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_VERSION_DOWNLOADED', traits: {"smithy.api#enumValue" => "DOCUMENT_VERSION_DOWNLOADED"}))
    ActivityType.add_member(:document_recycled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_RECYCLED', traits: {"smithy.api#enumValue" => "DOCUMENT_RECYCLED"}))
    ActivityType.add_member(:document_restored, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_RESTORED', traits: {"smithy.api#enumValue" => "DOCUMENT_RESTORED"}))
    ActivityType.add_member(:document_reverted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_REVERTED', traits: {"smithy.api#enumValue" => "DOCUMENT_REVERTED"}))
    ActivityType.add_member(:document_shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_SHARED', traits: {"smithy.api#enumValue" => "DOCUMENT_SHARED"}))
    ActivityType.add_member(:document_unshared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_UNSHARED', traits: {"smithy.api#enumValue" => "DOCUMENT_UNSHARED"}))
    ActivityType.add_member(:document_share_permission_changed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_SHARE_PERMISSION_CHANGED', traits: {"smithy.api#enumValue" => "DOCUMENT_SHARE_PERMISSION_CHANGED"}))
    ActivityType.add_member(:document_shareable_link_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_SHAREABLE_LINK_CREATED', traits: {"smithy.api#enumValue" => "DOCUMENT_SHAREABLE_LINK_CREATED"}))
    ActivityType.add_member(:document_shareable_link_removed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_SHAREABLE_LINK_REMOVED', traits: {"smithy.api#enumValue" => "DOCUMENT_SHAREABLE_LINK_REMOVED"}))
    ActivityType.add_member(:document_shareable_link_permission_changed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED', traits: {"smithy.api#enumValue" => "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED"}))
    ActivityType.add_member(:document_moved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_MOVED', traits: {"smithy.api#enumValue" => "DOCUMENT_MOVED"}))
    ActivityType.add_member(:document_comment_added, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_COMMENT_ADDED', traits: {"smithy.api#enumValue" => "DOCUMENT_COMMENT_ADDED"}))
    ActivityType.add_member(:document_comment_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_COMMENT_DELETED', traits: {"smithy.api#enumValue" => "DOCUMENT_COMMENT_DELETED"}))
    ActivityType.add_member(:document_annotation_added, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_ANNOTATION_ADDED', traits: {"smithy.api#enumValue" => "DOCUMENT_ANNOTATION_ADDED"}))
    ActivityType.add_member(:document_annotation_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_ANNOTATION_DELETED', traits: {"smithy.api#enumValue" => "DOCUMENT_ANNOTATION_DELETED"}))
    ActivityType.add_member(:folder_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER_CREATED', traits: {"smithy.api#enumValue" => "FOLDER_CREATED"}))
    ActivityType.add_member(:folder_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER_DELETED', traits: {"smithy.api#enumValue" => "FOLDER_DELETED"}))
    ActivityType.add_member(:folder_renamed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER_RENAMED', traits: {"smithy.api#enumValue" => "FOLDER_RENAMED"}))
    ActivityType.add_member(:folder_recycled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER_RECYCLED', traits: {"smithy.api#enumValue" => "FOLDER_RECYCLED"}))
    ActivityType.add_member(:folder_restored, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER_RESTORED', traits: {"smithy.api#enumValue" => "FOLDER_RESTORED"}))
    ActivityType.add_member(:folder_shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER_SHARED', traits: {"smithy.api#enumValue" => "FOLDER_SHARED"}))
    ActivityType.add_member(:folder_unshared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER_UNSHARED', traits: {"smithy.api#enumValue" => "FOLDER_UNSHARED"}))
    ActivityType.add_member(:folder_share_permission_changed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER_SHARE_PERMISSION_CHANGED', traits: {"smithy.api#enumValue" => "FOLDER_SHARE_PERMISSION_CHANGED"}))
    ActivityType.add_member(:folder_shareable_link_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER_SHAREABLE_LINK_CREATED', traits: {"smithy.api#enumValue" => "FOLDER_SHAREABLE_LINK_CREATED"}))
    ActivityType.add_member(:folder_shareable_link_removed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER_SHAREABLE_LINK_REMOVED', traits: {"smithy.api#enumValue" => "FOLDER_SHAREABLE_LINK_REMOVED"}))
    ActivityType.add_member(:folder_shareable_link_permission_changed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED', traits: {"smithy.api#enumValue" => "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED"}))
    ActivityType.add_member(:folder_moved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER_MOVED', traits: {"smithy.api#enumValue" => "FOLDER_MOVED"}))
    AddResourcePermissionsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    AddResourcePermissionsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddResourcePermissionsRequest.add_member(:principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharePrincipalList, location_name: 'Principals', traits: {"smithy.api#required" => {}}))
    AddResourcePermissionsRequest.add_member(:notification_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationOptions, location_name: 'NotificationOptions'))
    AddResourcePermissionsRequest.type = Types::AddResourcePermissionsRequest
    AddResourcePermissionsResponse.add_member(:share_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareResultsList, location_name: 'ShareResults'))
    AddResourcePermissionsResponse.type = Types::AddResourcePermissionsResponse
    AdditionalResponseFieldType.add_member(:weburl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEBURL', traits: {"smithy.api#enumValue" => "WEBURL"}))
    AdditionalResponseFieldsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalResponseFieldType)
    BooleanEnumType.add_member(:true, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUE', traits: {"smithy.api#enumValue" => "TRUE"}))
    BooleanEnumType.add_member(:false, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE', traits: {"smithy.api#enumValue" => "FALSE"}))
    Comment.add_member(:comment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentIdType, location_name: 'CommentId', traits: {"smithy.api#required" => {}}))
    Comment.add_member(:parent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentIdType, location_name: 'ParentId'))
    Comment.add_member(:thread_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentIdType, location_name: 'ThreadId'))
    Comment.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentTextType, location_name: 'Text'))
    Comment.add_member(:contributor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'Contributor'))
    Comment.add_member(:created_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'CreatedTimestamp'))
    Comment.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentStatusType, location_name: 'Status'))
    Comment.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentVisibilityType, location_name: 'Visibility'))
    Comment.add_member(:recipient_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'RecipientId'))
    Comment.type = Types::Comment
    CommentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Comment)
    CommentMetadata.add_member(:comment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentIdType, location_name: 'CommentId'))
    CommentMetadata.add_member(:contributor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'Contributor'))
    CommentMetadata.add_member(:created_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'CreatedTimestamp'))
    CommentMetadata.add_member(:comment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentStatusType, location_name: 'CommentStatus'))
    CommentMetadata.add_member(:recipient_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'RecipientId'))
    CommentMetadata.add_member(:contributor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'ContributorId'))
    CommentMetadata.type = Types::CommentMetadata
    CommentStatusType.add_member(:draft, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DRAFT', traits: {"smithy.api#enumValue" => "DRAFT"}))
    CommentStatusType.add_member(:published, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLISHED', traits: {"smithy.api#enumValue" => "PUBLISHED"}))
    CommentStatusType.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    CommentVisibilityType.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC', traits: {"smithy.api#enumValue" => "PUBLIC"}))
    CommentVisibilityType.add_member(:private, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "PRIVATE"}))
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictingOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    ConflictingOperationException.type = Types::ConflictingOperationException
    ContentCategoryType.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMAGE', traits: {"smithy.api#enumValue" => "IMAGE"}))
    ContentCategoryType.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT', traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    ContentCategoryType.add_member(:pdf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PDF', traits: {"smithy.api#enumValue" => "PDF"}))
    ContentCategoryType.add_member(:spreadsheet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPREADSHEET', traits: {"smithy.api#enumValue" => "SPREADSHEET"}))
    ContentCategoryType.add_member(:presentation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRESENTATION', traits: {"smithy.api#enumValue" => "PRESENTATION"}))
    ContentCategoryType.add_member(:audio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUDIO', traits: {"smithy.api#enumValue" => "AUDIO"}))
    ContentCategoryType.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIDEO', traits: {"smithy.api#enumValue" => "VIDEO"}))
    ContentCategoryType.add_member(:source_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_CODE', traits: {"smithy.api#enumValue" => "SOURCE_CODE"}))
    ContentCategoryType.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    CreateCommentRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    CreateCommentRequest.add_member(:document_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'DocumentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCommentRequest.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionIdType, location_name: 'VersionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCommentRequest.add_member(:parent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentIdType, location_name: 'ParentId'))
    CreateCommentRequest.add_member(:thread_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentIdType, location_name: 'ThreadId'))
    CreateCommentRequest.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentTextType, location_name: 'Text', traits: {"smithy.api#required" => {}}))
    CreateCommentRequest.add_member(:visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentVisibilityType, location_name: 'Visibility'))
    CreateCommentRequest.add_member(:notify_collaborators, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'NotifyCollaborators', traits: {"smithy.api#default" => false}))
    CreateCommentRequest.type = Types::CreateCommentRequest
    CreateCommentResponse.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Comment, location_name: 'Comment'))
    CreateCommentResponse.type = Types::CreateCommentResponse
    CreateCustomMetadataRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    CreateCustomMetadataRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCustomMetadataRequest.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionIdType, location_name: 'VersionId', traits: {"smithy.api#httpQuery" => "versionid"}))
    CreateCustomMetadataRequest.add_member(:custom_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMetadataMap, location_name: 'CustomMetadata', traits: {"smithy.api#required" => {}}))
    CreateCustomMetadataRequest.type = Types::CreateCustomMetadataRequest
    CreateCustomMetadataResponse.type = Types::CreateCustomMetadataResponse
    CreateFolderRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    CreateFolderRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameType, location_name: 'Name'))
    CreateFolderRequest.add_member(:parent_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ParentFolderId', traits: {"smithy.api#required" => {}}))
    CreateFolderRequest.type = Types::CreateFolderRequest
    CreateFolderResponse.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FolderMetadata, location_name: 'Metadata'))
    CreateFolderResponse.type = Types::CreateFolderResponse
    CreateLabelsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLabelsRequest.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedLabels, location_name: 'Labels', traits: {"smithy.api#required" => {}}))
    CreateLabelsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    CreateLabelsRequest.type = Types::CreateLabelsRequest
    CreateLabelsResponse.type = Types::CreateLabelsResponse
    CreateNotificationSubscriptionRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'OrganizationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateNotificationSubscriptionRequest.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionEndPointType, location_name: 'Endpoint', traits: {"smithy.api#required" => {}}))
    CreateNotificationSubscriptionRequest.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProtocolType, location_name: 'Protocol', traits: {"smithy.api#required" => {}}))
    CreateNotificationSubscriptionRequest.add_member(:subscription_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionType, location_name: 'SubscriptionType', traits: {"smithy.api#required" => {}}))
    CreateNotificationSubscriptionRequest.type = Types::CreateNotificationSubscriptionRequest
    CreateNotificationSubscriptionResponse.add_member(:subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscription, location_name: 'Subscription'))
    CreateNotificationSubscriptionResponse.type = Types::CreateNotificationSubscriptionResponse
    CreateUserRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'OrganizationId'))
    CreateUserRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username', traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressType, location_name: 'EmailAddress'))
    CreateUserRequest.add_member(:given_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeValueType, location_name: 'GivenName', traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:surname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeValueType, location_name: 'Surname', traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordType, location_name: 'Password', traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:time_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeZoneIdType, location_name: 'TimeZoneId'))
    CreateUserRequest.add_member(:storage_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageRuleType, location_name: 'StorageRule'))
    CreateUserRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'User'))
    CreateUserResponse.type = Types::CreateUserResponse
    CustomMetadataKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMetadataKeyType)
    CustomMetadataLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    CustomMetadataLimitExceededException.type = Types::CustomMetadataLimitExceededException
    CustomMetadataMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMetadataKeyType)
    CustomMetadataMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMetadataValueType)
    DateRangeType.add_member(:start_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'StartValue'))
    DateRangeType.add_member(:end_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'EndValue'))
    DateRangeType.type = Types::DateRangeType
    DeactivateUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'UserId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeactivateUserRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeactivateUserRequest.type = Types::DeactivateUserRequest
    DeactivatingLastSystemUserException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    DeactivatingLastSystemUserException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionCodeType, location_name: 'Code'))
    DeactivatingLastSystemUserException.type = Types::DeactivatingLastSystemUserException
    DeleteCommentRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteCommentRequest.add_member(:document_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'DocumentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCommentRequest.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionIdType, location_name: 'VersionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCommentRequest.add_member(:comment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentIdType, location_name: 'CommentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCommentRequest.type = Types::DeleteCommentRequest
    DeleteCustomMetadataRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteCustomMetadataRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomMetadataRequest.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionIdType, location_name: 'VersionId', traits: {"smithy.api#httpQuery" => "versionId"}))
    DeleteCustomMetadataRequest.add_member(:keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMetadataKeyList, location_name: 'Keys', traits: {"smithy.api#httpQuery" => "keys"}))
    DeleteCustomMetadataRequest.add_member(:delete_all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'DeleteAll', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "deleteAll"}))
    DeleteCustomMetadataRequest.type = Types::DeleteCustomMetadataRequest
    DeleteCustomMetadataResponse.type = Types::DeleteCustomMetadataResponse
    DeleteDocumentRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteDocumentRequest.add_member(:document_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'DocumentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDocumentRequest.type = Types::DeleteDocumentRequest
    DeleteDocumentVersionRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteDocumentVersionRequest.add_member(:document_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'DocumentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDocumentVersionRequest.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionIdType, location_name: 'VersionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDocumentVersionRequest.add_member(:delete_prior_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'DeletePriorVersions', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "deletePriorVersions", "smithy.api#required" => {}}))
    DeleteDocumentVersionRequest.type = Types::DeleteDocumentVersionRequest
    DeleteFolderContentsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteFolderContentsRequest.add_member(:folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'FolderId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFolderContentsRequest.type = Types::DeleteFolderContentsRequest
    DeleteFolderRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteFolderRequest.add_member(:folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'FolderId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFolderRequest.type = Types::DeleteFolderRequest
    DeleteLabelsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLabelsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteLabelsRequest.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedLabels, location_name: 'Labels', traits: {"smithy.api#httpQuery" => "labels"}))
    DeleteLabelsRequest.add_member(:delete_all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'DeleteAll', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "deleteAll"}))
    DeleteLabelsRequest.type = Types::DeleteLabelsRequest
    DeleteLabelsResponse.type = Types::DeleteLabelsResponse
    DeleteNotificationSubscriptionRequest.add_member(:subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'SubscriptionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNotificationSubscriptionRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'OrganizationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNotificationSubscriptionRequest.type = Types::DeleteNotificationSubscriptionRequest
    DeleteUserRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'UserId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DescribeActivitiesRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DescribeActivitiesRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'StartTime', traits: {"smithy.api#httpQuery" => "startTime"}))
    DescribeActivitiesRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'EndTime', traits: {"smithy.api#httpQuery" => "endTime"}))
    DescribeActivitiesRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'OrganizationId', traits: {"smithy.api#httpQuery" => "organizationId"}))
    DescribeActivitiesRequest.add_member(:activity_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityNamesFilterType, location_name: 'ActivityTypes', traits: {"smithy.api#httpQuery" => "activityTypes"}))
    DescribeActivitiesRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'ResourceId', traits: {"smithy.api#httpQuery" => "resourceId"}))
    DescribeActivitiesRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'UserId', traits: {"smithy.api#httpQuery" => "userId"}))
    DescribeActivitiesRequest.add_member(:include_indirect_activities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'IncludeIndirectActivities', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeIndirectActivities"}))
    DescribeActivitiesRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit', traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeActivitiesRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchMarkerType, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeActivitiesRequest.type = Types::DescribeActivitiesRequest
    DescribeActivitiesResponse.add_member(:user_activities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserActivities, location_name: 'UserActivities'))
    DescribeActivitiesResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchMarkerType, location_name: 'Marker'))
    DescribeActivitiesResponse.type = Types::DescribeActivitiesResponse
    DescribeCommentsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DescribeCommentsRequest.add_member(:document_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'DocumentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCommentsRequest.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionIdType, location_name: 'VersionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCommentsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit', traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeCommentsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeCommentsRequest.type = Types::DescribeCommentsRequest
    DescribeCommentsResponse.add_member(:comments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentList, location_name: 'Comments'))
    DescribeCommentsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'Marker'))
    DescribeCommentsResponse.type = Types::DescribeCommentsResponse
    DescribeDocumentVersionsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DescribeDocumentVersionsRequest.add_member(:document_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'DocumentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDocumentVersionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeDocumentVersionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit', traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeDocumentVersionsRequest.add_member(:include, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNamesType, location_name: 'Include', traits: {"smithy.api#httpQuery" => "include"}))
    DescribeDocumentVersionsRequest.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNamesType, location_name: 'Fields', traits: {"smithy.api#httpQuery" => "fields"}))
    DescribeDocumentVersionsRequest.type = Types::DescribeDocumentVersionsRequest
    DescribeDocumentVersionsResponse.add_member(:document_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionMetadataList, location_name: 'DocumentVersions'))
    DescribeDocumentVersionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker'))
    DescribeDocumentVersionsResponse.type = Types::DescribeDocumentVersionsResponse
    DescribeFolderContentsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DescribeFolderContentsRequest.add_member(:folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'FolderId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFolderContentsRequest.add_member(:sort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSortType, location_name: 'Sort', traits: {"smithy.api#httpQuery" => "sort"}))
    DescribeFolderContentsRequest.add_member(:order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderType, location_name: 'Order', traits: {"smithy.api#httpQuery" => "order"}))
    DescribeFolderContentsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit', traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeFolderContentsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeFolderContentsRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FolderContentType, location_name: 'Type', traits: {"smithy.api#httpQuery" => "type"}))
    DescribeFolderContentsRequest.add_member(:include, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNamesType, location_name: 'Include', traits: {"smithy.api#httpQuery" => "include"}))
    DescribeFolderContentsRequest.type = Types::DescribeFolderContentsRequest
    DescribeFolderContentsResponse.add_member(:folders, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FolderMetadataList, location_name: 'Folders'))
    DescribeFolderContentsResponse.add_member(:documents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadataList, location_name: 'Documents'))
    DescribeFolderContentsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker'))
    DescribeFolderContentsResponse.type = Types::DescribeFolderContentsResponse
    DescribeGroupsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DescribeGroupsRequest.add_member(:search_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchQueryType, location_name: 'SearchQuery', traits: {"smithy.api#httpQuery" => "searchQuery", "smithy.api#required" => {}}))
    DescribeGroupsRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'OrganizationId', traits: {"smithy.api#httpQuery" => "organizationId"}))
    DescribeGroupsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeGroupsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntegerType, location_name: 'Limit', traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeGroupsRequest.type = Types::DescribeGroupsRequest
    DescribeGroupsResponse.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupMetadataList, location_name: 'Groups'))
    DescribeGroupsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'Marker'))
    DescribeGroupsResponse.type = Types::DescribeGroupsResponse
    DescribeNotificationSubscriptionsRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'OrganizationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeNotificationSubscriptionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeNotificationSubscriptionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit', traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeNotificationSubscriptionsRequest.type = Types::DescribeNotificationSubscriptionsRequest
    DescribeNotificationSubscriptionsResponse.add_member(:subscriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionList, location_name: 'Subscriptions'))
    DescribeNotificationSubscriptionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker'))
    DescribeNotificationSubscriptionsResponse.type = Types::DescribeNotificationSubscriptionsResponse
    DescribeResourcePermissionsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DescribeResourcePermissionsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeResourcePermissionsRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'PrincipalId', traits: {"smithy.api#httpQuery" => "principalId"}))
    DescribeResourcePermissionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit', traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeResourcePermissionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeResourcePermissionsRequest.type = Types::DescribeResourcePermissionsRequest
    DescribeResourcePermissionsResponse.add_member(:principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalList, location_name: 'Principals'))
    DescribeResourcePermissionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker'))
    DescribeResourcePermissionsResponse.type = Types::DescribeResourcePermissionsResponse
    DescribeRootFoldersRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication", "smithy.api#required" => {}}))
    DescribeRootFoldersRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit', traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeRootFoldersRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeRootFoldersRequest.type = Types::DescribeRootFoldersRequest
    DescribeRootFoldersResponse.add_member(:folders, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FolderMetadataList, location_name: 'Folders'))
    DescribeRootFoldersResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker'))
    DescribeRootFoldersResponse.type = Types::DescribeRootFoldersResponse
    DescribeUsersRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    DescribeUsersRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'OrganizationId', traits: {"smithy.api#httpQuery" => "organizationId"}))
    DescribeUsersRequest.add_member(:user_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdsType, location_name: 'UserIds', traits: {"smithy.api#httpQuery" => "userIds"}))
    DescribeUsersRequest.add_member(:query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchQueryType, location_name: 'Query', traits: {"smithy.api#httpQuery" => "query"}))
    DescribeUsersRequest.add_member(:include, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserFilterType, location_name: 'Include', traits: {"smithy.api#httpQuery" => "include"}))
    DescribeUsersRequest.add_member(:order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderType, location_name: 'Order', traits: {"smithy.api#httpQuery" => "order"}))
    DescribeUsersRequest.add_member(:sort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserSortType, location_name: 'Sort', traits: {"smithy.api#httpQuery" => "sort"}))
    DescribeUsersRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeUsersRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit', traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeUsersRequest.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNamesType, location_name: 'Fields', traits: {"smithy.api#httpQuery" => "fields"}))
    DescribeUsersRequest.type = Types::DescribeUsersRequest
    DescribeUsersResponse.add_member(:users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationUserList, location_name: 'Users'))
    DescribeUsersResponse.add_member(:total_number_of_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeType, location_name: 'TotalNumberOfUsers', traits: {"smithy.api#deprecated" => {}}))
    DescribeUsersResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker'))
    DescribeUsersResponse.type = Types::DescribeUsersResponse
    DocumentLockedForCommentsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    DocumentLockedForCommentsException.type = Types::DocumentLockedForCommentsException
    DocumentMetadata.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'Id'))
    DocumentMetadata.add_member(:creator_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'CreatorId'))
    DocumentMetadata.add_member(:parent_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ParentFolderId'))
    DocumentMetadata.add_member(:created_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'CreatedTimestamp'))
    DocumentMetadata.add_member(:modified_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'ModifiedTimestamp'))
    DocumentMetadata.add_member(:latest_version_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionMetadata, location_name: 'LatestVersionMetadata'))
    DocumentMetadata.add_member(:resource_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStateType, location_name: 'ResourceState'))
    DocumentMetadata.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedLabels, location_name: 'Labels'))
    DocumentMetadata.type = Types::DocumentMetadata
    DocumentMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata)
    DocumentSourceType.add_member(:original, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORIGINAL', traits: {"smithy.api#enumValue" => "ORIGINAL"}))
    DocumentSourceType.add_member(:with_comments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WITH_COMMENTS', traits: {"smithy.api#enumValue" => "WITH_COMMENTS"}))
    DocumentSourceUrlMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentSourceType)
    DocumentSourceUrlMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UrlType)
    DocumentStatusType.add_member(:initialized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZED', traits: {"smithy.api#enumValue" => "INITIALIZED"}))
    DocumentStatusType.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DocumentThumbnailType.add_member(:small, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMALL', traits: {"smithy.api#enumValue" => "SMALL"}))
    DocumentThumbnailType.add_member(:small_hq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMALL_HQ', traits: {"smithy.api#enumValue" => "SMALL_HQ"}))
    DocumentThumbnailType.add_member(:large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE', traits: {"smithy.api#enumValue" => "LARGE"}))
    DocumentThumbnailUrlMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentThumbnailType)
    DocumentThumbnailUrlMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UrlType)
    DocumentVersionMetadata.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionIdType, location_name: 'Id'))
    DocumentVersionMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameType, location_name: 'Name'))
    DocumentVersionMetadata.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentContentType, location_name: 'ContentType'))
    DocumentVersionMetadata.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeType, location_name: 'Size'))
    DocumentVersionMetadata.add_member(:signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HashType, location_name: 'Signature'))
    DocumentVersionMetadata.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentStatusType, location_name: 'Status'))
    DocumentVersionMetadata.add_member(:created_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'CreatedTimestamp'))
    DocumentVersionMetadata.add_member(:modified_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'ModifiedTimestamp'))
    DocumentVersionMetadata.add_member(:content_created_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'ContentCreatedTimestamp'))
    DocumentVersionMetadata.add_member(:content_modified_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'ContentModifiedTimestamp'))
    DocumentVersionMetadata.add_member(:creator_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'CreatorId'))
    DocumentVersionMetadata.add_member(:thumbnail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentThumbnailUrlMap, location_name: 'Thumbnail'))
    DocumentVersionMetadata.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentSourceUrlMap, location_name: 'Source'))
    DocumentVersionMetadata.type = Types::DocumentVersionMetadata
    DocumentVersionMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionMetadata)
    DocumentVersionStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DraftUploadOutOfSyncException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    DraftUploadOutOfSyncException.type = Types::DraftUploadOutOfSyncException
    EntityAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    EntityAlreadyExistsException.type = Types::EntityAlreadyExistsException
    EntityIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType)
    EntityNotExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    EntityNotExistsException.add_member(:entity_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdList, location_name: 'EntityIds'))
    EntityNotExistsException.type = Types::EntityNotExistsException
    FailedDependencyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    FailedDependencyException.type = Types::FailedDependencyException
    Filters.add_member(:text_locales, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextLocaleTypeList, location_name: 'TextLocales'))
    Filters.add_member(:content_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchContentCategoryTypeList, location_name: 'ContentCategories'))
    Filters.add_member(:resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourceTypeList, location_name: 'ResourceTypes'))
    Filters.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchLabelList, location_name: 'Labels'))
    Filters.add_member(:principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPrincipalTypeList, location_name: 'Principals'))
    Filters.add_member(:ancestor_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchAncestorIdList, location_name: 'AncestorIds'))
    Filters.add_member(:search_collection_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchCollectionTypeList, location_name: 'SearchCollectionTypes'))
    Filters.add_member(:size_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongRangeType, location_name: 'SizeRange'))
    Filters.add_member(:created_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateRangeType, location_name: 'CreatedRange'))
    Filters.add_member(:modified_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateRangeType, location_name: 'ModifiedRange'))
    Filters.type = Types::Filters
    FolderContentType.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    FolderContentType.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT', traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    FolderContentType.add_member(:folder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER', traits: {"smithy.api#enumValue" => "FOLDER"}))
    FolderMetadata.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'Id'))
    FolderMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameType, location_name: 'Name'))
    FolderMetadata.add_member(:creator_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'CreatorId'))
    FolderMetadata.add_member(:parent_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ParentFolderId'))
    FolderMetadata.add_member(:created_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'CreatedTimestamp'))
    FolderMetadata.add_member(:modified_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'ModifiedTimestamp'))
    FolderMetadata.add_member(:resource_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStateType, location_name: 'ResourceState'))
    FolderMetadata.add_member(:signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HashType, location_name: 'Signature'))
    FolderMetadata.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedLabels, location_name: 'Labels'))
    FolderMetadata.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeType, location_name: 'Size'))
    FolderMetadata.add_member(:latest_version_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeType, location_name: 'LatestVersionSize'))
    FolderMetadata.type = Types::FolderMetadata
    FolderMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FolderMetadata)
    GetCurrentUserRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication", "smithy.api#required" => {}}))
    GetCurrentUserRequest.type = Types::GetCurrentUserRequest
    GetCurrentUserResponse.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'User'))
    GetCurrentUserResponse.type = Types::GetCurrentUserResponse
    GetDocumentPathRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    GetDocumentPathRequest.add_member(:document_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'DocumentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentPathRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit', traits: {"smithy.api#httpQuery" => "limit"}))
    GetDocumentPathRequest.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNamesType, location_name: 'Fields', traits: {"smithy.api#httpQuery" => "fields"}))
    GetDocumentPathRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    GetDocumentPathRequest.type = Types::GetDocumentPathRequest
    GetDocumentPathResponse.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePath, location_name: 'Path'))
    GetDocumentPathResponse.type = Types::GetDocumentPathResponse
    GetDocumentRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    GetDocumentRequest.add_member(:document_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'DocumentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentRequest.add_member(:include_custom_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'IncludeCustomMetadata', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeCustomMetadata"}))
    GetDocumentRequest.type = Types::GetDocumentRequest
    GetDocumentResponse.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'Metadata'))
    GetDocumentResponse.add_member(:custom_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMetadataMap, location_name: 'CustomMetadata'))
    GetDocumentResponse.type = Types::GetDocumentResponse
    GetDocumentVersionRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    GetDocumentVersionRequest.add_member(:document_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'DocumentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentVersionRequest.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionIdType, location_name: 'VersionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentVersionRequest.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNamesType, location_name: 'Fields', traits: {"smithy.api#httpQuery" => "fields"}))
    GetDocumentVersionRequest.add_member(:include_custom_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'IncludeCustomMetadata', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeCustomMetadata"}))
    GetDocumentVersionRequest.type = Types::GetDocumentVersionRequest
    GetDocumentVersionResponse.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionMetadata, location_name: 'Metadata'))
    GetDocumentVersionResponse.add_member(:custom_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMetadataMap, location_name: 'CustomMetadata'))
    GetDocumentVersionResponse.type = Types::GetDocumentVersionResponse
    GetFolderPathRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    GetFolderPathRequest.add_member(:folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'FolderId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFolderPathRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit', traits: {"smithy.api#httpQuery" => "limit"}))
    GetFolderPathRequest.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNamesType, location_name: 'Fields', traits: {"smithy.api#httpQuery" => "fields"}))
    GetFolderPathRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    GetFolderPathRequest.type = Types::GetFolderPathRequest
    GetFolderPathResponse.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePath, location_name: 'Path'))
    GetFolderPathResponse.type = Types::GetFolderPathResponse
    GetFolderRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    GetFolderRequest.add_member(:folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'FolderId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFolderRequest.add_member(:include_custom_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'IncludeCustomMetadata', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeCustomMetadata"}))
    GetFolderRequest.type = Types::GetFolderRequest
    GetFolderResponse.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FolderMetadata, location_name: 'Metadata'))
    GetFolderResponse.add_member(:custom_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMetadataMap, location_name: 'CustomMetadata'))
    GetFolderResponse.type = Types::GetFolderResponse
    GetResourcesRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    GetResourcesRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'UserId', traits: {"smithy.api#httpQuery" => "userId"}))
    GetResourcesRequest.add_member(:collection_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCollectionType, location_name: 'CollectionType', traits: {"smithy.api#httpQuery" => "collectionType"}))
    GetResourcesRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit', traits: {"smithy.api#httpQuery" => "limit"}))
    GetResourcesRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    GetResourcesRequest.type = Types::GetResourcesRequest
    GetResourcesResponse.add_member(:folders, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FolderMetadataList, location_name: 'Folders'))
    GetResourcesResponse.add_member(:documents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadataList, location_name: 'Documents'))
    GetResourcesResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarkerType, location_name: 'Marker'))
    GetResourcesResponse.type = Types::GetResourcesResponse
    GroupMetadata.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'Id'))
    GroupMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupNameType, location_name: 'Name'))
    GroupMetadata.type = Types::GroupMetadata
    GroupMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupMetadata)
    IllegalUserStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    IllegalUserStateException.type = Types::IllegalUserStateException
    InitiateDocumentVersionUploadRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    InitiateDocumentVersionUploadRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'Id'))
    InitiateDocumentVersionUploadRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameType, location_name: 'Name'))
    InitiateDocumentVersionUploadRequest.add_member(:content_created_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'ContentCreatedTimestamp'))
    InitiateDocumentVersionUploadRequest.add_member(:content_modified_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'ContentModifiedTimestamp'))
    InitiateDocumentVersionUploadRequest.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentContentType, location_name: 'ContentType'))
    InitiateDocumentVersionUploadRequest.add_member(:document_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeType, location_name: 'DocumentSizeInBytes'))
    InitiateDocumentVersionUploadRequest.add_member(:parent_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ParentFolderId'))
    InitiateDocumentVersionUploadRequest.type = Types::InitiateDocumentVersionUploadRequest
    InitiateDocumentVersionUploadResponse.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'Metadata'))
    InitiateDocumentVersionUploadResponse.add_member(:upload_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadMetadata, location_name: 'UploadMetadata'))
    InitiateDocumentVersionUploadResponse.type = Types::InitiateDocumentVersionUploadResponse
    InvalidArgumentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidCommentOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    InvalidCommentOperationException.type = Types::InvalidCommentOperationException
    InvalidOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    InvalidOperationException.type = Types::InvalidOperationException
    InvalidPasswordException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    InvalidPasswordException.type = Types::InvalidPasswordException
    LanguageCodeType.add_member(:ar, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AR', traits: {"smithy.api#enumValue" => "AR"}))
    LanguageCodeType.add_member(:bg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BG', traits: {"smithy.api#enumValue" => "BG"}))
    LanguageCodeType.add_member(:bn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BN', traits: {"smithy.api#enumValue" => "BN"}))
    LanguageCodeType.add_member(:da, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DA', traits: {"smithy.api#enumValue" => "DA"}))
    LanguageCodeType.add_member(:de, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DE', traits: {"smithy.api#enumValue" => "DE"}))
    LanguageCodeType.add_member(:cs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CS', traits: {"smithy.api#enumValue" => "CS"}))
    LanguageCodeType.add_member(:el, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EL', traits: {"smithy.api#enumValue" => "EL"}))
    LanguageCodeType.add_member(:en, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN', traits: {"smithy.api#enumValue" => "EN"}))
    LanguageCodeType.add_member(:es, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES', traits: {"smithy.api#enumValue" => "ES"}))
    LanguageCodeType.add_member(:fa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FA', traits: {"smithy.api#enumValue" => "FA"}))
    LanguageCodeType.add_member(:fi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FI', traits: {"smithy.api#enumValue" => "FI"}))
    LanguageCodeType.add_member(:fr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR', traits: {"smithy.api#enumValue" => "FR"}))
    LanguageCodeType.add_member(:hi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HI', traits: {"smithy.api#enumValue" => "HI"}))
    LanguageCodeType.add_member(:hu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HU', traits: {"smithy.api#enumValue" => "HU"}))
    LanguageCodeType.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ID', traits: {"smithy.api#enumValue" => "ID"}))
    LanguageCodeType.add_member(:it, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IT', traits: {"smithy.api#enumValue" => "IT"}))
    LanguageCodeType.add_member(:ja, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JA', traits: {"smithy.api#enumValue" => "JA"}))
    LanguageCodeType.add_member(:ko, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KO', traits: {"smithy.api#enumValue" => "KO"}))
    LanguageCodeType.add_member(:lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LT', traits: {"smithy.api#enumValue" => "LT"}))
    LanguageCodeType.add_member(:lv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LV', traits: {"smithy.api#enumValue" => "LV"}))
    LanguageCodeType.add_member(:nl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NL', traits: {"smithy.api#enumValue" => "NL"}))
    LanguageCodeType.add_member(:no, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO', traits: {"smithy.api#enumValue" => "NO"}))
    LanguageCodeType.add_member(:pt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT', traits: {"smithy.api#enumValue" => "PT"}))
    LanguageCodeType.add_member(:ro, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RO', traits: {"smithy.api#enumValue" => "RO"}))
    LanguageCodeType.add_member(:ru, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RU', traits: {"smithy.api#enumValue" => "RU"}))
    LanguageCodeType.add_member(:sv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SV', traits: {"smithy.api#enumValue" => "SV"}))
    LanguageCodeType.add_member(:sw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SW', traits: {"smithy.api#enumValue" => "SW"}))
    LanguageCodeType.add_member(:th, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TH', traits: {"smithy.api#enumValue" => "TH"}))
    LanguageCodeType.add_member(:tr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TR', traits: {"smithy.api#enumValue" => "TR"}))
    LanguageCodeType.add_member(:zh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZH', traits: {"smithy.api#enumValue" => "ZH"}))
    LanguageCodeType.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    LocaleType.add_member(:en, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN', traits: {"smithy.api#enumValue" => "en"}))
    LocaleType.add_member(:fr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR', traits: {"smithy.api#enumValue" => "fr"}))
    LocaleType.add_member(:ko, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KO', traits: {"smithy.api#enumValue" => "ko"}))
    LocaleType.add_member(:de, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DE', traits: {"smithy.api#enumValue" => "de"}))
    LocaleType.add_member(:es, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES', traits: {"smithy.api#enumValue" => "es"}))
    LocaleType.add_member(:ja, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JA', traits: {"smithy.api#enumValue" => "ja"}))
    LocaleType.add_member(:ru, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RU', traits: {"smithy.api#enumValue" => "ru"}))
    LocaleType.add_member(:zh_cn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZH_CN', traits: {"smithy.api#enumValue" => "zh_CN"}))
    LocaleType.add_member(:zh_tw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZH_TW', traits: {"smithy.api#enumValue" => "zh_TW"}))
    LocaleType.add_member(:pt_br, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT_BR', traits: {"smithy.api#enumValue" => "pt_BR"}))
    LocaleType.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "default"}))
    LongRangeType.add_member(:start_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: 'StartValue'))
    LongRangeType.add_member(:end_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongType, location_name: 'EndValue'))
    LongRangeType.type = Types::LongRangeType
    NotificationOptions.add_member(:send_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'SendEmail', traits: {"smithy.api#default" => false}))
    NotificationOptions.add_member(:email_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'EmailMessage'))
    NotificationOptions.type = Types::NotificationOptions
    OrderByFieldType.add_member(:relevance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RELEVANCE', traits: {"smithy.api#enumValue" => "RELEVANCE"}))
    OrderByFieldType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAME', traits: {"smithy.api#enumValue" => "NAME"}))
    OrderByFieldType.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIZE', traits: {"smithy.api#enumValue" => "SIZE"}))
    OrderByFieldType.add_member(:created_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED_TIMESTAMP', traits: {"smithy.api#enumValue" => "CREATED_TIMESTAMP"}))
    OrderByFieldType.add_member(:modified_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFIED_TIMESTAMP', traits: {"smithy.api#enumValue" => "MODIFIED_TIMESTAMP"}))
    OrderType.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASCENDING"}))
    OrderType.add_member(:descending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESCENDING"}))
    OrganizationUserList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: User)
    Participants.add_member(:users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserMetadataList, location_name: 'Users'))
    Participants.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupMetadataList, location_name: 'Groups'))
    Participants.type = Types::Participants
    PermissionInfo.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleType, location_name: 'Role'))
    PermissionInfo.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RolePermissionType, location_name: 'Type'))
    PermissionInfo.type = Types::PermissionInfo
    PermissionInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionInfo)
    Principal.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'Id'))
    Principal.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'Type'))
    Principal.add_member(:roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionInfoList, location_name: 'Roles'))
    Principal.type = Types::Principal
    PrincipalList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Principal)
    PrincipalRoleType.add_member(:viewer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIEWER', traits: {"smithy.api#enumValue" => "VIEWER"}))
    PrincipalRoleType.add_member(:contributor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTRIBUTOR', traits: {"smithy.api#enumValue" => "CONTRIBUTOR"}))
    PrincipalRoleType.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OWNER', traits: {"smithy.api#enumValue" => "OWNER"}))
    PrincipalRoleType.add_member(:coowner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COOWNER', traits: {"smithy.api#enumValue" => "COOWNER"}))
    PrincipalType.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    PrincipalType.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GROUP', traits: {"smithy.api#enumValue" => "GROUP"}))
    PrincipalType.add_member(:invite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVITE', traits: {"smithy.api#enumValue" => "INVITE"}))
    PrincipalType.add_member(:anonymous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANONYMOUS', traits: {"smithy.api#enumValue" => "ANONYMOUS"}))
    PrincipalType.add_member(:organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION', traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    ProhibitedStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    ProhibitedStateException.type = Types::ProhibitedStateException
    RemoveAllResourcePermissionsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    RemoveAllResourcePermissionsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveAllResourcePermissionsRequest.type = Types::RemoveAllResourcePermissionsRequest
    RemoveResourcePermissionRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    RemoveResourcePermissionRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveResourcePermissionRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'PrincipalId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveResourcePermissionRequest.add_member(:principal_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#httpQuery" => "type"}))
    RemoveResourcePermissionRequest.type = Types::RemoveResourcePermissionRequest
    RequestedEntityTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    RequestedEntityTooLargeException.type = Types::RequestedEntityTooLargeException
    ResourceAlreadyCheckedOutException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    ResourceAlreadyCheckedOutException.type = Types::ResourceAlreadyCheckedOutException
    ResourceCollectionType.add_member(:shared_with_me, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED_WITH_ME', traits: {"smithy.api#enumValue" => "SHARED_WITH_ME"}))
    ResourceMetadata.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'Type'))
    ResourceMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameType, location_name: 'Name'))
    ResourceMetadata.add_member(:original_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameType, location_name: 'OriginalName'))
    ResourceMetadata.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'Id'))
    ResourceMetadata.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionIdType, location_name: 'VersionId'))
    ResourceMetadata.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserMetadata, location_name: 'Owner'))
    ResourceMetadata.add_member(:parent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ParentId'))
    ResourceMetadata.type = Types::ResourceMetadata
    ResourcePath.add_member(:components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePathComponentList, location_name: 'Components'))
    ResourcePath.type = Types::ResourcePath
    ResourcePathComponent.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'Id'))
    ResourcePathComponent.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameType, location_name: 'Name'))
    ResourcePathComponent.type = Types::ResourcePathComponent
    ResourcePathComponentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePathComponent)
    ResourceSortType.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATE', traits: {"smithy.api#enumValue" => "DATE"}))
    ResourceSortType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAME', traits: {"smithy.api#enumValue" => "NAME"}))
    ResourceStateType.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ResourceStateType.add_member(:restoring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORING', traits: {"smithy.api#enumValue" => "RESTORING"}))
    ResourceStateType.add_member(:recycling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECYCLING', traits: {"smithy.api#enumValue" => "RECYCLING"}))
    ResourceStateType.add_member(:recycled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECYCLED', traits: {"smithy.api#enumValue" => "RECYCLED"}))
    ResourceType.add_member(:folder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER', traits: {"smithy.api#enumValue" => "FOLDER"}))
    ResourceType.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT', traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    ResponseItem.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseItemType, location_name: 'ResourceType'))
    ResponseItem.add_member(:web_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseItemWebUrl, location_name: 'WebUrl'))
    ResponseItem.add_member(:document_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'DocumentMetadata'))
    ResponseItem.add_member(:folder_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FolderMetadata, location_name: 'FolderMetadata'))
    ResponseItem.add_member(:comment_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentMetadata, location_name: 'CommentMetadata'))
    ResponseItem.add_member(:document_version_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionMetadata, location_name: 'DocumentVersionMetadata'))
    ResponseItem.type = Types::ResponseItem
    ResponseItemType.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT', traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    ResponseItemType.add_member(:folder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER', traits: {"smithy.api#enumValue" => "FOLDER"}))
    ResponseItemType.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMMENT', traits: {"smithy.api#enumValue" => "COMMENT"}))
    ResponseItemType.add_member(:document_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_VERSION', traits: {"smithy.api#enumValue" => "DOCUMENT_VERSION"}))
    ResponseItemsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseItem)
    RestoreDocumentVersionsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    RestoreDocumentVersionsRequest.add_member(:document_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'DocumentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestoreDocumentVersionsRequest.type = Types::RestoreDocumentVersionsRequest
    RolePermissionType.add_member(:direct, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT', traits: {"smithy.api#enumValue" => "DIRECT"}))
    RolePermissionType.add_member(:inherited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INHERITED', traits: {"smithy.api#enumValue" => "INHERITED"}))
    RoleType.add_member(:viewer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIEWER', traits: {"smithy.api#enumValue" => "VIEWER"}))
    RoleType.add_member(:contributor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTRIBUTOR', traits: {"smithy.api#enumValue" => "CONTRIBUTOR"}))
    RoleType.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OWNER', traits: {"smithy.api#enumValue" => "OWNER"}))
    RoleType.add_member(:coowner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COOWNER', traits: {"smithy.api#enumValue" => "COOWNER"}))
    SearchAncestorIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchAncestorId)
    SearchCollectionType.add_member(:owned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OWNED', traits: {"smithy.api#enumValue" => "OWNED"}))
    SearchCollectionType.add_member(:shared_with_me, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED_WITH_ME', traits: {"smithy.api#enumValue" => "SHARED_WITH_ME"}))
    SearchCollectionTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchCollectionType)
    SearchContentCategoryTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentCategoryType)
    SearchLabelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchLabel)
    SearchPrincipalRoleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalRoleType)
    SearchPrincipalType.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    SearchPrincipalType.add_member(:roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPrincipalRoleList, location_name: 'Roles'))
    SearchPrincipalType.type = Types::SearchPrincipalType
    SearchPrincipalTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchPrincipalType)
    SearchQueryScopeType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAME', traits: {"smithy.api#enumValue" => "NAME"}))
    SearchQueryScopeType.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTENT', traits: {"smithy.api#enumValue" => "CONTENT"}))
    SearchQueryScopeTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchQueryScopeType)
    SearchResourceType.add_member(:folder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOLDER', traits: {"smithy.api#enumValue" => "FOLDER"}))
    SearchResourceType.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT', traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    SearchResourceType.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMMENT', traits: {"smithy.api#enumValue" => "COMMENT"}))
    SearchResourceType.add_member(:document_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_VERSION', traits: {"smithy.api#enumValue" => "DOCUMENT_VERSION"}))
    SearchResourceTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourceType)
    SearchResourcesRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    SearchResourcesRequest.add_member(:query_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchQueryType, location_name: 'QueryText'))
    SearchResourcesRequest.add_member(:query_scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchQueryScopeTypeList, location_name: 'QueryScopes'))
    SearchResourcesRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'OrganizationId'))
    SearchResourcesRequest.add_member(:additional_response_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalResponseFieldsList, location_name: 'AdditionalResponseFields'))
    SearchResourcesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters'))
    SearchResourcesRequest.add_member(:order_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResultSortList, location_name: 'OrderBy'))
    SearchResourcesRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResultsLimitType, location_name: 'Limit'))
    SearchResourcesRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarkerType, location_name: 'Marker'))
    SearchResourcesRequest.type = Types::SearchResourcesRequest
    SearchResourcesResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseItemsList, location_name: 'Items'))
    SearchResourcesResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextMarkerType, location_name: 'Marker'))
    SearchResourcesResponse.type = Types::SearchResourcesResponse
    SearchResultSortList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSortResult)
    SearchSortResult.add_member(:field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderByFieldType, location_name: 'Field'))
    SearchSortResult.add_member(:order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'Order'))
    SearchSortResult.type = Types::SearchSortResult
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SharePrincipal.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    SharePrincipal.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    SharePrincipal.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleType, location_name: 'Role', traits: {"smithy.api#required" => {}}))
    SharePrincipal.type = Types::SharePrincipal
    SharePrincipalList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharePrincipal)
    ShareResult.add_member(:principal_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'PrincipalId'))
    ShareResult.add_member(:invitee_principal_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'InviteePrincipalId'))
    ShareResult.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleType, location_name: 'Role'))
    ShareResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatusType, location_name: 'Status'))
    ShareResult.add_member(:share_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ShareId'))
    ShareResult.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'StatusMessage'))
    ShareResult.type = Types::ShareResult
    ShareResultsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareResult)
    ShareStatusType.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ShareStatusType.add_member(:failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILURE', traits: {"smithy.api#enumValue" => "FAILURE"}))
    SharedLabels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedLabel)
    SignedHeaderMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderNameType)
    SignedHeaderMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderValueType)
    SortOrder.add_member(:asc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASC', traits: {"smithy.api#enumValue" => "ASC"}))
    SortOrder.add_member(:desc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESC', traits: {"smithy.api#enumValue" => "DESC"}))
    StorageLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    StorageLimitExceededException.type = Types::StorageLimitExceededException
    StorageLimitWillExceedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    StorageLimitWillExceedException.type = Types::StorageLimitWillExceedException
    StorageRuleType.add_member(:storage_allocated_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveSizeType, location_name: 'StorageAllocatedInBytes'))
    StorageRuleType.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType, location_name: 'StorageType'))
    StorageRuleType.type = Types::StorageRuleType
    StorageType.add_member(:unlimited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNLIMITED', traits: {"smithy.api#enumValue" => "UNLIMITED"}))
    StorageType.add_member(:quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUOTA', traits: {"smithy.api#enumValue" => "QUOTA"}))
    Subscription.add_member(:subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'SubscriptionId'))
    Subscription.add_member(:end_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionEndPointType, location_name: 'EndPoint'))
    Subscription.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProtocolType, location_name: 'Protocol'))
    Subscription.type = Types::Subscription
    SubscriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscription)
    SubscriptionProtocolType.add_member(:https, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTPS', traits: {"smithy.api#enumValue" => "HTTPS"}))
    SubscriptionProtocolType.add_member(:sqs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQS', traits: {"smithy.api#enumValue" => "SQS"}))
    SubscriptionType.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    TextLocaleTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCodeType)
    TooManyLabelsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    TooManyLabelsException.type = Types::TooManyLabelsException
    TooManySubscriptionsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    TooManySubscriptionsException.type = Types::TooManySubscriptionsException
    UnauthorizedOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    UnauthorizedOperationException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionCodeType, location_name: 'Code'))
    UnauthorizedOperationException.type = Types::UnauthorizedOperationException
    UnauthorizedResourceAccessException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'Message'))
    UnauthorizedResourceAccessException.type = Types::UnauthorizedResourceAccessException
    UpdateDocumentRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    UpdateDocumentRequest.add_member(:document_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'DocumentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDocumentRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameType, location_name: 'Name'))
    UpdateDocumentRequest.add_member(:parent_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ParentFolderId'))
    UpdateDocumentRequest.add_member(:resource_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStateType, location_name: 'ResourceState'))
    UpdateDocumentRequest.type = Types::UpdateDocumentRequest
    UpdateDocumentVersionRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    UpdateDocumentVersionRequest.add_member(:document_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'DocumentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDocumentVersionRequest.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionIdType, location_name: 'VersionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDocumentVersionRequest.add_member(:version_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersionStatus, location_name: 'VersionStatus'))
    UpdateDocumentVersionRequest.type = Types::UpdateDocumentVersionRequest
    UpdateFolderRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    UpdateFolderRequest.add_member(:folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'FolderId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFolderRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNameType, location_name: 'Name'))
    UpdateFolderRequest.add_member(:parent_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ParentFolderId'))
    UpdateFolderRequest.add_member(:resource_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStateType, location_name: 'ResourceState'))
    UpdateFolderRequest.type = Types::UpdateFolderRequest
    UpdateUserRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationHeaderType, location_name: 'AuthenticationToken', traits: {"smithy.api#httpHeader" => "Authentication"}))
    UpdateUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'UserId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:given_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeValueType, location_name: 'GivenName'))
    UpdateUserRequest.add_member(:surname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeValueType, location_name: 'Surname'))
    UpdateUserRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'Type'))
    UpdateUserRequest.add_member(:storage_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageRuleType, location_name: 'StorageRule'))
    UpdateUserRequest.add_member(:time_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeZoneIdType, location_name: 'TimeZoneId'))
    UpdateUserRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleType, location_name: 'Locale'))
    UpdateUserRequest.add_member(:grant_poweruser_privileges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanEnumType, location_name: 'GrantPoweruserPrivileges'))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResponse.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'User'))
    UpdateUserResponse.type = Types::UpdateUserResponse
    UploadMetadata.add_member(:upload_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UrlType, location_name: 'UploadUrl'))
    UploadMetadata.add_member(:signed_headers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SignedHeaderMap, location_name: 'SignedHeaders'))
    UploadMetadata.type = Types::UploadMetadata
    User.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'Id'))
    User.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username'))
    User.add_member(:email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressType, location_name: 'EmailAddress'))
    User.add_member(:given_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeValueType, location_name: 'GivenName'))
    User.add_member(:surname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeValueType, location_name: 'Surname'))
    User.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'OrganizationId'))
    User.add_member(:root_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'RootFolderId'))
    User.add_member(:recycle_bin_folder_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'RecycleBinFolderId'))
    User.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserStatusType, location_name: 'Status'))
    User.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'Type'))
    User.add_member(:created_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'CreatedTimestamp'))
    User.add_member(:modified_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'ModifiedTimestamp'))
    User.add_member(:time_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeZoneIdType, location_name: 'TimeZoneId'))
    User.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleType, location_name: 'Locale'))
    User.add_member(:storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserStorageMetadata, location_name: 'Storage'))
    User.type = Types::User
    UserActivities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Activity)
    UserFilterType.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    UserFilterType.add_member(:active_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE_PENDING', traits: {"smithy.api#enumValue" => "ACTIVE_PENDING"}))
    UserMetadata.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdType, location_name: 'Id'))
    UserMetadata.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameType, location_name: 'Username'))
    UserMetadata.add_member(:given_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeValueType, location_name: 'GivenName'))
    UserMetadata.add_member(:surname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeValueType, location_name: 'Surname'))
    UserMetadata.add_member(:email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressType, location_name: 'EmailAddress'))
    UserMetadata.type = Types::UserMetadata
    UserMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserMetadata)
    UserSortType.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_NAME', traits: {"smithy.api#enumValue" => "USER_NAME"}))
    UserSortType.add_member(:full_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_NAME', traits: {"smithy.api#enumValue" => "FULL_NAME"}))
    UserSortType.add_member(:storage_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STORAGE_LIMIT', traits: {"smithy.api#enumValue" => "STORAGE_LIMIT"}))
    UserSortType.add_member(:user_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_STATUS', traits: {"smithy.api#enumValue" => "USER_STATUS"}))
    UserSortType.add_member(:storage_used, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STORAGE_USED', traits: {"smithy.api#enumValue" => "STORAGE_USED"}))
    UserStatusType.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    UserStatusType.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    UserStatusType.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    UserStorageMetadata.add_member(:storage_utilized_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizeType, location_name: 'StorageUtilizedInBytes'))
    UserStorageMetadata.add_member(:storage_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageRuleType, location_name: 'StorageRule'))
    UserStorageMetadata.type = Types::UserStorageMetadata
    UserType.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    UserType.add_member(:admin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADMIN', traits: {"smithy.api#enumValue" => "ADMIN"}))
    UserType.add_member(:poweruser, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POWERUSER', traits: {"smithy.api#enumValue" => "POWERUSER"}))
    UserType.add_member(:minimaluser, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MINIMALUSER', traits: {"smithy.api#enumValue" => "MINIMALUSER"}))
    UserType.add_member(:workspacesuser, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKSPACESUSER', traits: {"smithy.api#enumValue" => "WORKSPACESUSER"}))

    AWSGorillaBoyService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.workdocs#AWSGorillaBoyService"
      service.name = "AWSGorillaBoyService"
      service.version = "2016-05-01"
      service.traits = {"aws.api#service" => {"sdkId" => "WorkDocs", "arnNamespace" => "workdocs", "cloudFormationName" => "WorkDocs", "cloudTrailEventSource" => "workdocs.amazonaws.com", "endpointPrefix" => "workdocs"}, "aws.auth#sigv4" => {"name" => "workdocs"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon WorkDocs", "smithy.api#xmlNamespace" => {"uri" => "https://aws.amazon.com/api/v1/"}}
      service.add_operation(:abort_document_version_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#AbortDocumentVersionUpload"
        operation.name = "AbortDocumentVersionUpload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbortDocumentVersionUploadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/documents/{DocumentId}/versions/{VersionId}", "code" => 204}}
      end)
      service.add_operation(:activate_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#ActivateUser"
        operation.name = "ActivateUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/users/{UserId}/activation", "code" => 200}}
      end)
      service.add_operation(:add_resource_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#AddResourcePermissions"
        operation.name = "AddResourcePermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddResourcePermissionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddResourcePermissionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/resources/{ResourceId}/permissions", "code" => 201}}
      end)
      service.add_operation(:create_comment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#CreateComment"
        operation.name = "CreateComment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCommentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCommentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentLockedForCommentsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommentOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment", "code" => 201}}
      end)
      service.add_operation(:create_custom_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#CreateCustomMetadata"
        operation.name = "CreateCustomMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomMetadataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMetadataLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/api/v1/resources/{ResourceId}/customMetadata", "code" => 200}}
      end)
      service.add_operation(:create_folder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#CreateFolder"
        operation.name = "CreateFolder"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFolderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFolderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/folders", "code" => 201}}
      end)
      service.add_operation(:create_labels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#CreateLabels"
        operation.name = "CreateLabels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLabelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLabelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyLabelsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/api/v1/resources/{ResourceId}/labels", "code" => 200}}
      end)
      service.add_operation(:create_notification_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#CreateNotificationSubscription"
        operation.name = "CreateNotificationSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNotificationSubscriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNotificationSubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManySubscriptionsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/organizations/{OrganizationId}/subscriptions", "code" => 200}}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#CreateUser"
        operation.name = "CreateUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/users", "code" => 201}}
      end)
      service.add_operation(:deactivate_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeactivateUser"
        operation.name = "DeactivateUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivateUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/users/{UserId}/activation", "code" => 204}}
      end)
      service.add_operation(:delete_comment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteComment"
        operation.name = "DeleteComment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCommentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentLockedForCommentsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}", "code" => 204}}
      end)
      service.add_operation(:delete_custom_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteCustomMetadata"
        operation.name = "DeleteCustomMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomMetadataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/resources/{ResourceId}/customMetadata", "code" => 200}}
      end)
      service.add_operation(:delete_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteDocument"
        operation.name = "DeleteDocument"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDocumentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/documents/{DocumentId}", "code" => 204}}
      end)
      service.add_operation(:delete_document_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteDocumentVersion"
        operation.name = "DeleteDocumentVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDocumentVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/documentVersions/{DocumentId}/versions/{VersionId}", "code" => 204}}
      end)
      service.add_operation(:delete_folder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteFolder"
        operation.name = "DeleteFolder"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFolderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/folders/{FolderId}", "code" => 204}}
      end)
      service.add_operation(:delete_folder_contents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteFolderContents"
        operation.name = "DeleteFolderContents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFolderContentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/folders/{FolderId}/contents", "code" => 204}}
      end)
      service.add_operation(:delete_labels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteLabels"
        operation.name = "DeleteLabels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLabelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLabelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/resources/{ResourceId}/labels", "code" => 200}}
      end)
      service.add_operation(:delete_notification_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteNotificationSubscription"
        operation.name = "DeleteNotificationSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNotificationSubscriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}", "code" => 200}}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/users/{UserId}", "code" => 204}}
      end)
      service.add_operation(:describe_activities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeActivities"
        operation.name = "DescribeActivities"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeActivitiesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeActivitiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/activities", "code" => 200}}
        operation[:paginator] = Paginators::DescribeActivities.new
      end)
      service.add_operation(:describe_comments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeComments"
        operation.name = "DescribeComments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCommentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCommentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments", "code" => 200}}
        operation[:paginator] = Paginators::DescribeComments.new
      end)
      service.add_operation(:describe_document_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeDocumentVersions"
        operation.name = "DescribeDocumentVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDocumentVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDocumentVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/documents/{DocumentId}/versions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeDocumentVersions.new
      end)
      service.add_operation(:describe_folder_contents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeFolderContents"
        operation.name = "DescribeFolderContents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFolderContentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFolderContentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/folders/{FolderId}/contents", "code" => 200}}
        operation[:paginator] = Paginators::DescribeFolderContents.new
      end)
      service.add_operation(:describe_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeGroups"
        operation.name = "DescribeGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/groups", "code" => 200}}
        operation[:paginator] = Paginators::DescribeGroups.new
      end)
      service.add_operation(:describe_notification_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeNotificationSubscriptions"
        operation.name = "DescribeNotificationSubscriptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNotificationSubscriptionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNotificationSubscriptionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/organizations/{OrganizationId}/subscriptions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeNotificationSubscriptions.new
      end)
      service.add_operation(:describe_resource_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeResourcePermissions"
        operation.name = "DescribeResourcePermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourcePermissionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourcePermissionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/resources/{ResourceId}/permissions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeResourcePermissions.new
      end)
      service.add_operation(:describe_root_folders, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeRootFolders"
        operation.name = "DescribeRootFolders"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRootFoldersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRootFoldersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/me/root", "code" => 200}}
        operation[:paginator] = Paginators::DescribeRootFolders.new
      end)
      service.add_operation(:describe_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeUsers"
        operation.name = "DescribeUsers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUsersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUsersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedEntityTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/users", "code" => 200}}
        operation[:paginator] = Paginators::DescribeUsers.new
      end)
      service.add_operation(:get_current_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#GetCurrentUser"
        operation.name = "GetCurrentUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCurrentUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCurrentUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/me", "code" => 200}}
      end)
      service.add_operation(:get_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#GetDocument"
        operation.name = "GetDocument"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/documents/{DocumentId}", "code" => 200}}
      end)
      service.add_operation(:get_document_path, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#GetDocumentPath"
        operation.name = "GetDocumentPath"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentPathRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentPathResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/documents/{DocumentId}/path", "code" => 200}}
      end)
      service.add_operation(:get_document_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#GetDocumentVersion"
        operation.name = "GetDocumentVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/documents/{DocumentId}/versions/{VersionId}", "code" => 200}}
      end)
      service.add_operation(:get_folder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#GetFolder"
        operation.name = "GetFolder"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFolderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFolderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/folders/{FolderId}", "code" => 200}}
      end)
      service.add_operation(:get_folder_path, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#GetFolderPath"
        operation.name = "GetFolderPath"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFolderPathRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFolderPathResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/folders/{FolderId}/path", "code" => 200}}
      end)
      service.add_operation(:get_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#GetResources"
        operation.name = "GetResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/resources", "code" => 200}}
      end)
      service.add_operation(:initiate_document_version_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#InitiateDocumentVersionUpload"
        operation.name = "InitiateDocumentVersionUpload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateDocumentVersionUploadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateDocumentVersionUploadResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DraftUploadOutOfSyncException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyCheckedOutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLimitWillExceedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/documents", "code" => 201}}
      end)
      service.add_operation(:remove_all_resource_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#RemoveAllResourcePermissions"
        operation.name = "RemoveAllResourcePermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAllResourcePermissionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/resources/{ResourceId}/permissions", "code" => 204}}
      end)
      service.add_operation(:remove_resource_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#RemoveResourcePermission"
        operation.name = "RemoveResourcePermission"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveResourcePermissionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}", "code" => 204}}
      end)
      service.add_operation(:restore_document_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#RestoreDocumentVersions"
        operation.name = "RestoreDocumentVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDocumentVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/documentVersions/restore/{DocumentId}", "code" => 204}}
      end)
      service.add_operation(:search_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#SearchResources"
        operation.name = "SearchResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/search", "code" => 200}}
        operation[:paginator] = Paginators::SearchResources.new
      end)
      service.add_operation(:update_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#UpdateDocument"
        operation.name = "UpdateDocument"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDocumentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/api/v1/documents/{DocumentId}", "code" => 200}}
      end)
      service.add_operation(:update_document_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#UpdateDocumentVersion"
        operation.name = "UpdateDocumentVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDocumentVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/api/v1/documents/{DocumentId}/versions/{VersionId}", "code" => 200}}
      end)
      service.add_operation(:update_folder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#UpdateFolder"
        operation.name = "UpdateFolder"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFolderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/api/v1/folders/{FolderId}", "code" => 200}}
      end)
      service.add_operation(:update_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivatingLastSystemUserException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUserStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProhibitedStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/api/v1/users/{UserId}", "code" => 200}}
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
