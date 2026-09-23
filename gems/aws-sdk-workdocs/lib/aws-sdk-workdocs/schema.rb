# frozen_string_literal: true

# This is generated code!

module Aws::WorkDocs
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AbortDocumentVersionUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#AbortDocumentVersionUploadRequest", name: "AbortDocumentVersionUploadRequest")
    ActivateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#ActivateUserRequest", name: "ActivateUserRequest")
    ActivateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#ActivateUserResponse", name: "ActivateUserResponse")
    Activity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#Activity", name: "Activity")
    ActivityNamesFilterType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#ActivityNamesFilterType", name: "ActivityNamesFilterType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\w,]+$"})
    ActivityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#ActivityType", name: "ActivityType")
    AddResourcePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#AddResourcePermissionsRequest", name: "AddResourcePermissionsRequest")
    AddResourcePermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#AddResourcePermissionsResponse", name: "AddResourcePermissionsResponse")
    AdditionalResponseFieldType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#AdditionalResponseFieldType", name: "AdditionalResponseFieldType")
    AdditionalResponseFieldsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#AdditionalResponseFieldsList", name: "AdditionalResponseFieldsList")
    AuthenticationHeaderType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#AuthenticationHeaderType", name: "AuthenticationHeaderType", traits: {"smithy.api#length" => {"min" => 1, "max" => 8199}, "smithy.api#sensitive" => {}})
    BooleanEnumType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#BooleanEnumType", name: "BooleanEnumType")
    BooleanType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.workdocs#BooleanType", name: "BooleanType", traits: {"smithy.api#default" => false})
    Comment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#Comment", name: "Comment")
    CommentIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#CommentIdType", name: "CommentIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+-.@]+$"})
    CommentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#CommentList", name: "CommentList")
    CommentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#CommentMetadata", name: "CommentMetadata")
    CommentStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#CommentStatusType", name: "CommentStatusType")
    CommentTextType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#CommentTextType", name: "CommentTextType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    CommentVisibilityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#CommentVisibilityType", name: "CommentVisibilityType")
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictingOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#ConflictingOperationException", name: "ConflictingOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentCategoryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#ContentCategoryType", name: "ContentCategoryType")
    CreateCommentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#CreateCommentRequest", name: "CreateCommentRequest")
    CreateCommentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#CreateCommentResponse", name: "CreateCommentResponse")
    CreateCustomMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#CreateCustomMetadataRequest", name: "CreateCustomMetadataRequest")
    CreateCustomMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#CreateCustomMetadataResponse", name: "CreateCustomMetadataResponse")
    CreateFolderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#CreateFolderRequest", name: "CreateFolderRequest")
    CreateFolderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#CreateFolderResponse", name: "CreateFolderResponse")
    CreateLabelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#CreateLabelsRequest", name: "CreateLabelsRequest")
    CreateLabelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#CreateLabelsResponse", name: "CreateLabelsResponse")
    CreateNotificationSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#CreateNotificationSubscriptionRequest", name: "CreateNotificationSubscriptionRequest")
    CreateNotificationSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#CreateNotificationSubscriptionResponse", name: "CreateNotificationSubscriptionResponse")
    CreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#CreateUserRequest", name: "CreateUserRequest")
    CreateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#CreateUserResponse", name: "CreateUserResponse")
    CustomMetadataKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#CustomMetadataKeyList", name: "CustomMetadataKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 8}})
    CustomMetadataKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#CustomMetadataKeyType", name: "CustomMetadataKeyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 56}, "smithy.api#pattern" => "^[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*$"})
    CustomMetadataLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#CustomMetadataLimitExceededException", name: "CustomMetadataLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    CustomMetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.workdocs#CustomMetadataMap", name: "CustomMetadataMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    CustomMetadataValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#CustomMetadataValueType", name: "CustomMetadataValueType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*$"})
    DateRangeType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DateRangeType", name: "DateRangeType")
    DeactivateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DeactivateUserRequest", name: "DeactivateUserRequest")
    DeactivatingLastSystemUserException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DeactivatingLastSystemUserException", name: "DeactivatingLastSystemUserException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DeleteCommentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DeleteCommentRequest", name: "DeleteCommentRequest")
    DeleteCustomMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DeleteCustomMetadataRequest", name: "DeleteCustomMetadataRequest")
    DeleteCustomMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DeleteCustomMetadataResponse", name: "DeleteCustomMetadataResponse")
    DeleteDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DeleteDocumentRequest", name: "DeleteDocumentRequest")
    DeleteDocumentVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DeleteDocumentVersionRequest", name: "DeleteDocumentVersionRequest")
    DeleteFolderContentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DeleteFolderContentsRequest", name: "DeleteFolderContentsRequest")
    DeleteFolderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DeleteFolderRequest", name: "DeleteFolderRequest")
    DeleteLabelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DeleteLabelsRequest", name: "DeleteLabelsRequest")
    DeleteLabelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DeleteLabelsResponse", name: "DeleteLabelsResponse")
    DeleteNotificationSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DeleteNotificationSubscriptionRequest", name: "DeleteNotificationSubscriptionRequest")
    DeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DeleteUserRequest", name: "DeleteUserRequest")
    DescribeActivitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeActivitiesRequest", name: "DescribeActivitiesRequest")
    DescribeActivitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeActivitiesResponse", name: "DescribeActivitiesResponse")
    DescribeCommentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeCommentsRequest", name: "DescribeCommentsRequest")
    DescribeCommentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeCommentsResponse", name: "DescribeCommentsResponse")
    DescribeDocumentVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeDocumentVersionsRequest", name: "DescribeDocumentVersionsRequest")
    DescribeDocumentVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeDocumentVersionsResponse", name: "DescribeDocumentVersionsResponse")
    DescribeFolderContentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeFolderContentsRequest", name: "DescribeFolderContentsRequest")
    DescribeFolderContentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeFolderContentsResponse", name: "DescribeFolderContentsResponse")
    DescribeGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeGroupsRequest", name: "DescribeGroupsRequest")
    DescribeGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeGroupsResponse", name: "DescribeGroupsResponse")
    DescribeNotificationSubscriptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeNotificationSubscriptionsRequest", name: "DescribeNotificationSubscriptionsRequest")
    DescribeNotificationSubscriptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeNotificationSubscriptionsResponse", name: "DescribeNotificationSubscriptionsResponse")
    DescribeResourcePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeResourcePermissionsRequest", name: "DescribeResourcePermissionsRequest")
    DescribeResourcePermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeResourcePermissionsResponse", name: "DescribeResourcePermissionsResponse")
    DescribeRootFoldersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeRootFoldersRequest", name: "DescribeRootFoldersRequest")
    DescribeRootFoldersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeRootFoldersResponse", name: "DescribeRootFoldersResponse")
    DescribeUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeUsersRequest", name: "DescribeUsersRequest")
    DescribeUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DescribeUsersResponse", name: "DescribeUsersResponse")
    DocumentContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#DocumentContentType", name: "DocumentContentType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DocumentLockedForCommentsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DocumentLockedForCommentsException", name: "DocumentLockedForCommentsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DocumentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DocumentMetadata", name: "DocumentMetadata")
    DocumentMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#DocumentMetadataList", name: "DocumentMetadataList")
    DocumentSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#DocumentSourceType", name: "DocumentSourceType")
    DocumentSourceUrlMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.workdocs#DocumentSourceUrlMap", name: "DocumentSourceUrlMap")
    DocumentStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#DocumentStatusType", name: "DocumentStatusType")
    DocumentThumbnailType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#DocumentThumbnailType", name: "DocumentThumbnailType")
    DocumentThumbnailUrlMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.workdocs#DocumentThumbnailUrlMap", name: "DocumentThumbnailUrlMap")
    DocumentVersionIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#DocumentVersionIdType", name: "DocumentVersionIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+-.@]+$"})
    DocumentVersionMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DocumentVersionMetadata", name: "DocumentVersionMetadata")
    DocumentVersionMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#DocumentVersionMetadataList", name: "DocumentVersionMetadataList")
    DocumentVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#DocumentVersionStatus", name: "DocumentVersionStatus")
    DraftUploadOutOfSyncException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#DraftUploadOutOfSyncException", name: "DraftUploadOutOfSyncException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EmailAddressType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#EmailAddressType", name: "EmailAddressType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$", "smithy.api#sensitive" => {}})
    EntityAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#EntityAlreadyExistsException", name: "EntityAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EntityIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#EntityIdList", name: "EntityIdList")
    EntityNotExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#EntityNotExistsException", name: "EntityNotExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ErrorMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#ErrorMessageType", name: "ErrorMessageType")
    ExceptionCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#ExceptionCodeType", name: "ExceptionCodeType")
    FailedDependencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#FailedDependencyException", name: "FailedDependencyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    FieldNamesType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#FieldNamesType", name: "FieldNamesType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w,]+$"})
    Filters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#Filters", name: "Filters")
    FolderContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#FolderContentType", name: "FolderContentType")
    FolderMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#FolderMetadata", name: "FolderMetadata")
    FolderMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#FolderMetadataList", name: "FolderMetadataList")
    GetCurrentUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GetCurrentUserRequest", name: "GetCurrentUserRequest")
    GetCurrentUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GetCurrentUserResponse", name: "GetCurrentUserResponse")
    GetDocumentPathRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GetDocumentPathRequest", name: "GetDocumentPathRequest")
    GetDocumentPathResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GetDocumentPathResponse", name: "GetDocumentPathResponse")
    GetDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GetDocumentRequest", name: "GetDocumentRequest")
    GetDocumentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GetDocumentResponse", name: "GetDocumentResponse")
    GetDocumentVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GetDocumentVersionRequest", name: "GetDocumentVersionRequest")
    GetDocumentVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GetDocumentVersionResponse", name: "GetDocumentVersionResponse")
    GetFolderPathRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GetFolderPathRequest", name: "GetFolderPathRequest")
    GetFolderPathResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GetFolderPathResponse", name: "GetFolderPathResponse")
    GetFolderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GetFolderRequest", name: "GetFolderRequest")
    GetFolderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GetFolderResponse", name: "GetFolderResponse")
    GetResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GetResourcesRequest", name: "GetResourcesRequest")
    GetResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GetResourcesResponse", name: "GetResourcesResponse")
    GroupMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#GroupMetadata", name: "GroupMetadata")
    GroupMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#GroupMetadataList", name: "GroupMetadataList")
    GroupNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#GroupNameType", name: "GroupNameType")
    HashType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#HashType", name: "HashType", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[&\\w+-.@]+$"})
    HeaderNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#HeaderNameType", name: "HeaderNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w-]+$"})
    HeaderValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#HeaderValueType", name: "HeaderValueType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    IdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#IdType", name: "IdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[&\\w+-.@]+$"})
    IllegalUserStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#IllegalUserStateException", name: "IllegalUserStateException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InitiateDocumentVersionUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#InitiateDocumentVersionUploadRequest", name: "InitiateDocumentVersionUploadRequest")
    InitiateDocumentVersionUploadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#InitiateDocumentVersionUploadResponse", name: "InitiateDocumentVersionUploadResponse")
    InvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#InvalidArgumentException", name: "InvalidArgumentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCommentOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#InvalidCommentOperationException", name: "InvalidCommentOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InvalidOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#InvalidOperationException", name: "InvalidOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    InvalidPasswordException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#InvalidPasswordException", name: "InvalidPasswordException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    LanguageCodeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#LanguageCodeType", name: "LanguageCodeType")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    LimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workdocs#LimitType", name: "LimitType", traits: {"smithy.api#range" => {"min" => 1, "max" => 999}})
    LocaleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#LocaleType", name: "LocaleType")
    LongRangeType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#LongRangeType", name: "LongRangeType")
    LongType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workdocs#LongType", name: "LongType")
    MarkerType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#MarkerType", name: "MarkerType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\u0000-\\u00FF]+$"})
    MessageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#MessageType", name: "MessageType", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#sensitive" => {}})
    NextMarkerType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#NextMarkerType", name: "NextMarkerType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\d]+$"})
    NotificationOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#NotificationOptions", name: "NotificationOptions")
    OrderByFieldType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#OrderByFieldType", name: "OrderByFieldType")
    OrderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#OrderType", name: "OrderType")
    OrganizationUserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#OrganizationUserList", name: "OrganizationUserList")
    PageMarkerType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#PageMarkerType", name: "PageMarkerType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Participants = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#Participants", name: "Participants")
    PasswordType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#PasswordType", name: "PasswordType", traits: {"smithy.api#length" => {"min" => 4, "max" => 32}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$", "smithy.api#sensitive" => {}})
    PermissionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#PermissionInfo", name: "PermissionInfo")
    PermissionInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#PermissionInfoList", name: "PermissionInfoList")
    PositiveIntegerType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workdocs#PositiveIntegerType", name: "PositiveIntegerType", traits: {"smithy.api#range" => {"min" => 1}})
    PositiveSizeType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workdocs#PositiveSizeType", name: "PositiveSizeType", traits: {"smithy.api#range" => {"min" => 0}})
    Principal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#Principal", name: "Principal")
    PrincipalList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#PrincipalList", name: "PrincipalList")
    PrincipalRoleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#PrincipalRoleType", name: "PrincipalRoleType")
    PrincipalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#PrincipalType", name: "PrincipalType")
    ProhibitedStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#ProhibitedStateException", name: "ProhibitedStateException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    RemoveAllResourcePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#RemoveAllResourcePermissionsRequest", name: "RemoveAllResourcePermissionsRequest")
    RemoveResourcePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#RemoveResourcePermissionRequest", name: "RemoveResourcePermissionRequest")
    RequestedEntityTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#RequestedEntityTooLargeException", name: "RequestedEntityTooLargeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    ResourceAlreadyCheckedOutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#ResourceAlreadyCheckedOutException", name: "ResourceAlreadyCheckedOutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceCollectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#ResourceCollectionType", name: "ResourceCollectionType")
    ResourceIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#ResourceIdType", name: "ResourceIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+-.@]+$"})
    ResourceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#ResourceMetadata", name: "ResourceMetadata")
    ResourceNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#ResourceNameType", name: "ResourceNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\u202D\\u202F-\\uFFFF]+$", "smithy.api#sensitive" => {}})
    ResourcePath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#ResourcePath", name: "ResourcePath")
    ResourcePathComponent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#ResourcePathComponent", name: "ResourcePathComponent")
    ResourcePathComponentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#ResourcePathComponentList", name: "ResourcePathComponentList")
    ResourceSortType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#ResourceSortType", name: "ResourceSortType")
    ResourceStateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#ResourceStateType", name: "ResourceStateType")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#ResourceType", name: "ResourceType")
    ResponseItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#ResponseItem", name: "ResponseItem")
    ResponseItemType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#ResponseItemType", name: "ResponseItemType")
    ResponseItemWebUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#ResponseItemWebUrl", name: "ResponseItemWebUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\u0020-\\uFFFF]+$", "smithy.api#sensitive" => {}})
    ResponseItemsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#ResponseItemsList", name: "ResponseItemsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    RestoreDocumentVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#RestoreDocumentVersionsRequest", name: "RestoreDocumentVersionsRequest")
    RolePermissionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#RolePermissionType", name: "RolePermissionType")
    RoleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#RoleType", name: "RoleType")
    SearchAncestorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#SearchAncestorId", name: "SearchAncestorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    SearchAncestorIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#SearchAncestorIdList", name: "SearchAncestorIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SearchCollectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#SearchCollectionType", name: "SearchCollectionType")
    SearchCollectionTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#SearchCollectionTypeList", name: "SearchCollectionTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    SearchContentCategoryTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#SearchContentCategoryTypeList", name: "SearchContentCategoryTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 9}})
    SearchLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#SearchLabel", name: "SearchLabel", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    SearchLabelList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#SearchLabelList", name: "SearchLabelList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SearchMarkerType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#SearchMarkerType", name: "SearchMarkerType", traits: {"smithy.api#length" => {"min" => 1, "max" => 12288}, "smithy.api#pattern" => "^[\\u0000-\\u00FF]+$"})
    SearchPrincipalRoleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#SearchPrincipalRoleList", name: "SearchPrincipalRoleList", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    SearchPrincipalType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#SearchPrincipalType", name: "SearchPrincipalType")
    SearchPrincipalTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#SearchPrincipalTypeList", name: "SearchPrincipalTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SearchQueryScopeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#SearchQueryScopeType", name: "SearchQueryScopeType")
    SearchQueryScopeTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#SearchQueryScopeTypeList", name: "SearchQueryScopeTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    SearchQueryType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#SearchQueryType", name: "SearchQueryType", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\u0020-\\uFFFF]+$", "smithy.api#sensitive" => {}})
    SearchResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#SearchResourceType", name: "SearchResourceType")
    SearchResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#SearchResourceTypeList", name: "SearchResourceTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    SearchResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#SearchResourcesRequest", name: "SearchResourcesRequest")
    SearchResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#SearchResourcesResponse", name: "SearchResourcesResponse")
    SearchResultSortList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#SearchResultSortList", name: "SearchResultSortList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    SearchResultsLimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workdocs#SearchResultsLimitType", name: "SearchResultsLimitType", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    SearchSortResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#SearchSortResult", name: "SearchSortResult")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SharePrincipal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#SharePrincipal", name: "SharePrincipal")
    SharePrincipalList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#SharePrincipalList", name: "SharePrincipalList")
    ShareResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#ShareResult", name: "ShareResult")
    ShareResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#ShareResultsList", name: "ShareResultsList")
    ShareStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#ShareStatusType", name: "ShareStatusType")
    SharedLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#SharedLabel", name: "SharedLabel", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*$"})
    SharedLabels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#SharedLabels", name: "SharedLabels", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    SignedHeaderMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.workdocs#SignedHeaderMap", name: "SignedHeaderMap")
    SizeType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workdocs#SizeType", name: "SizeType")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#SortOrder", name: "SortOrder")
    StorageLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#StorageLimitExceededException", name: "StorageLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    StorageLimitWillExceedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#StorageLimitWillExceedException", name: "StorageLimitWillExceedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    StorageRuleType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#StorageRuleType", name: "StorageRuleType")
    StorageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#StorageType", name: "StorageType")
    Subscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#Subscription", name: "Subscription")
    SubscriptionEndPointType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#SubscriptionEndPointType", name: "SubscriptionEndPointType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#SubscriptionList", name: "SubscriptionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    SubscriptionProtocolType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#SubscriptionProtocolType", name: "SubscriptionProtocolType")
    SubscriptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#SubscriptionType", name: "SubscriptionType")
    TextLocaleTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#TextLocaleTypeList", name: "TextLocaleTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    TimeZoneIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#TimeZoneIdType", name: "TimeZoneIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    TimestampType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.workdocs#TimestampType", name: "TimestampType")
    TooManyLabelsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#TooManyLabelsException", name: "TooManyLabelsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TooManySubscriptionsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#TooManySubscriptionsException", name: "TooManySubscriptionsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnauthorizedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#UnauthorizedOperationException", name: "UnauthorizedOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    UnauthorizedResourceAccessException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#UnauthorizedResourceAccessException", name: "UnauthorizedResourceAccessException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UpdateDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#UpdateDocumentRequest", name: "UpdateDocumentRequest")
    UpdateDocumentVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#UpdateDocumentVersionRequest", name: "UpdateDocumentVersionRequest")
    UpdateFolderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#UpdateFolderRequest", name: "UpdateFolderRequest")
    UpdateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#UpdateUserRequest", name: "UpdateUserRequest")
    UpdateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#UpdateUserResponse", name: "UpdateUserResponse")
    UploadMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#UploadMetadata", name: "UploadMetadata")
    UrlType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#UrlType", name: "UrlType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#User", name: "User")
    UserActivities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#UserActivities", name: "UserActivities")
    UserAttributeValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#UserAttributeValueType", name: "UserAttributeValueType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    UserFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#UserFilterType", name: "UserFilterType")
    UserIdsType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#UserIdsType", name: "UserIdsType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^[&\\w+-.@, ]+$"})
    UserMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#UserMetadata", name: "UserMetadata")
    UserMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workdocs#UserMetadataList", name: "UserMetadataList")
    UserSortType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#UserSortType", name: "UserSortType")
    UserStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#UserStatusType", name: "UserStatusType")
    UserStorageMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workdocs#UserStorageMetadata", name: "UserStorageMetadata")
    UserType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workdocs#UserType", name: "UserType")
    UsernameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workdocs#UsernameType", name: "UsernameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?$", "smithy.api#sensitive" => {}})

    AbortDocumentVersionUploadRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    AbortDocumentVersionUploadRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "DocumentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortDocumentVersionUploadRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionIdType, name: "VersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortDocumentVersionUploadRequest.type = Types::AbortDocumentVersionUploadRequest
    ActivateUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "UserId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ActivateUserRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    ActivateUserRequest.type = Types::ActivateUserRequest
    ActivateUserResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "User"))
    ActivateUserResponse.type = Types::ActivateUserResponse
    Activity.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityType, name: "Type"))
    Activity.add_member(:time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "TimeStamp"))
    Activity.add_member(:is_indirect_activity, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsIndirectActivity", traits: {"smithy.api#default" => false}))
    Activity.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "OrganizationId"))
    Activity.add_member(:initiator, ::Smithy::Schema::Shapes::MemberShape.new(target: UserMetadata, name: "Initiator"))
    Activity.add_member(:participants, ::Smithy::Schema::Shapes::MemberShape.new(target: Participants, name: "Participants"))
    Activity.add_member(:resource_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMetadata, name: "ResourceMetadata"))
    Activity.add_member(:original_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMetadata, name: "OriginalParent"))
    Activity.add_member(:comment_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentMetadata, name: "CommentMetadata"))
    Activity.type = Types::Activity
    ActivityType.add_member(:document_checked_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_CHECKED_IN", traits: {"smithy.api#enumValue" => "DOCUMENT_CHECKED_IN"}))
    ActivityType.add_member(:document_checked_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_CHECKED_OUT", traits: {"smithy.api#enumValue" => "DOCUMENT_CHECKED_OUT"}))
    ActivityType.add_member(:document_renamed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_RENAMED", traits: {"smithy.api#enumValue" => "DOCUMENT_RENAMED"}))
    ActivityType.add_member(:document_version_uploaded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_VERSION_UPLOADED", traits: {"smithy.api#enumValue" => "DOCUMENT_VERSION_UPLOADED"}))
    ActivityType.add_member(:document_version_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_VERSION_DELETED", traits: {"smithy.api#enumValue" => "DOCUMENT_VERSION_DELETED"}))
    ActivityType.add_member(:document_version_viewed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_VERSION_VIEWED", traits: {"smithy.api#enumValue" => "DOCUMENT_VERSION_VIEWED"}))
    ActivityType.add_member(:document_version_downloaded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_VERSION_DOWNLOADED", traits: {"smithy.api#enumValue" => "DOCUMENT_VERSION_DOWNLOADED"}))
    ActivityType.add_member(:document_recycled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_RECYCLED", traits: {"smithy.api#enumValue" => "DOCUMENT_RECYCLED"}))
    ActivityType.add_member(:document_restored, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_RESTORED", traits: {"smithy.api#enumValue" => "DOCUMENT_RESTORED"}))
    ActivityType.add_member(:document_reverted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_REVERTED", traits: {"smithy.api#enumValue" => "DOCUMENT_REVERTED"}))
    ActivityType.add_member(:document_shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_SHARED", traits: {"smithy.api#enumValue" => "DOCUMENT_SHARED"}))
    ActivityType.add_member(:document_unshared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_UNSHARED", traits: {"smithy.api#enumValue" => "DOCUMENT_UNSHARED"}))
    ActivityType.add_member(:document_share_permission_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_SHARE_PERMISSION_CHANGED", traits: {"smithy.api#enumValue" => "DOCUMENT_SHARE_PERMISSION_CHANGED"}))
    ActivityType.add_member(:document_shareable_link_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_SHAREABLE_LINK_CREATED", traits: {"smithy.api#enumValue" => "DOCUMENT_SHAREABLE_LINK_CREATED"}))
    ActivityType.add_member(:document_shareable_link_removed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_SHAREABLE_LINK_REMOVED", traits: {"smithy.api#enumValue" => "DOCUMENT_SHAREABLE_LINK_REMOVED"}))
    ActivityType.add_member(:document_shareable_link_permission_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED", traits: {"smithy.api#enumValue" => "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED"}))
    ActivityType.add_member(:document_moved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_MOVED", traits: {"smithy.api#enumValue" => "DOCUMENT_MOVED"}))
    ActivityType.add_member(:document_comment_added, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_COMMENT_ADDED", traits: {"smithy.api#enumValue" => "DOCUMENT_COMMENT_ADDED"}))
    ActivityType.add_member(:document_comment_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_COMMENT_DELETED", traits: {"smithy.api#enumValue" => "DOCUMENT_COMMENT_DELETED"}))
    ActivityType.add_member(:document_annotation_added, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_ANNOTATION_ADDED", traits: {"smithy.api#enumValue" => "DOCUMENT_ANNOTATION_ADDED"}))
    ActivityType.add_member(:document_annotation_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_ANNOTATION_DELETED", traits: {"smithy.api#enumValue" => "DOCUMENT_ANNOTATION_DELETED"}))
    ActivityType.add_member(:folder_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER_CREATED", traits: {"smithy.api#enumValue" => "FOLDER_CREATED"}))
    ActivityType.add_member(:folder_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER_DELETED", traits: {"smithy.api#enumValue" => "FOLDER_DELETED"}))
    ActivityType.add_member(:folder_renamed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER_RENAMED", traits: {"smithy.api#enumValue" => "FOLDER_RENAMED"}))
    ActivityType.add_member(:folder_recycled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER_RECYCLED", traits: {"smithy.api#enumValue" => "FOLDER_RECYCLED"}))
    ActivityType.add_member(:folder_restored, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER_RESTORED", traits: {"smithy.api#enumValue" => "FOLDER_RESTORED"}))
    ActivityType.add_member(:folder_shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER_SHARED", traits: {"smithy.api#enumValue" => "FOLDER_SHARED"}))
    ActivityType.add_member(:folder_unshared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER_UNSHARED", traits: {"smithy.api#enumValue" => "FOLDER_UNSHARED"}))
    ActivityType.add_member(:folder_share_permission_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER_SHARE_PERMISSION_CHANGED", traits: {"smithy.api#enumValue" => "FOLDER_SHARE_PERMISSION_CHANGED"}))
    ActivityType.add_member(:folder_shareable_link_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER_SHAREABLE_LINK_CREATED", traits: {"smithy.api#enumValue" => "FOLDER_SHAREABLE_LINK_CREATED"}))
    ActivityType.add_member(:folder_shareable_link_removed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER_SHAREABLE_LINK_REMOVED", traits: {"smithy.api#enumValue" => "FOLDER_SHAREABLE_LINK_REMOVED"}))
    ActivityType.add_member(:folder_shareable_link_permission_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED", traits: {"smithy.api#enumValue" => "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED"}))
    ActivityType.add_member(:folder_moved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER_MOVED", traits: {"smithy.api#enumValue" => "FOLDER_MOVED"}))
    AddResourcePermissionsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    AddResourcePermissionsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ResourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddResourcePermissionsRequest.add_member(:principals, ::Smithy::Schema::Shapes::MemberShape.new(target: SharePrincipalList, name: "Principals", traits: {"smithy.api#required" => {}}))
    AddResourcePermissionsRequest.add_member(:notification_options, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationOptions, name: "NotificationOptions"))
    AddResourcePermissionsRequest.type = Types::AddResourcePermissionsRequest
    AddResourcePermissionsResponse.add_member(:share_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareResultsList, name: "ShareResults"))
    AddResourcePermissionsResponse.type = Types::AddResourcePermissionsResponse
    AdditionalResponseFieldType.add_member(:weburl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEBURL", traits: {"smithy.api#enumValue" => "WEBURL"}))
    AdditionalResponseFieldsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalResponseFieldType, name: "member"))
    BooleanEnumType.add_member(:true, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUE", traits: {"smithy.api#enumValue" => "TRUE"}))
    BooleanEnumType.add_member(:false, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FALSE", traits: {"smithy.api#enumValue" => "FALSE"}))
    Comment.add_member(:comment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentIdType, name: "CommentId", traits: {"smithy.api#required" => {}}))
    Comment.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentIdType, name: "ParentId"))
    Comment.add_member(:thread_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentIdType, name: "ThreadId"))
    Comment.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentTextType, name: "Text"))
    Comment.add_member(:contributor, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "Contributor"))
    Comment.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "CreatedTimestamp"))
    Comment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentStatusType, name: "Status"))
    Comment.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentVisibilityType, name: "Visibility"))
    Comment.add_member(:recipient_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "RecipientId"))
    Comment.type = Types::Comment
    CommentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "member"))
    CommentMetadata.add_member(:comment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentIdType, name: "CommentId"))
    CommentMetadata.add_member(:contributor, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "Contributor"))
    CommentMetadata.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "CreatedTimestamp"))
    CommentMetadata.add_member(:comment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentStatusType, name: "CommentStatus"))
    CommentMetadata.add_member(:recipient_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "RecipientId"))
    CommentMetadata.add_member(:contributor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "ContributorId"))
    CommentMetadata.type = Types::CommentMetadata
    CommentStatusType.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRAFT", traits: {"smithy.api#enumValue" => "DRAFT"}))
    CommentStatusType.add_member(:published, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLISHED", traits: {"smithy.api#enumValue" => "PUBLISHED"}))
    CommentStatusType.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    CommentVisibilityType.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    CommentVisibilityType.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictingOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    ConflictingOperationException.type = Types::ConflictingOperationException
    ContentCategoryType.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE", traits: {"smithy.api#enumValue" => "IMAGE"}))
    ContentCategoryType.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    ContentCategoryType.add_member(:pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PDF", traits: {"smithy.api#enumValue" => "PDF"}))
    ContentCategoryType.add_member(:spreadsheet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPREADSHEET", traits: {"smithy.api#enumValue" => "SPREADSHEET"}))
    ContentCategoryType.add_member(:presentation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESENTATION", traits: {"smithy.api#enumValue" => "PRESENTATION"}))
    ContentCategoryType.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUDIO", traits: {"smithy.api#enumValue" => "AUDIO"}))
    ContentCategoryType.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIDEO", traits: {"smithy.api#enumValue" => "VIDEO"}))
    ContentCategoryType.add_member(:source_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_CODE", traits: {"smithy.api#enumValue" => "SOURCE_CODE"}))
    ContentCategoryType.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    CreateCommentRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    CreateCommentRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "DocumentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCommentRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionIdType, name: "VersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCommentRequest.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentIdType, name: "ParentId"))
    CreateCommentRequest.add_member(:thread_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentIdType, name: "ThreadId"))
    CreateCommentRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentTextType, name: "Text", traits: {"smithy.api#required" => {}}))
    CreateCommentRequest.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentVisibilityType, name: "Visibility"))
    CreateCommentRequest.add_member(:notify_collaborators, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "NotifyCollaborators", traits: {"smithy.api#default" => false}))
    CreateCommentRequest.type = Types::CreateCommentRequest
    CreateCommentResponse.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "Comment"))
    CreateCommentResponse.type = Types::CreateCommentResponse
    CreateCustomMetadataRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    CreateCustomMetadataRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ResourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCustomMetadataRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionIdType, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionid"}))
    CreateCustomMetadataRequest.add_member(:custom_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataMap, name: "CustomMetadata", traits: {"smithy.api#required" => {}}))
    CreateCustomMetadataRequest.type = Types::CreateCustomMetadataRequest
    CreateCustomMetadataResponse.type = Types::CreateCustomMetadataResponse
    CreateFolderRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    CreateFolderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "Name"))
    CreateFolderRequest.add_member(:parent_folder_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ParentFolderId", traits: {"smithy.api#required" => {}}))
    CreateFolderRequest.type = Types::CreateFolderRequest
    CreateFolderResponse.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: FolderMetadata, name: "Metadata"))
    CreateFolderResponse.type = Types::CreateFolderResponse
    CreateLabelsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ResourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLabelsRequest.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedLabels, name: "Labels", traits: {"smithy.api#required" => {}}))
    CreateLabelsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    CreateLabelsRequest.type = Types::CreateLabelsRequest
    CreateLabelsResponse.type = Types::CreateLabelsResponse
    CreateNotificationSubscriptionRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "OrganizationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateNotificationSubscriptionRequest.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionEndPointType, name: "Endpoint", traits: {"smithy.api#required" => {}}))
    CreateNotificationSubscriptionRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProtocolType, name: "Protocol", traits: {"smithy.api#required" => {}}))
    CreateNotificationSubscriptionRequest.add_member(:subscription_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionType, name: "SubscriptionType", traits: {"smithy.api#required" => {}}))
    CreateNotificationSubscriptionRequest.type = Types::CreateNotificationSubscriptionRequest
    CreateNotificationSubscriptionResponse.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "Subscription"))
    CreateNotificationSubscriptionResponse.type = Types::CreateNotificationSubscriptionResponse
    CreateUserRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "OrganizationId"))
    CreateUserRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressType, name: "EmailAddress"))
    CreateUserRequest.add_member(:given_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeValueType, name: "GivenName", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:surname, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeValueType, name: "Surname", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordType, name: "Password", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:time_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeZoneIdType, name: "TimeZoneId"))
    CreateUserRequest.add_member(:storage_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageRuleType, name: "StorageRule"))
    CreateUserRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "User"))
    CreateUserResponse.type = Types::CreateUserResponse
    CustomMetadataKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataKeyType, name: "member"))
    CustomMetadataLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    CustomMetadataLimitExceededException.type = Types::CustomMetadataLimitExceededException
    CustomMetadataMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataKeyType, name: "key"))
    CustomMetadataMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataValueType, name: "value"))
    DateRangeType.add_member(:start_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "StartValue"))
    DateRangeType.add_member(:end_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "EndValue"))
    DateRangeType.type = Types::DateRangeType
    DeactivateUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "UserId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeactivateUserRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeactivateUserRequest.type = Types::DeactivateUserRequest
    DeactivatingLastSystemUserException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    DeactivatingLastSystemUserException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionCodeType, name: "Code"))
    DeactivatingLastSystemUserException.type = Types::DeactivatingLastSystemUserException
    DeleteCommentRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteCommentRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "DocumentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCommentRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionIdType, name: "VersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCommentRequest.add_member(:comment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentIdType, name: "CommentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCommentRequest.type = Types::DeleteCommentRequest
    DeleteCustomMetadataRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteCustomMetadataRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ResourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomMetadataRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionIdType, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    DeleteCustomMetadataRequest.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataKeyList, name: "Keys", traits: {"smithy.api#httpQuery" => "keys"}))
    DeleteCustomMetadataRequest.add_member(:delete_all, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "DeleteAll", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "deleteAll"}))
    DeleteCustomMetadataRequest.type = Types::DeleteCustomMetadataRequest
    DeleteCustomMetadataResponse.type = Types::DeleteCustomMetadataResponse
    DeleteDocumentRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteDocumentRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "DocumentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDocumentRequest.type = Types::DeleteDocumentRequest
    DeleteDocumentVersionRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteDocumentVersionRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "DocumentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDocumentVersionRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionIdType, name: "VersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDocumentVersionRequest.add_member(:delete_prior_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "DeletePriorVersions", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "deletePriorVersions", "smithy.api#required" => {}}))
    DeleteDocumentVersionRequest.type = Types::DeleteDocumentVersionRequest
    DeleteFolderContentsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteFolderContentsRequest.add_member(:folder_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "FolderId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFolderContentsRequest.type = Types::DeleteFolderContentsRequest
    DeleteFolderRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteFolderRequest.add_member(:folder_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "FolderId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFolderRequest.type = Types::DeleteFolderRequest
    DeleteLabelsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ResourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLabelsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteLabelsRequest.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedLabels, name: "Labels", traits: {"smithy.api#httpQuery" => "labels"}))
    DeleteLabelsRequest.add_member(:delete_all, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "DeleteAll", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "deleteAll"}))
    DeleteLabelsRequest.type = Types::DeleteLabelsRequest
    DeleteLabelsResponse.type = Types::DeleteLabelsResponse
    DeleteNotificationSubscriptionRequest.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "SubscriptionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNotificationSubscriptionRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "OrganizationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNotificationSubscriptionRequest.type = Types::DeleteNotificationSubscriptionRequest
    DeleteUserRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DeleteUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "UserId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DescribeActivitiesRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DescribeActivitiesRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "StartTime", traits: {"smithy.api#httpQuery" => "startTime"}))
    DescribeActivitiesRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "EndTime", traits: {"smithy.api#httpQuery" => "endTime"}))
    DescribeActivitiesRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "OrganizationId", traits: {"smithy.api#httpQuery" => "organizationId"}))
    DescribeActivitiesRequest.add_member(:activity_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityNamesFilterType, name: "ActivityTypes", traits: {"smithy.api#httpQuery" => "activityTypes"}))
    DescribeActivitiesRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "ResourceId", traits: {"smithy.api#httpQuery" => "resourceId"}))
    DescribeActivitiesRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "UserId", traits: {"smithy.api#httpQuery" => "userId"}))
    DescribeActivitiesRequest.add_member(:include_indirect_activities, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IncludeIndirectActivities", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeIndirectActivities"}))
    DescribeActivitiesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitType, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeActivitiesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchMarkerType, name: "Marker", traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeActivitiesRequest.type = Types::DescribeActivitiesRequest
    DescribeActivitiesResponse.add_member(:user_activities, ::Smithy::Schema::Shapes::MemberShape.new(target: UserActivities, name: "UserActivities"))
    DescribeActivitiesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchMarkerType, name: "Marker"))
    DescribeActivitiesResponse.type = Types::DescribeActivitiesResponse
    DescribeCommentsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DescribeCommentsRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "DocumentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCommentsRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionIdType, name: "VersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCommentsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitType, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeCommentsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker", traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeCommentsRequest.type = Types::DescribeCommentsRequest
    DescribeCommentsResponse.add_member(:comments, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentList, name: "Comments"))
    DescribeCommentsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    DescribeCommentsResponse.type = Types::DescribeCommentsResponse
    DescribeDocumentVersionsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DescribeDocumentVersionsRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "DocumentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDocumentVersionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker", traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeDocumentVersionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitType, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeDocumentVersionsRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNamesType, name: "Include", traits: {"smithy.api#httpQuery" => "include"}))
    DescribeDocumentVersionsRequest.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNamesType, name: "Fields", traits: {"smithy.api#httpQuery" => "fields"}))
    DescribeDocumentVersionsRequest.type = Types::DescribeDocumentVersionsRequest
    DescribeDocumentVersionsResponse.add_member(:document_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionMetadataList, name: "DocumentVersions"))
    DescribeDocumentVersionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker"))
    DescribeDocumentVersionsResponse.type = Types::DescribeDocumentVersionsResponse
    DescribeFolderContentsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DescribeFolderContentsRequest.add_member(:folder_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "FolderId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFolderContentsRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSortType, name: "Sort", traits: {"smithy.api#httpQuery" => "sort"}))
    DescribeFolderContentsRequest.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderType, name: "Order", traits: {"smithy.api#httpQuery" => "order"}))
    DescribeFolderContentsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitType, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeFolderContentsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker", traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeFolderContentsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FolderContentType, name: "Type", traits: {"smithy.api#httpQuery" => "type"}))
    DescribeFolderContentsRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNamesType, name: "Include", traits: {"smithy.api#httpQuery" => "include"}))
    DescribeFolderContentsRequest.type = Types::DescribeFolderContentsRequest
    DescribeFolderContentsResponse.add_member(:folders, ::Smithy::Schema::Shapes::MemberShape.new(target: FolderMetadataList, name: "Folders"))
    DescribeFolderContentsResponse.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadataList, name: "Documents"))
    DescribeFolderContentsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker"))
    DescribeFolderContentsResponse.type = Types::DescribeFolderContentsResponse
    DescribeGroupsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DescribeGroupsRequest.add_member(:search_query, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchQueryType, name: "SearchQuery", traits: {"smithy.api#httpQuery" => "searchQuery", "smithy.api#required" => {}}))
    DescribeGroupsRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "OrganizationId", traits: {"smithy.api#httpQuery" => "organizationId"}))
    DescribeGroupsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker", traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeGroupsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerType, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeGroupsRequest.type = Types::DescribeGroupsRequest
    DescribeGroupsResponse.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupMetadataList, name: "Groups"))
    DescribeGroupsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    DescribeGroupsResponse.type = Types::DescribeGroupsResponse
    DescribeNotificationSubscriptionsRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "OrganizationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeNotificationSubscriptionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker", traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeNotificationSubscriptionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitType, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeNotificationSubscriptionsRequest.type = Types::DescribeNotificationSubscriptionsRequest
    DescribeNotificationSubscriptionsResponse.add_member(:subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionList, name: "Subscriptions"))
    DescribeNotificationSubscriptionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker"))
    DescribeNotificationSubscriptionsResponse.type = Types::DescribeNotificationSubscriptionsResponse
    DescribeResourcePermissionsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DescribeResourcePermissionsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ResourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeResourcePermissionsRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "PrincipalId", traits: {"smithy.api#httpQuery" => "principalId"}))
    DescribeResourcePermissionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitType, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeResourcePermissionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker", traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeResourcePermissionsRequest.type = Types::DescribeResourcePermissionsRequest
    DescribeResourcePermissionsResponse.add_member(:principals, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalList, name: "Principals"))
    DescribeResourcePermissionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker"))
    DescribeResourcePermissionsResponse.type = Types::DescribeResourcePermissionsResponse
    DescribeRootFoldersRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication", "smithy.api#required" => {}}))
    DescribeRootFoldersRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitType, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeRootFoldersRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker", traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeRootFoldersRequest.type = Types::DescribeRootFoldersRequest
    DescribeRootFoldersResponse.add_member(:folders, ::Smithy::Schema::Shapes::MemberShape.new(target: FolderMetadataList, name: "Folders"))
    DescribeRootFoldersResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker"))
    DescribeRootFoldersResponse.type = Types::DescribeRootFoldersResponse
    DescribeUsersRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    DescribeUsersRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "OrganizationId", traits: {"smithy.api#httpQuery" => "organizationId"}))
    DescribeUsersRequest.add_member(:user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdsType, name: "UserIds", traits: {"smithy.api#httpQuery" => "userIds"}))
    DescribeUsersRequest.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchQueryType, name: "Query", traits: {"smithy.api#httpQuery" => "query"}))
    DescribeUsersRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: UserFilterType, name: "Include", traits: {"smithy.api#httpQuery" => "include"}))
    DescribeUsersRequest.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderType, name: "Order", traits: {"smithy.api#httpQuery" => "order"}))
    DescribeUsersRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSortType, name: "Sort", traits: {"smithy.api#httpQuery" => "sort"}))
    DescribeUsersRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker", traits: {"smithy.api#httpQuery" => "marker"}))
    DescribeUsersRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitType, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    DescribeUsersRequest.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNamesType, name: "Fields", traits: {"smithy.api#httpQuery" => "fields"}))
    DescribeUsersRequest.type = Types::DescribeUsersRequest
    DescribeUsersResponse.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationUserList, name: "Users"))
    DescribeUsersResponse.add_member(:total_number_of_users, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeType, name: "TotalNumberOfUsers", traits: {"smithy.api#deprecated" => {}}))
    DescribeUsersResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker"))
    DescribeUsersResponse.type = Types::DescribeUsersResponse
    DocumentLockedForCommentsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    DocumentLockedForCommentsException.type = Types::DocumentLockedForCommentsException
    DocumentMetadata.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "Id"))
    DocumentMetadata.add_member(:creator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "CreatorId"))
    DocumentMetadata.add_member(:parent_folder_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ParentFolderId"))
    DocumentMetadata.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "CreatedTimestamp"))
    DocumentMetadata.add_member(:modified_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "ModifiedTimestamp"))
    DocumentMetadata.add_member(:latest_version_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionMetadata, name: "LatestVersionMetadata"))
    DocumentMetadata.add_member(:resource_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStateType, name: "ResourceState"))
    DocumentMetadata.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedLabels, name: "Labels"))
    DocumentMetadata.type = Types::DocumentMetadata
    DocumentMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "member"))
    DocumentSourceType.add_member(:original, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORIGINAL", traits: {"smithy.api#enumValue" => "ORIGINAL"}))
    DocumentSourceType.add_member(:with_comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WITH_COMMENTS", traits: {"smithy.api#enumValue" => "WITH_COMMENTS"}))
    DocumentSourceUrlMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentSourceType, name: "key"))
    DocumentSourceUrlMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlType, name: "value"))
    DocumentStatusType.add_member(:initialized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIALIZED", traits: {"smithy.api#enumValue" => "INITIALIZED"}))
    DocumentStatusType.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DocumentThumbnailType.add_member(:small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMALL", traits: {"smithy.api#enumValue" => "SMALL"}))
    DocumentThumbnailType.add_member(:small_hq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMALL_HQ", traits: {"smithy.api#enumValue" => "SMALL_HQ"}))
    DocumentThumbnailType.add_member(:large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LARGE", traits: {"smithy.api#enumValue" => "LARGE"}))
    DocumentThumbnailUrlMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentThumbnailType, name: "key"))
    DocumentThumbnailUrlMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlType, name: "value"))
    DocumentVersionMetadata.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionIdType, name: "Id"))
    DocumentVersionMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "Name"))
    DocumentVersionMetadata.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentContentType, name: "ContentType"))
    DocumentVersionMetadata.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeType, name: "Size"))
    DocumentVersionMetadata.add_member(:signature, ::Smithy::Schema::Shapes::MemberShape.new(target: HashType, name: "Signature"))
    DocumentVersionMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentStatusType, name: "Status"))
    DocumentVersionMetadata.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "CreatedTimestamp"))
    DocumentVersionMetadata.add_member(:modified_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "ModifiedTimestamp"))
    DocumentVersionMetadata.add_member(:content_created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "ContentCreatedTimestamp"))
    DocumentVersionMetadata.add_member(:content_modified_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "ContentModifiedTimestamp"))
    DocumentVersionMetadata.add_member(:creator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "CreatorId"))
    DocumentVersionMetadata.add_member(:thumbnail, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentThumbnailUrlMap, name: "Thumbnail"))
    DocumentVersionMetadata.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentSourceUrlMap, name: "Source"))
    DocumentVersionMetadata.type = Types::DocumentVersionMetadata
    DocumentVersionMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionMetadata, name: "member"))
    DocumentVersionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DraftUploadOutOfSyncException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    DraftUploadOutOfSyncException.type = Types::DraftUploadOutOfSyncException
    EntityAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    EntityAlreadyExistsException.type = Types::EntityAlreadyExistsException
    EntityIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "member"))
    EntityNotExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    EntityNotExistsException.add_member(:entity_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdList, name: "EntityIds"))
    EntityNotExistsException.type = Types::EntityNotExistsException
    FailedDependencyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    FailedDependencyException.type = Types::FailedDependencyException
    Filters.add_member(:text_locales, ::Smithy::Schema::Shapes::MemberShape.new(target: TextLocaleTypeList, name: "TextLocales"))
    Filters.add_member(:content_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchContentCategoryTypeList, name: "ContentCategories"))
    Filters.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchResourceTypeList, name: "ResourceTypes"))
    Filters.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchLabelList, name: "Labels"))
    Filters.add_member(:principals, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchPrincipalTypeList, name: "Principals"))
    Filters.add_member(:ancestor_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchAncestorIdList, name: "AncestorIds"))
    Filters.add_member(:search_collection_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchCollectionTypeList, name: "SearchCollectionTypes"))
    Filters.add_member(:size_range, ::Smithy::Schema::Shapes::MemberShape.new(target: LongRangeType, name: "SizeRange"))
    Filters.add_member(:created_range, ::Smithy::Schema::Shapes::MemberShape.new(target: DateRangeType, name: "CreatedRange"))
    Filters.add_member(:modified_range, ::Smithy::Schema::Shapes::MemberShape.new(target: DateRangeType, name: "ModifiedRange"))
    Filters.type = Types::Filters
    FolderContentType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    FolderContentType.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    FolderContentType.add_member(:folder, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER", traits: {"smithy.api#enumValue" => "FOLDER"}))
    FolderMetadata.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "Id"))
    FolderMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "Name"))
    FolderMetadata.add_member(:creator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "CreatorId"))
    FolderMetadata.add_member(:parent_folder_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ParentFolderId"))
    FolderMetadata.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "CreatedTimestamp"))
    FolderMetadata.add_member(:modified_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "ModifiedTimestamp"))
    FolderMetadata.add_member(:resource_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStateType, name: "ResourceState"))
    FolderMetadata.add_member(:signature, ::Smithy::Schema::Shapes::MemberShape.new(target: HashType, name: "Signature"))
    FolderMetadata.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedLabels, name: "Labels"))
    FolderMetadata.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeType, name: "Size"))
    FolderMetadata.add_member(:latest_version_size, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeType, name: "LatestVersionSize"))
    FolderMetadata.type = Types::FolderMetadata
    FolderMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FolderMetadata, name: "member"))
    GetCurrentUserRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication", "smithy.api#required" => {}}))
    GetCurrentUserRequest.type = Types::GetCurrentUserRequest
    GetCurrentUserResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "User"))
    GetCurrentUserResponse.type = Types::GetCurrentUserResponse
    GetDocumentPathRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    GetDocumentPathRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "DocumentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentPathRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitType, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetDocumentPathRequest.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNamesType, name: "Fields", traits: {"smithy.api#httpQuery" => "fields"}))
    GetDocumentPathRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker", traits: {"smithy.api#httpQuery" => "marker"}))
    GetDocumentPathRequest.type = Types::GetDocumentPathRequest
    GetDocumentPathResponse.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePath, name: "Path"))
    GetDocumentPathResponse.type = Types::GetDocumentPathResponse
    GetDocumentRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    GetDocumentRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "DocumentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentRequest.add_member(:include_custom_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IncludeCustomMetadata", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeCustomMetadata"}))
    GetDocumentRequest.type = Types::GetDocumentRequest
    GetDocumentResponse.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "Metadata"))
    GetDocumentResponse.add_member(:custom_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataMap, name: "CustomMetadata"))
    GetDocumentResponse.type = Types::GetDocumentResponse
    GetDocumentVersionRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    GetDocumentVersionRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "DocumentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentVersionRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionIdType, name: "VersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentVersionRequest.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNamesType, name: "Fields", traits: {"smithy.api#httpQuery" => "fields"}))
    GetDocumentVersionRequest.add_member(:include_custom_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IncludeCustomMetadata", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeCustomMetadata"}))
    GetDocumentVersionRequest.type = Types::GetDocumentVersionRequest
    GetDocumentVersionResponse.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionMetadata, name: "Metadata"))
    GetDocumentVersionResponse.add_member(:custom_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataMap, name: "CustomMetadata"))
    GetDocumentVersionResponse.type = Types::GetDocumentVersionResponse
    GetFolderPathRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    GetFolderPathRequest.add_member(:folder_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "FolderId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFolderPathRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitType, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetFolderPathRequest.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNamesType, name: "Fields", traits: {"smithy.api#httpQuery" => "fields"}))
    GetFolderPathRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker", traits: {"smithy.api#httpQuery" => "marker"}))
    GetFolderPathRequest.type = Types::GetFolderPathRequest
    GetFolderPathResponse.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePath, name: "Path"))
    GetFolderPathResponse.type = Types::GetFolderPathResponse
    GetFolderRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    GetFolderRequest.add_member(:folder_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "FolderId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFolderRequest.add_member(:include_custom_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IncludeCustomMetadata", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeCustomMetadata"}))
    GetFolderRequest.type = Types::GetFolderRequest
    GetFolderResponse.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: FolderMetadata, name: "Metadata"))
    GetFolderResponse.add_member(:custom_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataMap, name: "CustomMetadata"))
    GetFolderResponse.type = Types::GetFolderResponse
    GetResourcesRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    GetResourcesRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "UserId", traits: {"smithy.api#httpQuery" => "userId"}))
    GetResourcesRequest.add_member(:collection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCollectionType, name: "CollectionType", traits: {"smithy.api#httpQuery" => "collectionType"}))
    GetResourcesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitType, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    GetResourcesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker", traits: {"smithy.api#httpQuery" => "marker"}))
    GetResourcesRequest.type = Types::GetResourcesRequest
    GetResourcesResponse.add_member(:folders, ::Smithy::Schema::Shapes::MemberShape.new(target: FolderMetadataList, name: "Folders"))
    GetResourcesResponse.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadataList, name: "Documents"))
    GetResourcesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarkerType, name: "Marker"))
    GetResourcesResponse.type = Types::GetResourcesResponse
    GroupMetadata.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "Id"))
    GroupMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "Name"))
    GroupMetadata.type = Types::GroupMetadata
    GroupMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupMetadata, name: "member"))
    IllegalUserStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    IllegalUserStateException.type = Types::IllegalUserStateException
    InitiateDocumentVersionUploadRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    InitiateDocumentVersionUploadRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "Id"))
    InitiateDocumentVersionUploadRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "Name"))
    InitiateDocumentVersionUploadRequest.add_member(:content_created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "ContentCreatedTimestamp"))
    InitiateDocumentVersionUploadRequest.add_member(:content_modified_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "ContentModifiedTimestamp"))
    InitiateDocumentVersionUploadRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentContentType, name: "ContentType"))
    InitiateDocumentVersionUploadRequest.add_member(:document_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeType, name: "DocumentSizeInBytes"))
    InitiateDocumentVersionUploadRequest.add_member(:parent_folder_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ParentFolderId"))
    InitiateDocumentVersionUploadRequest.type = Types::InitiateDocumentVersionUploadRequest
    InitiateDocumentVersionUploadResponse.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "Metadata"))
    InitiateDocumentVersionUploadResponse.add_member(:upload_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadMetadata, name: "UploadMetadata"))
    InitiateDocumentVersionUploadResponse.type = Types::InitiateDocumentVersionUploadResponse
    InvalidArgumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidCommentOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    InvalidCommentOperationException.type = Types::InvalidCommentOperationException
    InvalidOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    InvalidOperationException.type = Types::InvalidOperationException
    InvalidPasswordException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    InvalidPasswordException.type = Types::InvalidPasswordException
    LanguageCodeType.add_member(:ar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AR", traits: {"smithy.api#enumValue" => "AR"}))
    LanguageCodeType.add_member(:bg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BG", traits: {"smithy.api#enumValue" => "BG"}))
    LanguageCodeType.add_member(:bn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BN", traits: {"smithy.api#enumValue" => "BN"}))
    LanguageCodeType.add_member(:da, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DA", traits: {"smithy.api#enumValue" => "DA"}))
    LanguageCodeType.add_member(:de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DE", traits: {"smithy.api#enumValue" => "DE"}))
    LanguageCodeType.add_member(:cs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CS", traits: {"smithy.api#enumValue" => "CS"}))
    LanguageCodeType.add_member(:el, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EL", traits: {"smithy.api#enumValue" => "EL"}))
    LanguageCodeType.add_member(:en, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN", traits: {"smithy.api#enumValue" => "EN"}))
    LanguageCodeType.add_member(:es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES", traits: {"smithy.api#enumValue" => "ES"}))
    LanguageCodeType.add_member(:fa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FA", traits: {"smithy.api#enumValue" => "FA"}))
    LanguageCodeType.add_member(:fi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FI", traits: {"smithy.api#enumValue" => "FI"}))
    LanguageCodeType.add_member(:fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR", traits: {"smithy.api#enumValue" => "FR"}))
    LanguageCodeType.add_member(:hi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HI", traits: {"smithy.api#enumValue" => "HI"}))
    LanguageCodeType.add_member(:hu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HU", traits: {"smithy.api#enumValue" => "HU"}))
    LanguageCodeType.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ID", traits: {"smithy.api#enumValue" => "ID"}))
    LanguageCodeType.add_member(:it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IT", traits: {"smithy.api#enumValue" => "IT"}))
    LanguageCodeType.add_member(:ja, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JA", traits: {"smithy.api#enumValue" => "JA"}))
    LanguageCodeType.add_member(:ko, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KO", traits: {"smithy.api#enumValue" => "KO"}))
    LanguageCodeType.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LT", traits: {"smithy.api#enumValue" => "LT"}))
    LanguageCodeType.add_member(:lv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LV", traits: {"smithy.api#enumValue" => "LV"}))
    LanguageCodeType.add_member(:nl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NL", traits: {"smithy.api#enumValue" => "NL"}))
    LanguageCodeType.add_member(:no, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO", traits: {"smithy.api#enumValue" => "NO"}))
    LanguageCodeType.add_member(:pt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PT", traits: {"smithy.api#enumValue" => "PT"}))
    LanguageCodeType.add_member(:ro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RO", traits: {"smithy.api#enumValue" => "RO"}))
    LanguageCodeType.add_member(:ru, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RU", traits: {"smithy.api#enumValue" => "RU"}))
    LanguageCodeType.add_member(:sv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SV", traits: {"smithy.api#enumValue" => "SV"}))
    LanguageCodeType.add_member(:sw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SW", traits: {"smithy.api#enumValue" => "SW"}))
    LanguageCodeType.add_member(:th, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TH", traits: {"smithy.api#enumValue" => "TH"}))
    LanguageCodeType.add_member(:tr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TR", traits: {"smithy.api#enumValue" => "TR"}))
    LanguageCodeType.add_member(:zh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZH", traits: {"smithy.api#enumValue" => "ZH"}))
    LanguageCodeType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    LocaleType.add_member(:en, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN", traits: {"smithy.api#enumValue" => "en"}))
    LocaleType.add_member(:fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR", traits: {"smithy.api#enumValue" => "fr"}))
    LocaleType.add_member(:ko, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KO", traits: {"smithy.api#enumValue" => "ko"}))
    LocaleType.add_member(:de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DE", traits: {"smithy.api#enumValue" => "de"}))
    LocaleType.add_member(:es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES", traits: {"smithy.api#enumValue" => "es"}))
    LocaleType.add_member(:ja, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JA", traits: {"smithy.api#enumValue" => "ja"}))
    LocaleType.add_member(:ru, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RU", traits: {"smithy.api#enumValue" => "ru"}))
    LocaleType.add_member(:zh_cn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZH_CN", traits: {"smithy.api#enumValue" => "zh_CN"}))
    LocaleType.add_member(:zh_tw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZH_TW", traits: {"smithy.api#enumValue" => "zh_TW"}))
    LocaleType.add_member(:pt_br, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PT_BR", traits: {"smithy.api#enumValue" => "pt_BR"}))
    LocaleType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    LongRangeType.add_member(:start_value, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "StartValue"))
    LongRangeType.add_member(:end_value, ::Smithy::Schema::Shapes::MemberShape.new(target: LongType, name: "EndValue"))
    LongRangeType.type = Types::LongRangeType
    NotificationOptions.add_member(:send_email, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "SendEmail", traits: {"smithy.api#default" => false}))
    NotificationOptions.add_member(:email_message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "EmailMessage"))
    NotificationOptions.type = Types::NotificationOptions
    OrderByFieldType.add_member(:relevance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELEVANCE", traits: {"smithy.api#enumValue" => "RELEVANCE"}))
    OrderByFieldType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    OrderByFieldType.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIZE", traits: {"smithy.api#enumValue" => "SIZE"}))
    OrderByFieldType.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_TIMESTAMP", traits: {"smithy.api#enumValue" => "CREATED_TIMESTAMP"}))
    OrderByFieldType.add_member(:modified_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFIED_TIMESTAMP", traits: {"smithy.api#enumValue" => "MODIFIED_TIMESTAMP"}))
    OrderType.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    OrderType.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    OrganizationUserList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "member"))
    Participants.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UserMetadataList, name: "Users"))
    Participants.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupMetadataList, name: "Groups"))
    Participants.type = Types::Participants
    PermissionInfo.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleType, name: "Role"))
    PermissionInfo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RolePermissionType, name: "Type"))
    PermissionInfo.type = Types::PermissionInfo
    PermissionInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionInfo, name: "member"))
    Principal.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "Id"))
    Principal.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "Type"))
    Principal.add_member(:roles, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionInfoList, name: "Roles"))
    Principal.type = Types::Principal
    PrincipalList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "member"))
    PrincipalRoleType.add_member(:viewer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIEWER", traits: {"smithy.api#enumValue" => "VIEWER"}))
    PrincipalRoleType.add_member(:contributor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTRIBUTOR", traits: {"smithy.api#enumValue" => "CONTRIBUTOR"}))
    PrincipalRoleType.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OWNER", traits: {"smithy.api#enumValue" => "OWNER"}))
    PrincipalRoleType.add_member(:coowner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COOWNER", traits: {"smithy.api#enumValue" => "COOWNER"}))
    PrincipalType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    PrincipalType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    PrincipalType.add_member(:invite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVITE", traits: {"smithy.api#enumValue" => "INVITE"}))
    PrincipalType.add_member(:anonymous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANONYMOUS", traits: {"smithy.api#enumValue" => "ANONYMOUS"}))
    PrincipalType.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    ProhibitedStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    ProhibitedStateException.type = Types::ProhibitedStateException
    RemoveAllResourcePermissionsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    RemoveAllResourcePermissionsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ResourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveAllResourcePermissionsRequest.type = Types::RemoveAllResourcePermissionsRequest
    RemoveResourcePermissionRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    RemoveResourcePermissionRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ResourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveResourcePermissionRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "PrincipalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveResourcePermissionRequest.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType", traits: {"smithy.api#httpQuery" => "type"}))
    RemoveResourcePermissionRequest.type = Types::RemoveResourcePermissionRequest
    RequestedEntityTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    RequestedEntityTooLargeException.type = Types::RequestedEntityTooLargeException
    ResourceAlreadyCheckedOutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    ResourceAlreadyCheckedOutException.type = Types::ResourceAlreadyCheckedOutException
    ResourceCollectionType.add_member(:shared_with_me, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED_WITH_ME", traits: {"smithy.api#enumValue" => "SHARED_WITH_ME"}))
    ResourceMetadata.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "Type"))
    ResourceMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "Name"))
    ResourceMetadata.add_member(:original_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "OriginalName"))
    ResourceMetadata.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "Id"))
    ResourceMetadata.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionIdType, name: "VersionId"))
    ResourceMetadata.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: UserMetadata, name: "Owner"))
    ResourceMetadata.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ParentId"))
    ResourceMetadata.type = Types::ResourceMetadata
    ResourcePath.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePathComponentList, name: "Components"))
    ResourcePath.type = Types::ResourcePath
    ResourcePathComponent.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "Id"))
    ResourcePathComponent.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "Name"))
    ResourcePathComponent.type = Types::ResourcePathComponent
    ResourcePathComponentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePathComponent, name: "member"))
    ResourceSortType.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATE", traits: {"smithy.api#enumValue" => "DATE"}))
    ResourceSortType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    ResourceStateType.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ResourceStateType.add_member(:restoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORING", traits: {"smithy.api#enumValue" => "RESTORING"}))
    ResourceStateType.add_member(:recycling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECYCLING", traits: {"smithy.api#enumValue" => "RECYCLING"}))
    ResourceStateType.add_member(:recycled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECYCLED", traits: {"smithy.api#enumValue" => "RECYCLED"}))
    ResourceType.add_member(:folder, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER", traits: {"smithy.api#enumValue" => "FOLDER"}))
    ResourceType.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    ResponseItem.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseItemType, name: "ResourceType"))
    ResponseItem.add_member(:web_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseItemWebUrl, name: "WebUrl"))
    ResponseItem.add_member(:document_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "DocumentMetadata"))
    ResponseItem.add_member(:folder_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: FolderMetadata, name: "FolderMetadata"))
    ResponseItem.add_member(:comment_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentMetadata, name: "CommentMetadata"))
    ResponseItem.add_member(:document_version_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionMetadata, name: "DocumentVersionMetadata"))
    ResponseItem.type = Types::ResponseItem
    ResponseItemType.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    ResponseItemType.add_member(:folder, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER", traits: {"smithy.api#enumValue" => "FOLDER"}))
    ResponseItemType.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMENT", traits: {"smithy.api#enumValue" => "COMMENT"}))
    ResponseItemType.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_VERSION", traits: {"smithy.api#enumValue" => "DOCUMENT_VERSION"}))
    ResponseItemsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseItem, name: "member"))
    RestoreDocumentVersionsRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    RestoreDocumentVersionsRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "DocumentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestoreDocumentVersionsRequest.type = Types::RestoreDocumentVersionsRequest
    RolePermissionType.add_member(:direct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT", traits: {"smithy.api#enumValue" => "DIRECT"}))
    RolePermissionType.add_member(:inherited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INHERITED", traits: {"smithy.api#enumValue" => "INHERITED"}))
    RoleType.add_member(:viewer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIEWER", traits: {"smithy.api#enumValue" => "VIEWER"}))
    RoleType.add_member(:contributor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTRIBUTOR", traits: {"smithy.api#enumValue" => "CONTRIBUTOR"}))
    RoleType.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OWNER", traits: {"smithy.api#enumValue" => "OWNER"}))
    RoleType.add_member(:coowner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COOWNER", traits: {"smithy.api#enumValue" => "COOWNER"}))
    SearchAncestorIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchAncestorId, name: "member"))
    SearchCollectionType.add_member(:owned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OWNED", traits: {"smithy.api#enumValue" => "OWNED"}))
    SearchCollectionType.add_member(:shared_with_me, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED_WITH_ME", traits: {"smithy.api#enumValue" => "SHARED_WITH_ME"}))
    SearchCollectionTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchCollectionType, name: "member"))
    SearchContentCategoryTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentCategoryType, name: "member"))
    SearchLabelList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchLabel, name: "member"))
    SearchPrincipalRoleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalRoleType, name: "member"))
    SearchPrincipalType.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "Id", traits: {"smithy.api#required" => {}}))
    SearchPrincipalType.add_member(:roles, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchPrincipalRoleList, name: "Roles"))
    SearchPrincipalType.type = Types::SearchPrincipalType
    SearchPrincipalTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchPrincipalType, name: "member"))
    SearchQueryScopeType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    SearchQueryScopeType.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT", traits: {"smithy.api#enumValue" => "CONTENT"}))
    SearchQueryScopeTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchQueryScopeType, name: "member"))
    SearchResourceType.add_member(:folder, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLDER", traits: {"smithy.api#enumValue" => "FOLDER"}))
    SearchResourceType.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    SearchResourceType.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMENT", traits: {"smithy.api#enumValue" => "COMMENT"}))
    SearchResourceType.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_VERSION", traits: {"smithy.api#enumValue" => "DOCUMENT_VERSION"}))
    SearchResourceTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchResourceType, name: "member"))
    SearchResourcesRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    SearchResourcesRequest.add_member(:query_text, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchQueryType, name: "QueryText"))
    SearchResourcesRequest.add_member(:query_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchQueryScopeTypeList, name: "QueryScopes"))
    SearchResourcesRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "OrganizationId"))
    SearchResourcesRequest.add_member(:additional_response_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalResponseFieldsList, name: "AdditionalResponseFields"))
    SearchResourcesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    SearchResourcesRequest.add_member(:order_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchResultSortList, name: "OrderBy"))
    SearchResourcesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchResultsLimitType, name: "Limit"))
    SearchResourcesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarkerType, name: "Marker"))
    SearchResourcesRequest.type = Types::SearchResourcesRequest
    SearchResourcesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseItemsList, name: "Items"))
    SearchResourcesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarkerType, name: "Marker"))
    SearchResourcesResponse.type = Types::SearchResourcesResponse
    SearchResultSortList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSortResult, name: "member"))
    SearchSortResult.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderByFieldType, name: "Field"))
    SearchSortResult.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "Order"))
    SearchSortResult.type = Types::SearchSortResult
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SharePrincipal.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "Id", traits: {"smithy.api#required" => {}}))
    SharePrincipal.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "Type", traits: {"smithy.api#required" => {}}))
    SharePrincipal.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleType, name: "Role", traits: {"smithy.api#required" => {}}))
    SharePrincipal.type = Types::SharePrincipal
    SharePrincipalList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SharePrincipal, name: "member"))
    ShareResult.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "PrincipalId"))
    ShareResult.add_member(:invitee_principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "InviteePrincipalId"))
    ShareResult.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleType, name: "Role"))
    ShareResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatusType, name: "Status"))
    ShareResult.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ShareId"))
    ShareResult.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "StatusMessage"))
    ShareResult.type = Types::ShareResult
    ShareResultsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareResult, name: "member"))
    ShareStatusType.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ShareStatusType.add_member(:failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILURE", traits: {"smithy.api#enumValue" => "FAILURE"}))
    SharedLabels.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedLabel, name: "member"))
    SignedHeaderMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderNameType, name: "key"))
    SignedHeaderMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderValueType, name: "value"))
    SortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    SortOrder.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    StorageLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    StorageLimitExceededException.type = Types::StorageLimitExceededException
    StorageLimitWillExceedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    StorageLimitWillExceedException.type = Types::StorageLimitWillExceedException
    StorageRuleType.add_member(:storage_allocated_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveSizeType, name: "StorageAllocatedInBytes"))
    StorageRuleType.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, name: "StorageType"))
    StorageRuleType.type = Types::StorageRuleType
    StorageType.add_member(:unlimited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNLIMITED", traits: {"smithy.api#enumValue" => "UNLIMITED"}))
    StorageType.add_member(:quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUOTA", traits: {"smithy.api#enumValue" => "QUOTA"}))
    Subscription.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "SubscriptionId"))
    Subscription.add_member(:end_point, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionEndPointType, name: "EndPoint"))
    Subscription.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProtocolType, name: "Protocol"))
    Subscription.type = Types::Subscription
    SubscriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "member"))
    SubscriptionProtocolType.add_member(:https, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPS", traits: {"smithy.api#enumValue" => "HTTPS"}))
    SubscriptionProtocolType.add_member(:sqs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQS", traits: {"smithy.api#enumValue" => "SQS"}))
    SubscriptionType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    TextLocaleTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCodeType, name: "member"))
    TooManyLabelsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    TooManyLabelsException.type = Types::TooManyLabelsException
    TooManySubscriptionsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    TooManySubscriptionsException.type = Types::TooManySubscriptionsException
    UnauthorizedOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    UnauthorizedOperationException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionCodeType, name: "Code"))
    UnauthorizedOperationException.type = Types::UnauthorizedOperationException
    UnauthorizedResourceAccessException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "Message"))
    UnauthorizedResourceAccessException.type = Types::UnauthorizedResourceAccessException
    UpdateDocumentRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    UpdateDocumentRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "DocumentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDocumentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "Name"))
    UpdateDocumentRequest.add_member(:parent_folder_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ParentFolderId"))
    UpdateDocumentRequest.add_member(:resource_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStateType, name: "ResourceState"))
    UpdateDocumentRequest.type = Types::UpdateDocumentRequest
    UpdateDocumentVersionRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    UpdateDocumentVersionRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "DocumentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDocumentVersionRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionIdType, name: "VersionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDocumentVersionRequest.add_member(:version_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionStatus, name: "VersionStatus"))
    UpdateDocumentVersionRequest.type = Types::UpdateDocumentVersionRequest
    UpdateFolderRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    UpdateFolderRequest.add_member(:folder_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "FolderId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFolderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "Name"))
    UpdateFolderRequest.add_member(:parent_folder_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ParentFolderId"))
    UpdateFolderRequest.add_member(:resource_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStateType, name: "ResourceState"))
    UpdateFolderRequest.type = Types::UpdateFolderRequest
    UpdateUserRequest.add_member(:authentication_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationHeaderType, name: "AuthenticationToken", traits: {"smithy.api#httpHeader" => "Authentication"}))
    UpdateUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "UserId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:given_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeValueType, name: "GivenName"))
    UpdateUserRequest.add_member(:surname, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeValueType, name: "Surname"))
    UpdateUserRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "Type"))
    UpdateUserRequest.add_member(:storage_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageRuleType, name: "StorageRule"))
    UpdateUserRequest.add_member(:time_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeZoneIdType, name: "TimeZoneId"))
    UpdateUserRequest.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleType, name: "Locale"))
    UpdateUserRequest.add_member(:grant_poweruser_privileges, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanEnumType, name: "GrantPoweruserPrivileges"))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "User"))
    UpdateUserResponse.type = Types::UpdateUserResponse
    UploadMetadata.add_member(:upload_url, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlType, name: "UploadUrl"))
    UploadMetadata.add_member(:signed_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: SignedHeaderMap, name: "SignedHeaders"))
    UploadMetadata.type = Types::UploadMetadata
    User.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "Id"))
    User.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username"))
    User.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressType, name: "EmailAddress"))
    User.add_member(:given_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeValueType, name: "GivenName"))
    User.add_member(:surname, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeValueType, name: "Surname"))
    User.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "OrganizationId"))
    User.add_member(:root_folder_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "RootFolderId"))
    User.add_member(:recycle_bin_folder_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "RecycleBinFolderId"))
    User.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStatusType, name: "Status"))
    User.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "Type"))
    User.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "CreatedTimestamp"))
    User.add_member(:modified_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "ModifiedTimestamp"))
    User.add_member(:time_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeZoneIdType, name: "TimeZoneId"))
    User.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleType, name: "Locale"))
    User.add_member(:storage, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStorageMetadata, name: "Storage"))
    User.type = Types::User
    UserActivities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Activity, name: "member"))
    UserFilterType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    UserFilterType.add_member(:active_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE_PENDING", traits: {"smithy.api#enumValue" => "ACTIVE_PENDING"}))
    UserMetadata.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "Id"))
    UserMetadata.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernameType, name: "Username"))
    UserMetadata.add_member(:given_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeValueType, name: "GivenName"))
    UserMetadata.add_member(:surname, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeValueType, name: "Surname"))
    UserMetadata.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressType, name: "EmailAddress"))
    UserMetadata.type = Types::UserMetadata
    UserMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserMetadata, name: "member"))
    UserSortType.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_NAME", traits: {"smithy.api#enumValue" => "USER_NAME"}))
    UserSortType.add_member(:full_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_NAME", traits: {"smithy.api#enumValue" => "FULL_NAME"}))
    UserSortType.add_member(:storage_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_LIMIT", traits: {"smithy.api#enumValue" => "STORAGE_LIMIT"}))
    UserSortType.add_member(:user_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_STATUS", traits: {"smithy.api#enumValue" => "USER_STATUS"}))
    UserSortType.add_member(:storage_used, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_USED", traits: {"smithy.api#enumValue" => "STORAGE_USED"}))
    UserStatusType.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    UserStatusType.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    UserStatusType.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    UserStorageMetadata.add_member(:storage_utilized_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeType, name: "StorageUtilizedInBytes"))
    UserStorageMetadata.add_member(:storage_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageRuleType, name: "StorageRule"))
    UserStorageMetadata.type = Types::UserStorageMetadata
    UserType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    UserType.add_member(:admin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADMIN", traits: {"smithy.api#enumValue" => "ADMIN"}))
    UserType.add_member(:poweruser, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POWERUSER", traits: {"smithy.api#enumValue" => "POWERUSER"}))
    UserType.add_member(:minimaluser, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINIMALUSER", traits: {"smithy.api#enumValue" => "MINIMALUSER"}))
    UserType.add_member(:workspacesuser, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKSPACESUSER", traits: {"smithy.api#enumValue" => "WORKSPACESUSER"}))

    AWSGorillaBoyService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.workdocs#AWSGorillaBoyService"
      service.name = "AWSGorillaBoyService"
      service.version = "2016-05-01"
      service.traits = {"aws.api#service" => {"sdkId" => "WorkDocs", "arnNamespace" => "workdocs", "cloudFormationName" => "WorkDocs", "cloudTrailEventSource" => "workdocs.amazonaws.com", "endpointPrefix" => "workdocs"}, "aws.auth#sigv4" => {"name" => "workdocs"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon WorkDocs", "smithy.api#xmlNamespace" => {"uri" => "https://aws.amazon.com/api/v1/"}}
      service.add_operation(:abort_document_version_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#AbortDocumentVersionUpload"
        operation.name = "AbortDocumentVersionUpload"
        operation.input = AbortDocumentVersionUploadRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/documents/{DocumentId}/versions/{VersionId}", "code" => 204}}
      end)
      service.add_operation(:activate_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#ActivateUser"
        operation.name = "ActivateUser"
        operation.input = ActivateUserRequest
        operation.output = ActivateUserResponse
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/users/{UserId}/activation", "code" => 200}}
      end)
      service.add_operation(:add_resource_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#AddResourcePermissions"
        operation.name = "AddResourcePermissions"
        operation.input = AddResourcePermissionsRequest
        operation.output = AddResourcePermissionsResponse
        operation.errors << FailedDependencyException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/resources/{ResourceId}/permissions", "code" => 201}}
      end)
      service.add_operation(:create_comment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#CreateComment"
        operation.name = "CreateComment"
        operation.input = CreateCommentRequest
        operation.output = CreateCommentResponse
        operation.errors << DocumentLockedForCommentsException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << InvalidCommentOperationException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment", "code" => 201}}
      end)
      service.add_operation(:create_custom_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#CreateCustomMetadata"
        operation.name = "CreateCustomMetadata"
        operation.input = CreateCustomMetadataRequest
        operation.output = CreateCustomMetadataResponse
        operation.errors << CustomMetadataLimitExceededException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/api/v1/resources/{ResourceId}/customMetadata", "code" => 200}}
      end)
      service.add_operation(:create_folder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#CreateFolder"
        operation.name = "CreateFolder"
        operation.input = CreateFolderRequest
        operation.output = CreateFolderResponse
        operation.errors << ConcurrentModificationException
        operation.errors << ConflictingOperationException
        operation.errors << EntityAlreadyExistsException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << LimitExceededException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/folders", "code" => 201}}
      end)
      service.add_operation(:create_labels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#CreateLabels"
        operation.name = "CreateLabels"
        operation.input = CreateLabelsRequest
        operation.output = CreateLabelsResponse
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyLabelsException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/api/v1/resources/{ResourceId}/labels", "code" => 200}}
      end)
      service.add_operation(:create_notification_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#CreateNotificationSubscription"
        operation.name = "CreateNotificationSubscription"
        operation.input = CreateNotificationSubscriptionRequest
        operation.output = CreateNotificationSubscriptionResponse
        operation.errors << InvalidArgumentException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManySubscriptionsException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/organizations/{OrganizationId}/subscriptions", "code" => 200}}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#CreateUser"
        operation.name = "CreateUser"
        operation.input = CreateUserRequest
        operation.output = CreateUserResponse
        operation.errors << EntityAlreadyExistsException
        operation.errors << FailedDependencyException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/users", "code" => 201}}
      end)
      service.add_operation(:deactivate_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeactivateUser"
        operation.name = "DeactivateUser"
        operation.input = DeactivateUserRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/users/{UserId}/activation", "code" => 204}}
      end)
      service.add_operation(:delete_comment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteComment"
        operation.name = "DeleteComment"
        operation.input = DeleteCommentRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DocumentLockedForCommentsException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}", "code" => 204}}
      end)
      service.add_operation(:delete_custom_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteCustomMetadata"
        operation.name = "DeleteCustomMetadata"
        operation.input = DeleteCustomMetadataRequest
        operation.output = DeleteCustomMetadataResponse
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/resources/{ResourceId}/customMetadata", "code" => 200}}
      end)
      service.add_operation(:delete_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteDocument"
        operation.name = "DeleteDocument"
        operation.input = DeleteDocumentRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << ConflictingOperationException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << LimitExceededException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/documents/{DocumentId}", "code" => 204}}
      end)
      service.add_operation(:delete_document_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteDocumentVersion"
        operation.name = "DeleteDocumentVersion"
        operation.input = DeleteDocumentVersionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << ConflictingOperationException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << InvalidOperationException
        operation.errors << ProhibitedStateException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/documentVersions/{DocumentId}/versions/{VersionId}", "code" => 204}}
      end)
      service.add_operation(:delete_folder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteFolder"
        operation.name = "DeleteFolder"
        operation.input = DeleteFolderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << ConflictingOperationException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << LimitExceededException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/folders/{FolderId}", "code" => 204}}
      end)
      service.add_operation(:delete_folder_contents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteFolderContents"
        operation.name = "DeleteFolderContents"
        operation.input = DeleteFolderContentsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictingOperationException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/folders/{FolderId}/contents", "code" => 204}}
      end)
      service.add_operation(:delete_labels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteLabels"
        operation.name = "DeleteLabels"
        operation.input = DeleteLabelsRequest
        operation.output = DeleteLabelsResponse
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/resources/{ResourceId}/labels", "code" => 200}}
      end)
      service.add_operation(:delete_notification_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteNotificationSubscription"
        operation.name = "DeleteNotificationSubscription"
        operation.input = DeleteNotificationSubscriptionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << EntityNotExistsException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}", "code" => 200}}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = DeleteUserRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/users/{UserId}", "code" => 204}}
      end)
      service.add_operation(:describe_activities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeActivities"
        operation.name = "DescribeActivities"
        operation.input = DescribeActivitiesRequest
        operation.output = DescribeActivitiesResponse
        operation.errors << FailedDependencyException
        operation.errors << InvalidArgumentException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/activities", "code" => 200}}
        operation[:paginator] = Paginators::DescribeActivities.new
      end)
      service.add_operation(:describe_comments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeComments"
        operation.name = "DescribeComments"
        operation.input = DescribeCommentsRequest
        operation.output = DescribeCommentsResponse
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments", "code" => 200}}
        operation[:paginator] = Paginators::DescribeComments.new
      end)
      service.add_operation(:describe_document_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeDocumentVersions"
        operation.name = "DescribeDocumentVersions"
        operation.input = DescribeDocumentVersionsRequest
        operation.output = DescribeDocumentVersionsResponse
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidPasswordException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/documents/{DocumentId}/versions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeDocumentVersions.new
      end)
      service.add_operation(:describe_folder_contents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeFolderContents"
        operation.name = "DescribeFolderContents"
        operation.input = DescribeFolderContentsRequest
        operation.output = DescribeFolderContentsResponse
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << InvalidArgumentException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/folders/{FolderId}/contents", "code" => 200}}
        operation[:paginator] = Paginators::DescribeFolderContents.new
      end)
      service.add_operation(:describe_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeGroups"
        operation.name = "DescribeGroups"
        operation.input = DescribeGroupsRequest
        operation.output = DescribeGroupsResponse
        operation.errors << FailedDependencyException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/groups", "code" => 200}}
        operation[:paginator] = Paginators::DescribeGroups.new
      end)
      service.add_operation(:describe_notification_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeNotificationSubscriptions"
        operation.name = "DescribeNotificationSubscriptions"
        operation.input = DescribeNotificationSubscriptionsRequest
        operation.output = DescribeNotificationSubscriptionsResponse
        operation.errors << EntityNotExistsException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/organizations/{OrganizationId}/subscriptions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeNotificationSubscriptions.new
      end)
      service.add_operation(:describe_resource_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeResourcePermissions"
        operation.name = "DescribeResourcePermissions"
        operation.input = DescribeResourcePermissionsRequest
        operation.output = DescribeResourcePermissionsResponse
        operation.errors << FailedDependencyException
        operation.errors << InvalidArgumentException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/resources/{ResourceId}/permissions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeResourcePermissions.new
      end)
      service.add_operation(:describe_root_folders, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeRootFolders"
        operation.name = "DescribeRootFolders"
        operation.input = DescribeRootFoldersRequest
        operation.output = DescribeRootFoldersResponse
        operation.errors << FailedDependencyException
        operation.errors << InvalidArgumentException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/me/root", "code" => 200}}
        operation[:paginator] = Paginators::DescribeRootFolders.new
      end)
      service.add_operation(:describe_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#DescribeUsers"
        operation.name = "DescribeUsers"
        operation.input = DescribeUsersRequest
        operation.output = DescribeUsersResponse
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << InvalidArgumentException
        operation.errors << RequestedEntityTooLargeException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/users", "code" => 200}}
        operation[:paginator] = Paginators::DescribeUsers.new
      end)
      service.add_operation(:get_current_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#GetCurrentUser"
        operation.name = "GetCurrentUser"
        operation.input = GetCurrentUserRequest
        operation.output = GetCurrentUserResponse
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/me", "code" => 200}}
      end)
      service.add_operation(:get_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#GetDocument"
        operation.name = "GetDocument"
        operation.input = GetDocumentRequest
        operation.output = GetDocumentResponse
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidPasswordException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/documents/{DocumentId}", "code" => 200}}
      end)
      service.add_operation(:get_document_path, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#GetDocumentPath"
        operation.name = "GetDocumentPath"
        operation.input = GetDocumentPathRequest
        operation.output = GetDocumentPathResponse
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/documents/{DocumentId}/path", "code" => 200}}
      end)
      service.add_operation(:get_document_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#GetDocumentVersion"
        operation.name = "GetDocumentVersion"
        operation.input = GetDocumentVersionRequest
        operation.output = GetDocumentVersionResponse
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << InvalidPasswordException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/documents/{DocumentId}/versions/{VersionId}", "code" => 200}}
      end)
      service.add_operation(:get_folder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#GetFolder"
        operation.name = "GetFolder"
        operation.input = GetFolderRequest
        operation.output = GetFolderResponse
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << InvalidArgumentException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/folders/{FolderId}", "code" => 200}}
      end)
      service.add_operation(:get_folder_path, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#GetFolderPath"
        operation.name = "GetFolderPath"
        operation.input = GetFolderPathRequest
        operation.output = GetFolderPathResponse
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/folders/{FolderId}/path", "code" => 200}}
      end)
      service.add_operation(:get_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#GetResources"
        operation.name = "GetResources"
        operation.input = GetResourcesRequest
        operation.output = GetResourcesResponse
        operation.errors << FailedDependencyException
        operation.errors << InvalidArgumentException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v1/resources", "code" => 200}}
      end)
      service.add_operation(:initiate_document_version_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#InitiateDocumentVersionUpload"
        operation.name = "InitiateDocumentVersionUpload"
        operation.input = InitiateDocumentVersionUploadRequest
        operation.output = InitiateDocumentVersionUploadResponse
        operation.errors << DraftUploadOutOfSyncException
        operation.errors << EntityAlreadyExistsException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidPasswordException
        operation.errors << LimitExceededException
        operation.errors << ProhibitedStateException
        operation.errors << ResourceAlreadyCheckedOutException
        operation.errors << ServiceUnavailableException
        operation.errors << StorageLimitExceededException
        operation.errors << StorageLimitWillExceedException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/documents", "code" => 201}}
      end)
      service.add_operation(:remove_all_resource_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#RemoveAllResourcePermissions"
        operation.name = "RemoveAllResourcePermissions"
        operation.input = RemoveAllResourcePermissionsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << FailedDependencyException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/resources/{ResourceId}/permissions", "code" => 204}}
      end)
      service.add_operation(:remove_resource_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#RemoveResourcePermission"
        operation.name = "RemoveResourcePermission"
        operation.input = RemoveResourcePermissionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << FailedDependencyException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}", "code" => 204}}
      end)
      service.add_operation(:restore_document_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#RestoreDocumentVersions"
        operation.name = "RestoreDocumentVersions"
        operation.input = RestoreDocumentVersionsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << ConflictingOperationException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << InvalidOperationException
        operation.errors << ProhibitedStateException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/documentVersions/restore/{DocumentId}", "code" => 204}}
      end)
      service.add_operation(:search_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#SearchResources"
        operation.name = "SearchResources"
        operation.input = SearchResourcesRequest
        operation.output = SearchResourcesResponse
        operation.errors << InvalidArgumentException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v1/search", "code" => 200}}
        operation[:paginator] = Paginators::SearchResources.new
      end)
      service.add_operation(:update_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#UpdateDocument"
        operation.name = "UpdateDocument"
        operation.input = UpdateDocumentRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << ConflictingOperationException
        operation.errors << EntityAlreadyExistsException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << LimitExceededException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/api/v1/documents/{DocumentId}", "code" => 200}}
      end)
      service.add_operation(:update_document_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#UpdateDocumentVersion"
        operation.name = "UpdateDocumentVersion"
        operation.input = UpdateDocumentVersionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << InvalidOperationException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/api/v1/documents/{DocumentId}/versions/{VersionId}", "code" => 200}}
      end)
      service.add_operation(:update_folder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#UpdateFolder"
        operation.name = "UpdateFolder"
        operation.input = UpdateFolderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << ConflictingOperationException
        operation.errors << EntityAlreadyExistsException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << LimitExceededException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/api/v1/folders/{FolderId}", "code" => 200}}
      end)
      service.add_operation(:update_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workdocs#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = UpdateUserRequest
        operation.output = UpdateUserResponse
        operation.errors << DeactivatingLastSystemUserException
        operation.errors << EntityNotExistsException
        operation.errors << FailedDependencyException
        operation.errors << IllegalUserStateException
        operation.errors << InvalidArgumentException
        operation.errors << ProhibitedStateException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedOperationException
        operation.errors << UnauthorizedResourceAccessException
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
