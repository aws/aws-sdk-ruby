# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudDirectory
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddFacetToObjectRequest = Shapes::StructureShape.new(name: 'AddFacetToObjectRequest')
    AddFacetToObjectResponse = Shapes::StructureShape.new(name: 'AddFacetToObjectResponse')
    ApplySchemaRequest = Shapes::StructureShape.new(name: 'ApplySchemaRequest')
    ApplySchemaResponse = Shapes::StructureShape.new(name: 'ApplySchemaResponse')
    Arn = Shapes::StringShape.new(name: 'Arn')
    Arns = Shapes::ListShape.new(name: 'Arns')
    AttachObjectRequest = Shapes::StructureShape.new(name: 'AttachObjectRequest')
    AttachObjectResponse = Shapes::StructureShape.new(name: 'AttachObjectResponse')
    AttachPolicyRequest = Shapes::StructureShape.new(name: 'AttachPolicyRequest')
    AttachPolicyResponse = Shapes::StructureShape.new(name: 'AttachPolicyResponse')
    AttachToIndexRequest = Shapes::StructureShape.new(name: 'AttachToIndexRequest')
    AttachToIndexResponse = Shapes::StructureShape.new(name: 'AttachToIndexResponse')
    AttachTypedLinkRequest = Shapes::StructureShape.new(name: 'AttachTypedLinkRequest')
    AttachTypedLinkResponse = Shapes::StructureShape.new(name: 'AttachTypedLinkResponse')
    AttributeKey = Shapes::StructureShape.new(name: 'AttributeKey')
    AttributeKeyAndValue = Shapes::StructureShape.new(name: 'AttributeKeyAndValue')
    AttributeKeyAndValueList = Shapes::ListShape.new(name: 'AttributeKeyAndValueList')
    AttributeKeyList = Shapes::ListShape.new(name: 'AttributeKeyList')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeNameAndValue = Shapes::StructureShape.new(name: 'AttributeNameAndValue')
    AttributeNameAndValueList = Shapes::ListShape.new(name: 'AttributeNameAndValueList')
    AttributeNameList = Shapes::ListShape.new(name: 'AttributeNameList')
    BatchAddFacetToObject = Shapes::StructureShape.new(name: 'BatchAddFacetToObject')
    BatchAddFacetToObjectResponse = Shapes::StructureShape.new(name: 'BatchAddFacetToObjectResponse')
    BatchAttachObject = Shapes::StructureShape.new(name: 'BatchAttachObject')
    BatchAttachObjectResponse = Shapes::StructureShape.new(name: 'BatchAttachObjectResponse')
    BatchAttachPolicy = Shapes::StructureShape.new(name: 'BatchAttachPolicy')
    BatchAttachPolicyResponse = Shapes::StructureShape.new(name: 'BatchAttachPolicyResponse')
    BatchAttachToIndex = Shapes::StructureShape.new(name: 'BatchAttachToIndex')
    BatchAttachToIndexResponse = Shapes::StructureShape.new(name: 'BatchAttachToIndexResponse')
    BatchAttachTypedLink = Shapes::StructureShape.new(name: 'BatchAttachTypedLink')
    BatchAttachTypedLinkResponse = Shapes::StructureShape.new(name: 'BatchAttachTypedLinkResponse')
    BatchCreateIndex = Shapes::StructureShape.new(name: 'BatchCreateIndex')
    BatchCreateIndexResponse = Shapes::StructureShape.new(name: 'BatchCreateIndexResponse')
    BatchCreateObject = Shapes::StructureShape.new(name: 'BatchCreateObject')
    BatchCreateObjectResponse = Shapes::StructureShape.new(name: 'BatchCreateObjectResponse')
    BatchDeleteObject = Shapes::StructureShape.new(name: 'BatchDeleteObject')
    BatchDeleteObjectResponse = Shapes::StructureShape.new(name: 'BatchDeleteObjectResponse')
    BatchDetachFromIndex = Shapes::StructureShape.new(name: 'BatchDetachFromIndex')
    BatchDetachFromIndexResponse = Shapes::StructureShape.new(name: 'BatchDetachFromIndexResponse')
    BatchDetachObject = Shapes::StructureShape.new(name: 'BatchDetachObject')
    BatchDetachObjectResponse = Shapes::StructureShape.new(name: 'BatchDetachObjectResponse')
    BatchDetachPolicy = Shapes::StructureShape.new(name: 'BatchDetachPolicy')
    BatchDetachPolicyResponse = Shapes::StructureShape.new(name: 'BatchDetachPolicyResponse')
    BatchDetachTypedLink = Shapes::StructureShape.new(name: 'BatchDetachTypedLink')
    BatchDetachTypedLinkResponse = Shapes::StructureShape.new(name: 'BatchDetachTypedLinkResponse')
    BatchGetLinkAttributes = Shapes::StructureShape.new(name: 'BatchGetLinkAttributes')
    BatchGetLinkAttributesResponse = Shapes::StructureShape.new(name: 'BatchGetLinkAttributesResponse')
    BatchGetObjectAttributes = Shapes::StructureShape.new(name: 'BatchGetObjectAttributes')
    BatchGetObjectAttributesResponse = Shapes::StructureShape.new(name: 'BatchGetObjectAttributesResponse')
    BatchGetObjectInformation = Shapes::StructureShape.new(name: 'BatchGetObjectInformation')
    BatchGetObjectInformationResponse = Shapes::StructureShape.new(name: 'BatchGetObjectInformationResponse')
    BatchListAttachedIndices = Shapes::StructureShape.new(name: 'BatchListAttachedIndices')
    BatchListAttachedIndicesResponse = Shapes::StructureShape.new(name: 'BatchListAttachedIndicesResponse')
    BatchListIncomingTypedLinks = Shapes::StructureShape.new(name: 'BatchListIncomingTypedLinks')
    BatchListIncomingTypedLinksResponse = Shapes::StructureShape.new(name: 'BatchListIncomingTypedLinksResponse')
    BatchListIndex = Shapes::StructureShape.new(name: 'BatchListIndex')
    BatchListIndexResponse = Shapes::StructureShape.new(name: 'BatchListIndexResponse')
    BatchListObjectAttributes = Shapes::StructureShape.new(name: 'BatchListObjectAttributes')
    BatchListObjectAttributesResponse = Shapes::StructureShape.new(name: 'BatchListObjectAttributesResponse')
    BatchListObjectChildren = Shapes::StructureShape.new(name: 'BatchListObjectChildren')
    BatchListObjectChildrenResponse = Shapes::StructureShape.new(name: 'BatchListObjectChildrenResponse')
    BatchListObjectParentPaths = Shapes::StructureShape.new(name: 'BatchListObjectParentPaths')
    BatchListObjectParentPathsResponse = Shapes::StructureShape.new(name: 'BatchListObjectParentPathsResponse')
    BatchListObjectPolicies = Shapes::StructureShape.new(name: 'BatchListObjectPolicies')
    BatchListObjectPoliciesResponse = Shapes::StructureShape.new(name: 'BatchListObjectPoliciesResponse')
    BatchListOutgoingTypedLinks = Shapes::StructureShape.new(name: 'BatchListOutgoingTypedLinks')
    BatchListOutgoingTypedLinksResponse = Shapes::StructureShape.new(name: 'BatchListOutgoingTypedLinksResponse')
    BatchListPolicyAttachments = Shapes::StructureShape.new(name: 'BatchListPolicyAttachments')
    BatchListPolicyAttachmentsResponse = Shapes::StructureShape.new(name: 'BatchListPolicyAttachmentsResponse')
    BatchLookupPolicy = Shapes::StructureShape.new(name: 'BatchLookupPolicy')
    BatchLookupPolicyResponse = Shapes::StructureShape.new(name: 'BatchLookupPolicyResponse')
    BatchOperationIndex = Shapes::IntegerShape.new(name: 'BatchOperationIndex')
    BatchReadException = Shapes::StructureShape.new(name: 'BatchReadException')
    BatchReadExceptionType = Shapes::StringShape.new(name: 'BatchReadExceptionType')
    BatchReadOperation = Shapes::StructureShape.new(name: 'BatchReadOperation')
    BatchReadOperationList = Shapes::ListShape.new(name: 'BatchReadOperationList')
    BatchReadOperationResponse = Shapes::StructureShape.new(name: 'BatchReadOperationResponse')
    BatchReadOperationResponseList = Shapes::ListShape.new(name: 'BatchReadOperationResponseList')
    BatchReadRequest = Shapes::StructureShape.new(name: 'BatchReadRequest')
    BatchReadResponse = Shapes::StructureShape.new(name: 'BatchReadResponse')
    BatchReadSuccessfulResponse = Shapes::StructureShape.new(name: 'BatchReadSuccessfulResponse')
    BatchReferenceName = Shapes::StringShape.new(name: 'BatchReferenceName')
    BatchRemoveFacetFromObject = Shapes::StructureShape.new(name: 'BatchRemoveFacetFromObject')
    BatchRemoveFacetFromObjectResponse = Shapes::StructureShape.new(name: 'BatchRemoveFacetFromObjectResponse')
    BatchUpdateLinkAttributes = Shapes::StructureShape.new(name: 'BatchUpdateLinkAttributes')
    BatchUpdateLinkAttributesResponse = Shapes::StructureShape.new(name: 'BatchUpdateLinkAttributesResponse')
    BatchUpdateObjectAttributes = Shapes::StructureShape.new(name: 'BatchUpdateObjectAttributes')
    BatchUpdateObjectAttributesResponse = Shapes::StructureShape.new(name: 'BatchUpdateObjectAttributesResponse')
    BatchWriteException = Shapes::StructureShape.new(name: 'BatchWriteException')
    BatchWriteExceptionType = Shapes::StringShape.new(name: 'BatchWriteExceptionType')
    BatchWriteOperation = Shapes::StructureShape.new(name: 'BatchWriteOperation')
    BatchWriteOperationList = Shapes::ListShape.new(name: 'BatchWriteOperationList')
    BatchWriteOperationResponse = Shapes::StructureShape.new(name: 'BatchWriteOperationResponse')
    BatchWriteOperationResponseList = Shapes::ListShape.new(name: 'BatchWriteOperationResponseList')
    BatchWriteRequest = Shapes::StructureShape.new(name: 'BatchWriteRequest')
    BatchWriteResponse = Shapes::StructureShape.new(name: 'BatchWriteResponse')
    BinaryAttributeValue = Shapes::BlobShape.new(name: 'BinaryAttributeValue')
    Bool = Shapes::BooleanShape.new(name: 'Bool')
    BooleanAttributeValue = Shapes::BooleanShape.new(name: 'BooleanAttributeValue')
    CannotListParentOfRootException = Shapes::StructureShape.new(name: 'CannotListParentOfRootException')
    ConsistencyLevel = Shapes::StringShape.new(name: 'ConsistencyLevel')
    CreateDirectoryRequest = Shapes::StructureShape.new(name: 'CreateDirectoryRequest')
    CreateDirectoryResponse = Shapes::StructureShape.new(name: 'CreateDirectoryResponse')
    CreateFacetRequest = Shapes::StructureShape.new(name: 'CreateFacetRequest')
    CreateFacetResponse = Shapes::StructureShape.new(name: 'CreateFacetResponse')
    CreateIndexRequest = Shapes::StructureShape.new(name: 'CreateIndexRequest')
    CreateIndexResponse = Shapes::StructureShape.new(name: 'CreateIndexResponse')
    CreateObjectRequest = Shapes::StructureShape.new(name: 'CreateObjectRequest')
    CreateObjectResponse = Shapes::StructureShape.new(name: 'CreateObjectResponse')
    CreateSchemaRequest = Shapes::StructureShape.new(name: 'CreateSchemaRequest')
    CreateSchemaResponse = Shapes::StructureShape.new(name: 'CreateSchemaResponse')
    CreateTypedLinkFacetRequest = Shapes::StructureShape.new(name: 'CreateTypedLinkFacetRequest')
    CreateTypedLinkFacetResponse = Shapes::StructureShape.new(name: 'CreateTypedLinkFacetResponse')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DatetimeAttributeValue = Shapes::TimestampShape.new(name: 'DatetimeAttributeValue')
    DeleteDirectoryRequest = Shapes::StructureShape.new(name: 'DeleteDirectoryRequest')
    DeleteDirectoryResponse = Shapes::StructureShape.new(name: 'DeleteDirectoryResponse')
    DeleteFacetRequest = Shapes::StructureShape.new(name: 'DeleteFacetRequest')
    DeleteFacetResponse = Shapes::StructureShape.new(name: 'DeleteFacetResponse')
    DeleteObjectRequest = Shapes::StructureShape.new(name: 'DeleteObjectRequest')
    DeleteObjectResponse = Shapes::StructureShape.new(name: 'DeleteObjectResponse')
    DeleteSchemaRequest = Shapes::StructureShape.new(name: 'DeleteSchemaRequest')
    DeleteSchemaResponse = Shapes::StructureShape.new(name: 'DeleteSchemaResponse')
    DeleteTypedLinkFacetRequest = Shapes::StructureShape.new(name: 'DeleteTypedLinkFacetRequest')
    DeleteTypedLinkFacetResponse = Shapes::StructureShape.new(name: 'DeleteTypedLinkFacetResponse')
    DetachFromIndexRequest = Shapes::StructureShape.new(name: 'DetachFromIndexRequest')
    DetachFromIndexResponse = Shapes::StructureShape.new(name: 'DetachFromIndexResponse')
    DetachObjectRequest = Shapes::StructureShape.new(name: 'DetachObjectRequest')
    DetachObjectResponse = Shapes::StructureShape.new(name: 'DetachObjectResponse')
    DetachPolicyRequest = Shapes::StructureShape.new(name: 'DetachPolicyRequest')
    DetachPolicyResponse = Shapes::StructureShape.new(name: 'DetachPolicyResponse')
    DetachTypedLinkRequest = Shapes::StructureShape.new(name: 'DetachTypedLinkRequest')
    Directory = Shapes::StructureShape.new(name: 'Directory')
    DirectoryAlreadyExistsException = Shapes::StructureShape.new(name: 'DirectoryAlreadyExistsException')
    DirectoryArn = Shapes::StringShape.new(name: 'DirectoryArn')
    DirectoryDeletedException = Shapes::StructureShape.new(name: 'DirectoryDeletedException')
    DirectoryList = Shapes::ListShape.new(name: 'DirectoryList')
    DirectoryName = Shapes::StringShape.new(name: 'DirectoryName')
    DirectoryNotDisabledException = Shapes::StructureShape.new(name: 'DirectoryNotDisabledException')
    DirectoryNotEnabledException = Shapes::StructureShape.new(name: 'DirectoryNotEnabledException')
    DirectoryState = Shapes::StringShape.new(name: 'DirectoryState')
    DisableDirectoryRequest = Shapes::StructureShape.new(name: 'DisableDirectoryRequest')
    DisableDirectoryResponse = Shapes::StructureShape.new(name: 'DisableDirectoryResponse')
    EnableDirectoryRequest = Shapes::StructureShape.new(name: 'EnableDirectoryRequest')
    EnableDirectoryResponse = Shapes::StructureShape.new(name: 'EnableDirectoryResponse')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    Facet = Shapes::StructureShape.new(name: 'Facet')
    FacetAlreadyExistsException = Shapes::StructureShape.new(name: 'FacetAlreadyExistsException')
    FacetAttribute = Shapes::StructureShape.new(name: 'FacetAttribute')
    FacetAttributeDefinition = Shapes::StructureShape.new(name: 'FacetAttributeDefinition')
    FacetAttributeList = Shapes::ListShape.new(name: 'FacetAttributeList')
    FacetAttributeReference = Shapes::StructureShape.new(name: 'FacetAttributeReference')
    FacetAttributeType = Shapes::StringShape.new(name: 'FacetAttributeType')
    FacetAttributeUpdate = Shapes::StructureShape.new(name: 'FacetAttributeUpdate')
    FacetAttributeUpdateList = Shapes::ListShape.new(name: 'FacetAttributeUpdateList')
    FacetInUseException = Shapes::StructureShape.new(name: 'FacetInUseException')
    FacetName = Shapes::StringShape.new(name: 'FacetName')
    FacetNameList = Shapes::ListShape.new(name: 'FacetNameList')
    FacetNotFoundException = Shapes::StructureShape.new(name: 'FacetNotFoundException')
    FacetStyle = Shapes::StringShape.new(name: 'FacetStyle')
    FacetValidationException = Shapes::StructureShape.new(name: 'FacetValidationException')
    GetAppliedSchemaVersionRequest = Shapes::StructureShape.new(name: 'GetAppliedSchemaVersionRequest')
    GetAppliedSchemaVersionResponse = Shapes::StructureShape.new(name: 'GetAppliedSchemaVersionResponse')
    GetDirectoryRequest = Shapes::StructureShape.new(name: 'GetDirectoryRequest')
    GetDirectoryResponse = Shapes::StructureShape.new(name: 'GetDirectoryResponse')
    GetFacetRequest = Shapes::StructureShape.new(name: 'GetFacetRequest')
    GetFacetResponse = Shapes::StructureShape.new(name: 'GetFacetResponse')
    GetLinkAttributesRequest = Shapes::StructureShape.new(name: 'GetLinkAttributesRequest')
    GetLinkAttributesResponse = Shapes::StructureShape.new(name: 'GetLinkAttributesResponse')
    GetObjectAttributesRequest = Shapes::StructureShape.new(name: 'GetObjectAttributesRequest')
    GetObjectAttributesResponse = Shapes::StructureShape.new(name: 'GetObjectAttributesResponse')
    GetObjectInformationRequest = Shapes::StructureShape.new(name: 'GetObjectInformationRequest')
    GetObjectInformationResponse = Shapes::StructureShape.new(name: 'GetObjectInformationResponse')
    GetSchemaAsJsonRequest = Shapes::StructureShape.new(name: 'GetSchemaAsJsonRequest')
    GetSchemaAsJsonResponse = Shapes::StructureShape.new(name: 'GetSchemaAsJsonResponse')
    GetTypedLinkFacetInformationRequest = Shapes::StructureShape.new(name: 'GetTypedLinkFacetInformationRequest')
    GetTypedLinkFacetInformationResponse = Shapes::StructureShape.new(name: 'GetTypedLinkFacetInformationResponse')
    IncompatibleSchemaException = Shapes::StructureShape.new(name: 'IncompatibleSchemaException')
    IndexAttachment = Shapes::StructureShape.new(name: 'IndexAttachment')
    IndexAttachmentList = Shapes::ListShape.new(name: 'IndexAttachmentList')
    IndexedAttributeMissingException = Shapes::StructureShape.new(name: 'IndexedAttributeMissingException')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidArnException = Shapes::StructureShape.new(name: 'InvalidArnException')
    InvalidAttachmentException = Shapes::StructureShape.new(name: 'InvalidAttachmentException')
    InvalidFacetUpdateException = Shapes::StructureShape.new(name: 'InvalidFacetUpdateException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidRuleException = Shapes::StructureShape.new(name: 'InvalidRuleException')
    InvalidSchemaDocException = Shapes::StructureShape.new(name: 'InvalidSchemaDocException')
    InvalidTaggingRequestException = Shapes::StructureShape.new(name: 'InvalidTaggingRequestException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LinkAttributeAction = Shapes::StructureShape.new(name: 'LinkAttributeAction')
    LinkAttributeUpdate = Shapes::StructureShape.new(name: 'LinkAttributeUpdate')
    LinkAttributeUpdateList = Shapes::ListShape.new(name: 'LinkAttributeUpdateList')
    LinkName = Shapes::StringShape.new(name: 'LinkName')
    LinkNameAlreadyInUseException = Shapes::StructureShape.new(name: 'LinkNameAlreadyInUseException')
    LinkNameToObjectIdentifierMap = Shapes::MapShape.new(name: 'LinkNameToObjectIdentifierMap')
    ListAppliedSchemaArnsRequest = Shapes::StructureShape.new(name: 'ListAppliedSchemaArnsRequest')
    ListAppliedSchemaArnsResponse = Shapes::StructureShape.new(name: 'ListAppliedSchemaArnsResponse')
    ListAttachedIndicesRequest = Shapes::StructureShape.new(name: 'ListAttachedIndicesRequest')
    ListAttachedIndicesResponse = Shapes::StructureShape.new(name: 'ListAttachedIndicesResponse')
    ListDevelopmentSchemaArnsRequest = Shapes::StructureShape.new(name: 'ListDevelopmentSchemaArnsRequest')
    ListDevelopmentSchemaArnsResponse = Shapes::StructureShape.new(name: 'ListDevelopmentSchemaArnsResponse')
    ListDirectoriesRequest = Shapes::StructureShape.new(name: 'ListDirectoriesRequest')
    ListDirectoriesResponse = Shapes::StructureShape.new(name: 'ListDirectoriesResponse')
    ListFacetAttributesRequest = Shapes::StructureShape.new(name: 'ListFacetAttributesRequest')
    ListFacetAttributesResponse = Shapes::StructureShape.new(name: 'ListFacetAttributesResponse')
    ListFacetNamesRequest = Shapes::StructureShape.new(name: 'ListFacetNamesRequest')
    ListFacetNamesResponse = Shapes::StructureShape.new(name: 'ListFacetNamesResponse')
    ListIncomingTypedLinksRequest = Shapes::StructureShape.new(name: 'ListIncomingTypedLinksRequest')
    ListIncomingTypedLinksResponse = Shapes::StructureShape.new(name: 'ListIncomingTypedLinksResponse')
    ListIndexRequest = Shapes::StructureShape.new(name: 'ListIndexRequest')
    ListIndexResponse = Shapes::StructureShape.new(name: 'ListIndexResponse')
    ListManagedSchemaArnsRequest = Shapes::StructureShape.new(name: 'ListManagedSchemaArnsRequest')
    ListManagedSchemaArnsResponse = Shapes::StructureShape.new(name: 'ListManagedSchemaArnsResponse')
    ListObjectAttributesRequest = Shapes::StructureShape.new(name: 'ListObjectAttributesRequest')
    ListObjectAttributesResponse = Shapes::StructureShape.new(name: 'ListObjectAttributesResponse')
    ListObjectChildrenRequest = Shapes::StructureShape.new(name: 'ListObjectChildrenRequest')
    ListObjectChildrenResponse = Shapes::StructureShape.new(name: 'ListObjectChildrenResponse')
    ListObjectParentPathsRequest = Shapes::StructureShape.new(name: 'ListObjectParentPathsRequest')
    ListObjectParentPathsResponse = Shapes::StructureShape.new(name: 'ListObjectParentPathsResponse')
    ListObjectParentsRequest = Shapes::StructureShape.new(name: 'ListObjectParentsRequest')
    ListObjectParentsResponse = Shapes::StructureShape.new(name: 'ListObjectParentsResponse')
    ListObjectPoliciesRequest = Shapes::StructureShape.new(name: 'ListObjectPoliciesRequest')
    ListObjectPoliciesResponse = Shapes::StructureShape.new(name: 'ListObjectPoliciesResponse')
    ListOutgoingTypedLinksRequest = Shapes::StructureShape.new(name: 'ListOutgoingTypedLinksRequest')
    ListOutgoingTypedLinksResponse = Shapes::StructureShape.new(name: 'ListOutgoingTypedLinksResponse')
    ListPolicyAttachmentsRequest = Shapes::StructureShape.new(name: 'ListPolicyAttachmentsRequest')
    ListPolicyAttachmentsResponse = Shapes::StructureShape.new(name: 'ListPolicyAttachmentsResponse')
    ListPublishedSchemaArnsRequest = Shapes::StructureShape.new(name: 'ListPublishedSchemaArnsRequest')
    ListPublishedSchemaArnsResponse = Shapes::StructureShape.new(name: 'ListPublishedSchemaArnsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTypedLinkFacetAttributesRequest = Shapes::StructureShape.new(name: 'ListTypedLinkFacetAttributesRequest')
    ListTypedLinkFacetAttributesResponse = Shapes::StructureShape.new(name: 'ListTypedLinkFacetAttributesResponse')
    ListTypedLinkFacetNamesRequest = Shapes::StructureShape.new(name: 'ListTypedLinkFacetNamesRequest')
    ListTypedLinkFacetNamesResponse = Shapes::StructureShape.new(name: 'ListTypedLinkFacetNamesResponse')
    LookupPolicyRequest = Shapes::StructureShape.new(name: 'LookupPolicyRequest')
    LookupPolicyResponse = Shapes::StructureShape.new(name: 'LookupPolicyResponse')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotIndexException = Shapes::StructureShape.new(name: 'NotIndexException')
    NotNodeException = Shapes::StructureShape.new(name: 'NotNodeException')
    NotPolicyException = Shapes::StructureShape.new(name: 'NotPolicyException')
    NumberAttributeValue = Shapes::StringShape.new(name: 'NumberAttributeValue')
    NumberResults = Shapes::IntegerShape.new(name: 'NumberResults')
    ObjectAlreadyDetachedException = Shapes::StructureShape.new(name: 'ObjectAlreadyDetachedException')
    ObjectAttributeAction = Shapes::StructureShape.new(name: 'ObjectAttributeAction')
    ObjectAttributeRange = Shapes::StructureShape.new(name: 'ObjectAttributeRange')
    ObjectAttributeRangeList = Shapes::ListShape.new(name: 'ObjectAttributeRangeList')
    ObjectAttributeUpdate = Shapes::StructureShape.new(name: 'ObjectAttributeUpdate')
    ObjectAttributeUpdateList = Shapes::ListShape.new(name: 'ObjectAttributeUpdateList')
    ObjectIdentifier = Shapes::StringShape.new(name: 'ObjectIdentifier')
    ObjectIdentifierList = Shapes::ListShape.new(name: 'ObjectIdentifierList')
    ObjectIdentifierToLinkNameMap = Shapes::MapShape.new(name: 'ObjectIdentifierToLinkNameMap')
    ObjectNotDetachedException = Shapes::StructureShape.new(name: 'ObjectNotDetachedException')
    ObjectReference = Shapes::StructureShape.new(name: 'ObjectReference')
    ObjectType = Shapes::StringShape.new(name: 'ObjectType')
    PathString = Shapes::StringShape.new(name: 'PathString')
    PathToObjectIdentifiers = Shapes::StructureShape.new(name: 'PathToObjectIdentifiers')
    PathToObjectIdentifiersList = Shapes::ListShape.new(name: 'PathToObjectIdentifiersList')
    PolicyAttachment = Shapes::StructureShape.new(name: 'PolicyAttachment')
    PolicyAttachmentList = Shapes::ListShape.new(name: 'PolicyAttachmentList')
    PolicyToPath = Shapes::StructureShape.new(name: 'PolicyToPath')
    PolicyToPathList = Shapes::ListShape.new(name: 'PolicyToPathList')
    PolicyType = Shapes::StringShape.new(name: 'PolicyType')
    PublishSchemaRequest = Shapes::StructureShape.new(name: 'PublishSchemaRequest')
    PublishSchemaResponse = Shapes::StructureShape.new(name: 'PublishSchemaResponse')
    PutSchemaFromJsonRequest = Shapes::StructureShape.new(name: 'PutSchemaFromJsonRequest')
    PutSchemaFromJsonResponse = Shapes::StructureShape.new(name: 'PutSchemaFromJsonResponse')
    RangeMode = Shapes::StringShape.new(name: 'RangeMode')
    RemoveFacetFromObjectRequest = Shapes::StructureShape.new(name: 'RemoveFacetFromObjectRequest')
    RemoveFacetFromObjectResponse = Shapes::StructureShape.new(name: 'RemoveFacetFromObjectResponse')
    RequiredAttributeBehavior = Shapes::StringShape.new(name: 'RequiredAttributeBehavior')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryableConflictException = Shapes::StructureShape.new(name: 'RetryableConflictException')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleKey = Shapes::StringShape.new(name: 'RuleKey')
    RuleMap = Shapes::MapShape.new(name: 'RuleMap')
    RuleParameterKey = Shapes::StringShape.new(name: 'RuleParameterKey')
    RuleParameterMap = Shapes::MapShape.new(name: 'RuleParameterMap')
    RuleParameterValue = Shapes::StringShape.new(name: 'RuleParameterValue')
    RuleType = Shapes::StringShape.new(name: 'RuleType')
    SchemaAlreadyExistsException = Shapes::StructureShape.new(name: 'SchemaAlreadyExistsException')
    SchemaAlreadyPublishedException = Shapes::StructureShape.new(name: 'SchemaAlreadyPublishedException')
    SchemaFacet = Shapes::StructureShape.new(name: 'SchemaFacet')
    SchemaFacetList = Shapes::ListShape.new(name: 'SchemaFacetList')
    SchemaJsonDocument = Shapes::StringShape.new(name: 'SchemaJsonDocument')
    SchemaName = Shapes::StringShape.new(name: 'SchemaName')
    SelectorObjectReference = Shapes::StringShape.new(name: 'SelectorObjectReference')
    StillContainsLinksException = Shapes::StructureShape.new(name: 'StillContainsLinksException')
    StringAttributeValue = Shapes::StringShape.new(name: 'StringAttributeValue')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsNumberResults = Shapes::IntegerShape.new(name: 'TagsNumberResults')
    TypedAttributeValue = Shapes::StructureShape.new(name: 'TypedAttributeValue')
    TypedAttributeValueRange = Shapes::StructureShape.new(name: 'TypedAttributeValueRange')
    TypedLinkAttributeDefinition = Shapes::StructureShape.new(name: 'TypedLinkAttributeDefinition')
    TypedLinkAttributeDefinitionList = Shapes::ListShape.new(name: 'TypedLinkAttributeDefinitionList')
    TypedLinkAttributeRange = Shapes::StructureShape.new(name: 'TypedLinkAttributeRange')
    TypedLinkAttributeRangeList = Shapes::ListShape.new(name: 'TypedLinkAttributeRangeList')
    TypedLinkFacet = Shapes::StructureShape.new(name: 'TypedLinkFacet')
    TypedLinkFacetAttributeUpdate = Shapes::StructureShape.new(name: 'TypedLinkFacetAttributeUpdate')
    TypedLinkFacetAttributeUpdateList = Shapes::ListShape.new(name: 'TypedLinkFacetAttributeUpdateList')
    TypedLinkName = Shapes::StringShape.new(name: 'TypedLinkName')
    TypedLinkNameList = Shapes::ListShape.new(name: 'TypedLinkNameList')
    TypedLinkSchemaAndFacetName = Shapes::StructureShape.new(name: 'TypedLinkSchemaAndFacetName')
    TypedLinkSpecifier = Shapes::StructureShape.new(name: 'TypedLinkSpecifier')
    TypedLinkSpecifierList = Shapes::ListShape.new(name: 'TypedLinkSpecifierList')
    UnsupportedIndexTypeException = Shapes::StructureShape.new(name: 'UnsupportedIndexTypeException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateActionType = Shapes::StringShape.new(name: 'UpdateActionType')
    UpdateFacetRequest = Shapes::StructureShape.new(name: 'UpdateFacetRequest')
    UpdateFacetResponse = Shapes::StructureShape.new(name: 'UpdateFacetResponse')
    UpdateLinkAttributesRequest = Shapes::StructureShape.new(name: 'UpdateLinkAttributesRequest')
    UpdateLinkAttributesResponse = Shapes::StructureShape.new(name: 'UpdateLinkAttributesResponse')
    UpdateObjectAttributesRequest = Shapes::StructureShape.new(name: 'UpdateObjectAttributesRequest')
    UpdateObjectAttributesResponse = Shapes::StructureShape.new(name: 'UpdateObjectAttributesResponse')
    UpdateSchemaRequest = Shapes::StructureShape.new(name: 'UpdateSchemaRequest')
    UpdateSchemaResponse = Shapes::StructureShape.new(name: 'UpdateSchemaResponse')
    UpdateTypedLinkFacetRequest = Shapes::StructureShape.new(name: 'UpdateTypedLinkFacetRequest')
    UpdateTypedLinkFacetResponse = Shapes::StructureShape.new(name: 'UpdateTypedLinkFacetResponse')
    UpgradeAppliedSchemaRequest = Shapes::StructureShape.new(name: 'UpgradeAppliedSchemaRequest')
    UpgradeAppliedSchemaResponse = Shapes::StructureShape.new(name: 'UpgradeAppliedSchemaResponse')
    UpgradePublishedSchemaRequest = Shapes::StructureShape.new(name: 'UpgradePublishedSchemaRequest')
    UpgradePublishedSchemaResponse = Shapes::StructureShape.new(name: 'UpgradePublishedSchemaResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Version = Shapes::StringShape.new(name: 'Version')

    AddFacetToObjectRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    AddFacetToObjectRequest.add_member(:schema_facet, Shapes::ShapeRef.new(shape: SchemaFacet, required: true, location_name: "SchemaFacet"))
    AddFacetToObjectRequest.add_member(:object_attribute_list, Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: "ObjectAttributeList"))
    AddFacetToObjectRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    AddFacetToObjectRequest.struct_class = Types::AddFacetToObjectRequest

    AddFacetToObjectResponse.struct_class = Types::AddFacetToObjectResponse

    ApplySchemaRequest.add_member(:published_schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "PublishedSchemaArn"))
    ApplySchemaRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ApplySchemaRequest.struct_class = Types::ApplySchemaRequest

    ApplySchemaResponse.add_member(:applied_schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AppliedSchemaArn"))
    ApplySchemaResponse.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DirectoryArn"))
    ApplySchemaResponse.struct_class = Types::ApplySchemaResponse

    Arns.member = Shapes::ShapeRef.new(shape: Arn)

    AttachObjectRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    AttachObjectRequest.add_member(:parent_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ParentReference"))
    AttachObjectRequest.add_member(:child_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ChildReference"))
    AttachObjectRequest.add_member(:link_name, Shapes::ShapeRef.new(shape: LinkName, required: true, location_name: "LinkName"))
    AttachObjectRequest.struct_class = Types::AttachObjectRequest

    AttachObjectResponse.add_member(:attached_object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "AttachedObjectIdentifier"))
    AttachObjectResponse.struct_class = Types::AttachObjectResponse

    AttachPolicyRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    AttachPolicyRequest.add_member(:policy_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "PolicyReference"))
    AttachPolicyRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    AttachPolicyRequest.struct_class = Types::AttachPolicyRequest

    AttachPolicyResponse.struct_class = Types::AttachPolicyResponse

    AttachToIndexRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    AttachToIndexRequest.add_member(:index_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "IndexReference"))
    AttachToIndexRequest.add_member(:target_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "TargetReference"))
    AttachToIndexRequest.struct_class = Types::AttachToIndexRequest

    AttachToIndexResponse.add_member(:attached_object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "AttachedObjectIdentifier"))
    AttachToIndexResponse.struct_class = Types::AttachToIndexResponse

    AttachTypedLinkRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    AttachTypedLinkRequest.add_member(:source_object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "SourceObjectReference"))
    AttachTypedLinkRequest.add_member(:target_object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "TargetObjectReference"))
    AttachTypedLinkRequest.add_member(:typed_link_facet, Shapes::ShapeRef.new(shape: TypedLinkSchemaAndFacetName, required: true, location_name: "TypedLinkFacet"))
    AttachTypedLinkRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeNameAndValueList, required: true, location_name: "Attributes"))
    AttachTypedLinkRequest.struct_class = Types::AttachTypedLinkRequest

    AttachTypedLinkResponse.add_member(:typed_link_specifier, Shapes::ShapeRef.new(shape: TypedLinkSpecifier, location_name: "TypedLinkSpecifier"))
    AttachTypedLinkResponse.struct_class = Types::AttachTypedLinkResponse

    AttributeKey.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "SchemaArn"))
    AttributeKey.add_member(:facet_name, Shapes::ShapeRef.new(shape: FacetName, required: true, location_name: "FacetName"))
    AttributeKey.add_member(:name, Shapes::ShapeRef.new(shape: AttributeName, required: true, location_name: "Name"))
    AttributeKey.struct_class = Types::AttributeKey

    AttributeKeyAndValue.add_member(:key, Shapes::ShapeRef.new(shape: AttributeKey, required: true, location_name: "Key"))
    AttributeKeyAndValue.add_member(:value, Shapes::ShapeRef.new(shape: TypedAttributeValue, required: true, location_name: "Value"))
    AttributeKeyAndValue.struct_class = Types::AttributeKeyAndValue

    AttributeKeyAndValueList.member = Shapes::ShapeRef.new(shape: AttributeKeyAndValue)

    AttributeKeyList.member = Shapes::ShapeRef.new(shape: AttributeKey)

    AttributeNameAndValue.add_member(:attribute_name, Shapes::ShapeRef.new(shape: AttributeName, required: true, location_name: "AttributeName"))
    AttributeNameAndValue.add_member(:value, Shapes::ShapeRef.new(shape: TypedAttributeValue, required: true, location_name: "Value"))
    AttributeNameAndValue.struct_class = Types::AttributeNameAndValue

    AttributeNameAndValueList.member = Shapes::ShapeRef.new(shape: AttributeNameAndValue)

    AttributeNameList.member = Shapes::ShapeRef.new(shape: AttributeName)

    BatchAddFacetToObject.add_member(:schema_facet, Shapes::ShapeRef.new(shape: SchemaFacet, required: true, location_name: "SchemaFacet"))
    BatchAddFacetToObject.add_member(:object_attribute_list, Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, required: true, location_name: "ObjectAttributeList"))
    BatchAddFacetToObject.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchAddFacetToObject.struct_class = Types::BatchAddFacetToObject

    BatchAddFacetToObjectResponse.struct_class = Types::BatchAddFacetToObjectResponse

    BatchAttachObject.add_member(:parent_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ParentReference"))
    BatchAttachObject.add_member(:child_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ChildReference"))
    BatchAttachObject.add_member(:link_name, Shapes::ShapeRef.new(shape: LinkName, required: true, location_name: "LinkName"))
    BatchAttachObject.struct_class = Types::BatchAttachObject

    BatchAttachObjectResponse.add_member(:attached_object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "attachedObjectIdentifier"))
    BatchAttachObjectResponse.struct_class = Types::BatchAttachObjectResponse

    BatchAttachPolicy.add_member(:policy_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "PolicyReference"))
    BatchAttachPolicy.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchAttachPolicy.struct_class = Types::BatchAttachPolicy

    BatchAttachPolicyResponse.struct_class = Types::BatchAttachPolicyResponse

    BatchAttachToIndex.add_member(:index_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "IndexReference"))
    BatchAttachToIndex.add_member(:target_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "TargetReference"))
    BatchAttachToIndex.struct_class = Types::BatchAttachToIndex

    BatchAttachToIndexResponse.add_member(:attached_object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "AttachedObjectIdentifier"))
    BatchAttachToIndexResponse.struct_class = Types::BatchAttachToIndexResponse

    BatchAttachTypedLink.add_member(:source_object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "SourceObjectReference"))
    BatchAttachTypedLink.add_member(:target_object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "TargetObjectReference"))
    BatchAttachTypedLink.add_member(:typed_link_facet, Shapes::ShapeRef.new(shape: TypedLinkSchemaAndFacetName, required: true, location_name: "TypedLinkFacet"))
    BatchAttachTypedLink.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeNameAndValueList, required: true, location_name: "Attributes"))
    BatchAttachTypedLink.struct_class = Types::BatchAttachTypedLink

    BatchAttachTypedLinkResponse.add_member(:typed_link_specifier, Shapes::ShapeRef.new(shape: TypedLinkSpecifier, location_name: "TypedLinkSpecifier"))
    BatchAttachTypedLinkResponse.struct_class = Types::BatchAttachTypedLinkResponse

    BatchCreateIndex.add_member(:ordered_indexed_attribute_list, Shapes::ShapeRef.new(shape: AttributeKeyList, required: true, location_name: "OrderedIndexedAttributeList"))
    BatchCreateIndex.add_member(:is_unique, Shapes::ShapeRef.new(shape: Bool, required: true, location_name: "IsUnique"))
    BatchCreateIndex.add_member(:parent_reference, Shapes::ShapeRef.new(shape: ObjectReference, location_name: "ParentReference"))
    BatchCreateIndex.add_member(:link_name, Shapes::ShapeRef.new(shape: LinkName, location_name: "LinkName"))
    BatchCreateIndex.add_member(:batch_reference_name, Shapes::ShapeRef.new(shape: BatchReferenceName, location_name: "BatchReferenceName"))
    BatchCreateIndex.struct_class = Types::BatchCreateIndex

    BatchCreateIndexResponse.add_member(:object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "ObjectIdentifier"))
    BatchCreateIndexResponse.struct_class = Types::BatchCreateIndexResponse

    BatchCreateObject.add_member(:schema_facet, Shapes::ShapeRef.new(shape: SchemaFacetList, required: true, location_name: "SchemaFacet"))
    BatchCreateObject.add_member(:object_attribute_list, Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, required: true, location_name: "ObjectAttributeList"))
    BatchCreateObject.add_member(:parent_reference, Shapes::ShapeRef.new(shape: ObjectReference, location_name: "ParentReference"))
    BatchCreateObject.add_member(:link_name, Shapes::ShapeRef.new(shape: LinkName, location_name: "LinkName"))
    BatchCreateObject.add_member(:batch_reference_name, Shapes::ShapeRef.new(shape: BatchReferenceName, location_name: "BatchReferenceName"))
    BatchCreateObject.struct_class = Types::BatchCreateObject

    BatchCreateObjectResponse.add_member(:object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "ObjectIdentifier"))
    BatchCreateObjectResponse.struct_class = Types::BatchCreateObjectResponse

    BatchDeleteObject.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchDeleteObject.struct_class = Types::BatchDeleteObject

    BatchDeleteObjectResponse.struct_class = Types::BatchDeleteObjectResponse

    BatchDetachFromIndex.add_member(:index_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "IndexReference"))
    BatchDetachFromIndex.add_member(:target_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "TargetReference"))
    BatchDetachFromIndex.struct_class = Types::BatchDetachFromIndex

    BatchDetachFromIndexResponse.add_member(:detached_object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "DetachedObjectIdentifier"))
    BatchDetachFromIndexResponse.struct_class = Types::BatchDetachFromIndexResponse

    BatchDetachObject.add_member(:parent_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ParentReference"))
    BatchDetachObject.add_member(:link_name, Shapes::ShapeRef.new(shape: LinkName, required: true, location_name: "LinkName"))
    BatchDetachObject.add_member(:batch_reference_name, Shapes::ShapeRef.new(shape: BatchReferenceName, location_name: "BatchReferenceName"))
    BatchDetachObject.struct_class = Types::BatchDetachObject

    BatchDetachObjectResponse.add_member(:detached_object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "detachedObjectIdentifier"))
    BatchDetachObjectResponse.struct_class = Types::BatchDetachObjectResponse

    BatchDetachPolicy.add_member(:policy_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "PolicyReference"))
    BatchDetachPolicy.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchDetachPolicy.struct_class = Types::BatchDetachPolicy

    BatchDetachPolicyResponse.struct_class = Types::BatchDetachPolicyResponse

    BatchDetachTypedLink.add_member(:typed_link_specifier, Shapes::ShapeRef.new(shape: TypedLinkSpecifier, required: true, location_name: "TypedLinkSpecifier"))
    BatchDetachTypedLink.struct_class = Types::BatchDetachTypedLink

    BatchDetachTypedLinkResponse.struct_class = Types::BatchDetachTypedLinkResponse

    BatchGetLinkAttributes.add_member(:typed_link_specifier, Shapes::ShapeRef.new(shape: TypedLinkSpecifier, required: true, location_name: "TypedLinkSpecifier"))
    BatchGetLinkAttributes.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNameList, required: true, location_name: "AttributeNames"))
    BatchGetLinkAttributes.struct_class = Types::BatchGetLinkAttributes

    BatchGetLinkAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: "Attributes"))
    BatchGetLinkAttributesResponse.struct_class = Types::BatchGetLinkAttributesResponse

    BatchGetObjectAttributes.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchGetObjectAttributes.add_member(:schema_facet, Shapes::ShapeRef.new(shape: SchemaFacet, required: true, location_name: "SchemaFacet"))
    BatchGetObjectAttributes.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNameList, required: true, location_name: "AttributeNames"))
    BatchGetObjectAttributes.struct_class = Types::BatchGetObjectAttributes

    BatchGetObjectAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: "Attributes"))
    BatchGetObjectAttributesResponse.struct_class = Types::BatchGetObjectAttributesResponse

    BatchGetObjectInformation.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchGetObjectInformation.struct_class = Types::BatchGetObjectInformation

    BatchGetObjectInformationResponse.add_member(:schema_facets, Shapes::ShapeRef.new(shape: SchemaFacetList, location_name: "SchemaFacets"))
    BatchGetObjectInformationResponse.add_member(:object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "ObjectIdentifier"))
    BatchGetObjectInformationResponse.struct_class = Types::BatchGetObjectInformationResponse

    BatchListAttachedIndices.add_member(:target_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "TargetReference"))
    BatchListAttachedIndices.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListAttachedIndices.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    BatchListAttachedIndices.struct_class = Types::BatchListAttachedIndices

    BatchListAttachedIndicesResponse.add_member(:index_attachments, Shapes::ShapeRef.new(shape: IndexAttachmentList, location_name: "IndexAttachments"))
    BatchListAttachedIndicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListAttachedIndicesResponse.struct_class = Types::BatchListAttachedIndicesResponse

    BatchListIncomingTypedLinks.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchListIncomingTypedLinks.add_member(:filter_attribute_ranges, Shapes::ShapeRef.new(shape: TypedLinkAttributeRangeList, location_name: "FilterAttributeRanges"))
    BatchListIncomingTypedLinks.add_member(:filter_typed_link, Shapes::ShapeRef.new(shape: TypedLinkSchemaAndFacetName, location_name: "FilterTypedLink"))
    BatchListIncomingTypedLinks.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListIncomingTypedLinks.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    BatchListIncomingTypedLinks.struct_class = Types::BatchListIncomingTypedLinks

    BatchListIncomingTypedLinksResponse.add_member(:link_specifiers, Shapes::ShapeRef.new(shape: TypedLinkSpecifierList, location_name: "LinkSpecifiers"))
    BatchListIncomingTypedLinksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListIncomingTypedLinksResponse.struct_class = Types::BatchListIncomingTypedLinksResponse

    BatchListIndex.add_member(:ranges_on_indexed_values, Shapes::ShapeRef.new(shape: ObjectAttributeRangeList, location_name: "RangesOnIndexedValues"))
    BatchListIndex.add_member(:index_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "IndexReference"))
    BatchListIndex.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    BatchListIndex.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListIndex.struct_class = Types::BatchListIndex

    BatchListIndexResponse.add_member(:index_attachments, Shapes::ShapeRef.new(shape: IndexAttachmentList, location_name: "IndexAttachments"))
    BatchListIndexResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListIndexResponse.struct_class = Types::BatchListIndexResponse

    BatchListObjectAttributes.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchListObjectAttributes.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListObjectAttributes.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    BatchListObjectAttributes.add_member(:facet_filter, Shapes::ShapeRef.new(shape: SchemaFacet, location_name: "FacetFilter"))
    BatchListObjectAttributes.struct_class = Types::BatchListObjectAttributes

    BatchListObjectAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: "Attributes"))
    BatchListObjectAttributesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListObjectAttributesResponse.struct_class = Types::BatchListObjectAttributesResponse

    BatchListObjectChildren.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchListObjectChildren.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListObjectChildren.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    BatchListObjectChildren.struct_class = Types::BatchListObjectChildren

    BatchListObjectChildrenResponse.add_member(:children, Shapes::ShapeRef.new(shape: LinkNameToObjectIdentifierMap, location_name: "Children"))
    BatchListObjectChildrenResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListObjectChildrenResponse.struct_class = Types::BatchListObjectChildrenResponse

    BatchListObjectParentPaths.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchListObjectParentPaths.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListObjectParentPaths.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    BatchListObjectParentPaths.struct_class = Types::BatchListObjectParentPaths

    BatchListObjectParentPathsResponse.add_member(:path_to_object_identifiers_list, Shapes::ShapeRef.new(shape: PathToObjectIdentifiersList, location_name: "PathToObjectIdentifiersList"))
    BatchListObjectParentPathsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListObjectParentPathsResponse.struct_class = Types::BatchListObjectParentPathsResponse

    BatchListObjectPolicies.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchListObjectPolicies.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListObjectPolicies.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    BatchListObjectPolicies.struct_class = Types::BatchListObjectPolicies

    BatchListObjectPoliciesResponse.add_member(:attached_policy_ids, Shapes::ShapeRef.new(shape: ObjectIdentifierList, location_name: "AttachedPolicyIds"))
    BatchListObjectPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListObjectPoliciesResponse.struct_class = Types::BatchListObjectPoliciesResponse

    BatchListOutgoingTypedLinks.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchListOutgoingTypedLinks.add_member(:filter_attribute_ranges, Shapes::ShapeRef.new(shape: TypedLinkAttributeRangeList, location_name: "FilterAttributeRanges"))
    BatchListOutgoingTypedLinks.add_member(:filter_typed_link, Shapes::ShapeRef.new(shape: TypedLinkSchemaAndFacetName, location_name: "FilterTypedLink"))
    BatchListOutgoingTypedLinks.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListOutgoingTypedLinks.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    BatchListOutgoingTypedLinks.struct_class = Types::BatchListOutgoingTypedLinks

    BatchListOutgoingTypedLinksResponse.add_member(:typed_link_specifiers, Shapes::ShapeRef.new(shape: TypedLinkSpecifierList, location_name: "TypedLinkSpecifiers"))
    BatchListOutgoingTypedLinksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListOutgoingTypedLinksResponse.struct_class = Types::BatchListOutgoingTypedLinksResponse

    BatchListPolicyAttachments.add_member(:policy_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "PolicyReference"))
    BatchListPolicyAttachments.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListPolicyAttachments.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    BatchListPolicyAttachments.struct_class = Types::BatchListPolicyAttachments

    BatchListPolicyAttachmentsResponse.add_member(:object_identifiers, Shapes::ShapeRef.new(shape: ObjectIdentifierList, location_name: "ObjectIdentifiers"))
    BatchListPolicyAttachmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchListPolicyAttachmentsResponse.struct_class = Types::BatchListPolicyAttachmentsResponse

    BatchLookupPolicy.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchLookupPolicy.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchLookupPolicy.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    BatchLookupPolicy.struct_class = Types::BatchLookupPolicy

    BatchLookupPolicyResponse.add_member(:policy_to_path_list, Shapes::ShapeRef.new(shape: PolicyToPathList, location_name: "PolicyToPathList"))
    BatchLookupPolicyResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    BatchLookupPolicyResponse.struct_class = Types::BatchLookupPolicyResponse

    BatchReadException.add_member(:type, Shapes::ShapeRef.new(shape: BatchReadExceptionType, location_name: "Type"))
    BatchReadException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    BatchReadException.struct_class = Types::BatchReadException

    BatchReadOperation.add_member(:list_object_attributes, Shapes::ShapeRef.new(shape: BatchListObjectAttributes, location_name: "ListObjectAttributes"))
    BatchReadOperation.add_member(:list_object_children, Shapes::ShapeRef.new(shape: BatchListObjectChildren, location_name: "ListObjectChildren"))
    BatchReadOperation.add_member(:list_attached_indices, Shapes::ShapeRef.new(shape: BatchListAttachedIndices, location_name: "ListAttachedIndices"))
    BatchReadOperation.add_member(:list_object_parent_paths, Shapes::ShapeRef.new(shape: BatchListObjectParentPaths, location_name: "ListObjectParentPaths"))
    BatchReadOperation.add_member(:get_object_information, Shapes::ShapeRef.new(shape: BatchGetObjectInformation, location_name: "GetObjectInformation"))
    BatchReadOperation.add_member(:get_object_attributes, Shapes::ShapeRef.new(shape: BatchGetObjectAttributes, location_name: "GetObjectAttributes"))
    BatchReadOperation.add_member(:list_object_policies, Shapes::ShapeRef.new(shape: BatchListObjectPolicies, location_name: "ListObjectPolicies"))
    BatchReadOperation.add_member(:list_policy_attachments, Shapes::ShapeRef.new(shape: BatchListPolicyAttachments, location_name: "ListPolicyAttachments"))
    BatchReadOperation.add_member(:lookup_policy, Shapes::ShapeRef.new(shape: BatchLookupPolicy, location_name: "LookupPolicy"))
    BatchReadOperation.add_member(:list_index, Shapes::ShapeRef.new(shape: BatchListIndex, location_name: "ListIndex"))
    BatchReadOperation.add_member(:list_outgoing_typed_links, Shapes::ShapeRef.new(shape: BatchListOutgoingTypedLinks, location_name: "ListOutgoingTypedLinks"))
    BatchReadOperation.add_member(:list_incoming_typed_links, Shapes::ShapeRef.new(shape: BatchListIncomingTypedLinks, location_name: "ListIncomingTypedLinks"))
    BatchReadOperation.add_member(:get_link_attributes, Shapes::ShapeRef.new(shape: BatchGetLinkAttributes, location_name: "GetLinkAttributes"))
    BatchReadOperation.struct_class = Types::BatchReadOperation

    BatchReadOperationList.member = Shapes::ShapeRef.new(shape: BatchReadOperation)

    BatchReadOperationResponse.add_member(:successful_response, Shapes::ShapeRef.new(shape: BatchReadSuccessfulResponse, location_name: "SuccessfulResponse"))
    BatchReadOperationResponse.add_member(:exception_response, Shapes::ShapeRef.new(shape: BatchReadException, location_name: "ExceptionResponse"))
    BatchReadOperationResponse.struct_class = Types::BatchReadOperationResponse

    BatchReadOperationResponseList.member = Shapes::ShapeRef.new(shape: BatchReadOperationResponse)

    BatchReadRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    BatchReadRequest.add_member(:operations, Shapes::ShapeRef.new(shape: BatchReadOperationList, required: true, location_name: "Operations"))
    BatchReadRequest.add_member(:consistency_level, Shapes::ShapeRef.new(shape: ConsistencyLevel, location: "header", location_name: "x-amz-consistency-level"))
    BatchReadRequest.struct_class = Types::BatchReadRequest

    BatchReadResponse.add_member(:responses, Shapes::ShapeRef.new(shape: BatchReadOperationResponseList, location_name: "Responses"))
    BatchReadResponse.struct_class = Types::BatchReadResponse

    BatchReadSuccessfulResponse.add_member(:list_object_attributes, Shapes::ShapeRef.new(shape: BatchListObjectAttributesResponse, location_name: "ListObjectAttributes"))
    BatchReadSuccessfulResponse.add_member(:list_object_children, Shapes::ShapeRef.new(shape: BatchListObjectChildrenResponse, location_name: "ListObjectChildren"))
    BatchReadSuccessfulResponse.add_member(:get_object_information, Shapes::ShapeRef.new(shape: BatchGetObjectInformationResponse, location_name: "GetObjectInformation"))
    BatchReadSuccessfulResponse.add_member(:get_object_attributes, Shapes::ShapeRef.new(shape: BatchGetObjectAttributesResponse, location_name: "GetObjectAttributes"))
    BatchReadSuccessfulResponse.add_member(:list_attached_indices, Shapes::ShapeRef.new(shape: BatchListAttachedIndicesResponse, location_name: "ListAttachedIndices"))
    BatchReadSuccessfulResponse.add_member(:list_object_parent_paths, Shapes::ShapeRef.new(shape: BatchListObjectParentPathsResponse, location_name: "ListObjectParentPaths"))
    BatchReadSuccessfulResponse.add_member(:list_object_policies, Shapes::ShapeRef.new(shape: BatchListObjectPoliciesResponse, location_name: "ListObjectPolicies"))
    BatchReadSuccessfulResponse.add_member(:list_policy_attachments, Shapes::ShapeRef.new(shape: BatchListPolicyAttachmentsResponse, location_name: "ListPolicyAttachments"))
    BatchReadSuccessfulResponse.add_member(:lookup_policy, Shapes::ShapeRef.new(shape: BatchLookupPolicyResponse, location_name: "LookupPolicy"))
    BatchReadSuccessfulResponse.add_member(:list_index, Shapes::ShapeRef.new(shape: BatchListIndexResponse, location_name: "ListIndex"))
    BatchReadSuccessfulResponse.add_member(:list_outgoing_typed_links, Shapes::ShapeRef.new(shape: BatchListOutgoingTypedLinksResponse, location_name: "ListOutgoingTypedLinks"))
    BatchReadSuccessfulResponse.add_member(:list_incoming_typed_links, Shapes::ShapeRef.new(shape: BatchListIncomingTypedLinksResponse, location_name: "ListIncomingTypedLinks"))
    BatchReadSuccessfulResponse.add_member(:get_link_attributes, Shapes::ShapeRef.new(shape: BatchGetLinkAttributesResponse, location_name: "GetLinkAttributes"))
    BatchReadSuccessfulResponse.struct_class = Types::BatchReadSuccessfulResponse

    BatchRemoveFacetFromObject.add_member(:schema_facet, Shapes::ShapeRef.new(shape: SchemaFacet, required: true, location_name: "SchemaFacet"))
    BatchRemoveFacetFromObject.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchRemoveFacetFromObject.struct_class = Types::BatchRemoveFacetFromObject

    BatchRemoveFacetFromObjectResponse.struct_class = Types::BatchRemoveFacetFromObjectResponse

    BatchUpdateLinkAttributes.add_member(:typed_link_specifier, Shapes::ShapeRef.new(shape: TypedLinkSpecifier, required: true, location_name: "TypedLinkSpecifier"))
    BatchUpdateLinkAttributes.add_member(:attribute_updates, Shapes::ShapeRef.new(shape: LinkAttributeUpdateList, required: true, location_name: "AttributeUpdates"))
    BatchUpdateLinkAttributes.struct_class = Types::BatchUpdateLinkAttributes

    BatchUpdateLinkAttributesResponse.struct_class = Types::BatchUpdateLinkAttributesResponse

    BatchUpdateObjectAttributes.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    BatchUpdateObjectAttributes.add_member(:attribute_updates, Shapes::ShapeRef.new(shape: ObjectAttributeUpdateList, required: true, location_name: "AttributeUpdates"))
    BatchUpdateObjectAttributes.struct_class = Types::BatchUpdateObjectAttributes

    BatchUpdateObjectAttributesResponse.add_member(:object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "ObjectIdentifier"))
    BatchUpdateObjectAttributesResponse.struct_class = Types::BatchUpdateObjectAttributesResponse

    BatchWriteOperation.add_member(:create_object, Shapes::ShapeRef.new(shape: BatchCreateObject, location_name: "CreateObject"))
    BatchWriteOperation.add_member(:attach_object, Shapes::ShapeRef.new(shape: BatchAttachObject, location_name: "AttachObject"))
    BatchWriteOperation.add_member(:detach_object, Shapes::ShapeRef.new(shape: BatchDetachObject, location_name: "DetachObject"))
    BatchWriteOperation.add_member(:update_object_attributes, Shapes::ShapeRef.new(shape: BatchUpdateObjectAttributes, location_name: "UpdateObjectAttributes"))
    BatchWriteOperation.add_member(:delete_object, Shapes::ShapeRef.new(shape: BatchDeleteObject, location_name: "DeleteObject"))
    BatchWriteOperation.add_member(:add_facet_to_object, Shapes::ShapeRef.new(shape: BatchAddFacetToObject, location_name: "AddFacetToObject"))
    BatchWriteOperation.add_member(:remove_facet_from_object, Shapes::ShapeRef.new(shape: BatchRemoveFacetFromObject, location_name: "RemoveFacetFromObject"))
    BatchWriteOperation.add_member(:attach_policy, Shapes::ShapeRef.new(shape: BatchAttachPolicy, location_name: "AttachPolicy"))
    BatchWriteOperation.add_member(:detach_policy, Shapes::ShapeRef.new(shape: BatchDetachPolicy, location_name: "DetachPolicy"))
    BatchWriteOperation.add_member(:create_index, Shapes::ShapeRef.new(shape: BatchCreateIndex, location_name: "CreateIndex"))
    BatchWriteOperation.add_member(:attach_to_index, Shapes::ShapeRef.new(shape: BatchAttachToIndex, location_name: "AttachToIndex"))
    BatchWriteOperation.add_member(:detach_from_index, Shapes::ShapeRef.new(shape: BatchDetachFromIndex, location_name: "DetachFromIndex"))
    BatchWriteOperation.add_member(:attach_typed_link, Shapes::ShapeRef.new(shape: BatchAttachTypedLink, location_name: "AttachTypedLink"))
    BatchWriteOperation.add_member(:detach_typed_link, Shapes::ShapeRef.new(shape: BatchDetachTypedLink, location_name: "DetachTypedLink"))
    BatchWriteOperation.add_member(:update_link_attributes, Shapes::ShapeRef.new(shape: BatchUpdateLinkAttributes, location_name: "UpdateLinkAttributes"))
    BatchWriteOperation.struct_class = Types::BatchWriteOperation

    BatchWriteOperationList.member = Shapes::ShapeRef.new(shape: BatchWriteOperation)

    BatchWriteOperationResponse.add_member(:create_object, Shapes::ShapeRef.new(shape: BatchCreateObjectResponse, location_name: "CreateObject"))
    BatchWriteOperationResponse.add_member(:attach_object, Shapes::ShapeRef.new(shape: BatchAttachObjectResponse, location_name: "AttachObject"))
    BatchWriteOperationResponse.add_member(:detach_object, Shapes::ShapeRef.new(shape: BatchDetachObjectResponse, location_name: "DetachObject"))
    BatchWriteOperationResponse.add_member(:update_object_attributes, Shapes::ShapeRef.new(shape: BatchUpdateObjectAttributesResponse, location_name: "UpdateObjectAttributes"))
    BatchWriteOperationResponse.add_member(:delete_object, Shapes::ShapeRef.new(shape: BatchDeleteObjectResponse, location_name: "DeleteObject"))
    BatchWriteOperationResponse.add_member(:add_facet_to_object, Shapes::ShapeRef.new(shape: BatchAddFacetToObjectResponse, location_name: "AddFacetToObject"))
    BatchWriteOperationResponse.add_member(:remove_facet_from_object, Shapes::ShapeRef.new(shape: BatchRemoveFacetFromObjectResponse, location_name: "RemoveFacetFromObject"))
    BatchWriteOperationResponse.add_member(:attach_policy, Shapes::ShapeRef.new(shape: BatchAttachPolicyResponse, location_name: "AttachPolicy"))
    BatchWriteOperationResponse.add_member(:detach_policy, Shapes::ShapeRef.new(shape: BatchDetachPolicyResponse, location_name: "DetachPolicy"))
    BatchWriteOperationResponse.add_member(:create_index, Shapes::ShapeRef.new(shape: BatchCreateIndexResponse, location_name: "CreateIndex"))
    BatchWriteOperationResponse.add_member(:attach_to_index, Shapes::ShapeRef.new(shape: BatchAttachToIndexResponse, location_name: "AttachToIndex"))
    BatchWriteOperationResponse.add_member(:detach_from_index, Shapes::ShapeRef.new(shape: BatchDetachFromIndexResponse, location_name: "DetachFromIndex"))
    BatchWriteOperationResponse.add_member(:attach_typed_link, Shapes::ShapeRef.new(shape: BatchAttachTypedLinkResponse, location_name: "AttachTypedLink"))
    BatchWriteOperationResponse.add_member(:detach_typed_link, Shapes::ShapeRef.new(shape: BatchDetachTypedLinkResponse, location_name: "DetachTypedLink"))
    BatchWriteOperationResponse.add_member(:update_link_attributes, Shapes::ShapeRef.new(shape: BatchUpdateLinkAttributesResponse, location_name: "UpdateLinkAttributes"))
    BatchWriteOperationResponse.struct_class = Types::BatchWriteOperationResponse

    BatchWriteOperationResponseList.member = Shapes::ShapeRef.new(shape: BatchWriteOperationResponse)

    BatchWriteRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    BatchWriteRequest.add_member(:operations, Shapes::ShapeRef.new(shape: BatchWriteOperationList, required: true, location_name: "Operations"))
    BatchWriteRequest.struct_class = Types::BatchWriteRequest

    BatchWriteResponse.add_member(:responses, Shapes::ShapeRef.new(shape: BatchWriteOperationResponseList, location_name: "Responses"))
    BatchWriteResponse.struct_class = Types::BatchWriteResponse

    CreateDirectoryRequest.add_member(:name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "Name"))
    CreateDirectoryRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    CreateDirectoryRequest.struct_class = Types::CreateDirectoryRequest

    CreateDirectoryResponse.add_member(:directory_arn, Shapes::ShapeRef.new(shape: DirectoryArn, required: true, location_name: "DirectoryArn"))
    CreateDirectoryResponse.add_member(:name, Shapes::ShapeRef.new(shape: DirectoryName, required: true, location_name: "Name"))
    CreateDirectoryResponse.add_member(:object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, required: true, location_name: "ObjectIdentifier"))
    CreateDirectoryResponse.add_member(:applied_schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AppliedSchemaArn"))
    CreateDirectoryResponse.struct_class = Types::CreateDirectoryResponse

    CreateFacetRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    CreateFacetRequest.add_member(:name, Shapes::ShapeRef.new(shape: FacetName, required: true, location_name: "Name"))
    CreateFacetRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: FacetAttributeList, location_name: "Attributes"))
    CreateFacetRequest.add_member(:object_type, Shapes::ShapeRef.new(shape: ObjectType, location_name: "ObjectType"))
    CreateFacetRequest.add_member(:facet_style, Shapes::ShapeRef.new(shape: FacetStyle, location_name: "FacetStyle"))
    CreateFacetRequest.struct_class = Types::CreateFacetRequest

    CreateFacetResponse.struct_class = Types::CreateFacetResponse

    CreateIndexRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    CreateIndexRequest.add_member(:ordered_indexed_attribute_list, Shapes::ShapeRef.new(shape: AttributeKeyList, required: true, location_name: "OrderedIndexedAttributeList"))
    CreateIndexRequest.add_member(:is_unique, Shapes::ShapeRef.new(shape: Bool, required: true, location_name: "IsUnique"))
    CreateIndexRequest.add_member(:parent_reference, Shapes::ShapeRef.new(shape: ObjectReference, location_name: "ParentReference"))
    CreateIndexRequest.add_member(:link_name, Shapes::ShapeRef.new(shape: LinkName, location_name: "LinkName"))
    CreateIndexRequest.struct_class = Types::CreateIndexRequest

    CreateIndexResponse.add_member(:object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "ObjectIdentifier"))
    CreateIndexResponse.struct_class = Types::CreateIndexResponse

    CreateObjectRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    CreateObjectRequest.add_member(:schema_facets, Shapes::ShapeRef.new(shape: SchemaFacetList, required: true, location_name: "SchemaFacets"))
    CreateObjectRequest.add_member(:object_attribute_list, Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: "ObjectAttributeList"))
    CreateObjectRequest.add_member(:parent_reference, Shapes::ShapeRef.new(shape: ObjectReference, location_name: "ParentReference"))
    CreateObjectRequest.add_member(:link_name, Shapes::ShapeRef.new(shape: LinkName, location_name: "LinkName"))
    CreateObjectRequest.struct_class = Types::CreateObjectRequest

    CreateObjectResponse.add_member(:object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "ObjectIdentifier"))
    CreateObjectResponse.struct_class = Types::CreateObjectResponse

    CreateSchemaRequest.add_member(:name, Shapes::ShapeRef.new(shape: SchemaName, required: true, location_name: "Name"))
    CreateSchemaRequest.struct_class = Types::CreateSchemaRequest

    CreateSchemaResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SchemaArn"))
    CreateSchemaResponse.struct_class = Types::CreateSchemaResponse

    CreateTypedLinkFacetRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    CreateTypedLinkFacetRequest.add_member(:facet, Shapes::ShapeRef.new(shape: TypedLinkFacet, required: true, location_name: "Facet"))
    CreateTypedLinkFacetRequest.struct_class = Types::CreateTypedLinkFacetRequest

    CreateTypedLinkFacetResponse.struct_class = Types::CreateTypedLinkFacetResponse

    DeleteDirectoryRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    DeleteDirectoryRequest.struct_class = Types::DeleteDirectoryRequest

    DeleteDirectoryResponse.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DirectoryArn"))
    DeleteDirectoryResponse.struct_class = Types::DeleteDirectoryResponse

    DeleteFacetRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    DeleteFacetRequest.add_member(:name, Shapes::ShapeRef.new(shape: FacetName, required: true, location_name: "Name"))
    DeleteFacetRequest.struct_class = Types::DeleteFacetRequest

    DeleteFacetResponse.struct_class = Types::DeleteFacetResponse

    DeleteObjectRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    DeleteObjectRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    DeleteObjectRequest.struct_class = Types::DeleteObjectRequest

    DeleteObjectResponse.struct_class = Types::DeleteObjectResponse

    DeleteSchemaRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    DeleteSchemaRequest.struct_class = Types::DeleteSchemaRequest

    DeleteSchemaResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SchemaArn"))
    DeleteSchemaResponse.struct_class = Types::DeleteSchemaResponse

    DeleteTypedLinkFacetRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    DeleteTypedLinkFacetRequest.add_member(:name, Shapes::ShapeRef.new(shape: TypedLinkName, required: true, location_name: "Name"))
    DeleteTypedLinkFacetRequest.struct_class = Types::DeleteTypedLinkFacetRequest

    DeleteTypedLinkFacetResponse.struct_class = Types::DeleteTypedLinkFacetResponse

    DetachFromIndexRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    DetachFromIndexRequest.add_member(:index_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "IndexReference"))
    DetachFromIndexRequest.add_member(:target_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "TargetReference"))
    DetachFromIndexRequest.struct_class = Types::DetachFromIndexRequest

    DetachFromIndexResponse.add_member(:detached_object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "DetachedObjectIdentifier"))
    DetachFromIndexResponse.struct_class = Types::DetachFromIndexResponse

    DetachObjectRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    DetachObjectRequest.add_member(:parent_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ParentReference"))
    DetachObjectRequest.add_member(:link_name, Shapes::ShapeRef.new(shape: LinkName, required: true, location_name: "LinkName"))
    DetachObjectRequest.struct_class = Types::DetachObjectRequest

    DetachObjectResponse.add_member(:detached_object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "DetachedObjectIdentifier"))
    DetachObjectResponse.struct_class = Types::DetachObjectResponse

    DetachPolicyRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    DetachPolicyRequest.add_member(:policy_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "PolicyReference"))
    DetachPolicyRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    DetachPolicyRequest.struct_class = Types::DetachPolicyRequest

    DetachPolicyResponse.struct_class = Types::DetachPolicyResponse

    DetachTypedLinkRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    DetachTypedLinkRequest.add_member(:typed_link_specifier, Shapes::ShapeRef.new(shape: TypedLinkSpecifier, required: true, location_name: "TypedLinkSpecifier"))
    DetachTypedLinkRequest.struct_class = Types::DetachTypedLinkRequest

    Directory.add_member(:name, Shapes::ShapeRef.new(shape: DirectoryName, location_name: "Name"))
    Directory.add_member(:directory_arn, Shapes::ShapeRef.new(shape: DirectoryArn, location_name: "DirectoryArn"))
    Directory.add_member(:state, Shapes::ShapeRef.new(shape: DirectoryState, location_name: "State"))
    Directory.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationDateTime"))
    Directory.struct_class = Types::Directory

    DirectoryList.member = Shapes::ShapeRef.new(shape: Directory)

    DisableDirectoryRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    DisableDirectoryRequest.struct_class = Types::DisableDirectoryRequest

    DisableDirectoryResponse.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DirectoryArn"))
    DisableDirectoryResponse.struct_class = Types::DisableDirectoryResponse

    EnableDirectoryRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    EnableDirectoryRequest.struct_class = Types::EnableDirectoryRequest

    EnableDirectoryResponse.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DirectoryArn"))
    EnableDirectoryResponse.struct_class = Types::EnableDirectoryResponse

    Facet.add_member(:name, Shapes::ShapeRef.new(shape: FacetName, location_name: "Name"))
    Facet.add_member(:object_type, Shapes::ShapeRef.new(shape: ObjectType, location_name: "ObjectType"))
    Facet.add_member(:facet_style, Shapes::ShapeRef.new(shape: FacetStyle, location_name: "FacetStyle"))
    Facet.struct_class = Types::Facet

    FacetAttribute.add_member(:name, Shapes::ShapeRef.new(shape: AttributeName, required: true, location_name: "Name"))
    FacetAttribute.add_member(:attribute_definition, Shapes::ShapeRef.new(shape: FacetAttributeDefinition, location_name: "AttributeDefinition"))
    FacetAttribute.add_member(:attribute_reference, Shapes::ShapeRef.new(shape: FacetAttributeReference, location_name: "AttributeReference"))
    FacetAttribute.add_member(:required_behavior, Shapes::ShapeRef.new(shape: RequiredAttributeBehavior, location_name: "RequiredBehavior"))
    FacetAttribute.struct_class = Types::FacetAttribute

    FacetAttributeDefinition.add_member(:type, Shapes::ShapeRef.new(shape: FacetAttributeType, required: true, location_name: "Type"))
    FacetAttributeDefinition.add_member(:default_value, Shapes::ShapeRef.new(shape: TypedAttributeValue, location_name: "DefaultValue"))
    FacetAttributeDefinition.add_member(:is_immutable, Shapes::ShapeRef.new(shape: Bool, location_name: "IsImmutable"))
    FacetAttributeDefinition.add_member(:rules, Shapes::ShapeRef.new(shape: RuleMap, location_name: "Rules"))
    FacetAttributeDefinition.struct_class = Types::FacetAttributeDefinition

    FacetAttributeList.member = Shapes::ShapeRef.new(shape: FacetAttribute)

    FacetAttributeReference.add_member(:target_facet_name, Shapes::ShapeRef.new(shape: FacetName, required: true, location_name: "TargetFacetName"))
    FacetAttributeReference.add_member(:target_attribute_name, Shapes::ShapeRef.new(shape: AttributeName, required: true, location_name: "TargetAttributeName"))
    FacetAttributeReference.struct_class = Types::FacetAttributeReference

    FacetAttributeUpdate.add_member(:attribute, Shapes::ShapeRef.new(shape: FacetAttribute, location_name: "Attribute"))
    FacetAttributeUpdate.add_member(:action, Shapes::ShapeRef.new(shape: UpdateActionType, location_name: "Action"))
    FacetAttributeUpdate.struct_class = Types::FacetAttributeUpdate

    FacetAttributeUpdateList.member = Shapes::ShapeRef.new(shape: FacetAttributeUpdate)

    FacetNameList.member = Shapes::ShapeRef.new(shape: FacetName)

    GetAppliedSchemaVersionRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "SchemaArn"))
    GetAppliedSchemaVersionRequest.struct_class = Types::GetAppliedSchemaVersionRequest

    GetAppliedSchemaVersionResponse.add_member(:applied_schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AppliedSchemaArn"))
    GetAppliedSchemaVersionResponse.struct_class = Types::GetAppliedSchemaVersionResponse

    GetDirectoryRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: DirectoryArn, required: true, location: "header", location_name: "x-amz-data-partition"))
    GetDirectoryRequest.struct_class = Types::GetDirectoryRequest

    GetDirectoryResponse.add_member(:directory, Shapes::ShapeRef.new(shape: Directory, required: true, location_name: "Directory"))
    GetDirectoryResponse.struct_class = Types::GetDirectoryResponse

    GetFacetRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    GetFacetRequest.add_member(:name, Shapes::ShapeRef.new(shape: FacetName, required: true, location_name: "Name"))
    GetFacetRequest.struct_class = Types::GetFacetRequest

    GetFacetResponse.add_member(:facet, Shapes::ShapeRef.new(shape: Facet, location_name: "Facet"))
    GetFacetResponse.struct_class = Types::GetFacetResponse

    GetLinkAttributesRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    GetLinkAttributesRequest.add_member(:typed_link_specifier, Shapes::ShapeRef.new(shape: TypedLinkSpecifier, required: true, location_name: "TypedLinkSpecifier"))
    GetLinkAttributesRequest.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNameList, required: true, location_name: "AttributeNames"))
    GetLinkAttributesRequest.add_member(:consistency_level, Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: "ConsistencyLevel"))
    GetLinkAttributesRequest.struct_class = Types::GetLinkAttributesRequest

    GetLinkAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: "Attributes"))
    GetLinkAttributesResponse.struct_class = Types::GetLinkAttributesResponse

    GetObjectAttributesRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    GetObjectAttributesRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    GetObjectAttributesRequest.add_member(:consistency_level, Shapes::ShapeRef.new(shape: ConsistencyLevel, location: "header", location_name: "x-amz-consistency-level"))
    GetObjectAttributesRequest.add_member(:schema_facet, Shapes::ShapeRef.new(shape: SchemaFacet, required: true, location_name: "SchemaFacet"))
    GetObjectAttributesRequest.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNameList, required: true, location_name: "AttributeNames"))
    GetObjectAttributesRequest.struct_class = Types::GetObjectAttributesRequest

    GetObjectAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: "Attributes"))
    GetObjectAttributesResponse.struct_class = Types::GetObjectAttributesResponse

    GetObjectInformationRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    GetObjectInformationRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    GetObjectInformationRequest.add_member(:consistency_level, Shapes::ShapeRef.new(shape: ConsistencyLevel, location: "header", location_name: "x-amz-consistency-level"))
    GetObjectInformationRequest.struct_class = Types::GetObjectInformationRequest

    GetObjectInformationResponse.add_member(:schema_facets, Shapes::ShapeRef.new(shape: SchemaFacetList, location_name: "SchemaFacets"))
    GetObjectInformationResponse.add_member(:object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "ObjectIdentifier"))
    GetObjectInformationResponse.struct_class = Types::GetObjectInformationResponse

    GetSchemaAsJsonRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    GetSchemaAsJsonRequest.struct_class = Types::GetSchemaAsJsonRequest

    GetSchemaAsJsonResponse.add_member(:name, Shapes::ShapeRef.new(shape: SchemaName, location_name: "Name"))
    GetSchemaAsJsonResponse.add_member(:document, Shapes::ShapeRef.new(shape: SchemaJsonDocument, location_name: "Document"))
    GetSchemaAsJsonResponse.struct_class = Types::GetSchemaAsJsonResponse

    GetTypedLinkFacetInformationRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    GetTypedLinkFacetInformationRequest.add_member(:name, Shapes::ShapeRef.new(shape: TypedLinkName, required: true, location_name: "Name"))
    GetTypedLinkFacetInformationRequest.struct_class = Types::GetTypedLinkFacetInformationRequest

    GetTypedLinkFacetInformationResponse.add_member(:identity_attribute_order, Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "IdentityAttributeOrder"))
    GetTypedLinkFacetInformationResponse.struct_class = Types::GetTypedLinkFacetInformationResponse

    IndexAttachment.add_member(:indexed_attributes, Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: "IndexedAttributes"))
    IndexAttachment.add_member(:object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "ObjectIdentifier"))
    IndexAttachment.struct_class = Types::IndexAttachment

    IndexAttachmentList.member = Shapes::ShapeRef.new(shape: IndexAttachment)

    LinkAttributeAction.add_member(:attribute_action_type, Shapes::ShapeRef.new(shape: UpdateActionType, location_name: "AttributeActionType"))
    LinkAttributeAction.add_member(:attribute_update_value, Shapes::ShapeRef.new(shape: TypedAttributeValue, location_name: "AttributeUpdateValue"))
    LinkAttributeAction.struct_class = Types::LinkAttributeAction

    LinkAttributeUpdate.add_member(:attribute_key, Shapes::ShapeRef.new(shape: AttributeKey, location_name: "AttributeKey"))
    LinkAttributeUpdate.add_member(:attribute_action, Shapes::ShapeRef.new(shape: LinkAttributeAction, location_name: "AttributeAction"))
    LinkAttributeUpdate.struct_class = Types::LinkAttributeUpdate

    LinkAttributeUpdateList.member = Shapes::ShapeRef.new(shape: LinkAttributeUpdate)

    LinkNameToObjectIdentifierMap.key = Shapes::ShapeRef.new(shape: LinkName)
    LinkNameToObjectIdentifierMap.value = Shapes::ShapeRef.new(shape: ObjectIdentifier)

    ListAppliedSchemaArnsRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DirectoryArn"))
    ListAppliedSchemaArnsRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SchemaArn"))
    ListAppliedSchemaArnsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppliedSchemaArnsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListAppliedSchemaArnsRequest.struct_class = Types::ListAppliedSchemaArnsRequest

    ListAppliedSchemaArnsResponse.add_member(:schema_arns, Shapes::ShapeRef.new(shape: Arns, location_name: "SchemaArns"))
    ListAppliedSchemaArnsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppliedSchemaArnsResponse.struct_class = Types::ListAppliedSchemaArnsResponse

    ListAttachedIndicesRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ListAttachedIndicesRequest.add_member(:target_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "TargetReference"))
    ListAttachedIndicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAttachedIndicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListAttachedIndicesRequest.add_member(:consistency_level, Shapes::ShapeRef.new(shape: ConsistencyLevel, location: "header", location_name: "x-amz-consistency-level"))
    ListAttachedIndicesRequest.struct_class = Types::ListAttachedIndicesRequest

    ListAttachedIndicesResponse.add_member(:index_attachments, Shapes::ShapeRef.new(shape: IndexAttachmentList, location_name: "IndexAttachments"))
    ListAttachedIndicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAttachedIndicesResponse.struct_class = Types::ListAttachedIndicesResponse

    ListDevelopmentSchemaArnsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDevelopmentSchemaArnsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListDevelopmentSchemaArnsRequest.struct_class = Types::ListDevelopmentSchemaArnsRequest

    ListDevelopmentSchemaArnsResponse.add_member(:schema_arns, Shapes::ShapeRef.new(shape: Arns, location_name: "SchemaArns"))
    ListDevelopmentSchemaArnsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDevelopmentSchemaArnsResponse.struct_class = Types::ListDevelopmentSchemaArnsResponse

    ListDirectoriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDirectoriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListDirectoriesRequest.add_member(:state, Shapes::ShapeRef.new(shape: DirectoryState, location_name: "state"))
    ListDirectoriesRequest.struct_class = Types::ListDirectoriesRequest

    ListDirectoriesResponse.add_member(:directories, Shapes::ShapeRef.new(shape: DirectoryList, required: true, location_name: "Directories"))
    ListDirectoriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDirectoriesResponse.struct_class = Types::ListDirectoriesResponse

    ListFacetAttributesRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ListFacetAttributesRequest.add_member(:name, Shapes::ShapeRef.new(shape: FacetName, required: true, location_name: "Name"))
    ListFacetAttributesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFacetAttributesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListFacetAttributesRequest.struct_class = Types::ListFacetAttributesRequest

    ListFacetAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: FacetAttributeList, location_name: "Attributes"))
    ListFacetAttributesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFacetAttributesResponse.struct_class = Types::ListFacetAttributesResponse

    ListFacetNamesRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ListFacetNamesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFacetNamesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListFacetNamesRequest.struct_class = Types::ListFacetNamesRequest

    ListFacetNamesResponse.add_member(:facet_names, Shapes::ShapeRef.new(shape: FacetNameList, location_name: "FacetNames"))
    ListFacetNamesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFacetNamesResponse.struct_class = Types::ListFacetNamesResponse

    ListIncomingTypedLinksRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ListIncomingTypedLinksRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    ListIncomingTypedLinksRequest.add_member(:filter_attribute_ranges, Shapes::ShapeRef.new(shape: TypedLinkAttributeRangeList, location_name: "FilterAttributeRanges"))
    ListIncomingTypedLinksRequest.add_member(:filter_typed_link, Shapes::ShapeRef.new(shape: TypedLinkSchemaAndFacetName, location_name: "FilterTypedLink"))
    ListIncomingTypedLinksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListIncomingTypedLinksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListIncomingTypedLinksRequest.add_member(:consistency_level, Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: "ConsistencyLevel"))
    ListIncomingTypedLinksRequest.struct_class = Types::ListIncomingTypedLinksRequest

    ListIncomingTypedLinksResponse.add_member(:link_specifiers, Shapes::ShapeRef.new(shape: TypedLinkSpecifierList, location_name: "LinkSpecifiers"))
    ListIncomingTypedLinksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListIncomingTypedLinksResponse.struct_class = Types::ListIncomingTypedLinksResponse

    ListIndexRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ListIndexRequest.add_member(:ranges_on_indexed_values, Shapes::ShapeRef.new(shape: ObjectAttributeRangeList, location_name: "RangesOnIndexedValues"))
    ListIndexRequest.add_member(:index_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "IndexReference"))
    ListIndexRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListIndexRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListIndexRequest.add_member(:consistency_level, Shapes::ShapeRef.new(shape: ConsistencyLevel, location: "header", location_name: "x-amz-consistency-level"))
    ListIndexRequest.struct_class = Types::ListIndexRequest

    ListIndexResponse.add_member(:index_attachments, Shapes::ShapeRef.new(shape: IndexAttachmentList, location_name: "IndexAttachments"))
    ListIndexResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListIndexResponse.struct_class = Types::ListIndexResponse

    ListManagedSchemaArnsRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SchemaArn"))
    ListManagedSchemaArnsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListManagedSchemaArnsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListManagedSchemaArnsRequest.struct_class = Types::ListManagedSchemaArnsRequest

    ListManagedSchemaArnsResponse.add_member(:schema_arns, Shapes::ShapeRef.new(shape: Arns, location_name: "SchemaArns"))
    ListManagedSchemaArnsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListManagedSchemaArnsResponse.struct_class = Types::ListManagedSchemaArnsResponse

    ListObjectAttributesRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ListObjectAttributesRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    ListObjectAttributesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListObjectAttributesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListObjectAttributesRequest.add_member(:consistency_level, Shapes::ShapeRef.new(shape: ConsistencyLevel, location: "header", location_name: "x-amz-consistency-level"))
    ListObjectAttributesRequest.add_member(:facet_filter, Shapes::ShapeRef.new(shape: SchemaFacet, location_name: "FacetFilter"))
    ListObjectAttributesRequest.struct_class = Types::ListObjectAttributesRequest

    ListObjectAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: "Attributes"))
    ListObjectAttributesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListObjectAttributesResponse.struct_class = Types::ListObjectAttributesResponse

    ListObjectChildrenRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ListObjectChildrenRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    ListObjectChildrenRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListObjectChildrenRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListObjectChildrenRequest.add_member(:consistency_level, Shapes::ShapeRef.new(shape: ConsistencyLevel, location: "header", location_name: "x-amz-consistency-level"))
    ListObjectChildrenRequest.struct_class = Types::ListObjectChildrenRequest

    ListObjectChildrenResponse.add_member(:children, Shapes::ShapeRef.new(shape: LinkNameToObjectIdentifierMap, location_name: "Children"))
    ListObjectChildrenResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListObjectChildrenResponse.struct_class = Types::ListObjectChildrenResponse

    ListObjectParentPathsRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ListObjectParentPathsRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    ListObjectParentPathsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListObjectParentPathsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListObjectParentPathsRequest.struct_class = Types::ListObjectParentPathsRequest

    ListObjectParentPathsResponse.add_member(:path_to_object_identifiers_list, Shapes::ShapeRef.new(shape: PathToObjectIdentifiersList, location_name: "PathToObjectIdentifiersList"))
    ListObjectParentPathsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListObjectParentPathsResponse.struct_class = Types::ListObjectParentPathsResponse

    ListObjectParentsRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ListObjectParentsRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    ListObjectParentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListObjectParentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListObjectParentsRequest.add_member(:consistency_level, Shapes::ShapeRef.new(shape: ConsistencyLevel, location: "header", location_name: "x-amz-consistency-level"))
    ListObjectParentsRequest.struct_class = Types::ListObjectParentsRequest

    ListObjectParentsResponse.add_member(:parents, Shapes::ShapeRef.new(shape: ObjectIdentifierToLinkNameMap, location_name: "Parents"))
    ListObjectParentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListObjectParentsResponse.struct_class = Types::ListObjectParentsResponse

    ListObjectPoliciesRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ListObjectPoliciesRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    ListObjectPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListObjectPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListObjectPoliciesRequest.add_member(:consistency_level, Shapes::ShapeRef.new(shape: ConsistencyLevel, location: "header", location_name: "x-amz-consistency-level"))
    ListObjectPoliciesRequest.struct_class = Types::ListObjectPoliciesRequest

    ListObjectPoliciesResponse.add_member(:attached_policy_ids, Shapes::ShapeRef.new(shape: ObjectIdentifierList, location_name: "AttachedPolicyIds"))
    ListObjectPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListObjectPoliciesResponse.struct_class = Types::ListObjectPoliciesResponse

    ListOutgoingTypedLinksRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ListOutgoingTypedLinksRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    ListOutgoingTypedLinksRequest.add_member(:filter_attribute_ranges, Shapes::ShapeRef.new(shape: TypedLinkAttributeRangeList, location_name: "FilterAttributeRanges"))
    ListOutgoingTypedLinksRequest.add_member(:filter_typed_link, Shapes::ShapeRef.new(shape: TypedLinkSchemaAndFacetName, location_name: "FilterTypedLink"))
    ListOutgoingTypedLinksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOutgoingTypedLinksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListOutgoingTypedLinksRequest.add_member(:consistency_level, Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: "ConsistencyLevel"))
    ListOutgoingTypedLinksRequest.struct_class = Types::ListOutgoingTypedLinksRequest

    ListOutgoingTypedLinksResponse.add_member(:typed_link_specifiers, Shapes::ShapeRef.new(shape: TypedLinkSpecifierList, location_name: "TypedLinkSpecifiers"))
    ListOutgoingTypedLinksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOutgoingTypedLinksResponse.struct_class = Types::ListOutgoingTypedLinksResponse

    ListPolicyAttachmentsRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ListPolicyAttachmentsRequest.add_member(:policy_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "PolicyReference"))
    ListPolicyAttachmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPolicyAttachmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListPolicyAttachmentsRequest.add_member(:consistency_level, Shapes::ShapeRef.new(shape: ConsistencyLevel, location: "header", location_name: "x-amz-consistency-level"))
    ListPolicyAttachmentsRequest.struct_class = Types::ListPolicyAttachmentsRequest

    ListPolicyAttachmentsResponse.add_member(:object_identifiers, Shapes::ShapeRef.new(shape: ObjectIdentifierList, location_name: "ObjectIdentifiers"))
    ListPolicyAttachmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPolicyAttachmentsResponse.struct_class = Types::ListPolicyAttachmentsResponse

    ListPublishedSchemaArnsRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SchemaArn"))
    ListPublishedSchemaArnsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPublishedSchemaArnsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListPublishedSchemaArnsRequest.struct_class = Types::ListPublishedSchemaArnsRequest

    ListPublishedSchemaArnsResponse.add_member(:schema_arns, Shapes::ShapeRef.new(shape: Arns, location_name: "SchemaArns"))
    ListPublishedSchemaArnsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPublishedSchemaArnsResponse.struct_class = Types::ListPublishedSchemaArnsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: TagsNumberResults, location_name: "MaxResults"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTypedLinkFacetAttributesRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ListTypedLinkFacetAttributesRequest.add_member(:name, Shapes::ShapeRef.new(shape: TypedLinkName, required: true, location_name: "Name"))
    ListTypedLinkFacetAttributesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTypedLinkFacetAttributesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListTypedLinkFacetAttributesRequest.struct_class = Types::ListTypedLinkFacetAttributesRequest

    ListTypedLinkFacetAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: TypedLinkAttributeDefinitionList, location_name: "Attributes"))
    ListTypedLinkFacetAttributesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTypedLinkFacetAttributesResponse.struct_class = Types::ListTypedLinkFacetAttributesResponse

    ListTypedLinkFacetNamesRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    ListTypedLinkFacetNamesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTypedLinkFacetNamesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    ListTypedLinkFacetNamesRequest.struct_class = Types::ListTypedLinkFacetNamesRequest

    ListTypedLinkFacetNamesResponse.add_member(:facet_names, Shapes::ShapeRef.new(shape: TypedLinkNameList, location_name: "FacetNames"))
    ListTypedLinkFacetNamesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTypedLinkFacetNamesResponse.struct_class = Types::ListTypedLinkFacetNamesResponse

    LookupPolicyRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    LookupPolicyRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    LookupPolicyRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    LookupPolicyRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: NumberResults, location_name: "MaxResults"))
    LookupPolicyRequest.struct_class = Types::LookupPolicyRequest

    LookupPolicyResponse.add_member(:policy_to_path_list, Shapes::ShapeRef.new(shape: PolicyToPathList, location_name: "PolicyToPathList"))
    LookupPolicyResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    LookupPolicyResponse.struct_class = Types::LookupPolicyResponse

    ObjectAttributeAction.add_member(:object_attribute_action_type, Shapes::ShapeRef.new(shape: UpdateActionType, location_name: "ObjectAttributeActionType"))
    ObjectAttributeAction.add_member(:object_attribute_update_value, Shapes::ShapeRef.new(shape: TypedAttributeValue, location_name: "ObjectAttributeUpdateValue"))
    ObjectAttributeAction.struct_class = Types::ObjectAttributeAction

    ObjectAttributeRange.add_member(:attribute_key, Shapes::ShapeRef.new(shape: AttributeKey, location_name: "AttributeKey"))
    ObjectAttributeRange.add_member(:range, Shapes::ShapeRef.new(shape: TypedAttributeValueRange, location_name: "Range"))
    ObjectAttributeRange.struct_class = Types::ObjectAttributeRange

    ObjectAttributeRangeList.member = Shapes::ShapeRef.new(shape: ObjectAttributeRange)

    ObjectAttributeUpdate.add_member(:object_attribute_key, Shapes::ShapeRef.new(shape: AttributeKey, location_name: "ObjectAttributeKey"))
    ObjectAttributeUpdate.add_member(:object_attribute_action, Shapes::ShapeRef.new(shape: ObjectAttributeAction, location_name: "ObjectAttributeAction"))
    ObjectAttributeUpdate.struct_class = Types::ObjectAttributeUpdate

    ObjectAttributeUpdateList.member = Shapes::ShapeRef.new(shape: ObjectAttributeUpdate)

    ObjectIdentifierList.member = Shapes::ShapeRef.new(shape: ObjectIdentifier)

    ObjectIdentifierToLinkNameMap.key = Shapes::ShapeRef.new(shape: ObjectIdentifier)
    ObjectIdentifierToLinkNameMap.value = Shapes::ShapeRef.new(shape: LinkName)

    ObjectReference.add_member(:selector, Shapes::ShapeRef.new(shape: SelectorObjectReference, location_name: "Selector"))
    ObjectReference.struct_class = Types::ObjectReference

    PathToObjectIdentifiers.add_member(:path, Shapes::ShapeRef.new(shape: PathString, location_name: "Path"))
    PathToObjectIdentifiers.add_member(:object_identifiers, Shapes::ShapeRef.new(shape: ObjectIdentifierList, location_name: "ObjectIdentifiers"))
    PathToObjectIdentifiers.struct_class = Types::PathToObjectIdentifiers

    PathToObjectIdentifiersList.member = Shapes::ShapeRef.new(shape: PathToObjectIdentifiers)

    PolicyAttachment.add_member(:policy_id, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "PolicyId"))
    PolicyAttachment.add_member(:object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "ObjectIdentifier"))
    PolicyAttachment.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, location_name: "PolicyType"))
    PolicyAttachment.struct_class = Types::PolicyAttachment

    PolicyAttachmentList.member = Shapes::ShapeRef.new(shape: PolicyAttachment)

    PolicyToPath.add_member(:path, Shapes::ShapeRef.new(shape: PathString, location_name: "Path"))
    PolicyToPath.add_member(:policies, Shapes::ShapeRef.new(shape: PolicyAttachmentList, location_name: "Policies"))
    PolicyToPath.struct_class = Types::PolicyToPath

    PolicyToPathList.member = Shapes::ShapeRef.new(shape: PolicyToPath)

    PublishSchemaRequest.add_member(:development_schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    PublishSchemaRequest.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "Version"))
    PublishSchemaRequest.add_member(:minor_version, Shapes::ShapeRef.new(shape: Version, location_name: "MinorVersion"))
    PublishSchemaRequest.add_member(:name, Shapes::ShapeRef.new(shape: SchemaName, location_name: "Name"))
    PublishSchemaRequest.struct_class = Types::PublishSchemaRequest

    PublishSchemaResponse.add_member(:published_schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "PublishedSchemaArn"))
    PublishSchemaResponse.struct_class = Types::PublishSchemaResponse

    PutSchemaFromJsonRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    PutSchemaFromJsonRequest.add_member(:document, Shapes::ShapeRef.new(shape: SchemaJsonDocument, required: true, location_name: "Document"))
    PutSchemaFromJsonRequest.struct_class = Types::PutSchemaFromJsonRequest

    PutSchemaFromJsonResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    PutSchemaFromJsonResponse.struct_class = Types::PutSchemaFromJsonResponse

    RemoveFacetFromObjectRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    RemoveFacetFromObjectRequest.add_member(:schema_facet, Shapes::ShapeRef.new(shape: SchemaFacet, required: true, location_name: "SchemaFacet"))
    RemoveFacetFromObjectRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    RemoveFacetFromObjectRequest.struct_class = Types::RemoveFacetFromObjectRequest

    RemoveFacetFromObjectResponse.struct_class = Types::RemoveFacetFromObjectResponse

    Rule.add_member(:type, Shapes::ShapeRef.new(shape: RuleType, location_name: "Type"))
    Rule.add_member(:parameters, Shapes::ShapeRef.new(shape: RuleParameterMap, location_name: "Parameters"))
    Rule.struct_class = Types::Rule

    RuleMap.key = Shapes::ShapeRef.new(shape: RuleKey)
    RuleMap.value = Shapes::ShapeRef.new(shape: Rule)

    RuleParameterMap.key = Shapes::ShapeRef.new(shape: RuleParameterKey)
    RuleParameterMap.value = Shapes::ShapeRef.new(shape: RuleParameterValue)

    SchemaFacet.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SchemaArn"))
    SchemaFacet.add_member(:facet_name, Shapes::ShapeRef.new(shape: FacetName, location_name: "FacetName"))
    SchemaFacet.struct_class = Types::SchemaFacet

    SchemaFacetList.member = Shapes::ShapeRef.new(shape: SchemaFacet)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TypedAttributeValue.add_member(:string_value, Shapes::ShapeRef.new(shape: StringAttributeValue, location_name: "StringValue"))
    TypedAttributeValue.add_member(:binary_value, Shapes::ShapeRef.new(shape: BinaryAttributeValue, location_name: "BinaryValue"))
    TypedAttributeValue.add_member(:boolean_value, Shapes::ShapeRef.new(shape: BooleanAttributeValue, location_name: "BooleanValue"))
    TypedAttributeValue.add_member(:number_value, Shapes::ShapeRef.new(shape: NumberAttributeValue, location_name: "NumberValue"))
    TypedAttributeValue.add_member(:datetime_value, Shapes::ShapeRef.new(shape: DatetimeAttributeValue, location_name: "DatetimeValue"))
    TypedAttributeValue.struct_class = Types::TypedAttributeValue

    TypedAttributeValueRange.add_member(:start_mode, Shapes::ShapeRef.new(shape: RangeMode, required: true, location_name: "StartMode"))
    TypedAttributeValueRange.add_member(:start_value, Shapes::ShapeRef.new(shape: TypedAttributeValue, location_name: "StartValue"))
    TypedAttributeValueRange.add_member(:end_mode, Shapes::ShapeRef.new(shape: RangeMode, required: true, location_name: "EndMode"))
    TypedAttributeValueRange.add_member(:end_value, Shapes::ShapeRef.new(shape: TypedAttributeValue, location_name: "EndValue"))
    TypedAttributeValueRange.struct_class = Types::TypedAttributeValueRange

    TypedLinkAttributeDefinition.add_member(:name, Shapes::ShapeRef.new(shape: AttributeName, required: true, location_name: "Name"))
    TypedLinkAttributeDefinition.add_member(:type, Shapes::ShapeRef.new(shape: FacetAttributeType, required: true, location_name: "Type"))
    TypedLinkAttributeDefinition.add_member(:default_value, Shapes::ShapeRef.new(shape: TypedAttributeValue, location_name: "DefaultValue"))
    TypedLinkAttributeDefinition.add_member(:is_immutable, Shapes::ShapeRef.new(shape: Bool, location_name: "IsImmutable"))
    TypedLinkAttributeDefinition.add_member(:rules, Shapes::ShapeRef.new(shape: RuleMap, location_name: "Rules"))
    TypedLinkAttributeDefinition.add_member(:required_behavior, Shapes::ShapeRef.new(shape: RequiredAttributeBehavior, required: true, location_name: "RequiredBehavior"))
    TypedLinkAttributeDefinition.struct_class = Types::TypedLinkAttributeDefinition

    TypedLinkAttributeDefinitionList.member = Shapes::ShapeRef.new(shape: TypedLinkAttributeDefinition)

    TypedLinkAttributeRange.add_member(:attribute_name, Shapes::ShapeRef.new(shape: AttributeName, location_name: "AttributeName"))
    TypedLinkAttributeRange.add_member(:range, Shapes::ShapeRef.new(shape: TypedAttributeValueRange, required: true, location_name: "Range"))
    TypedLinkAttributeRange.struct_class = Types::TypedLinkAttributeRange

    TypedLinkAttributeRangeList.member = Shapes::ShapeRef.new(shape: TypedLinkAttributeRange)

    TypedLinkFacet.add_member(:name, Shapes::ShapeRef.new(shape: TypedLinkName, required: true, location_name: "Name"))
    TypedLinkFacet.add_member(:attributes, Shapes::ShapeRef.new(shape: TypedLinkAttributeDefinitionList, required: true, location_name: "Attributes"))
    TypedLinkFacet.add_member(:identity_attribute_order, Shapes::ShapeRef.new(shape: AttributeNameList, required: true, location_name: "IdentityAttributeOrder"))
    TypedLinkFacet.struct_class = Types::TypedLinkFacet

    TypedLinkFacetAttributeUpdate.add_member(:attribute, Shapes::ShapeRef.new(shape: TypedLinkAttributeDefinition, required: true, location_name: "Attribute"))
    TypedLinkFacetAttributeUpdate.add_member(:action, Shapes::ShapeRef.new(shape: UpdateActionType, required: true, location_name: "Action"))
    TypedLinkFacetAttributeUpdate.struct_class = Types::TypedLinkFacetAttributeUpdate

    TypedLinkFacetAttributeUpdateList.member = Shapes::ShapeRef.new(shape: TypedLinkFacetAttributeUpdate)

    TypedLinkNameList.member = Shapes::ShapeRef.new(shape: TypedLinkName)

    TypedLinkSchemaAndFacetName.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "SchemaArn"))
    TypedLinkSchemaAndFacetName.add_member(:typed_link_name, Shapes::ShapeRef.new(shape: TypedLinkName, required: true, location_name: "TypedLinkName"))
    TypedLinkSchemaAndFacetName.struct_class = Types::TypedLinkSchemaAndFacetName

    TypedLinkSpecifier.add_member(:typed_link_facet, Shapes::ShapeRef.new(shape: TypedLinkSchemaAndFacetName, required: true, location_name: "TypedLinkFacet"))
    TypedLinkSpecifier.add_member(:source_object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "SourceObjectReference"))
    TypedLinkSpecifier.add_member(:target_object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "TargetObjectReference"))
    TypedLinkSpecifier.add_member(:identity_attribute_values, Shapes::ShapeRef.new(shape: AttributeNameAndValueList, required: true, location_name: "IdentityAttributeValues"))
    TypedLinkSpecifier.struct_class = Types::TypedLinkSpecifier

    TypedLinkSpecifierList.member = Shapes::ShapeRef.new(shape: TypedLinkSpecifier)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateFacetRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    UpdateFacetRequest.add_member(:name, Shapes::ShapeRef.new(shape: FacetName, required: true, location_name: "Name"))
    UpdateFacetRequest.add_member(:attribute_updates, Shapes::ShapeRef.new(shape: FacetAttributeUpdateList, location_name: "AttributeUpdates"))
    UpdateFacetRequest.add_member(:object_type, Shapes::ShapeRef.new(shape: ObjectType, location_name: "ObjectType"))
    UpdateFacetRequest.struct_class = Types::UpdateFacetRequest

    UpdateFacetResponse.struct_class = Types::UpdateFacetResponse

    UpdateLinkAttributesRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    UpdateLinkAttributesRequest.add_member(:typed_link_specifier, Shapes::ShapeRef.new(shape: TypedLinkSpecifier, required: true, location_name: "TypedLinkSpecifier"))
    UpdateLinkAttributesRequest.add_member(:attribute_updates, Shapes::ShapeRef.new(shape: LinkAttributeUpdateList, required: true, location_name: "AttributeUpdates"))
    UpdateLinkAttributesRequest.struct_class = Types::UpdateLinkAttributesRequest

    UpdateLinkAttributesResponse.struct_class = Types::UpdateLinkAttributesResponse

    UpdateObjectAttributesRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    UpdateObjectAttributesRequest.add_member(:object_reference, Shapes::ShapeRef.new(shape: ObjectReference, required: true, location_name: "ObjectReference"))
    UpdateObjectAttributesRequest.add_member(:attribute_updates, Shapes::ShapeRef.new(shape: ObjectAttributeUpdateList, required: true, location_name: "AttributeUpdates"))
    UpdateObjectAttributesRequest.struct_class = Types::UpdateObjectAttributesRequest

    UpdateObjectAttributesResponse.add_member(:object_identifier, Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: "ObjectIdentifier"))
    UpdateObjectAttributesResponse.struct_class = Types::UpdateObjectAttributesResponse

    UpdateSchemaRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    UpdateSchemaRequest.add_member(:name, Shapes::ShapeRef.new(shape: SchemaName, required: true, location_name: "Name"))
    UpdateSchemaRequest.struct_class = Types::UpdateSchemaRequest

    UpdateSchemaResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SchemaArn"))
    UpdateSchemaResponse.struct_class = Types::UpdateSchemaResponse

    UpdateTypedLinkFacetRequest.add_member(:schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "header", location_name: "x-amz-data-partition"))
    UpdateTypedLinkFacetRequest.add_member(:name, Shapes::ShapeRef.new(shape: TypedLinkName, required: true, location_name: "Name"))
    UpdateTypedLinkFacetRequest.add_member(:attribute_updates, Shapes::ShapeRef.new(shape: TypedLinkFacetAttributeUpdateList, required: true, location_name: "AttributeUpdates"))
    UpdateTypedLinkFacetRequest.add_member(:identity_attribute_order, Shapes::ShapeRef.new(shape: AttributeNameList, required: true, location_name: "IdentityAttributeOrder"))
    UpdateTypedLinkFacetRequest.struct_class = Types::UpdateTypedLinkFacetRequest

    UpdateTypedLinkFacetResponse.struct_class = Types::UpdateTypedLinkFacetResponse

    UpgradeAppliedSchemaRequest.add_member(:published_schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "PublishedSchemaArn"))
    UpgradeAppliedSchemaRequest.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DirectoryArn"))
    UpgradeAppliedSchemaRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Bool, location_name: "DryRun"))
    UpgradeAppliedSchemaRequest.struct_class = Types::UpgradeAppliedSchemaRequest

    UpgradeAppliedSchemaResponse.add_member(:upgraded_schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "UpgradedSchemaArn"))
    UpgradeAppliedSchemaResponse.add_member(:directory_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DirectoryArn"))
    UpgradeAppliedSchemaResponse.struct_class = Types::UpgradeAppliedSchemaResponse

    UpgradePublishedSchemaRequest.add_member(:development_schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DevelopmentSchemaArn"))
    UpgradePublishedSchemaRequest.add_member(:published_schema_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "PublishedSchemaArn"))
    UpgradePublishedSchemaRequest.add_member(:minor_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "MinorVersion"))
    UpgradePublishedSchemaRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Bool, location_name: "DryRun"))
    UpgradePublishedSchemaRequest.struct_class = Types::UpgradePublishedSchemaRequest

    UpgradePublishedSchemaResponse.add_member(:upgraded_schema_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "UpgradedSchemaArn"))
    UpgradePublishedSchemaResponse.struct_class = Types::UpgradePublishedSchemaResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-01-11"

      api.metadata = {
        "apiVersion" => "2017-01-11",
        "endpointPrefix" => "clouddirectory",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon CloudDirectory",
        "signatureVersion" => "v4",
        "signingName" => "clouddirectory",
        "uid" => "clouddirectory-2017-01-11",
      }

      api.add_operation(:add_facet_to_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddFacetToObject"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object/facets"
        o.input = Shapes::ShapeRef.new(shape: AddFacetToObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: AddFacetToObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
      end)

      api.add_operation(:apply_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApplySchema"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/schema/apply"
        o.input = Shapes::ShapeRef.new(shape: ApplySchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: ApplySchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: SchemaAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAttachmentException)
      end)

      api.add_operation(:attach_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachObject"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object/attach"
        o.input = Shapes::ShapeRef.new(shape: AttachObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LinkNameAlreadyInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAttachmentException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
      end)

      api.add_operation(:attach_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/policy/attach"
        o.input = Shapes::ShapeRef.new(shape: AttachPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotPolicyException)
      end)

      api.add_operation(:attach_to_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachToIndex"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/index/attach"
        o.input = Shapes::ShapeRef.new(shape: AttachToIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachToIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAttachmentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LinkNameAlreadyInUseException)
        o.errors << Shapes::ShapeRef.new(shape: IndexedAttributeMissingException)
        o.errors << Shapes::ShapeRef.new(shape: NotIndexException)
      end)

      api.add_operation(:attach_typed_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachTypedLink"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/typedlink/attach"
        o.input = Shapes::ShapeRef.new(shape: AttachTypedLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachTypedLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAttachmentException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
      end)

      api.add_operation(:batch_read, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchRead"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/batchread"
        o.input = Shapes::ShapeRef.new(shape: BatchReadRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchReadResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
      end)

      api.add_operation(:batch_write, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchWrite"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/batchwrite"
        o.input = Shapes::ShapeRef.new(shape: BatchWriteRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchWriteResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: BatchWriteException)
      end)

      api.add_operation(:create_directory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDirectory"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/directory/create"
        o.input = Shapes::ShapeRef.new(shape: CreateDirectoryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDirectoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_facet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFacet"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/facet/create"
        o.input = Shapes::ShapeRef.new(shape: CreateFacetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFacetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRuleException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
      end)

      api.add_operation(:create_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIndex"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/index"
        o.input = Shapes::ShapeRef.new(shape: CreateIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LinkNameAlreadyInUseException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedIndexTypeException)
      end)

      api.add_operation(:create_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateObject"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object"
        o.input = Shapes::ShapeRef.new(shape: CreateObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LinkNameAlreadyInUseException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedIndexTypeException)
      end)

      api.add_operation(:create_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSchema"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/schema/create"
        o.input = Shapes::ShapeRef.new(shape: CreateSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: SchemaAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_typed_link_facet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTypedLinkFacet"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/typedlink/facet/create"
        o.input = Shapes::ShapeRef.new(shape: CreateTypedLinkFacetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTypedLinkFacetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRuleException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
      end)

      api.add_operation(:delete_directory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDirectory"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/directory"
        o.input = Shapes::ShapeRef.new(shape: DeleteDirectoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDirectoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryDeletedException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:delete_facet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFacet"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/facet/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteFacetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFacetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetInUseException)
      end)

      api.add_operation(:delete_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteObject"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ObjectNotDetachedException)
      end)

      api.add_operation(:delete_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSchema"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/schema"
        o.input = Shapes::ShapeRef.new(shape: DeleteSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: StillContainsLinksException)
      end)

      api.add_operation(:delete_typed_link_facet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTypedLinkFacet"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/typedlink/facet/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteTypedLinkFacetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTypedLinkFacetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetNotFoundException)
      end)

      api.add_operation(:detach_from_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachFromIndex"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/index/detach"
        o.input = Shapes::ShapeRef.new(shape: DetachFromIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: DetachFromIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ObjectAlreadyDetachedException)
        o.errors << Shapes::ShapeRef.new(shape: NotIndexException)
      end)

      api.add_operation(:detach_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachObject"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object/detach"
        o.input = Shapes::ShapeRef.new(shape: DetachObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DetachObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotNodeException)
      end)

      api.add_operation(:detach_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/policy/detach"
        o.input = Shapes::ShapeRef.new(shape: DetachPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DetachPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotPolicyException)
      end)

      api.add_operation(:detach_typed_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachTypedLink"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/typedlink/detach"
        o.input = Shapes::ShapeRef.new(shape: DetachTypedLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
      end)

      api.add_operation(:disable_directory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableDirectory"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/directory/disable"
        o.input = Shapes::ShapeRef.new(shape: DisableDirectoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableDirectoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryDeletedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:enable_directory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableDirectory"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/directory/enable"
        o.input = Shapes::ShapeRef.new(shape: EnableDirectoryRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableDirectoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryDeletedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:get_applied_schema_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAppliedSchemaVersion"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/schema/getappliedschema"
        o.input = Shapes::ShapeRef.new(shape: GetAppliedSchemaVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppliedSchemaVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_directory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDirectory"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/directory/get"
        o.input = Shapes::ShapeRef.new(shape: GetDirectoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDirectoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_facet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFacet"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/facet"
        o.input = Shapes::ShapeRef.new(shape: GetFacetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFacetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetNotFoundException)
      end)

      api.add_operation(:get_link_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLinkAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/typedlink/attributes/get"
        o.input = Shapes::ShapeRef.new(shape: GetLinkAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLinkAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
      end)

      api.add_operation(:get_object_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetObjectAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object/attributes/get"
        o.input = Shapes::ShapeRef.new(shape: GetObjectAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetObjectAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
      end)

      api.add_operation(:get_object_information, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetObjectInformation"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object/information"
        o.input = Shapes::ShapeRef.new(shape: GetObjectInformationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetObjectInformationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_schema_as_json, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSchemaAsJson"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/schema/json"
        o.input = Shapes::ShapeRef.new(shape: GetSchemaAsJsonRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSchemaAsJsonResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_typed_link_facet_information, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTypedLinkFacetInformation"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/typedlink/facet/get"
        o.input = Shapes::ShapeRef.new(shape: GetTypedLinkFacetInformationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTypedLinkFacetInformationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: FacetNotFoundException)
      end)

      api.add_operation(:list_applied_schema_arns, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppliedSchemaArns"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/schema/applied"
        o.input = Shapes::ShapeRef.new(shape: ListAppliedSchemaArnsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppliedSchemaArnsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_attached_indices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttachedIndices"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object/indices"
        o.input = Shapes::ShapeRef.new(shape: ListAttachedIndicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttachedIndicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_development_schema_arns, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevelopmentSchemaArns"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/schema/development"
        o.input = Shapes::ShapeRef.new(shape: ListDevelopmentSchemaArnsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDevelopmentSchemaArnsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_directories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDirectories"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/directory/list"
        o.input = Shapes::ShapeRef.new(shape: ListDirectoriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDirectoriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_facet_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFacetAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/facet/attributes"
        o.input = Shapes::ShapeRef.new(shape: ListFacetAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFacetAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_facet_names, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFacetNames"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/facet/list"
        o.input = Shapes::ShapeRef.new(shape: ListFacetNamesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFacetNamesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_incoming_typed_links, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIncomingTypedLinks"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/typedlink/incoming"
        o.input = Shapes::ShapeRef.new(shape: ListIncomingTypedLinksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIncomingTypedLinksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
      end)

      api.add_operation(:list_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIndex"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/index/targets"
        o.input = Shapes::ShapeRef.new(shape: ListIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotIndexException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_schema_arns, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedSchemaArns"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/schema/managed"
        o.input = Shapes::ShapeRef.new(shape: ListManagedSchemaArnsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedSchemaArnsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_object_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListObjectAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object/attributes"
        o.input = Shapes::ShapeRef.new(shape: ListObjectAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListObjectAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_object_children, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListObjectChildren"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object/children"
        o.input = Shapes::ShapeRef.new(shape: ListObjectChildrenRequest)
        o.output = Shapes::ShapeRef.new(shape: ListObjectChildrenResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NotNodeException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_object_parent_paths, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListObjectParentPaths"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object/parentpaths"
        o.input = Shapes::ShapeRef.new(shape: ListObjectParentPathsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListObjectParentPathsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_object_parents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListObjectParents"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object/parent"
        o.input = Shapes::ShapeRef.new(shape: ListObjectParentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListObjectParentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: CannotListParentOfRootException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_object_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListObjectPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object/policy"
        o.input = Shapes::ShapeRef.new(shape: ListObjectPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListObjectPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_outgoing_typed_links, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOutgoingTypedLinks"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/typedlink/outgoing"
        o.input = Shapes::ShapeRef.new(shape: ListOutgoingTypedLinksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOutgoingTypedLinksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
      end)

      api.add_operation(:list_policy_attachments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicyAttachments"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/policy/attachment"
        o.input = Shapes::ShapeRef.new(shape: ListPolicyAttachmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPolicyAttachmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotPolicyException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_published_schema_arns, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPublishedSchemaArns"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/schema/published"
        o.input = Shapes::ShapeRef.new(shape: ListPublishedSchemaArnsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPublishedSchemaArnsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTaggingRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_typed_link_facet_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTypedLinkFacetAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes"
        o.input = Shapes::ShapeRef.new(shape: ListTypedLinkFacetAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTypedLinkFacetAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_typed_link_facet_names, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTypedLinkFacetNames"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/typedlink/facet/list"
        o.input = Shapes::ShapeRef.new(shape: ListTypedLinkFacetNamesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTypedLinkFacetNamesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:lookup_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "LookupPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/policy/lookup"
        o.input = Shapes::ShapeRef.new(shape: LookupPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: LookupPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:publish_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PublishSchema"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/schema/publish"
        o.input = Shapes::ShapeRef.new(shape: PublishSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: PublishSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: SchemaAlreadyPublishedException)
      end)

      api.add_operation(:put_schema_from_json, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSchemaFromJson"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/schema/json"
        o.input = Shapes::ShapeRef.new(shape: PutSchemaFromJsonRequest)
        o.output = Shapes::ShapeRef.new(shape: PutSchemaFromJsonResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSchemaDocException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRuleException)
      end)

      api.add_operation(:remove_facet_from_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveFacetFromObject"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object/facets/delete"
        o.input = Shapes::ShapeRef.new(shape: RemoveFacetFromObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveFacetFromObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/tags/add"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTaggingRequestException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/tags/remove"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTaggingRequestException)
      end)

      api.add_operation(:update_facet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFacet"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/facet"
        o.input = Shapes::ShapeRef.new(shape: UpdateFacetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFacetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFacetUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRuleException)
      end)

      api.add_operation(:update_link_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLinkAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/typedlink/attributes/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateLinkAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLinkAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
      end)

      api.add_operation(:update_object_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateObjectAttributes"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/object/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateObjectAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateObjectAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LinkNameAlreadyInUseException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
      end)

      api.add_operation(:update_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSchema"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/schema/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_typed_link_facet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTypedLinkFacet"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/typedlink/facet"
        o.input = Shapes::ShapeRef.new(shape: UpdateTypedLinkFacetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTypedLinkFacetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: FacetValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFacetUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FacetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRuleException)
      end)

      api.add_operation(:upgrade_applied_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpgradeAppliedSchema"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/schema/upgradeapplied"
        o.input = Shapes::ShapeRef.new(shape: UpgradeAppliedSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: UpgradeAppliedSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleSchemaException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAttachmentException)
        o.errors << Shapes::ShapeRef.new(shape: SchemaAlreadyExistsException)
      end)

      api.add_operation(:upgrade_published_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpgradePublishedSchema"
        o.http_method = "PUT"
        o.http_request_uri = "/amazonclouddirectory/2017-01-11/schema/upgradepublished"
        o.input = Shapes::ShapeRef.new(shape: UpgradePublishedSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: UpgradePublishedSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleSchemaException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAttachmentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)
    end

  end
end
