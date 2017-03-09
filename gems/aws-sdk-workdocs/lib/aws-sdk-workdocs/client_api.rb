# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkDocs
  # @api private
  module ClientApi

    include Seahorse::Model

    AbortDocumentVersionUploadRequest = Shapes::StructureShape.new(name: 'AbortDocumentVersionUploadRequest')
    ActivateUserRequest = Shapes::StructureShape.new(name: 'ActivateUserRequest')
    ActivateUserResponse = Shapes::StructureShape.new(name: 'ActivateUserResponse')
    AddResourcePermissionsRequest = Shapes::StructureShape.new(name: 'AddResourcePermissionsRequest')
    AddResourcePermissionsResponse = Shapes::StructureShape.new(name: 'AddResourcePermissionsResponse')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    CreateFolderRequest = Shapes::StructureShape.new(name: 'CreateFolderRequest')
    CreateFolderResponse = Shapes::StructureShape.new(name: 'CreateFolderResponse')
    CreateNotificationSubscriptionRequest = Shapes::StructureShape.new(name: 'CreateNotificationSubscriptionRequest')
    CreateNotificationSubscriptionResponse = Shapes::StructureShape.new(name: 'CreateNotificationSubscriptionResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    DeactivateUserRequest = Shapes::StructureShape.new(name: 'DeactivateUserRequest')
    DeactivatingLastSystemUserException = Shapes::StructureShape.new(name: 'DeactivatingLastSystemUserException')
    DeleteDocumentRequest = Shapes::StructureShape.new(name: 'DeleteDocumentRequest')
    DeleteFolderContentsRequest = Shapes::StructureShape.new(name: 'DeleteFolderContentsRequest')
    DeleteFolderRequest = Shapes::StructureShape.new(name: 'DeleteFolderRequest')
    DeleteNotificationSubscriptionRequest = Shapes::StructureShape.new(name: 'DeleteNotificationSubscriptionRequest')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DescribeDocumentVersionsRequest = Shapes::StructureShape.new(name: 'DescribeDocumentVersionsRequest')
    DescribeDocumentVersionsResponse = Shapes::StructureShape.new(name: 'DescribeDocumentVersionsResponse')
    DescribeFolderContentsRequest = Shapes::StructureShape.new(name: 'DescribeFolderContentsRequest')
    DescribeFolderContentsResponse = Shapes::StructureShape.new(name: 'DescribeFolderContentsResponse')
    DescribeNotificationSubscriptionsRequest = Shapes::StructureShape.new(name: 'DescribeNotificationSubscriptionsRequest')
    DescribeNotificationSubscriptionsResponse = Shapes::StructureShape.new(name: 'DescribeNotificationSubscriptionsResponse')
    DescribeResourcePermissionsRequest = Shapes::StructureShape.new(name: 'DescribeResourcePermissionsRequest')
    DescribeResourcePermissionsResponse = Shapes::StructureShape.new(name: 'DescribeResourcePermissionsResponse')
    DescribeUsersRequest = Shapes::StructureShape.new(name: 'DescribeUsersRequest')
    DescribeUsersResponse = Shapes::StructureShape.new(name: 'DescribeUsersResponse')
    DocumentContentType = Shapes::StringShape.new(name: 'DocumentContentType')
    DocumentMetadata = Shapes::StructureShape.new(name: 'DocumentMetadata')
    DocumentMetadataList = Shapes::ListShape.new(name: 'DocumentMetadataList')
    DocumentSourceType = Shapes::StringShape.new(name: 'DocumentSourceType')
    DocumentSourceUrlMap = Shapes::MapShape.new(name: 'DocumentSourceUrlMap')
    DocumentStatusType = Shapes::StringShape.new(name: 'DocumentStatusType')
    DocumentThumbnailType = Shapes::StringShape.new(name: 'DocumentThumbnailType')
    DocumentThumbnailUrlMap = Shapes::MapShape.new(name: 'DocumentThumbnailUrlMap')
    DocumentVersionIdType = Shapes::StringShape.new(name: 'DocumentVersionIdType')
    DocumentVersionMetadata = Shapes::StructureShape.new(name: 'DocumentVersionMetadata')
    DocumentVersionMetadataList = Shapes::ListShape.new(name: 'DocumentVersionMetadataList')
    DocumentVersionStatus = Shapes::StringShape.new(name: 'DocumentVersionStatus')
    EmailAddressType = Shapes::StringShape.new(name: 'EmailAddressType')
    EntityAlreadyExistsException = Shapes::StructureShape.new(name: 'EntityAlreadyExistsException')
    EntityIdList = Shapes::ListShape.new(name: 'EntityIdList')
    EntityNotExistsException = Shapes::StructureShape.new(name: 'EntityNotExistsException')
    ErrorMessageType = Shapes::StringShape.new(name: 'ErrorMessageType')
    FailedDependencyException = Shapes::StructureShape.new(name: 'FailedDependencyException')
    FieldNamesType = Shapes::StringShape.new(name: 'FieldNamesType')
    FolderContentType = Shapes::StringShape.new(name: 'FolderContentType')
    FolderMetadata = Shapes::StructureShape.new(name: 'FolderMetadata')
    FolderMetadataList = Shapes::ListShape.new(name: 'FolderMetadataList')
    GetDocumentPathRequest = Shapes::StructureShape.new(name: 'GetDocumentPathRequest')
    GetDocumentPathResponse = Shapes::StructureShape.new(name: 'GetDocumentPathResponse')
    GetDocumentRequest = Shapes::StructureShape.new(name: 'GetDocumentRequest')
    GetDocumentResponse = Shapes::StructureShape.new(name: 'GetDocumentResponse')
    GetDocumentVersionRequest = Shapes::StructureShape.new(name: 'GetDocumentVersionRequest')
    GetDocumentVersionResponse = Shapes::StructureShape.new(name: 'GetDocumentVersionResponse')
    GetFolderPathRequest = Shapes::StructureShape.new(name: 'GetFolderPathRequest')
    GetFolderPathResponse = Shapes::StructureShape.new(name: 'GetFolderPathResponse')
    GetFolderRequest = Shapes::StructureShape.new(name: 'GetFolderRequest')
    GetFolderResponse = Shapes::StructureShape.new(name: 'GetFolderResponse')
    HashType = Shapes::StringShape.new(name: 'HashType')
    HeaderNameType = Shapes::StringShape.new(name: 'HeaderNameType')
    HeaderValueType = Shapes::StringShape.new(name: 'HeaderValueType')
    IdType = Shapes::StringShape.new(name: 'IdType')
    IllegalUserStateException = Shapes::StructureShape.new(name: 'IllegalUserStateException')
    InitiateDocumentVersionUploadRequest = Shapes::StructureShape.new(name: 'InitiateDocumentVersionUploadRequest')
    InitiateDocumentVersionUploadResponse = Shapes::StructureShape.new(name: 'InitiateDocumentVersionUploadResponse')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    InvalidOperationException = Shapes::StructureShape.new(name: 'InvalidOperationException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LimitType = Shapes::IntegerShape.new(name: 'LimitType')
    LocaleType = Shapes::StringShape.new(name: 'LocaleType')
    MessageType = Shapes::StringShape.new(name: 'MessageType')
    OrderType = Shapes::StringShape.new(name: 'OrderType')
    OrganizationUserList = Shapes::ListShape.new(name: 'OrganizationUserList')
    PageMarkerType = Shapes::StringShape.new(name: 'PageMarkerType')
    PasswordType = Shapes::StringShape.new(name: 'PasswordType')
    PermissionInfo = Shapes::StructureShape.new(name: 'PermissionInfo')
    PermissionInfoList = Shapes::ListShape.new(name: 'PermissionInfoList')
    PositiveSizeType = Shapes::IntegerShape.new(name: 'PositiveSizeType')
    Principal = Shapes::StructureShape.new(name: 'Principal')
    PrincipalList = Shapes::ListShape.new(name: 'PrincipalList')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    ProhibitedStateException = Shapes::StructureShape.new(name: 'ProhibitedStateException')
    RemoveAllResourcePermissionsRequest = Shapes::StructureShape.new(name: 'RemoveAllResourcePermissionsRequest')
    RemoveResourcePermissionRequest = Shapes::StructureShape.new(name: 'RemoveResourcePermissionRequest')
    ResourceIdType = Shapes::StringShape.new(name: 'ResourceIdType')
    ResourceNameType = Shapes::StringShape.new(name: 'ResourceNameType')
    ResourcePath = Shapes::StructureShape.new(name: 'ResourcePath')
    ResourcePathComponent = Shapes::StructureShape.new(name: 'ResourcePathComponent')
    ResourcePathComponentList = Shapes::ListShape.new(name: 'ResourcePathComponentList')
    ResourceSortType = Shapes::StringShape.new(name: 'ResourceSortType')
    ResourceStateType = Shapes::StringShape.new(name: 'ResourceStateType')
    RolePermissionType = Shapes::StringShape.new(name: 'RolePermissionType')
    RoleType = Shapes::StringShape.new(name: 'RoleType')
    SearchQueryType = Shapes::StringShape.new(name: 'SearchQueryType')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SharePrincipal = Shapes::StructureShape.new(name: 'SharePrincipal')
    SharePrincipalList = Shapes::ListShape.new(name: 'SharePrincipalList')
    ShareResult = Shapes::StructureShape.new(name: 'ShareResult')
    ShareResultsList = Shapes::ListShape.new(name: 'ShareResultsList')
    ShareStatusType = Shapes::StringShape.new(name: 'ShareStatusType')
    SignedHeaderMap = Shapes::MapShape.new(name: 'SignedHeaderMap')
    SizeType = Shapes::IntegerShape.new(name: 'SizeType')
    StorageLimitExceededException = Shapes::StructureShape.new(name: 'StorageLimitExceededException')
    StorageLimitWillExceedException = Shapes::StructureShape.new(name: 'StorageLimitWillExceedException')
    StorageRuleType = Shapes::StructureShape.new(name: 'StorageRuleType')
    StorageType = Shapes::StringShape.new(name: 'StorageType')
    Subscription = Shapes::StructureShape.new(name: 'Subscription')
    SubscriptionEndPointType = Shapes::StringShape.new(name: 'SubscriptionEndPointType')
    SubscriptionList = Shapes::ListShape.new(name: 'SubscriptionList')
    SubscriptionProtocolType = Shapes::StringShape.new(name: 'SubscriptionProtocolType')
    SubscriptionType = Shapes::StringShape.new(name: 'SubscriptionType')
    TimeZoneIdType = Shapes::StringShape.new(name: 'TimeZoneIdType')
    TimestampType = Shapes::TimestampShape.new(name: 'TimestampType')
    TooManySubscriptionsException = Shapes::StructureShape.new(name: 'TooManySubscriptionsException')
    UnauthorizedOperationException = Shapes::StructureShape.new(name: 'UnauthorizedOperationException')
    UnauthorizedResourceAccessException = Shapes::StructureShape.new(name: 'UnauthorizedResourceAccessException')
    UpdateDocumentRequest = Shapes::StructureShape.new(name: 'UpdateDocumentRequest')
    UpdateDocumentVersionRequest = Shapes::StructureShape.new(name: 'UpdateDocumentVersionRequest')
    UpdateFolderRequest = Shapes::StructureShape.new(name: 'UpdateFolderRequest')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    UploadMetadata = Shapes::StructureShape.new(name: 'UploadMetadata')
    UrlType = Shapes::StringShape.new(name: 'UrlType')
    User = Shapes::StructureShape.new(name: 'User')
    UserAttributeValueType = Shapes::StringShape.new(name: 'UserAttributeValueType')
    UserFilterType = Shapes::StringShape.new(name: 'UserFilterType')
    UserIdsType = Shapes::StringShape.new(name: 'UserIdsType')
    UserSortType = Shapes::StringShape.new(name: 'UserSortType')
    UserStatusType = Shapes::StringShape.new(name: 'UserStatusType')
    UserStorageMetadata = Shapes::StructureShape.new(name: 'UserStorageMetadata')
    UserType = Shapes::StringShape.new(name: 'UserType')
    UsernameType = Shapes::StringShape.new(name: 'UsernameType')

    AbortDocumentVersionUploadRequest.add_member(:document_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "DocumentId"))
    AbortDocumentVersionUploadRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: DocumentVersionIdType, required: true, location: "uri", location_name: "VersionId"))
    AbortDocumentVersionUploadRequest.struct_class = Types::AbortDocumentVersionUploadRequest

    ActivateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "UserId"))
    ActivateUserRequest.struct_class = Types::ActivateUserRequest

    ActivateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    ActivateUserResponse.struct_class = Types::ActivateUserResponse

    AddResourcePermissionsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "ResourceId"))
    AddResourcePermissionsRequest.add_member(:principals, Shapes::ShapeRef.new(shape: SharePrincipalList, required: true, location_name: "Principals"))
    AddResourcePermissionsRequest.struct_class = Types::AddResourcePermissionsRequest

    AddResourcePermissionsResponse.add_member(:share_results, Shapes::ShapeRef.new(shape: ShareResultsList, location_name: "ShareResults"))
    AddResourcePermissionsResponse.struct_class = Types::AddResourcePermissionsResponse

    CreateFolderRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameType, location_name: "Name"))
    CreateFolderRequest.add_member(:parent_folder_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location_name: "ParentFolderId"))
    CreateFolderRequest.struct_class = Types::CreateFolderRequest

    CreateFolderResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: FolderMetadata, location_name: "Metadata"))
    CreateFolderResponse.struct_class = Types::CreateFolderResponse

    CreateNotificationSubscriptionRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "OrganizationId"))
    CreateNotificationSubscriptionRequest.add_member(:endpoint, Shapes::ShapeRef.new(shape: SubscriptionEndPointType, required: true, location_name: "Endpoint"))
    CreateNotificationSubscriptionRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: SubscriptionProtocolType, required: true, location_name: "Protocol"))
    CreateNotificationSubscriptionRequest.add_member(:subscription_type, Shapes::ShapeRef.new(shape: SubscriptionType, required: true, location_name: "SubscriptionType"))
    CreateNotificationSubscriptionRequest.struct_class = Types::CreateNotificationSubscriptionRequest

    CreateNotificationSubscriptionResponse.add_member(:subscription, Shapes::ShapeRef.new(shape: Subscription, location_name: "Subscription"))
    CreateNotificationSubscriptionResponse.struct_class = Types::CreateNotificationSubscriptionResponse

    CreateUserRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: IdType, location_name: "OrganizationId"))
    CreateUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    CreateUserRequest.add_member(:given_name, Shapes::ShapeRef.new(shape: UserAttributeValueType, required: true, location_name: "GivenName"))
    CreateUserRequest.add_member(:surname, Shapes::ShapeRef.new(shape: UserAttributeValueType, required: true, location_name: "Surname"))
    CreateUserRequest.add_member(:password, Shapes::ShapeRef.new(shape: PasswordType, required: true, location_name: "Password"))
    CreateUserRequest.add_member(:time_zone_id, Shapes::ShapeRef.new(shape: TimeZoneIdType, location_name: "TimeZoneId"))
    CreateUserRequest.add_member(:storage_rule, Shapes::ShapeRef.new(shape: StorageRuleType, location_name: "StorageRule"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    CreateUserResponse.struct_class = Types::CreateUserResponse

    DeactivateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "UserId"))
    DeactivateUserRequest.struct_class = Types::DeactivateUserRequest

    DeleteDocumentRequest.add_member(:document_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "DocumentId"))
    DeleteDocumentRequest.struct_class = Types::DeleteDocumentRequest

    DeleteFolderContentsRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "FolderId"))
    DeleteFolderContentsRequest.struct_class = Types::DeleteFolderContentsRequest

    DeleteFolderRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "FolderId"))
    DeleteFolderRequest.struct_class = Types::DeleteFolderRequest

    DeleteNotificationSubscriptionRequest.add_member(:subscription_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "SubscriptionId"))
    DeleteNotificationSubscriptionRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "OrganizationId"))
    DeleteNotificationSubscriptionRequest.struct_class = Types::DeleteNotificationSubscriptionRequest

    DeleteUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "UserId"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DescribeDocumentVersionsRequest.add_member(:document_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "DocumentId"))
    DescribeDocumentVersionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarkerType, location: "querystring", location_name: "marker"))
    DescribeDocumentVersionsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitType, location: "querystring", location_name: "limit"))
    DescribeDocumentVersionsRequest.add_member(:include, Shapes::ShapeRef.new(shape: FieldNamesType, location: "querystring", location_name: "include"))
    DescribeDocumentVersionsRequest.add_member(:fields, Shapes::ShapeRef.new(shape: FieldNamesType, location: "querystring", location_name: "fields"))
    DescribeDocumentVersionsRequest.struct_class = Types::DescribeDocumentVersionsRequest

    DescribeDocumentVersionsResponse.add_member(:document_versions, Shapes::ShapeRef.new(shape: DocumentVersionMetadataList, location_name: "DocumentVersions"))
    DescribeDocumentVersionsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarkerType, location_name: "Marker"))
    DescribeDocumentVersionsResponse.struct_class = Types::DescribeDocumentVersionsResponse

    DescribeFolderContentsRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "FolderId"))
    DescribeFolderContentsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: ResourceSortType, location: "querystring", location_name: "sort"))
    DescribeFolderContentsRequest.add_member(:order, Shapes::ShapeRef.new(shape: OrderType, location: "querystring", location_name: "order"))
    DescribeFolderContentsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitType, location: "querystring", location_name: "limit"))
    DescribeFolderContentsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarkerType, location: "querystring", location_name: "marker"))
    DescribeFolderContentsRequest.add_member(:type, Shapes::ShapeRef.new(shape: FolderContentType, location: "querystring", location_name: "type"))
    DescribeFolderContentsRequest.add_member(:include, Shapes::ShapeRef.new(shape: FieldNamesType, location: "querystring", location_name: "include"))
    DescribeFolderContentsRequest.struct_class = Types::DescribeFolderContentsRequest

    DescribeFolderContentsResponse.add_member(:folders, Shapes::ShapeRef.new(shape: FolderMetadataList, location_name: "Folders"))
    DescribeFolderContentsResponse.add_member(:documents, Shapes::ShapeRef.new(shape: DocumentMetadataList, location_name: "Documents"))
    DescribeFolderContentsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarkerType, location_name: "Marker"))
    DescribeFolderContentsResponse.struct_class = Types::DescribeFolderContentsResponse

    DescribeNotificationSubscriptionsRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "OrganizationId"))
    DescribeNotificationSubscriptionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarkerType, location: "querystring", location_name: "marker"))
    DescribeNotificationSubscriptionsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitType, location: "querystring", location_name: "limit"))
    DescribeNotificationSubscriptionsRequest.struct_class = Types::DescribeNotificationSubscriptionsRequest

    DescribeNotificationSubscriptionsResponse.add_member(:subscriptions, Shapes::ShapeRef.new(shape: SubscriptionList, location_name: "Subscriptions"))
    DescribeNotificationSubscriptionsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarkerType, location_name: "Marker"))
    DescribeNotificationSubscriptionsResponse.struct_class = Types::DescribeNotificationSubscriptionsResponse

    DescribeResourcePermissionsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "ResourceId"))
    DescribeResourcePermissionsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitType, location: "querystring", location_name: "limit"))
    DescribeResourcePermissionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarkerType, location: "querystring", location_name: "marker"))
    DescribeResourcePermissionsRequest.struct_class = Types::DescribeResourcePermissionsRequest

    DescribeResourcePermissionsResponse.add_member(:principals, Shapes::ShapeRef.new(shape: PrincipalList, location_name: "Principals"))
    DescribeResourcePermissionsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarkerType, location_name: "Marker"))
    DescribeResourcePermissionsResponse.struct_class = Types::DescribeResourcePermissionsResponse

    DescribeUsersRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: IdType, location: "querystring", location_name: "organizationId"))
    DescribeUsersRequest.add_member(:user_ids, Shapes::ShapeRef.new(shape: UserIdsType, location: "querystring", location_name: "userIds"))
    DescribeUsersRequest.add_member(:query, Shapes::ShapeRef.new(shape: SearchQueryType, location: "querystring", location_name: "query"))
    DescribeUsersRequest.add_member(:include, Shapes::ShapeRef.new(shape: UserFilterType, location: "querystring", location_name: "include"))
    DescribeUsersRequest.add_member(:order, Shapes::ShapeRef.new(shape: OrderType, location: "querystring", location_name: "order"))
    DescribeUsersRequest.add_member(:sort, Shapes::ShapeRef.new(shape: UserSortType, location: "querystring", location_name: "sort"))
    DescribeUsersRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarkerType, location: "querystring", location_name: "marker"))
    DescribeUsersRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitType, location: "querystring", location_name: "limit"))
    DescribeUsersRequest.add_member(:fields, Shapes::ShapeRef.new(shape: FieldNamesType, location: "querystring", location_name: "fields"))
    DescribeUsersRequest.struct_class = Types::DescribeUsersRequest

    DescribeUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: OrganizationUserList, location_name: "Users"))
    DescribeUsersResponse.add_member(:total_number_of_users, Shapes::ShapeRef.new(shape: SizeType, location_name: "TotalNumberOfUsers"))
    DescribeUsersResponse.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarkerType, location_name: "Marker"))
    DescribeUsersResponse.struct_class = Types::DescribeUsersResponse

    DocumentMetadata.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdType, location_name: "Id"))
    DocumentMetadata.add_member(:creator_id, Shapes::ShapeRef.new(shape: IdType, location_name: "CreatorId"))
    DocumentMetadata.add_member(:parent_folder_id, Shapes::ShapeRef.new(shape: ResourceIdType, location_name: "ParentFolderId"))
    DocumentMetadata.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: TimestampType, location_name: "CreatedTimestamp"))
    DocumentMetadata.add_member(:modified_timestamp, Shapes::ShapeRef.new(shape: TimestampType, location_name: "ModifiedTimestamp"))
    DocumentMetadata.add_member(:latest_version_metadata, Shapes::ShapeRef.new(shape: DocumentVersionMetadata, location_name: "LatestVersionMetadata"))
    DocumentMetadata.add_member(:resource_state, Shapes::ShapeRef.new(shape: ResourceStateType, location_name: "ResourceState"))
    DocumentMetadata.struct_class = Types::DocumentMetadata

    DocumentMetadataList.member = Shapes::ShapeRef.new(shape: DocumentMetadata)

    DocumentSourceUrlMap.key = Shapes::ShapeRef.new(shape: DocumentSourceType)
    DocumentSourceUrlMap.value = Shapes::ShapeRef.new(shape: UrlType)

    DocumentThumbnailUrlMap.key = Shapes::ShapeRef.new(shape: DocumentThumbnailType)
    DocumentThumbnailUrlMap.value = Shapes::ShapeRef.new(shape: UrlType)

    DocumentVersionMetadata.add_member(:id, Shapes::ShapeRef.new(shape: DocumentVersionIdType, location_name: "Id"))
    DocumentVersionMetadata.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameType, location_name: "Name"))
    DocumentVersionMetadata.add_member(:content_type, Shapes::ShapeRef.new(shape: DocumentContentType, location_name: "ContentType"))
    DocumentVersionMetadata.add_member(:size, Shapes::ShapeRef.new(shape: SizeType, location_name: "Size"))
    DocumentVersionMetadata.add_member(:signature, Shapes::ShapeRef.new(shape: HashType, location_name: "Signature"))
    DocumentVersionMetadata.add_member(:status, Shapes::ShapeRef.new(shape: DocumentStatusType, location_name: "Status"))
    DocumentVersionMetadata.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: TimestampType, location_name: "CreatedTimestamp"))
    DocumentVersionMetadata.add_member(:modified_timestamp, Shapes::ShapeRef.new(shape: TimestampType, location_name: "ModifiedTimestamp"))
    DocumentVersionMetadata.add_member(:content_created_timestamp, Shapes::ShapeRef.new(shape: TimestampType, location_name: "ContentCreatedTimestamp"))
    DocumentVersionMetadata.add_member(:content_modified_timestamp, Shapes::ShapeRef.new(shape: TimestampType, location_name: "ContentModifiedTimestamp"))
    DocumentVersionMetadata.add_member(:creator_id, Shapes::ShapeRef.new(shape: IdType, location_name: "CreatorId"))
    DocumentVersionMetadata.add_member(:thumbnail, Shapes::ShapeRef.new(shape: DocumentThumbnailUrlMap, location_name: "Thumbnail"))
    DocumentVersionMetadata.add_member(:source, Shapes::ShapeRef.new(shape: DocumentSourceUrlMap, location_name: "Source"))
    DocumentVersionMetadata.struct_class = Types::DocumentVersionMetadata

    DocumentVersionMetadataList.member = Shapes::ShapeRef.new(shape: DocumentVersionMetadata)

    EntityIdList.member = Shapes::ShapeRef.new(shape: IdType)

    FolderMetadata.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdType, location_name: "Id"))
    FolderMetadata.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameType, location_name: "Name"))
    FolderMetadata.add_member(:creator_id, Shapes::ShapeRef.new(shape: IdType, location_name: "CreatorId"))
    FolderMetadata.add_member(:parent_folder_id, Shapes::ShapeRef.new(shape: ResourceIdType, location_name: "ParentFolderId"))
    FolderMetadata.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: TimestampType, location_name: "CreatedTimestamp"))
    FolderMetadata.add_member(:modified_timestamp, Shapes::ShapeRef.new(shape: TimestampType, location_name: "ModifiedTimestamp"))
    FolderMetadata.add_member(:resource_state, Shapes::ShapeRef.new(shape: ResourceStateType, location_name: "ResourceState"))
    FolderMetadata.add_member(:signature, Shapes::ShapeRef.new(shape: HashType, location_name: "Signature"))
    FolderMetadata.struct_class = Types::FolderMetadata

    FolderMetadataList.member = Shapes::ShapeRef.new(shape: FolderMetadata)

    GetDocumentPathRequest.add_member(:document_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "DocumentId"))
    GetDocumentPathRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitType, location: "querystring", location_name: "limit"))
    GetDocumentPathRequest.add_member(:fields, Shapes::ShapeRef.new(shape: FieldNamesType, location: "querystring", location_name: "fields"))
    GetDocumentPathRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarkerType, location: "querystring", location_name: "marker"))
    GetDocumentPathRequest.struct_class = Types::GetDocumentPathRequest

    GetDocumentPathResponse.add_member(:path, Shapes::ShapeRef.new(shape: ResourcePath, location_name: "Path"))
    GetDocumentPathResponse.struct_class = Types::GetDocumentPathResponse

    GetDocumentRequest.add_member(:document_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "DocumentId"))
    GetDocumentRequest.struct_class = Types::GetDocumentRequest

    GetDocumentResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: "Metadata"))
    GetDocumentResponse.struct_class = Types::GetDocumentResponse

    GetDocumentVersionRequest.add_member(:document_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "DocumentId"))
    GetDocumentVersionRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: DocumentVersionIdType, required: true, location: "uri", location_name: "VersionId"))
    GetDocumentVersionRequest.add_member(:fields, Shapes::ShapeRef.new(shape: FieldNamesType, location: "querystring", location_name: "fields"))
    GetDocumentVersionRequest.struct_class = Types::GetDocumentVersionRequest

    GetDocumentVersionResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: DocumentVersionMetadata, location_name: "Metadata"))
    GetDocumentVersionResponse.struct_class = Types::GetDocumentVersionResponse

    GetFolderPathRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "FolderId"))
    GetFolderPathRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitType, location: "querystring", location_name: "limit"))
    GetFolderPathRequest.add_member(:fields, Shapes::ShapeRef.new(shape: FieldNamesType, location: "querystring", location_name: "fields"))
    GetFolderPathRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarkerType, location: "querystring", location_name: "marker"))
    GetFolderPathRequest.struct_class = Types::GetFolderPathRequest

    GetFolderPathResponse.add_member(:path, Shapes::ShapeRef.new(shape: ResourcePath, location_name: "Path"))
    GetFolderPathResponse.struct_class = Types::GetFolderPathResponse

    GetFolderRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "FolderId"))
    GetFolderRequest.struct_class = Types::GetFolderRequest

    GetFolderResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: FolderMetadata, location_name: "Metadata"))
    GetFolderResponse.struct_class = Types::GetFolderResponse

    InitiateDocumentVersionUploadRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdType, location_name: "Id"))
    InitiateDocumentVersionUploadRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameType, location_name: "Name"))
    InitiateDocumentVersionUploadRequest.add_member(:content_created_timestamp, Shapes::ShapeRef.new(shape: TimestampType, location_name: "ContentCreatedTimestamp"))
    InitiateDocumentVersionUploadRequest.add_member(:content_modified_timestamp, Shapes::ShapeRef.new(shape: TimestampType, location_name: "ContentModifiedTimestamp"))
    InitiateDocumentVersionUploadRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: DocumentContentType, location_name: "ContentType"))
    InitiateDocumentVersionUploadRequest.add_member(:document_size_in_bytes, Shapes::ShapeRef.new(shape: SizeType, location_name: "DocumentSizeInBytes"))
    InitiateDocumentVersionUploadRequest.add_member(:parent_folder_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location_name: "ParentFolderId"))
    InitiateDocumentVersionUploadRequest.struct_class = Types::InitiateDocumentVersionUploadRequest

    InitiateDocumentVersionUploadResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: "Metadata"))
    InitiateDocumentVersionUploadResponse.add_member(:upload_metadata, Shapes::ShapeRef.new(shape: UploadMetadata, location_name: "UploadMetadata"))
    InitiateDocumentVersionUploadResponse.struct_class = Types::InitiateDocumentVersionUploadResponse

    OrganizationUserList.member = Shapes::ShapeRef.new(shape: User)

    PermissionInfo.add_member(:role, Shapes::ShapeRef.new(shape: RoleType, location_name: "Role"))
    PermissionInfo.add_member(:type, Shapes::ShapeRef.new(shape: RolePermissionType, location_name: "Type"))
    PermissionInfo.struct_class = Types::PermissionInfo

    PermissionInfoList.member = Shapes::ShapeRef.new(shape: PermissionInfo)

    Principal.add_member(:id, Shapes::ShapeRef.new(shape: IdType, location_name: "Id"))
    Principal.add_member(:type, Shapes::ShapeRef.new(shape: PrincipalType, location_name: "Type"))
    Principal.add_member(:roles, Shapes::ShapeRef.new(shape: PermissionInfoList, location_name: "Roles"))
    Principal.struct_class = Types::Principal

    PrincipalList.member = Shapes::ShapeRef.new(shape: Principal)

    RemoveAllResourcePermissionsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "ResourceId"))
    RemoveAllResourcePermissionsRequest.struct_class = Types::RemoveAllResourcePermissionsRequest

    RemoveResourcePermissionRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "ResourceId"))
    RemoveResourcePermissionRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "PrincipalId"))
    RemoveResourcePermissionRequest.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, location: "querystring", location_name: "type"))
    RemoveResourcePermissionRequest.struct_class = Types::RemoveResourcePermissionRequest

    ResourcePath.add_member(:components, Shapes::ShapeRef.new(shape: ResourcePathComponentList, location_name: "Components"))
    ResourcePath.struct_class = Types::ResourcePath

    ResourcePathComponent.add_member(:id, Shapes::ShapeRef.new(shape: IdType, location_name: "Id"))
    ResourcePathComponent.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameType, location_name: "Name"))
    ResourcePathComponent.struct_class = Types::ResourcePathComponent

    ResourcePathComponentList.member = Shapes::ShapeRef.new(shape: ResourcePathComponent)

    SharePrincipal.add_member(:id, Shapes::ShapeRef.new(shape: IdType, required: true, location_name: "Id"))
    SharePrincipal.add_member(:type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "Type"))
    SharePrincipal.add_member(:role, Shapes::ShapeRef.new(shape: RoleType, required: true, location_name: "Role"))
    SharePrincipal.struct_class = Types::SharePrincipal

    SharePrincipalList.member = Shapes::ShapeRef.new(shape: SharePrincipal)

    ShareResult.add_member(:principal_id, Shapes::ShapeRef.new(shape: IdType, location_name: "PrincipalId"))
    ShareResult.add_member(:role, Shapes::ShapeRef.new(shape: RoleType, location_name: "Role"))
    ShareResult.add_member(:status, Shapes::ShapeRef.new(shape: ShareStatusType, location_name: "Status"))
    ShareResult.add_member(:share_id, Shapes::ShapeRef.new(shape: ResourceIdType, location_name: "ShareId"))
    ShareResult.add_member(:status_message, Shapes::ShapeRef.new(shape: MessageType, location_name: "StatusMessage"))
    ShareResult.struct_class = Types::ShareResult

    ShareResultsList.member = Shapes::ShapeRef.new(shape: ShareResult)

    SignedHeaderMap.key = Shapes::ShapeRef.new(shape: HeaderNameType)
    SignedHeaderMap.value = Shapes::ShapeRef.new(shape: HeaderValueType)

    StorageRuleType.add_member(:storage_allocated_in_bytes, Shapes::ShapeRef.new(shape: PositiveSizeType, location_name: "StorageAllocatedInBytes"))
    StorageRuleType.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, location_name: "StorageType"))
    StorageRuleType.struct_class = Types::StorageRuleType

    Subscription.add_member(:subscription_id, Shapes::ShapeRef.new(shape: IdType, location_name: "SubscriptionId"))
    Subscription.add_member(:end_point, Shapes::ShapeRef.new(shape: SubscriptionEndPointType, location_name: "EndPoint"))
    Subscription.add_member(:protocol, Shapes::ShapeRef.new(shape: SubscriptionProtocolType, location_name: "Protocol"))
    Subscription.struct_class = Types::Subscription

    SubscriptionList.member = Shapes::ShapeRef.new(shape: Subscription)

    UpdateDocumentRequest.add_member(:document_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "DocumentId"))
    UpdateDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameType, location_name: "Name"))
    UpdateDocumentRequest.add_member(:parent_folder_id, Shapes::ShapeRef.new(shape: ResourceIdType, location_name: "ParentFolderId"))
    UpdateDocumentRequest.add_member(:resource_state, Shapes::ShapeRef.new(shape: ResourceStateType, location_name: "ResourceState"))
    UpdateDocumentRequest.struct_class = Types::UpdateDocumentRequest

    UpdateDocumentVersionRequest.add_member(:document_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "DocumentId"))
    UpdateDocumentVersionRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: DocumentVersionIdType, required: true, location: "uri", location_name: "VersionId"))
    UpdateDocumentVersionRequest.add_member(:version_status, Shapes::ShapeRef.new(shape: DocumentVersionStatus, location_name: "VersionStatus"))
    UpdateDocumentVersionRequest.struct_class = Types::UpdateDocumentVersionRequest

    UpdateFolderRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: ResourceIdType, required: true, location: "uri", location_name: "FolderId"))
    UpdateFolderRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameType, location_name: "Name"))
    UpdateFolderRequest.add_member(:parent_folder_id, Shapes::ShapeRef.new(shape: ResourceIdType, location_name: "ParentFolderId"))
    UpdateFolderRequest.add_member(:resource_state, Shapes::ShapeRef.new(shape: ResourceStateType, location_name: "ResourceState"))
    UpdateFolderRequest.struct_class = Types::UpdateFolderRequest

    UpdateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "UserId"))
    UpdateUserRequest.add_member(:given_name, Shapes::ShapeRef.new(shape: UserAttributeValueType, location_name: "GivenName"))
    UpdateUserRequest.add_member(:surname, Shapes::ShapeRef.new(shape: UserAttributeValueType, location_name: "Surname"))
    UpdateUserRequest.add_member(:type, Shapes::ShapeRef.new(shape: UserType, location_name: "Type"))
    UpdateUserRequest.add_member(:storage_rule, Shapes::ShapeRef.new(shape: StorageRuleType, location_name: "StorageRule"))
    UpdateUserRequest.add_member(:time_zone_id, Shapes::ShapeRef.new(shape: TimeZoneIdType, location_name: "TimeZoneId"))
    UpdateUserRequest.add_member(:locale, Shapes::ShapeRef.new(shape: LocaleType, location_name: "Locale"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    UploadMetadata.add_member(:upload_url, Shapes::ShapeRef.new(shape: UrlType, location_name: "UploadUrl"))
    UploadMetadata.add_member(:signed_headers, Shapes::ShapeRef.new(shape: SignedHeaderMap, location_name: "SignedHeaders"))
    UploadMetadata.struct_class = Types::UploadMetadata

    User.add_member(:id, Shapes::ShapeRef.new(shape: IdType, location_name: "Id"))
    User.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, location_name: "Username"))
    User.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddressType, location_name: "EmailAddress"))
    User.add_member(:given_name, Shapes::ShapeRef.new(shape: UserAttributeValueType, location_name: "GivenName"))
    User.add_member(:surname, Shapes::ShapeRef.new(shape: UserAttributeValueType, location_name: "Surname"))
    User.add_member(:organization_id, Shapes::ShapeRef.new(shape: IdType, location_name: "OrganizationId"))
    User.add_member(:root_folder_id, Shapes::ShapeRef.new(shape: ResourceIdType, location_name: "RootFolderId"))
    User.add_member(:recycle_bin_folder_id, Shapes::ShapeRef.new(shape: ResourceIdType, location_name: "RecycleBinFolderId"))
    User.add_member(:status, Shapes::ShapeRef.new(shape: UserStatusType, location_name: "Status"))
    User.add_member(:type, Shapes::ShapeRef.new(shape: UserType, location_name: "Type"))
    User.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: TimestampType, location_name: "CreatedTimestamp"))
    User.add_member(:modified_timestamp, Shapes::ShapeRef.new(shape: TimestampType, location_name: "ModifiedTimestamp"))
    User.add_member(:time_zone_id, Shapes::ShapeRef.new(shape: TimeZoneIdType, location_name: "TimeZoneId"))
    User.add_member(:locale, Shapes::ShapeRef.new(shape: LocaleType, location_name: "Locale"))
    User.add_member(:storage, Shapes::ShapeRef.new(shape: UserStorageMetadata, location_name: "Storage"))
    User.struct_class = Types::User

    UserStorageMetadata.add_member(:storage_utilized_in_bytes, Shapes::ShapeRef.new(shape: SizeType, location_name: "StorageUtilizedInBytes"))
    UserStorageMetadata.add_member(:storage_rule, Shapes::ShapeRef.new(shape: StorageRuleType, location_name: "StorageRule"))
    UserStorageMetadata.struct_class = Types::UserStorageMetadata


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-05-01"

      api.metadata = {
        "endpointPrefix" => "workdocs",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon WorkDocs",
        "signatureVersion" => "v4",
      }

      api.add_operation(:abort_document_version_upload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AbortDocumentVersionUpload"
        o.http_method = "DELETE"
        o.http_request_uri = "/api/v1/documents/{DocumentId}/versions/{VersionId}"
        o.input = Shapes::ShapeRef.new(shape: AbortDocumentVersionUploadRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ProhibitedStateException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:activate_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ActivateUser"
        o.http_method = "POST"
        o.http_request_uri = "/api/v1/users/{UserId}/activation"
        o.input = Shapes::ShapeRef.new(shape: ActivateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: ActivateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:add_resource_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddResourcePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/api/v1/resources/{ResourceId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: AddResourcePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: AddResourcePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_folder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFolder"
        o.http_method = "POST"
        o.http_request_uri = "/api/v1/folders"
        o.input = Shapes::ShapeRef.new(shape: CreateFolderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFolderResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ProhibitedStateException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_notification_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNotificationSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/api/v1/organizations/{OrganizationId}/subscriptions"
        o.input = Shapes::ShapeRef.new(shape: CreateNotificationSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNotificationSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: TooManySubscriptionsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/api/v1/users"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:deactivate_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeactivateUser"
        o.http_method = "DELETE"
        o.http_request_uri = "/api/v1/users/{UserId}/activation"
        o.input = Shapes::ShapeRef.new(shape: DeactivateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDocument"
        o.http_method = "DELETE"
        o.http_request_uri = "/api/v1/documents/{DocumentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ProhibitedStateException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_folder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFolder"
        o.http_method = "DELETE"
        o.http_request_uri = "/api/v1/folders/{FolderId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFolderRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ProhibitedStateException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_folder_contents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFolderContents"
        o.http_method = "DELETE"
        o.http_request_uri = "/api/v1/folders/{FolderId}/contents"
        o.input = Shapes::ShapeRef.new(shape: DeleteFolderContentsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_notification_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotificationSubscription"
        o.http_method = "DELETE"
        o.http_request_uri = "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotificationSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ProhibitedStateException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "DELETE"
        o.http_request_uri = "/api/v1/users/{UserId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_document_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDocumentVersions"
        o.http_method = "GET"
        o.http_request_uri = "/api/v1/documents/{DocumentId}/versions"
        o.input = Shapes::ShapeRef.new(shape: DescribeDocumentVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDocumentVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ProhibitedStateException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_folder_contents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFolderContents"
        o.http_method = "GET"
        o.http_request_uri = "/api/v1/folders/{FolderId}/contents"
        o.input = Shapes::ShapeRef.new(shape: DescribeFolderContentsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFolderContentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ProhibitedStateException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_notification_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNotificationSubscriptions"
        o.http_method = "GET"
        o.http_request_uri = "/api/v1/organizations/{OrganizationId}/subscriptions"
        o.input = Shapes::ShapeRef.new(shape: DescribeNotificationSubscriptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeNotificationSubscriptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_resource_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResourcePermissions"
        o.http_method = "GET"
        o.http_request_uri = "/api/v1/resources/{ResourceId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: DescribeResourcePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeResourcePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUsers"
        o.http_method = "GET"
        o.http_request_uri = "/api/v1/users"
        o.input = Shapes::ShapeRef.new(shape: DescribeUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:get_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDocument"
        o.http_method = "GET"
        o.http_request_uri = "/api/v1/documents/{DocumentId}"
        o.input = Shapes::ShapeRef.new(shape: GetDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDocumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_document_path, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDocumentPath"
        o.http_method = "GET"
        o.http_request_uri = "/api/v1/documents/{DocumentId}/path"
        o.input = Shapes::ShapeRef.new(shape: GetDocumentPathRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDocumentPathResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_document_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDocumentVersion"
        o.http_method = "GET"
        o.http_request_uri = "/api/v1/documents/{DocumentId}/versions/{VersionId}"
        o.input = Shapes::ShapeRef.new(shape: GetDocumentVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDocumentVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ProhibitedStateException)
      end)

      api.add_operation(:get_folder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFolder"
        o.http_method = "GET"
        o.http_request_uri = "/api/v1/folders/{FolderId}"
        o.input = Shapes::ShapeRef.new(shape: GetFolderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFolderResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ProhibitedStateException)
      end)

      api.add_operation(:get_folder_path, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFolderPath"
        o.http_method = "GET"
        o.http_request_uri = "/api/v1/folders/{FolderId}/path"
        o.input = Shapes::ShapeRef.new(shape: GetFolderPathRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFolderPathResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:initiate_document_version_upload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InitiateDocumentVersionUpload"
        o.http_method = "POST"
        o.http_request_uri = "/api/v1/documents"
        o.input = Shapes::ShapeRef.new(shape: InitiateDocumentVersionUploadRequest)
        o.output = Shapes::ShapeRef.new(shape: InitiateDocumentVersionUploadResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: StorageLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: StorageLimitWillExceedException)
        o.errors << Shapes::ShapeRef.new(shape: ProhibitedStateException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:remove_all_resource_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveAllResourcePermissions"
        o.http_method = "DELETE"
        o.http_request_uri = "/api/v1/resources/{ResourceId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: RemoveAllResourcePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:remove_resource_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveResourcePermission"
        o.http_method = "DELETE"
        o.http_request_uri = "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}"
        o.input = Shapes::ShapeRef.new(shape: RemoveResourcePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDocument"
        o.http_method = "PATCH"
        o.http_request_uri = "/api/v1/documents/{DocumentId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ProhibitedStateException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_document_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDocumentVersion"
        o.http_method = "PATCH"
        o.http_request_uri = "/api/v1/documents/{DocumentId}/versions/{VersionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDocumentVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ProhibitedStateException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_folder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFolder"
        o.http_method = "PATCH"
        o.http_request_uri = "/api/v1/folders/{FolderId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFolderRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ProhibitedStateException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "PATCH"
        o.http_request_uri = "/api/v1/users/{UserId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotExistsException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUserStateException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: DeactivatingLastSystemUserException)
      end)
    end

  end
end
