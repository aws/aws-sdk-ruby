# frozen_string_literal: true

# This is generated code!

module Aws::CloudDirectory
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddFacetToObjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#AddFacetToObjectRequest', name: 'AddFacetToObjectRequest')
    AddFacetToObjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#AddFacetToObjectResponse', name: 'AddFacetToObjectResponse')
    ApplySchemaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ApplySchemaRequest', name: 'ApplySchemaRequest')
    ApplySchemaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ApplySchemaResponse', name: 'ApplySchemaResponse')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#Arn', name: 'Arn')
    Arns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#Arns', name: 'Arns')
    AttachObjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#AttachObjectRequest', name: 'AttachObjectRequest')
    AttachObjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#AttachObjectResponse', name: 'AttachObjectResponse')
    AttachPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#AttachPolicyRequest', name: 'AttachPolicyRequest')
    AttachPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#AttachPolicyResponse', name: 'AttachPolicyResponse')
    AttachToIndexRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#AttachToIndexRequest', name: 'AttachToIndexRequest')
    AttachToIndexResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#AttachToIndexResponse', name: 'AttachToIndexResponse')
    AttachTypedLinkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#AttachTypedLinkRequest', name: 'AttachTypedLinkRequest')
    AttachTypedLinkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#AttachTypedLinkResponse', name: 'AttachTypedLinkResponse')
    AttributeKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#AttributeKey', name: 'AttributeKey')
    AttributeKeyAndValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#AttributeKeyAndValue', name: 'AttributeKeyAndValue')
    AttributeKeyAndValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#AttributeKeyAndValueList', name: 'AttributeKeyAndValueList')
    AttributeKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#AttributeKeyList', name: 'AttributeKeyList')
    AttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#AttributeName', name: 'AttributeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 230}, "smithy.api#pattern" => "^[a-zA-Z0-9._:-]*$"})
    AttributeNameAndValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#AttributeNameAndValue', name: 'AttributeNameAndValue')
    AttributeNameAndValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#AttributeNameAndValueList', name: 'AttributeNameAndValueList')
    AttributeNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#AttributeNameList', name: 'AttributeNameList')
    BatchAddFacetToObject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchAddFacetToObject', name: 'BatchAddFacetToObject')
    BatchAddFacetToObjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchAddFacetToObjectResponse', name: 'BatchAddFacetToObjectResponse')
    BatchAttachObject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchAttachObject', name: 'BatchAttachObject')
    BatchAttachObjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchAttachObjectResponse', name: 'BatchAttachObjectResponse')
    BatchAttachPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchAttachPolicy', name: 'BatchAttachPolicy')
    BatchAttachPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchAttachPolicyResponse', name: 'BatchAttachPolicyResponse')
    BatchAttachToIndex = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchAttachToIndex', name: 'BatchAttachToIndex')
    BatchAttachToIndexResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchAttachToIndexResponse', name: 'BatchAttachToIndexResponse')
    BatchAttachTypedLink = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchAttachTypedLink', name: 'BatchAttachTypedLink')
    BatchAttachTypedLinkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchAttachTypedLinkResponse', name: 'BatchAttachTypedLinkResponse')
    BatchCreateIndex = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchCreateIndex', name: 'BatchCreateIndex')
    BatchCreateIndexResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchCreateIndexResponse', name: 'BatchCreateIndexResponse')
    BatchCreateObject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchCreateObject', name: 'BatchCreateObject')
    BatchCreateObjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchCreateObjectResponse', name: 'BatchCreateObjectResponse')
    BatchDeleteObject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchDeleteObject', name: 'BatchDeleteObject')
    BatchDeleteObjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchDeleteObjectResponse', name: 'BatchDeleteObjectResponse')
    BatchDetachFromIndex = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchDetachFromIndex', name: 'BatchDetachFromIndex')
    BatchDetachFromIndexResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchDetachFromIndexResponse', name: 'BatchDetachFromIndexResponse')
    BatchDetachObject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchDetachObject', name: 'BatchDetachObject')
    BatchDetachObjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchDetachObjectResponse', name: 'BatchDetachObjectResponse')
    BatchDetachPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchDetachPolicy', name: 'BatchDetachPolicy')
    BatchDetachPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchDetachPolicyResponse', name: 'BatchDetachPolicyResponse')
    BatchDetachTypedLink = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchDetachTypedLink', name: 'BatchDetachTypedLink')
    BatchDetachTypedLinkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchDetachTypedLinkResponse', name: 'BatchDetachTypedLinkResponse')
    BatchGetLinkAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchGetLinkAttributes', name: 'BatchGetLinkAttributes')
    BatchGetLinkAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchGetLinkAttributesResponse', name: 'BatchGetLinkAttributesResponse')
    BatchGetObjectAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchGetObjectAttributes', name: 'BatchGetObjectAttributes')
    BatchGetObjectAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchGetObjectAttributesResponse', name: 'BatchGetObjectAttributesResponse')
    BatchGetObjectInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchGetObjectInformation', name: 'BatchGetObjectInformation')
    BatchGetObjectInformationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchGetObjectInformationResponse', name: 'BatchGetObjectInformationResponse')
    BatchListAttachedIndices = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListAttachedIndices', name: 'BatchListAttachedIndices')
    BatchListAttachedIndicesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListAttachedIndicesResponse', name: 'BatchListAttachedIndicesResponse')
    BatchListIncomingTypedLinks = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListIncomingTypedLinks', name: 'BatchListIncomingTypedLinks')
    BatchListIncomingTypedLinksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListIncomingTypedLinksResponse', name: 'BatchListIncomingTypedLinksResponse')
    BatchListIndex = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListIndex', name: 'BatchListIndex')
    BatchListIndexResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListIndexResponse', name: 'BatchListIndexResponse')
    BatchListObjectAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListObjectAttributes', name: 'BatchListObjectAttributes')
    BatchListObjectAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListObjectAttributesResponse', name: 'BatchListObjectAttributesResponse')
    BatchListObjectChildren = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListObjectChildren', name: 'BatchListObjectChildren')
    BatchListObjectChildrenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListObjectChildrenResponse', name: 'BatchListObjectChildrenResponse')
    BatchListObjectParentPaths = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListObjectParentPaths', name: 'BatchListObjectParentPaths')
    BatchListObjectParentPathsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListObjectParentPathsResponse', name: 'BatchListObjectParentPathsResponse')
    BatchListObjectParents = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListObjectParents', name: 'BatchListObjectParents')
    BatchListObjectParentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListObjectParentsResponse', name: 'BatchListObjectParentsResponse')
    BatchListObjectPolicies = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListObjectPolicies', name: 'BatchListObjectPolicies')
    BatchListObjectPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListObjectPoliciesResponse', name: 'BatchListObjectPoliciesResponse')
    BatchListOutgoingTypedLinks = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListOutgoingTypedLinks', name: 'BatchListOutgoingTypedLinks')
    BatchListOutgoingTypedLinksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListOutgoingTypedLinksResponse', name: 'BatchListOutgoingTypedLinksResponse')
    BatchListPolicyAttachments = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListPolicyAttachments', name: 'BatchListPolicyAttachments')
    BatchListPolicyAttachmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchListPolicyAttachmentsResponse', name: 'BatchListPolicyAttachmentsResponse')
    BatchLookupPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchLookupPolicy', name: 'BatchLookupPolicy')
    BatchLookupPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchLookupPolicyResponse', name: 'BatchLookupPolicyResponse')
    BatchOperationIndex = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.clouddirectory#BatchOperationIndex', name: 'BatchOperationIndex', traits: {"smithy.api#default" => 0})
    BatchReadException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchReadException', name: 'BatchReadException')
    BatchReadExceptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.clouddirectory#BatchReadExceptionType', name: 'BatchReadExceptionType')
    BatchReadOperation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchReadOperation', name: 'BatchReadOperation')
    BatchReadOperationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#BatchReadOperationList', name: 'BatchReadOperationList')
    BatchReadOperationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchReadOperationResponse', name: 'BatchReadOperationResponse')
    BatchReadOperationResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#BatchReadOperationResponseList', name: 'BatchReadOperationResponseList')
    BatchReadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchReadRequest', name: 'BatchReadRequest')
    BatchReadResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchReadResponse', name: 'BatchReadResponse')
    BatchReadSuccessfulResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchReadSuccessfulResponse', name: 'BatchReadSuccessfulResponse')
    BatchReferenceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#BatchReferenceName', name: 'BatchReferenceName')
    BatchRemoveFacetFromObject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchRemoveFacetFromObject', name: 'BatchRemoveFacetFromObject')
    BatchRemoveFacetFromObjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchRemoveFacetFromObjectResponse', name: 'BatchRemoveFacetFromObjectResponse')
    BatchUpdateLinkAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchUpdateLinkAttributes', name: 'BatchUpdateLinkAttributes')
    BatchUpdateLinkAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchUpdateLinkAttributesResponse', name: 'BatchUpdateLinkAttributesResponse')
    BatchUpdateObjectAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchUpdateObjectAttributes', name: 'BatchUpdateObjectAttributes')
    BatchUpdateObjectAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchUpdateObjectAttributesResponse', name: 'BatchUpdateObjectAttributesResponse')
    BatchWriteException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchWriteException', name: 'BatchWriteException', traits: {"smithy.api#error" => "client"})
    BatchWriteExceptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.clouddirectory#BatchWriteExceptionType', name: 'BatchWriteExceptionType')
    BatchWriteOperation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchWriteOperation', name: 'BatchWriteOperation')
    BatchWriteOperationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#BatchWriteOperationList', name: 'BatchWriteOperationList')
    BatchWriteOperationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchWriteOperationResponse', name: 'BatchWriteOperationResponse')
    BatchWriteOperationResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#BatchWriteOperationResponseList', name: 'BatchWriteOperationResponseList')
    BatchWriteRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchWriteRequest', name: 'BatchWriteRequest')
    BatchWriteResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#BatchWriteResponse', name: 'BatchWriteResponse')
    BinaryAttributeValue = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.clouddirectory#BinaryAttributeValue', name: 'BinaryAttributeValue')
    Bool = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.clouddirectory#Bool', name: 'Bool', traits: {"smithy.api#default" => false})
    BooleanAttributeValue = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.clouddirectory#BooleanAttributeValue', name: 'BooleanAttributeValue')
    CannotListParentOfRootException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#CannotListParentOfRootException', name: 'CannotListParentOfRootException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConsistencyLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.clouddirectory#ConsistencyLevel', name: 'ConsistencyLevel')
    CreateDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#CreateDirectoryRequest', name: 'CreateDirectoryRequest')
    CreateDirectoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#CreateDirectoryResponse', name: 'CreateDirectoryResponse')
    CreateFacetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#CreateFacetRequest', name: 'CreateFacetRequest')
    CreateFacetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#CreateFacetResponse', name: 'CreateFacetResponse')
    CreateIndexRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#CreateIndexRequest', name: 'CreateIndexRequest')
    CreateIndexResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#CreateIndexResponse', name: 'CreateIndexResponse')
    CreateObjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#CreateObjectRequest', name: 'CreateObjectRequest')
    CreateObjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#CreateObjectResponse', name: 'CreateObjectResponse')
    CreateSchemaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#CreateSchemaRequest', name: 'CreateSchemaRequest')
    CreateSchemaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#CreateSchemaResponse', name: 'CreateSchemaResponse')
    CreateTypedLinkFacetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#CreateTypedLinkFacetRequest', name: 'CreateTypedLinkFacetRequest')
    CreateTypedLinkFacetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#CreateTypedLinkFacetResponse', name: 'CreateTypedLinkFacetResponse')
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.clouddirectory#Date', name: 'Date')
    DatetimeAttributeValue = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.clouddirectory#DatetimeAttributeValue', name: 'DatetimeAttributeValue')
    DeleteDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DeleteDirectoryRequest', name: 'DeleteDirectoryRequest')
    DeleteDirectoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DeleteDirectoryResponse', name: 'DeleteDirectoryResponse')
    DeleteFacetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DeleteFacetRequest', name: 'DeleteFacetRequest')
    DeleteFacetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DeleteFacetResponse', name: 'DeleteFacetResponse')
    DeleteObjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DeleteObjectRequest', name: 'DeleteObjectRequest')
    DeleteObjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DeleteObjectResponse', name: 'DeleteObjectResponse')
    DeleteSchemaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DeleteSchemaRequest', name: 'DeleteSchemaRequest')
    DeleteSchemaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DeleteSchemaResponse', name: 'DeleteSchemaResponse')
    DeleteTypedLinkFacetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DeleteTypedLinkFacetRequest', name: 'DeleteTypedLinkFacetRequest')
    DeleteTypedLinkFacetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DeleteTypedLinkFacetResponse', name: 'DeleteTypedLinkFacetResponse')
    DetachFromIndexRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DetachFromIndexRequest', name: 'DetachFromIndexRequest')
    DetachFromIndexResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DetachFromIndexResponse', name: 'DetachFromIndexResponse')
    DetachObjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DetachObjectRequest', name: 'DetachObjectRequest')
    DetachObjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DetachObjectResponse', name: 'DetachObjectResponse')
    DetachPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DetachPolicyRequest', name: 'DetachPolicyRequest')
    DetachPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DetachPolicyResponse', name: 'DetachPolicyResponse')
    DetachTypedLinkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DetachTypedLinkRequest', name: 'DetachTypedLinkRequest')
    Directory = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#Directory', name: 'Directory')
    DirectoryAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DirectoryAlreadyExistsException', name: 'DirectoryAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DirectoryArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#DirectoryArn', name: 'DirectoryArn')
    DirectoryDeletedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DirectoryDeletedException', name: 'DirectoryDeletedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DirectoryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#DirectoryList', name: 'DirectoryList')
    DirectoryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#DirectoryName', name: 'DirectoryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]*$"})
    DirectoryNotDisabledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DirectoryNotDisabledException', name: 'DirectoryNotDisabledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DirectoryNotEnabledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DirectoryNotEnabledException', name: 'DirectoryNotEnabledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DirectoryState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.clouddirectory#DirectoryState', name: 'DirectoryState')
    DisableDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DisableDirectoryRequest', name: 'DisableDirectoryRequest')
    DisableDirectoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#DisableDirectoryResponse', name: 'DisableDirectoryResponse')
    EnableDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#EnableDirectoryRequest', name: 'EnableDirectoryRequest')
    EnableDirectoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#EnableDirectoryResponse', name: 'EnableDirectoryResponse')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#ExceptionMessage', name: 'ExceptionMessage')
    Facet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#Facet', name: 'Facet')
    FacetAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#FacetAlreadyExistsException', name: 'FacetAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    FacetAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#FacetAttribute', name: 'FacetAttribute')
    FacetAttributeDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#FacetAttributeDefinition', name: 'FacetAttributeDefinition')
    FacetAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#FacetAttributeList', name: 'FacetAttributeList')
    FacetAttributeReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#FacetAttributeReference', name: 'FacetAttributeReference')
    FacetAttributeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.clouddirectory#FacetAttributeType', name: 'FacetAttributeType')
    FacetAttributeUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#FacetAttributeUpdate', name: 'FacetAttributeUpdate')
    FacetAttributeUpdateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#FacetAttributeUpdateList', name: 'FacetAttributeUpdateList')
    FacetInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#FacetInUseException', name: 'FacetInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    FacetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#FacetName', name: 'FacetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]*$"})
    FacetNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#FacetNameList', name: 'FacetNameList')
    FacetNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#FacetNotFoundException', name: 'FacetNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    FacetStyle = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.clouddirectory#FacetStyle', name: 'FacetStyle')
    FacetValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#FacetValidationException', name: 'FacetValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GetAppliedSchemaVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetAppliedSchemaVersionRequest', name: 'GetAppliedSchemaVersionRequest')
    GetAppliedSchemaVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetAppliedSchemaVersionResponse', name: 'GetAppliedSchemaVersionResponse')
    GetDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetDirectoryRequest', name: 'GetDirectoryRequest')
    GetDirectoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetDirectoryResponse', name: 'GetDirectoryResponse')
    GetFacetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetFacetRequest', name: 'GetFacetRequest')
    GetFacetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetFacetResponse', name: 'GetFacetResponse')
    GetLinkAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetLinkAttributesRequest', name: 'GetLinkAttributesRequest')
    GetLinkAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetLinkAttributesResponse', name: 'GetLinkAttributesResponse')
    GetObjectAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetObjectAttributesRequest', name: 'GetObjectAttributesRequest')
    GetObjectAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetObjectAttributesResponse', name: 'GetObjectAttributesResponse')
    GetObjectInformationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetObjectInformationRequest', name: 'GetObjectInformationRequest')
    GetObjectInformationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetObjectInformationResponse', name: 'GetObjectInformationResponse')
    GetSchemaAsJsonRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetSchemaAsJsonRequest', name: 'GetSchemaAsJsonRequest')
    GetSchemaAsJsonResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetSchemaAsJsonResponse', name: 'GetSchemaAsJsonResponse')
    GetTypedLinkFacetInformationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetTypedLinkFacetInformationRequest', name: 'GetTypedLinkFacetInformationRequest')
    GetTypedLinkFacetInformationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#GetTypedLinkFacetInformationResponse', name: 'GetTypedLinkFacetInformationResponse')
    IncompatibleSchemaException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#IncompatibleSchemaException', name: 'IncompatibleSchemaException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IndexAttachment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#IndexAttachment', name: 'IndexAttachment')
    IndexAttachmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#IndexAttachmentList', name: 'IndexAttachmentList')
    IndexedAttributeMissingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#IndexedAttributeMissingException', name: 'IndexedAttributeMissingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InternalServiceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#InternalServiceException', name: 'InternalServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidArnException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#InvalidArnException', name: 'InvalidArnException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidAttachmentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#InvalidAttachmentException', name: 'InvalidAttachmentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidFacetUpdateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#InvalidFacetUpdateException', name: 'InvalidFacetUpdateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRuleException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#InvalidRuleException', name: 'InvalidRuleException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSchemaDocException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#InvalidSchemaDocException', name: 'InvalidSchemaDocException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTaggingRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#InvalidTaggingRequestException', name: 'InvalidTaggingRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LinkAttributeAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#LinkAttributeAction', name: 'LinkAttributeAction')
    LinkAttributeUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#LinkAttributeUpdate', name: 'LinkAttributeUpdate')
    LinkAttributeUpdateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#LinkAttributeUpdateList', name: 'LinkAttributeUpdateList')
    LinkName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#LinkName', name: 'LinkName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[^\\/\\[\\]\\(\\):\\{\\}\#@!?\\s\\\\;]+$"})
    LinkNameAlreadyInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#LinkNameAlreadyInUseException', name: 'LinkNameAlreadyInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LinkNameToObjectIdentifierMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.clouddirectory#LinkNameToObjectIdentifierMap', name: 'LinkNameToObjectIdentifierMap')
    ListAppliedSchemaArnsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListAppliedSchemaArnsRequest', name: 'ListAppliedSchemaArnsRequest')
    ListAppliedSchemaArnsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListAppliedSchemaArnsResponse', name: 'ListAppliedSchemaArnsResponse')
    ListAttachedIndicesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListAttachedIndicesRequest', name: 'ListAttachedIndicesRequest')
    ListAttachedIndicesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListAttachedIndicesResponse', name: 'ListAttachedIndicesResponse')
    ListDevelopmentSchemaArnsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListDevelopmentSchemaArnsRequest', name: 'ListDevelopmentSchemaArnsRequest')
    ListDevelopmentSchemaArnsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListDevelopmentSchemaArnsResponse', name: 'ListDevelopmentSchemaArnsResponse')
    ListDirectoriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListDirectoriesRequest', name: 'ListDirectoriesRequest')
    ListDirectoriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListDirectoriesResponse', name: 'ListDirectoriesResponse')
    ListFacetAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListFacetAttributesRequest', name: 'ListFacetAttributesRequest')
    ListFacetAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListFacetAttributesResponse', name: 'ListFacetAttributesResponse')
    ListFacetNamesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListFacetNamesRequest', name: 'ListFacetNamesRequest')
    ListFacetNamesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListFacetNamesResponse', name: 'ListFacetNamesResponse')
    ListIncomingTypedLinksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListIncomingTypedLinksRequest', name: 'ListIncomingTypedLinksRequest')
    ListIncomingTypedLinksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListIncomingTypedLinksResponse', name: 'ListIncomingTypedLinksResponse')
    ListIndexRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListIndexRequest', name: 'ListIndexRequest')
    ListIndexResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListIndexResponse', name: 'ListIndexResponse')
    ListManagedSchemaArnsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListManagedSchemaArnsRequest', name: 'ListManagedSchemaArnsRequest')
    ListManagedSchemaArnsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListManagedSchemaArnsResponse', name: 'ListManagedSchemaArnsResponse')
    ListObjectAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListObjectAttributesRequest', name: 'ListObjectAttributesRequest')
    ListObjectAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListObjectAttributesResponse', name: 'ListObjectAttributesResponse')
    ListObjectChildrenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListObjectChildrenRequest', name: 'ListObjectChildrenRequest')
    ListObjectChildrenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListObjectChildrenResponse', name: 'ListObjectChildrenResponse')
    ListObjectParentPathsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListObjectParentPathsRequest', name: 'ListObjectParentPathsRequest')
    ListObjectParentPathsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListObjectParentPathsResponse', name: 'ListObjectParentPathsResponse')
    ListObjectParentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListObjectParentsRequest', name: 'ListObjectParentsRequest')
    ListObjectParentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListObjectParentsResponse', name: 'ListObjectParentsResponse')
    ListObjectPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListObjectPoliciesRequest', name: 'ListObjectPoliciesRequest')
    ListObjectPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListObjectPoliciesResponse', name: 'ListObjectPoliciesResponse')
    ListOutgoingTypedLinksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListOutgoingTypedLinksRequest', name: 'ListOutgoingTypedLinksRequest')
    ListOutgoingTypedLinksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListOutgoingTypedLinksResponse', name: 'ListOutgoingTypedLinksResponse')
    ListPolicyAttachmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListPolicyAttachmentsRequest', name: 'ListPolicyAttachmentsRequest')
    ListPolicyAttachmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListPolicyAttachmentsResponse', name: 'ListPolicyAttachmentsResponse')
    ListPublishedSchemaArnsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListPublishedSchemaArnsRequest', name: 'ListPublishedSchemaArnsRequest')
    ListPublishedSchemaArnsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListPublishedSchemaArnsResponse', name: 'ListPublishedSchemaArnsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTypedLinkFacetAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListTypedLinkFacetAttributesRequest', name: 'ListTypedLinkFacetAttributesRequest')
    ListTypedLinkFacetAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListTypedLinkFacetAttributesResponse', name: 'ListTypedLinkFacetAttributesResponse')
    ListTypedLinkFacetNamesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListTypedLinkFacetNamesRequest', name: 'ListTypedLinkFacetNamesRequest')
    ListTypedLinkFacetNamesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ListTypedLinkFacetNamesResponse', name: 'ListTypedLinkFacetNamesResponse')
    LookupPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#LookupPolicyRequest', name: 'LookupPolicyRequest')
    LookupPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#LookupPolicyResponse', name: 'LookupPolicyResponse')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#NextToken', name: 'NextToken')
    NotIndexException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#NotIndexException', name: 'NotIndexException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NotNodeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#NotNodeException', name: 'NotNodeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NotPolicyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#NotPolicyException', name: 'NotPolicyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NumberAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#NumberAttributeValue', name: 'NumberAttributeValue')
    NumberResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.clouddirectory#NumberResults', name: 'NumberResults', traits: {"smithy.api#range" => {"min" => 1}})
    ObjectAlreadyDetachedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ObjectAlreadyDetachedException', name: 'ObjectAlreadyDetachedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ObjectAttributeAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ObjectAttributeAction', name: 'ObjectAttributeAction')
    ObjectAttributeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ObjectAttributeRange', name: 'ObjectAttributeRange')
    ObjectAttributeRangeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#ObjectAttributeRangeList', name: 'ObjectAttributeRangeList')
    ObjectAttributeUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ObjectAttributeUpdate', name: 'ObjectAttributeUpdate')
    ObjectAttributeUpdateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#ObjectAttributeUpdateList', name: 'ObjectAttributeUpdateList')
    ObjectIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#ObjectIdentifier', name: 'ObjectIdentifier')
    ObjectIdentifierAndLinkNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#ObjectIdentifierAndLinkNameList', name: 'ObjectIdentifierAndLinkNameList')
    ObjectIdentifierAndLinkNameTuple = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ObjectIdentifierAndLinkNameTuple', name: 'ObjectIdentifierAndLinkNameTuple')
    ObjectIdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#ObjectIdentifierList', name: 'ObjectIdentifierList')
    ObjectIdentifierToLinkNameMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.clouddirectory#ObjectIdentifierToLinkNameMap', name: 'ObjectIdentifierToLinkNameMap')
    ObjectNotDetachedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ObjectNotDetachedException', name: 'ObjectNotDetachedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ObjectReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ObjectReference', name: 'ObjectReference')
    ObjectType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.clouddirectory#ObjectType', name: 'ObjectType')
    PathString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#PathString', name: 'PathString')
    PathToObjectIdentifiers = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#PathToObjectIdentifiers', name: 'PathToObjectIdentifiers')
    PathToObjectIdentifiersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#PathToObjectIdentifiersList', name: 'PathToObjectIdentifiersList')
    PolicyAttachment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#PolicyAttachment', name: 'PolicyAttachment')
    PolicyAttachmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#PolicyAttachmentList', name: 'PolicyAttachmentList')
    PolicyToPath = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#PolicyToPath', name: 'PolicyToPath')
    PolicyToPathList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#PolicyToPathList', name: 'PolicyToPathList')
    PolicyType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#PolicyType', name: 'PolicyType')
    PublishSchemaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#PublishSchemaRequest', name: 'PublishSchemaRequest')
    PublishSchemaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#PublishSchemaResponse', name: 'PublishSchemaResponse')
    PutSchemaFromJsonRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#PutSchemaFromJsonRequest', name: 'PutSchemaFromJsonRequest')
    PutSchemaFromJsonResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#PutSchemaFromJsonResponse', name: 'PutSchemaFromJsonResponse')
    RangeMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.clouddirectory#RangeMode', name: 'RangeMode')
    RemoveFacetFromObjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#RemoveFacetFromObjectRequest', name: 'RemoveFacetFromObjectRequest')
    RemoveFacetFromObjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#RemoveFacetFromObjectResponse', name: 'RemoveFacetFromObjectResponse')
    RequiredAttributeBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.clouddirectory#RequiredAttributeBehavior', name: 'RequiredAttributeBehavior')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryableConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#RetryableConflictException', name: 'RetryableConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Rule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#Rule', name: 'Rule')
    RuleKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#RuleKey', name: 'RuleKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]*$"})
    RuleMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.clouddirectory#RuleMap', name: 'RuleMap')
    RuleParameterKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#RuleParameterKey', name: 'RuleParameterKey')
    RuleParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.clouddirectory#RuleParameterMap', name: 'RuleParameterMap')
    RuleParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#RuleParameterValue', name: 'RuleParameterValue')
    RuleType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.clouddirectory#RuleType', name: 'RuleType')
    SchemaAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#SchemaAlreadyExistsException', name: 'SchemaAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SchemaAlreadyPublishedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#SchemaAlreadyPublishedException', name: 'SchemaAlreadyPublishedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SchemaFacet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#SchemaFacet', name: 'SchemaFacet')
    SchemaFacetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#SchemaFacetList', name: 'SchemaFacetList')
    SchemaJsonDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#SchemaJsonDocument', name: 'SchemaJsonDocument')
    SchemaName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#SchemaName', name: 'SchemaName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]*$"})
    SelectorObjectReference = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#SelectorObjectReference', name: 'SelectorObjectReference')
    StillContainsLinksException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#StillContainsLinksException', name: 'StillContainsLinksException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StringAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#StringAttributeValue', name: 'StringAttributeValue')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#TagKey', name: 'TagKey')
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#TagList', name: 'TagList')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#TagValue', name: 'TagValue')
    TagsNumberResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.clouddirectory#TagsNumberResults', name: 'TagsNumberResults', traits: {"smithy.api#range" => {"min" => 50}})
    TypedAttributeValue = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.clouddirectory#TypedAttributeValue', name: 'TypedAttributeValue')
    TypedAttributeValueRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#TypedAttributeValueRange', name: 'TypedAttributeValueRange')
    TypedLinkAttributeDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#TypedLinkAttributeDefinition', name: 'TypedLinkAttributeDefinition')
    TypedLinkAttributeDefinitionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#TypedLinkAttributeDefinitionList', name: 'TypedLinkAttributeDefinitionList')
    TypedLinkAttributeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#TypedLinkAttributeRange', name: 'TypedLinkAttributeRange')
    TypedLinkAttributeRangeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#TypedLinkAttributeRangeList', name: 'TypedLinkAttributeRangeList')
    TypedLinkFacet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#TypedLinkFacet', name: 'TypedLinkFacet')
    TypedLinkFacetAttributeUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#TypedLinkFacetAttributeUpdate', name: 'TypedLinkFacetAttributeUpdate')
    TypedLinkFacetAttributeUpdateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#TypedLinkFacetAttributeUpdateList', name: 'TypedLinkFacetAttributeUpdateList')
    TypedLinkName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#TypedLinkName', name: 'TypedLinkName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9._-]*$"})
    TypedLinkNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#TypedLinkNameList', name: 'TypedLinkNameList')
    TypedLinkSchemaAndFacetName = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#TypedLinkSchemaAndFacetName', name: 'TypedLinkSchemaAndFacetName')
    TypedLinkSpecifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#TypedLinkSpecifier', name: 'TypedLinkSpecifier')
    TypedLinkSpecifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.clouddirectory#TypedLinkSpecifierList', name: 'TypedLinkSpecifierList')
    UnsupportedIndexTypeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UnsupportedIndexTypeException', name: 'UnsupportedIndexTypeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.clouddirectory#UpdateActionType', name: 'UpdateActionType')
    UpdateFacetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UpdateFacetRequest', name: 'UpdateFacetRequest')
    UpdateFacetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UpdateFacetResponse', name: 'UpdateFacetResponse')
    UpdateLinkAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UpdateLinkAttributesRequest', name: 'UpdateLinkAttributesRequest')
    UpdateLinkAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UpdateLinkAttributesResponse', name: 'UpdateLinkAttributesResponse')
    UpdateObjectAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UpdateObjectAttributesRequest', name: 'UpdateObjectAttributesRequest')
    UpdateObjectAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UpdateObjectAttributesResponse', name: 'UpdateObjectAttributesResponse')
    UpdateSchemaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UpdateSchemaRequest', name: 'UpdateSchemaRequest')
    UpdateSchemaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UpdateSchemaResponse', name: 'UpdateSchemaResponse')
    UpdateTypedLinkFacetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UpdateTypedLinkFacetRequest', name: 'UpdateTypedLinkFacetRequest')
    UpdateTypedLinkFacetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UpdateTypedLinkFacetResponse', name: 'UpdateTypedLinkFacetResponse')
    UpgradeAppliedSchemaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UpgradeAppliedSchemaRequest', name: 'UpgradeAppliedSchemaRequest')
    UpgradeAppliedSchemaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UpgradeAppliedSchemaResponse', name: 'UpgradeAppliedSchemaResponse')
    UpgradePublishedSchemaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UpgradePublishedSchemaRequest', name: 'UpgradePublishedSchemaRequest')
    UpgradePublishedSchemaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#UpgradePublishedSchemaResponse', name: 'UpgradePublishedSchemaResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.clouddirectory#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Version = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.clouddirectory#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]*$"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AddFacetToObjectRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>\n      where the object resides. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    AddFacetToObjectRequest.add_member(:schema_facet, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaFacet, location_name: 'SchemaFacet', traits: {"smithy.api#documentation" => "<p>Identifiers for the facet that you are adding to the object. See <a>SchemaFacet</a> for details.</p>", "smithy.api#required" => {}}))
    AddFacetToObjectRequest.add_member(:object_attribute_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: 'ObjectAttributeList', traits: {"smithy.api#documentation" => "<p>Attributes on the facet that you are adding to the object.</p>"}))
    AddFacetToObjectRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>A reference to the object you are adding the specified facet to.</p>", "smithy.api#required" => {}}))
    AddFacetToObjectRequest.type = Types::AddFacetToObjectRequest
    AddFacetToObjectResponse.type = Types::AddFacetToObjectResponse
    ApplySchemaRequest.add_member(:published_schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'PublishedSchemaArn', traits: {"smithy.api#documentation" => "<p>Published schema Amazon Resource Name (ARN) that needs to be copied. For more\n      information, see <a>arns</a>.</p>", "smithy.api#required" => {}}))
    ApplySchemaRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>\n      into which the schema is copied. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ApplySchemaRequest.type = Types::ApplySchemaRequest
    ApplySchemaResponse.add_member(:applied_schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AppliedSchemaArn', traits: {"smithy.api#documentation" => "<p>The applied schema ARN that is associated with the copied schema in the <a>Directory</a>. You can use this ARN to describe the schema information applied on\n      this directory. For more information, see <a>arns</a>.</p>"}))
    ApplySchemaResponse.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN that is associated with the <a>Directory</a>. For more information,\n      see <a>arns</a>.</p>"}))
    ApplySchemaResponse.type = Types::ApplySchemaResponse
    Arns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    AttachObjectRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) that is associated with the <a>Directory</a>\n      where both objects reside. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    AttachObjectRequest.add_member(:parent_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ParentReference', traits: {"smithy.api#documentation" => "<p>The parent object reference.</p>", "smithy.api#required" => {}}))
    AttachObjectRequest.add_member(:child_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ChildReference', traits: {"smithy.api#documentation" => "<p>The child object reference to be attached to the object.</p>", "smithy.api#required" => {}}))
    AttachObjectRequest.add_member(:link_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkName, location_name: 'LinkName', traits: {"smithy.api#documentation" => "<p>The link name with which the child object is attached to the parent.</p>", "smithy.api#required" => {}}))
    AttachObjectRequest.type = Types::AttachObjectRequest
    AttachObjectResponse.add_member(:attached_object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'AttachedObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The attached <code>ObjectIdentifier</code>, which is the child\n        <code>ObjectIdentifier</code>.</p>"}))
    AttachObjectResponse.type = Types::AttachObjectResponse
    AttachPolicyRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>\n      where both objects reside. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    AttachPolicyRequest.add_member(:policy_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'PolicyReference', traits: {"smithy.api#documentation" => "<p>The reference that is associated with the policy object.</p>", "smithy.api#required" => {}}))
    AttachPolicyRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>The reference that identifies the object to which the policy will be\n      attached.</p>", "smithy.api#required" => {}}))
    AttachPolicyRequest.type = Types::AttachPolicyRequest
    AttachPolicyResponse.type = Types::AttachPolicyResponse
    AttachToIndexRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the directory where the object and index\n      exist.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    AttachToIndexRequest.add_member(:index_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'IndexReference', traits: {"smithy.api#documentation" => "<p>A reference to the index that you are attaching the object to.</p>", "smithy.api#required" => {}}))
    AttachToIndexRequest.add_member(:target_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'TargetReference', traits: {"smithy.api#documentation" => "<p>A reference to the object that you are attaching to the index.</p>", "smithy.api#required" => {}}))
    AttachToIndexRequest.type = Types::AttachToIndexRequest
    AttachToIndexResponse.add_member(:attached_object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'AttachedObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>ObjectIdentifier</code> of the object that was attached to the index.</p>"}))
    AttachToIndexResponse.type = Types::AttachToIndexResponse
    AttachTypedLinkRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the directory where you want to attach the typed\n      link.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    AttachTypedLinkRequest.add_member(:source_object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'SourceObjectReference', traits: {"smithy.api#documentation" => "<p>Identifies the source object that the typed link will attach to.</p>", "smithy.api#required" => {}}))
    AttachTypedLinkRequest.add_member(:target_object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'TargetObjectReference', traits: {"smithy.api#documentation" => "<p>Identifies the target object that the typed link will attach to.</p>", "smithy.api#required" => {}}))
    AttachTypedLinkRequest.add_member(:typed_link_facet, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSchemaAndFacetName, location_name: 'TypedLinkFacet', traits: {"smithy.api#documentation" => "<p>Identifies the typed link facet that is associated with the typed link.</p>", "smithy.api#required" => {}}))
    AttachTypedLinkRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameAndValueList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>A set of attributes that are associated with the typed link.</p>", "smithy.api#required" => {}}))
    AttachTypedLinkRequest.type = Types::AttachTypedLinkRequest
    AttachTypedLinkResponse.add_member(:typed_link_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSpecifier, location_name: 'TypedLinkSpecifier', traits: {"smithy.api#documentation" => "<p>Returns a typed link specifier as output.</p>"}))
    AttachTypedLinkResponse.type = Types::AttachTypedLinkResponse
    AttributeKey.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the schema that contains the facet and\n      attribute.</p>", "smithy.api#required" => {}}))
    AttributeKey.add_member(:facet_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetName, location_name: 'FacetName', traits: {"smithy.api#documentation" => "<p>The name of the facet that the attribute exists within.</p>", "smithy.api#required" => {}}))
    AttributeKey.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute.</p>", "smithy.api#required" => {}}))
    AttributeKey.type = Types::AttributeKey
    AttributeKeyAndValue.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key of the attribute.</p>", "smithy.api#required" => {}}))
    AttributeKeyAndValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedAttributeValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the attribute.</p>", "smithy.api#required" => {}}))
    AttributeKeyAndValue.type = Types::AttributeKeyAndValue
    AttributeKeyAndValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKeyAndValue)
    AttributeKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey)
    AttributeNameAndValue.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'AttributeName', traits: {"smithy.api#documentation" => "<p>The attribute name of the typed link.</p>", "smithy.api#required" => {}}))
    AttributeNameAndValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedAttributeValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value for the typed link.</p>", "smithy.api#required" => {}}))
    AttributeNameAndValue.type = Types::AttributeNameAndValue
    AttributeNameAndValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameAndValue)
    AttributeNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    BatchAddFacetToObject.add_member(:schema_facet, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaFacet, location_name: 'SchemaFacet', traits: {"smithy.api#documentation" => "<p>Represents the facet being added to the object.</p>", "smithy.api#required" => {}}))
    BatchAddFacetToObject.add_member(:object_attribute_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: 'ObjectAttributeList', traits: {"smithy.api#documentation" => "<p>The attributes to set on the object.</p>", "smithy.api#required" => {}}))
    BatchAddFacetToObject.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>A reference to the object being mutated.</p>", "smithy.api#required" => {}}))
    BatchAddFacetToObject.type = Types::BatchAddFacetToObject
    BatchAddFacetToObjectResponse.type = Types::BatchAddFacetToObjectResponse
    BatchAttachObject.add_member(:parent_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ParentReference', traits: {"smithy.api#documentation" => "<p>The parent object reference.</p>", "smithy.api#required" => {}}))
    BatchAttachObject.add_member(:child_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ChildReference', traits: {"smithy.api#documentation" => "<p>The child object reference that is to be attached to the object.</p>", "smithy.api#required" => {}}))
    BatchAttachObject.add_member(:link_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkName, location_name: 'LinkName', traits: {"smithy.api#documentation" => "<p>The name of the link.</p>", "smithy.api#required" => {}}))
    BatchAttachObject.type = Types::BatchAttachObject
    BatchAttachObjectResponse.add_member(:attached_object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'attachedObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>ObjectIdentifier</code> of the object that has been attached.</p>"}))
    BatchAttachObjectResponse.type = Types::BatchAttachObjectResponse
    BatchAttachPolicy.add_member(:policy_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'PolicyReference', traits: {"smithy.api#documentation" => "<p>The reference that is associated with the policy object.</p>", "smithy.api#required" => {}}))
    BatchAttachPolicy.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>The reference that identifies the object to which the policy will be\n       attached.</p>", "smithy.api#required" => {}}))
    BatchAttachPolicy.type = Types::BatchAttachPolicy
    BatchAttachPolicyResponse.type = Types::BatchAttachPolicyResponse
    BatchAttachToIndex.add_member(:index_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'IndexReference', traits: {"smithy.api#documentation" => "<p>A reference to the index that you are attaching the object to.</p>", "smithy.api#required" => {}}))
    BatchAttachToIndex.add_member(:target_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'TargetReference', traits: {"smithy.api#documentation" => "<p>A reference to the object that you are attaching to the index.</p>", "smithy.api#required" => {}}))
    BatchAttachToIndex.type = Types::BatchAttachToIndex
    BatchAttachToIndexResponse.add_member(:attached_object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'AttachedObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>ObjectIdentifier</code> of the object that was attached to the index.</p>"}))
    BatchAttachToIndexResponse.type = Types::BatchAttachToIndexResponse
    BatchAttachTypedLink.add_member(:source_object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'SourceObjectReference', traits: {"smithy.api#documentation" => "<p>Identifies the source object that the typed link will attach to.</p>", "smithy.api#required" => {}}))
    BatchAttachTypedLink.add_member(:target_object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'TargetObjectReference', traits: {"smithy.api#documentation" => "<p>Identifies the target object that the typed link will attach to.</p>", "smithy.api#required" => {}}))
    BatchAttachTypedLink.add_member(:typed_link_facet, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSchemaAndFacetName, location_name: 'TypedLinkFacet', traits: {"smithy.api#documentation" => "<p>Identifies the typed link facet that is associated with the typed link.</p>", "smithy.api#required" => {}}))
    BatchAttachTypedLink.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameAndValueList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>A set of attributes that are associated with the typed link.</p>", "smithy.api#required" => {}}))
    BatchAttachTypedLink.type = Types::BatchAttachTypedLink
    BatchAttachTypedLinkResponse.add_member(:typed_link_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSpecifier, location_name: 'TypedLinkSpecifier', traits: {"smithy.api#documentation" => "<p>Returns a typed link specifier as output.</p>"}))
    BatchAttachTypedLinkResponse.type = Types::BatchAttachTypedLinkResponse
    BatchCreateIndex.add_member(:ordered_indexed_attribute_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKeyList, location_name: 'OrderedIndexedAttributeList', traits: {"smithy.api#documentation" => "<p>Specifies the attributes that should be indexed on. Currently only a single attribute\n       is supported.</p>", "smithy.api#required" => {}}))
    BatchCreateIndex.add_member(:is_unique, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'IsUnique', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the attribute that is being indexed has unique values or\n       not.</p>", "smithy.api#required" => {}}))
    BatchCreateIndex.add_member(:parent_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ParentReference', traits: {"smithy.api#documentation" => "<p>A reference to the parent object that contains the index object.</p>"}))
    BatchCreateIndex.add_member(:link_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkName, location_name: 'LinkName', traits: {"smithy.api#documentation" => "<p>The name of the link between the parent object and the index object.</p>"}))
    BatchCreateIndex.add_member(:batch_reference_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchReferenceName, location_name: 'BatchReferenceName', traits: {"smithy.api#documentation" => "<p>The batch reference name. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html\">Transaction Support</a> for more information.</p>"}))
    BatchCreateIndex.type = Types::BatchCreateIndex
    BatchCreateIndexResponse.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>ObjectIdentifier</code> of the index created by this operation.</p>"}))
    BatchCreateIndexResponse.type = Types::BatchCreateIndexResponse
    BatchCreateObject.add_member(:schema_facet, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaFacetList, location_name: 'SchemaFacet', traits: {"smithy.api#documentation" => "<p>A list of <code>FacetArns</code> that will be associated with the object. For more\n      information, see <a>arns</a>.</p>", "smithy.api#required" => {}}))
    BatchCreateObject.add_member(:object_attribute_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: 'ObjectAttributeList', traits: {"smithy.api#documentation" => "<p>An attribute map, which contains an attribute ARN as the key and attribute value as\n      the map value.</p>", "smithy.api#required" => {}}))
    BatchCreateObject.add_member(:parent_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ParentReference', traits: {"smithy.api#documentation" => "<p>If specified, the parent reference to which this object will be attached.</p>"}))
    BatchCreateObject.add_member(:link_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkName, location_name: 'LinkName', traits: {"smithy.api#documentation" => "<p>The name of the link.</p>"}))
    BatchCreateObject.add_member(:batch_reference_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchReferenceName, location_name: 'BatchReferenceName', traits: {"smithy.api#documentation" => "<p>The batch reference name. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html\">Transaction Support</a> for more information.</p>"}))
    BatchCreateObject.type = Types::BatchCreateObject
    BatchCreateObjectResponse.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The ID that is associated with the object.</p>"}))
    BatchCreateObjectResponse.type = Types::BatchCreateObjectResponse
    BatchDeleteObject.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>The reference that identifies the object.</p>", "smithy.api#required" => {}}))
    BatchDeleteObject.type = Types::BatchDeleteObject
    BatchDeleteObjectResponse.type = Types::BatchDeleteObjectResponse
    BatchDetachFromIndex.add_member(:index_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'IndexReference', traits: {"smithy.api#documentation" => "<p>A reference to the index object.</p>", "smithy.api#required" => {}}))
    BatchDetachFromIndex.add_member(:target_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'TargetReference', traits: {"smithy.api#documentation" => "<p>A reference to the object being detached from the index.</p>", "smithy.api#required" => {}}))
    BatchDetachFromIndex.type = Types::BatchDetachFromIndex
    BatchDetachFromIndexResponse.add_member(:detached_object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'DetachedObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>ObjectIdentifier</code> of the object that was detached from the index.</p>"}))
    BatchDetachFromIndexResponse.type = Types::BatchDetachFromIndexResponse
    BatchDetachObject.add_member(:parent_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ParentReference', traits: {"smithy.api#documentation" => "<p>Parent reference from which the object with the specified link name is\n      detached.</p>", "smithy.api#required" => {}}))
    BatchDetachObject.add_member(:link_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkName, location_name: 'LinkName', traits: {"smithy.api#documentation" => "<p>The name of the link.</p>", "smithy.api#required" => {}}))
    BatchDetachObject.add_member(:batch_reference_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchReferenceName, location_name: 'BatchReferenceName', traits: {"smithy.api#documentation" => "<p>The batch reference name. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html\">Transaction Support</a> for more information.</p>"}))
    BatchDetachObject.type = Types::BatchDetachObject
    BatchDetachObjectResponse.add_member(:detached_object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'detachedObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>ObjectIdentifier</code> of the detached object.</p>"}))
    BatchDetachObjectResponse.type = Types::BatchDetachObjectResponse
    BatchDetachPolicy.add_member(:policy_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'PolicyReference', traits: {"smithy.api#documentation" => "<p>Reference that identifies the policy object.</p>", "smithy.api#required" => {}}))
    BatchDetachPolicy.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>Reference that identifies the object whose policy object will be detached.</p>", "smithy.api#required" => {}}))
    BatchDetachPolicy.type = Types::BatchDetachPolicy
    BatchDetachPolicyResponse.type = Types::BatchDetachPolicyResponse
    BatchDetachTypedLink.add_member(:typed_link_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSpecifier, location_name: 'TypedLinkSpecifier', traits: {"smithy.api#documentation" => "<p>Used to accept a typed link specifier as input.</p>", "smithy.api#required" => {}}))
    BatchDetachTypedLink.type = Types::BatchDetachTypedLink
    BatchDetachTypedLinkResponse.type = Types::BatchDetachTypedLinkResponse
    BatchGetLinkAttributes.add_member(:typed_link_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSpecifier, location_name: 'TypedLinkSpecifier', traits: {"smithy.api#documentation" => "<p>Allows a typed link specifier to be accepted as input.</p>", "smithy.api#required" => {}}))
    BatchGetLinkAttributes.add_member(:attribute_names, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: 'AttributeNames', traits: {"smithy.api#documentation" => "<p>A list of attribute names whose values will be retrieved.</p>", "smithy.api#required" => {}}))
    BatchGetLinkAttributes.type = Types::BatchGetLinkAttributes
    BatchGetLinkAttributesResponse.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>The attributes that are associated with the typed link.</p>"}))
    BatchGetLinkAttributesResponse.type = Types::BatchGetLinkAttributesResponse
    BatchGetObjectAttributes.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>Reference that identifies the object whose attributes will be retrieved.</p>", "smithy.api#required" => {}}))
    BatchGetObjectAttributes.add_member(:schema_facet, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaFacet, location_name: 'SchemaFacet', traits: {"smithy.api#documentation" => "<p>Identifier for the facet whose attributes will be retrieved. See <a>SchemaFacet</a> for details.</p>", "smithy.api#required" => {}}))
    BatchGetObjectAttributes.add_member(:attribute_names, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: 'AttributeNames', traits: {"smithy.api#documentation" => "<p>List of attribute names whose values will be retrieved.</p>", "smithy.api#required" => {}}))
    BatchGetObjectAttributes.type = Types::BatchGetObjectAttributes
    BatchGetObjectAttributesResponse.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>The attribute values that are associated with an object.</p>"}))
    BatchGetObjectAttributesResponse.type = Types::BatchGetObjectAttributesResponse
    BatchGetObjectInformation.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>A reference to the object.</p>", "smithy.api#required" => {}}))
    BatchGetObjectInformation.type = Types::BatchGetObjectInformation
    BatchGetObjectInformationResponse.add_member(:schema_facets, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaFacetList, location_name: 'SchemaFacets', traits: {"smithy.api#documentation" => "<p>The facets attached to the specified object.</p>"}))
    BatchGetObjectInformationResponse.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>ObjectIdentifier</code> of the specified object.</p>"}))
    BatchGetObjectInformationResponse.type = Types::BatchGetObjectInformationResponse
    BatchListAttachedIndices.add_member(:target_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'TargetReference', traits: {"smithy.api#documentation" => "<p>A reference to the object that has indices attached.</p>", "smithy.api#required" => {}}))
    BatchListAttachedIndices.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListAttachedIndices.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    BatchListAttachedIndices.type = Types::BatchListAttachedIndices
    BatchListAttachedIndicesResponse.add_member(:index_attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexAttachmentList, location_name: 'IndexAttachments', traits: {"smithy.api#documentation" => "<p>The indices attached to the specified object.</p>"}))
    BatchListAttachedIndicesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListAttachedIndicesResponse.type = Types::BatchListAttachedIndicesResponse
    BatchListIncomingTypedLinks.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>The reference that identifies the object whose attributes will be listed.</p>", "smithy.api#required" => {}}))
    BatchListIncomingTypedLinks.add_member(:filter_attribute_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkAttributeRangeList, location_name: 'FilterAttributeRanges', traits: {"smithy.api#documentation" => "<p>Provides range filters for multiple attributes. When providing ranges to typed link\n       selection, any inexact ranges must be specified at the end. Any attributes that do not have a\n       range specified are presumed to match the entire range.</p>"}))
    BatchListIncomingTypedLinks.add_member(:filter_typed_link, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSchemaAndFacetName, location_name: 'FilterTypedLink', traits: {"smithy.api#documentation" => "<p>Filters are interpreted in the order of the attributes on the typed link facet, not the\n       order in which they are supplied to any API calls.</p>"}))
    BatchListIncomingTypedLinks.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListIncomingTypedLinks.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    BatchListIncomingTypedLinks.type = Types::BatchListIncomingTypedLinks
    BatchListIncomingTypedLinksResponse.add_member(:link_specifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSpecifierList, location_name: 'LinkSpecifiers', traits: {"smithy.api#documentation" => "<p>Returns one or more typed link specifiers as output.</p>"}))
    BatchListIncomingTypedLinksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListIncomingTypedLinksResponse.type = Types::BatchListIncomingTypedLinksResponse
    BatchListIndex.add_member(:ranges_on_indexed_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectAttributeRangeList, location_name: 'RangesOnIndexedValues', traits: {"smithy.api#documentation" => "<p>Specifies the ranges of indexed values that you want to query.</p>"}))
    BatchListIndex.add_member(:index_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'IndexReference', traits: {"smithy.api#documentation" => "<p>The reference to the index to list.</p>", "smithy.api#required" => {}}))
    BatchListIndex.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    BatchListIndex.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListIndex.type = Types::BatchListIndex
    BatchListIndexResponse.add_member(:index_attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexAttachmentList, location_name: 'IndexAttachments', traits: {"smithy.api#documentation" => "<p>The objects and indexed values attached to the index.</p>"}))
    BatchListIndexResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListIndexResponse.type = Types::BatchListIndexResponse
    BatchListObjectAttributes.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>Reference of the object whose attributes need to be listed.</p>", "smithy.api#required" => {}}))
    BatchListObjectAttributes.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListObjectAttributes.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to be retrieved in a single call. This is an approximate\n      number.</p>"}))
    BatchListObjectAttributes.add_member(:facet_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaFacet, location_name: 'FacetFilter', traits: {"smithy.api#documentation" => "<p>Used to filter the list of object attributes that are associated with a certain\n      facet.</p>"}))
    BatchListObjectAttributes.type = Types::BatchListObjectAttributes
    BatchListObjectAttributesResponse.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>The attributes map that is associated with the object. <code>AttributeArn</code> is the\n      key; attribute value is the value.</p>"}))
    BatchListObjectAttributesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListObjectAttributesResponse.type = Types::BatchListObjectAttributesResponse
    BatchListObjectChildren.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>Reference of the object for which child objects are being listed.</p>", "smithy.api#required" => {}}))
    BatchListObjectChildren.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListObjectChildren.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of items to be retrieved in a single call. This is an approximate\n       number.</p>"}))
    BatchListObjectChildren.type = Types::BatchListObjectChildren
    BatchListObjectChildrenResponse.add_member(:children, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkNameToObjectIdentifierMap, location_name: 'Children', traits: {"smithy.api#documentation" => "<p>The children structure, which is a map with the key as the <code>LinkName</code> and\n        <code>ObjectIdentifier</code> as the value.</p>"}))
    BatchListObjectChildrenResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListObjectChildrenResponse.type = Types::BatchListObjectChildrenResponse
    BatchListObjectParentPaths.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>The reference that identifies the object whose attributes will be listed.</p>", "smithy.api#required" => {}}))
    BatchListObjectParentPaths.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListObjectParentPaths.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    BatchListObjectParentPaths.type = Types::BatchListObjectParentPaths
    BatchListObjectParentPathsResponse.add_member(:path_to_object_identifiers_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PathToObjectIdentifiersList, location_name: 'PathToObjectIdentifiersList', traits: {"smithy.api#documentation" => "<p>Returns the path to the <code>ObjectIdentifiers</code> that are associated with the\n       directory.</p>"}))
    BatchListObjectParentPathsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListObjectParentPathsResponse.type = Types::BatchListObjectParentPathsResponse
    BatchListObjectParents.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#required" => {}}))
    BatchListObjectParents.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListObjectParents.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to be retrieved in a single call. This is an approximate\n      number.</p>"}))
    BatchListObjectParents.type = Types::BatchListObjectParents
    BatchListObjectParentsResponse.add_member(:parent_links, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifierAndLinkNameList, location_name: 'ParentLinks', traits: {"smithy.api#documentation" => "<p>Returns a list of parent reference and LinkName Tuples.</p>"}))
    BatchListObjectParentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListObjectParentsResponse.type = Types::BatchListObjectParentsResponse
    BatchListObjectPolicies.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>The reference that identifies the object whose attributes will be listed.</p>", "smithy.api#required" => {}}))
    BatchListObjectPolicies.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListObjectPolicies.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    BatchListObjectPolicies.type = Types::BatchListObjectPolicies
    BatchListObjectPoliciesResponse.add_member(:attached_policy_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifierList, location_name: 'AttachedPolicyIds', traits: {"smithy.api#documentation" => "<p>A list of policy <code>ObjectIdentifiers</code>, that are attached to the\n       object.</p>"}))
    BatchListObjectPoliciesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListObjectPoliciesResponse.type = Types::BatchListObjectPoliciesResponse
    BatchListOutgoingTypedLinks.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>The reference that identifies the object whose attributes will be listed.</p>", "smithy.api#required" => {}}))
    BatchListOutgoingTypedLinks.add_member(:filter_attribute_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkAttributeRangeList, location_name: 'FilterAttributeRanges', traits: {"smithy.api#documentation" => "<p>Provides range filters for multiple attributes. When providing ranges to typed link\n       selection, any inexact ranges must be specified at the end. Any attributes that do not have a\n       range specified are presumed to match the entire range.</p>"}))
    BatchListOutgoingTypedLinks.add_member(:filter_typed_link, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSchemaAndFacetName, location_name: 'FilterTypedLink', traits: {"smithy.api#documentation" => "<p>Filters are interpreted in the order of the attributes defined on the typed link facet,\n       not the order they are supplied to any API calls.</p>"}))
    BatchListOutgoingTypedLinks.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListOutgoingTypedLinks.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    BatchListOutgoingTypedLinks.type = Types::BatchListOutgoingTypedLinks
    BatchListOutgoingTypedLinksResponse.add_member(:typed_link_specifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSpecifierList, location_name: 'TypedLinkSpecifiers', traits: {"smithy.api#documentation" => "<p>Returns a typed link specifier as output.</p>"}))
    BatchListOutgoingTypedLinksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListOutgoingTypedLinksResponse.type = Types::BatchListOutgoingTypedLinksResponse
    BatchListPolicyAttachments.add_member(:policy_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'PolicyReference', traits: {"smithy.api#documentation" => "<p>The reference that identifies the policy object.</p>", "smithy.api#required" => {}}))
    BatchListPolicyAttachments.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListPolicyAttachments.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    BatchListPolicyAttachments.type = Types::BatchListPolicyAttachments
    BatchListPolicyAttachmentsResponse.add_member(:object_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifierList, location_name: 'ObjectIdentifiers', traits: {"smithy.api#documentation" => "<p>A list of <code>ObjectIdentifiers</code> to which the policy is attached.</p>"}))
    BatchListPolicyAttachmentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchListPolicyAttachmentsResponse.type = Types::BatchListPolicyAttachmentsResponse
    BatchLookupPolicy.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>Reference that identifies the object whose policies will be looked up.</p>", "smithy.api#required" => {}}))
    BatchLookupPolicy.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchLookupPolicy.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    BatchLookupPolicy.type = Types::BatchLookupPolicy
    BatchLookupPolicyResponse.add_member(:policy_to_path_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyToPathList, location_name: 'PolicyToPathList', traits: {"smithy.api#documentation" => "<p>Provides list of path to policies. Policies contain <code>PolicyId</code>, <code>ObjectIdentifier</code>, and\n       <code>PolicyType</code>. For more\n       information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies\">Policies</a>.</p>"}))
    BatchLookupPolicyResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    BatchLookupPolicyResponse.type = Types::BatchLookupPolicyResponse
    BatchReadException.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchReadExceptionType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>A type of exception, such as <code>InvalidArnException</code>.</p>"}))
    BatchReadException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>An exception message that is associated with the failure.</p>"}))
    BatchReadException.type = Types::BatchReadException
    BatchReadExceptionType.add_member(:validation_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ValidationException', traits: {"smithy.api#enumValue" => "ValidationException"}))
    BatchReadExceptionType.add_member(:invalid_arn_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidArnException', traits: {"smithy.api#enumValue" => "InvalidArnException"}))
    BatchReadExceptionType.add_member(:resource_not_found_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFoundException', traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    BatchReadExceptionType.add_member(:invalid_next_token_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidNextTokenException', traits: {"smithy.api#enumValue" => "InvalidNextTokenException"}))
    BatchReadExceptionType.add_member(:access_denied_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccessDeniedException', traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    BatchReadExceptionType.add_member(:not_node_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotNodeException', traits: {"smithy.api#enumValue" => "NotNodeException"}))
    BatchReadExceptionType.add_member(:facet_validation_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FacetValidationException', traits: {"smithy.api#enumValue" => "FacetValidationException"}))
    BatchReadExceptionType.add_member(:cannot_list_parent_of_root_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CannotListParentOfRootException', traits: {"smithy.api#enumValue" => "CannotListParentOfRootException"}))
    BatchReadExceptionType.add_member(:not_index_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotIndexException', traits: {"smithy.api#enumValue" => "NotIndexException"}))
    BatchReadExceptionType.add_member(:not_policy_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotPolicyException', traits: {"smithy.api#enumValue" => "NotPolicyException"}))
    BatchReadExceptionType.add_member(:directory_not_enabled_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DirectoryNotEnabledException', traits: {"smithy.api#enumValue" => "DirectoryNotEnabledException"}))
    BatchReadExceptionType.add_member(:limit_exceeded_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LimitExceededException', traits: {"smithy.api#enumValue" => "LimitExceededException"}))
    BatchReadExceptionType.add_member(:internal_service_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalServiceException', traits: {"smithy.api#enumValue" => "InternalServiceException"}))
    BatchReadOperation.add_member(:list_object_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListObjectAttributes, location_name: 'ListObjectAttributes', traits: {"smithy.api#documentation" => "<p>Lists all attributes that are associated with an object.</p>"}))
    BatchReadOperation.add_member(:list_object_children, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListObjectChildren, location_name: 'ListObjectChildren', traits: {"smithy.api#documentation" => "<p>Returns a paginated list of child objects that are associated with a given\n      object.</p>"}))
    BatchReadOperation.add_member(:list_attached_indices, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListAttachedIndices, location_name: 'ListAttachedIndices', traits: {"smithy.api#documentation" => "<p>Lists indices attached to an object.</p>"}))
    BatchReadOperation.add_member(:list_object_parent_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListObjectParentPaths, location_name: 'ListObjectParentPaths', traits: {"smithy.api#documentation" => "<p>Retrieves all available parent paths for any object type such as node, leaf node,\n       policy node, and index node objects. For more information about objects, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html\">Directory Structure</a>.</p>"}))
    BatchReadOperation.add_member(:get_object_information, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetObjectInformation, location_name: 'GetObjectInformation', traits: {"smithy.api#documentation" => "<p>Retrieves metadata about an object.</p>"}))
    BatchReadOperation.add_member(:get_object_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetObjectAttributes, location_name: 'GetObjectAttributes', traits: {"smithy.api#documentation" => "<p>Retrieves attributes within a facet that are associated with an object.</p>"}))
    BatchReadOperation.add_member(:list_object_parents, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListObjectParents, location_name: 'ListObjectParents', traits: {"smithy.api#documentation" => "<p>Lists parent objects that are associated with a given object in pagination\n      fashion.</p>"}))
    BatchReadOperation.add_member(:list_object_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListObjectPolicies, location_name: 'ListObjectPolicies', traits: {"smithy.api#documentation" => "<p>Returns policies attached to an object in pagination fashion.</p>"}))
    BatchReadOperation.add_member(:list_policy_attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListPolicyAttachments, location_name: 'ListPolicyAttachments', traits: {"smithy.api#documentation" => "<p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>"}))
    BatchReadOperation.add_member(:lookup_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLookupPolicy, location_name: 'LookupPolicy', traits: {"smithy.api#documentation" => "<p>Lists all policies from the root of the <a>Directory</a> to the object\n       specified. If there are no policies present, an empty list is returned. If policies are\n       present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code>\n       for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and\n       <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more\n       information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies\">Policies</a>.</p>"}))
    BatchReadOperation.add_member(:list_index, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListIndex, location_name: 'ListIndex', traits: {"smithy.api#documentation" => "<p>Lists objects attached to the specified index.</p>"}))
    BatchReadOperation.add_member(:list_outgoing_typed_links, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListOutgoingTypedLinks, location_name: 'ListOutgoingTypedLinks', traits: {"smithy.api#documentation" => "<p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a>\n       information for an object. It also supports filtering by typed link facet and identity\n       attributes. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"}))
    BatchReadOperation.add_member(:list_incoming_typed_links, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListIncomingTypedLinks, location_name: 'ListIncomingTypedLinks', traits: {"smithy.api#documentation" => "<p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a>\n       information for an object. It also supports filtering by typed link facet and identity\n       attributes. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"}))
    BatchReadOperation.add_member(:get_link_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetLinkAttributes, location_name: 'GetLinkAttributes', traits: {"smithy.api#documentation" => "<p>Retrieves attributes that are associated with a typed link.</p>"}))
    BatchReadOperation.type = Types::BatchReadOperation
    BatchReadOperationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchReadOperation)
    BatchReadOperationResponse.add_member(:successful_response, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchReadSuccessfulResponse, location_name: 'SuccessfulResponse', traits: {"smithy.api#documentation" => "<p>Identifies which operation in a batch has succeeded.</p>"}))
    BatchReadOperationResponse.add_member(:exception_response, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchReadException, location_name: 'ExceptionResponse', traits: {"smithy.api#documentation" => "<p>Identifies which operation in a batch has failed.</p>"}))
    BatchReadOperationResponse.type = Types::BatchReadOperationResponse
    BatchReadOperationResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchReadOperationResponse)
    BatchReadRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.\n      For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    BatchReadRequest.add_member(:operations, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchReadOperationList, location_name: 'Operations', traits: {"smithy.api#documentation" => "<p>A list of operations that are part of the batch.</p>", "smithy.api#required" => {}}))
    BatchReadRequest.add_member(:consistency_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: 'ConsistencyLevel', traits: {"smithy.api#documentation" => "<p>Represents the manner and timing in which the successful write or update of an object\n      is reflected in a subsequent read operation of that same object.</p>", "smithy.api#httpHeader" => "x-amz-consistency-level"}))
    BatchReadRequest.type = Types::BatchReadRequest
    BatchReadResponse.add_member(:responses, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchReadOperationResponseList, location_name: 'Responses', traits: {"smithy.api#documentation" => "<p>A list of all the responses for each batch read.</p>"}))
    BatchReadResponse.type = Types::BatchReadResponse
    BatchReadSuccessfulResponse.add_member(:list_object_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListObjectAttributesResponse, location_name: 'ListObjectAttributes', traits: {"smithy.api#documentation" => "<p>Lists all attributes that are associated with an object.</p>"}))
    BatchReadSuccessfulResponse.add_member(:list_object_children, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListObjectChildrenResponse, location_name: 'ListObjectChildren', traits: {"smithy.api#documentation" => "<p>Returns a paginated list of child objects that are associated with a given\n      object.</p>"}))
    BatchReadSuccessfulResponse.add_member(:get_object_information, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetObjectInformationResponse, location_name: 'GetObjectInformation', traits: {"smithy.api#documentation" => "<p>Retrieves metadata about an object.</p>"}))
    BatchReadSuccessfulResponse.add_member(:get_object_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetObjectAttributesResponse, location_name: 'GetObjectAttributes', traits: {"smithy.api#documentation" => "<p>Retrieves attributes within a facet that are associated with an object.</p>"}))
    BatchReadSuccessfulResponse.add_member(:list_attached_indices, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListAttachedIndicesResponse, location_name: 'ListAttachedIndices', traits: {"smithy.api#documentation" => "<p>Lists indices attached to an object.</p>"}))
    BatchReadSuccessfulResponse.add_member(:list_object_parent_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListObjectParentPathsResponse, location_name: 'ListObjectParentPaths', traits: {"smithy.api#documentation" => "<p>Retrieves all available parent paths for any object type such as node, leaf node,\n       policy node, and index node objects. For more information about objects, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html\">Directory Structure</a>.</p>"}))
    BatchReadSuccessfulResponse.add_member(:list_object_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListObjectPoliciesResponse, location_name: 'ListObjectPolicies', traits: {"smithy.api#documentation" => "<p>Returns policies attached to an object in pagination fashion.</p>"}))
    BatchReadSuccessfulResponse.add_member(:list_policy_attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListPolicyAttachmentsResponse, location_name: 'ListPolicyAttachments', traits: {"smithy.api#documentation" => "<p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>"}))
    BatchReadSuccessfulResponse.add_member(:lookup_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLookupPolicyResponse, location_name: 'LookupPolicy', traits: {"smithy.api#documentation" => "<p>Lists all policies from the root of the <a>Directory</a> to the object\n       specified. If there are no policies present, an empty list is returned. If policies are\n       present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code>\n       for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and\n       <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more\n       information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies\">Policies</a>.</p>"}))
    BatchReadSuccessfulResponse.add_member(:list_index, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListIndexResponse, location_name: 'ListIndex', traits: {"smithy.api#documentation" => "<p>Lists objects attached to the specified index.</p>"}))
    BatchReadSuccessfulResponse.add_member(:list_outgoing_typed_links, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListOutgoingTypedLinksResponse, location_name: 'ListOutgoingTypedLinks', traits: {"smithy.api#documentation" => "<p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a>\n       information for an object. It also supports filtering by typed link facet and identity\n       attributes. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"}))
    BatchReadSuccessfulResponse.add_member(:list_incoming_typed_links, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListIncomingTypedLinksResponse, location_name: 'ListIncomingTypedLinks', traits: {"smithy.api#documentation" => "<p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a>\n       information for an object. It also supports filtering by typed link facet and identity\n       attributes. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"}))
    BatchReadSuccessfulResponse.add_member(:get_link_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetLinkAttributesResponse, location_name: 'GetLinkAttributes', traits: {"smithy.api#documentation" => "<p>The list of attributes to retrieve from the typed link.</p>"}))
    BatchReadSuccessfulResponse.add_member(:list_object_parents, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchListObjectParentsResponse, location_name: 'ListObjectParents', traits: {"smithy.api#documentation" => "<p>The list of parent objects to retrieve.</p>"}))
    BatchReadSuccessfulResponse.type = Types::BatchReadSuccessfulResponse
    BatchRemoveFacetFromObject.add_member(:schema_facet, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaFacet, location_name: 'SchemaFacet', traits: {"smithy.api#documentation" => "<p>The facet to remove from the object.</p>", "smithy.api#required" => {}}))
    BatchRemoveFacetFromObject.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>A reference to the object whose facet will be removed.</p>", "smithy.api#required" => {}}))
    BatchRemoveFacetFromObject.type = Types::BatchRemoveFacetFromObject
    BatchRemoveFacetFromObjectResponse.type = Types::BatchRemoveFacetFromObjectResponse
    BatchUpdateLinkAttributes.add_member(:typed_link_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSpecifier, location_name: 'TypedLinkSpecifier', traits: {"smithy.api#documentation" => "<p>Allows a typed link specifier to be accepted as input.</p>", "smithy.api#required" => {}}))
    BatchUpdateLinkAttributes.add_member(:attribute_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkAttributeUpdateList, location_name: 'AttributeUpdates', traits: {"smithy.api#documentation" => "<p>The attributes update structure.</p>", "smithy.api#required" => {}}))
    BatchUpdateLinkAttributes.type = Types::BatchUpdateLinkAttributes
    BatchUpdateLinkAttributesResponse.type = Types::BatchUpdateLinkAttributesResponse
    BatchUpdateObjectAttributes.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>Reference that identifies the object.</p>", "smithy.api#required" => {}}))
    BatchUpdateObjectAttributes.add_member(:attribute_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectAttributeUpdateList, location_name: 'AttributeUpdates', traits: {"smithy.api#documentation" => "<p>Attributes update structure.</p>", "smithy.api#required" => {}}))
    BatchUpdateObjectAttributes.type = Types::BatchUpdateObjectAttributes
    BatchUpdateObjectAttributesResponse.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>ID that is associated with the object.</p>"}))
    BatchUpdateObjectAttributesResponse.type = Types::BatchUpdateObjectAttributesResponse
    BatchWriteException.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchOperationIndex, location_name: 'Index', traits: {"smithy.api#default" => 0}))
    BatchWriteException.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchWriteExceptionType, location_name: 'Type'))
    BatchWriteException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    BatchWriteException.type = Types::BatchWriteException
    BatchWriteExceptionType.add_member(:internal_service_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalServiceException', traits: {"smithy.api#enumValue" => "InternalServiceException"}))
    BatchWriteExceptionType.add_member(:validation_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ValidationException', traits: {"smithy.api#enumValue" => "ValidationException"}))
    BatchWriteExceptionType.add_member(:invalid_arn_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidArnException', traits: {"smithy.api#enumValue" => "InvalidArnException"}))
    BatchWriteExceptionType.add_member(:link_name_already_in_use_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LinkNameAlreadyInUseException', traits: {"smithy.api#enumValue" => "LinkNameAlreadyInUseException"}))
    BatchWriteExceptionType.add_member(:still_contains_links_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'StillContainsLinksException', traits: {"smithy.api#enumValue" => "StillContainsLinksException"}))
    BatchWriteExceptionType.add_member(:facet_validation_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FacetValidationException', traits: {"smithy.api#enumValue" => "FacetValidationException"}))
    BatchWriteExceptionType.add_member(:object_not_detached_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ObjectNotDetachedException', traits: {"smithy.api#enumValue" => "ObjectNotDetachedException"}))
    BatchWriteExceptionType.add_member(:resource_not_found_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFoundException', traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    BatchWriteExceptionType.add_member(:access_denied_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccessDeniedException', traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    BatchWriteExceptionType.add_member(:invalid_attachment_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidAttachmentException', traits: {"smithy.api#enumValue" => "InvalidAttachmentException"}))
    BatchWriteExceptionType.add_member(:not_index_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotIndexException', traits: {"smithy.api#enumValue" => "NotIndexException"}))
    BatchWriteExceptionType.add_member(:not_node_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotNodeException', traits: {"smithy.api#enumValue" => "NotNodeException"}))
    BatchWriteExceptionType.add_member(:indexed_attribute_missing_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IndexedAttributeMissingException', traits: {"smithy.api#enumValue" => "IndexedAttributeMissingException"}))
    BatchWriteExceptionType.add_member(:object_already_detached_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ObjectAlreadyDetachedException', traits: {"smithy.api#enumValue" => "ObjectAlreadyDetachedException"}))
    BatchWriteExceptionType.add_member(:not_policy_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotPolicyException', traits: {"smithy.api#enumValue" => "NotPolicyException"}))
    BatchWriteExceptionType.add_member(:directory_not_enabled_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DirectoryNotEnabledException', traits: {"smithy.api#enumValue" => "DirectoryNotEnabledException"}))
    BatchWriteExceptionType.add_member(:limit_exceeded_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LimitExceededException', traits: {"smithy.api#enumValue" => "LimitExceededException"}))
    BatchWriteExceptionType.add_member(:unsupported_index_type_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UnsupportedIndexTypeException', traits: {"smithy.api#enumValue" => "UnsupportedIndexTypeException"}))
    BatchWriteOperation.add_member(:create_object, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateObject, location_name: 'CreateObject', traits: {"smithy.api#documentation" => "<p>Creates an object.</p>"}))
    BatchWriteOperation.add_member(:attach_object, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAttachObject, location_name: 'AttachObject', traits: {"smithy.api#documentation" => "<p>Attaches an object to a <a>Directory</a>.</p>"}))
    BatchWriteOperation.add_member(:detach_object, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetachObject, location_name: 'DetachObject', traits: {"smithy.api#documentation" => "<p>Detaches an object from a <a>Directory</a>.</p>"}))
    BatchWriteOperation.add_member(:update_object_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateObjectAttributes, location_name: 'UpdateObjectAttributes', traits: {"smithy.api#documentation" => "<p>Updates a given object's attributes.</p>"}))
    BatchWriteOperation.add_member(:delete_object, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteObject, location_name: 'DeleteObject', traits: {"smithy.api#documentation" => "<p>Deletes an object in a <a>Directory</a>.</p>"}))
    BatchWriteOperation.add_member(:add_facet_to_object, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAddFacetToObject, location_name: 'AddFacetToObject', traits: {"smithy.api#documentation" => "<p>A batch operation that adds a facet to an object.</p>"}))
    BatchWriteOperation.add_member(:remove_facet_from_object, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchRemoveFacetFromObject, location_name: 'RemoveFacetFromObject', traits: {"smithy.api#documentation" => "<p>A batch operation that removes a facet from an object.</p>"}))
    BatchWriteOperation.add_member(:attach_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAttachPolicy, location_name: 'AttachPolicy', traits: {"smithy.api#documentation" => "<p>Attaches a policy object to a regular object. An object can have a limited number of attached\n       policies.</p>"}))
    BatchWriteOperation.add_member(:detach_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetachPolicy, location_name: 'DetachPolicy', traits: {"smithy.api#documentation" => "<p>Detaches a policy from a <a>Directory</a>.</p>"}))
    BatchWriteOperation.add_member(:create_index, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateIndex, location_name: 'CreateIndex', traits: {"smithy.api#documentation" => "<p>Creates an index object. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm\">Indexing and search</a> for more information.</p>"}))
    BatchWriteOperation.add_member(:attach_to_index, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAttachToIndex, location_name: 'AttachToIndex', traits: {"smithy.api#documentation" => "<p>Attaches the specified object to the specified index.</p>"}))
    BatchWriteOperation.add_member(:detach_from_index, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetachFromIndex, location_name: 'DetachFromIndex', traits: {"smithy.api#documentation" => "<p>Detaches the specified object from the specified index.</p>"}))
    BatchWriteOperation.add_member(:attach_typed_link, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAttachTypedLink, location_name: 'AttachTypedLink', traits: {"smithy.api#documentation" => "<p>Attaches a typed link to a specified source and target object. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"}))
    BatchWriteOperation.add_member(:detach_typed_link, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetachTypedLink, location_name: 'DetachTypedLink', traits: {"smithy.api#documentation" => "<p>Detaches a typed link from a specified source and target object. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"}))
    BatchWriteOperation.add_member(:update_link_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateLinkAttributes, location_name: 'UpdateLinkAttributes', traits: {"smithy.api#documentation" => "<p>Updates a given object's attributes.</p>"}))
    BatchWriteOperation.type = Types::BatchWriteOperation
    BatchWriteOperationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchWriteOperation)
    BatchWriteOperationResponse.add_member(:create_object, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateObjectResponse, location_name: 'CreateObject', traits: {"smithy.api#documentation" => "<p>Creates an object in a <a>Directory</a>.</p>"}))
    BatchWriteOperationResponse.add_member(:attach_object, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAttachObjectResponse, location_name: 'AttachObject', traits: {"smithy.api#documentation" => "<p>Attaches an object to a <a>Directory</a>.</p>"}))
    BatchWriteOperationResponse.add_member(:detach_object, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetachObjectResponse, location_name: 'DetachObject', traits: {"smithy.api#documentation" => "<p>Detaches an object from a <a>Directory</a>.</p>"}))
    BatchWriteOperationResponse.add_member(:update_object_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateObjectAttributesResponse, location_name: 'UpdateObjectAttributes', traits: {"smithy.api#documentation" => "<p>Updates a given object’s attributes.</p>"}))
    BatchWriteOperationResponse.add_member(:delete_object, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteObjectResponse, location_name: 'DeleteObject', traits: {"smithy.api#documentation" => "<p>Deletes an object in a <a>Directory</a>.</p>"}))
    BatchWriteOperationResponse.add_member(:add_facet_to_object, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAddFacetToObjectResponse, location_name: 'AddFacetToObject', traits: {"smithy.api#documentation" => "<p>The result of an add facet to object batch operation.</p>"}))
    BatchWriteOperationResponse.add_member(:remove_facet_from_object, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchRemoveFacetFromObjectResponse, location_name: 'RemoveFacetFromObject', traits: {"smithy.api#documentation" => "<p>The result of a batch remove facet from object operation.</p>"}))
    BatchWriteOperationResponse.add_member(:attach_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAttachPolicyResponse, location_name: 'AttachPolicy', traits: {"smithy.api#documentation" => "<p>Attaches a policy object to a regular object. An object can have a limited number of attached\n       policies.</p>"}))
    BatchWriteOperationResponse.add_member(:detach_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetachPolicyResponse, location_name: 'DetachPolicy', traits: {"smithy.api#documentation" => "<p>Detaches a policy from a <a>Directory</a>.</p>"}))
    BatchWriteOperationResponse.add_member(:create_index, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateIndexResponse, location_name: 'CreateIndex', traits: {"smithy.api#documentation" => "<p>Creates an index object. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm\">Indexing and search</a> for more information.</p>"}))
    BatchWriteOperationResponse.add_member(:attach_to_index, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAttachToIndexResponse, location_name: 'AttachToIndex', traits: {"smithy.api#documentation" => "<p>Attaches the specified object to the specified index.</p>"}))
    BatchWriteOperationResponse.add_member(:detach_from_index, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetachFromIndexResponse, location_name: 'DetachFromIndex', traits: {"smithy.api#documentation" => "<p>Detaches the specified object from the specified index.</p>"}))
    BatchWriteOperationResponse.add_member(:attach_typed_link, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAttachTypedLinkResponse, location_name: 'AttachTypedLink', traits: {"smithy.api#documentation" => "<p>Attaches a typed link to a specified source and target object. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"}))
    BatchWriteOperationResponse.add_member(:detach_typed_link, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDetachTypedLinkResponse, location_name: 'DetachTypedLink', traits: {"smithy.api#documentation" => "<p>Detaches a typed link from a specified source and target object. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"}))
    BatchWriteOperationResponse.add_member(:update_link_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateLinkAttributesResponse, location_name: 'UpdateLinkAttributes', traits: {"smithy.api#documentation" => "<p>Represents the output of a <code>BatchWrite</code> response operation.</p>"}))
    BatchWriteOperationResponse.type = Types::BatchWriteOperationResponse
    BatchWriteOperationResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchWriteOperationResponse)
    BatchWriteRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.\n      For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    BatchWriteRequest.add_member(:operations, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchWriteOperationList, location_name: 'Operations', traits: {"smithy.api#documentation" => "<p>A list of operations that are part of the batch.</p>", "smithy.api#required" => {}}))
    BatchWriteRequest.type = Types::BatchWriteRequest
    BatchWriteResponse.add_member(:responses, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchWriteOperationResponseList, location_name: 'Responses', traits: {"smithy.api#documentation" => "<p>A list of all the responses for each batch write.</p>"}))
    BatchWriteResponse.type = Types::BatchWriteResponse
    CannotListParentOfRootException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    CannotListParentOfRootException.type = Types::CannotListParentOfRootException
    ConsistencyLevel.add_member(:serializable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERIALIZABLE', traits: {"smithy.api#enumValue" => "SERIALIZABLE"}))
    ConsistencyLevel.add_member(:eventual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENTUAL', traits: {"smithy.api#enumValue" => "EVENTUAL"}))
    CreateDirectoryRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <a>Directory</a>. Should be unique per account, per\n      region.</p>", "smithy.api#required" => {}}))
    CreateDirectoryRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the published schema that will be copied into the\n      data <a>Directory</a>. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    CreateDirectoryRequest.type = Types::CreateDirectoryRequest
    CreateDirectoryResponse.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryArn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN that is associated with the <a>Directory</a>. For more information,\n      see <a>arns</a>.</p>", "smithy.api#required" => {}}))
    CreateDirectoryResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <a>Directory</a>.</p>", "smithy.api#required" => {}}))
    CreateDirectoryResponse.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The root object node of the created directory.</p>", "smithy.api#required" => {}}))
    CreateDirectoryResponse.add_member(:applied_schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AppliedSchemaArn', traits: {"smithy.api#documentation" => "<p>The ARN of the published schema in the <a>Directory</a>. Once a published\n      schema is copied into the directory, it has its own ARN, which is referred to applied schema\n      ARN. For more information, see <a>arns</a>.</p>", "smithy.api#required" => {}}))
    CreateDirectoryResponse.type = Types::CreateDirectoryResponse
    CreateFacetRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The schema ARN in which the new <a>Facet</a> will be created. For more\n      information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    CreateFacetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <a>Facet</a>, which is unique for a given schema.</p>", "smithy.api#required" => {}}))
    CreateFacetRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetAttributeList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>The attributes that are associated with the <a>Facet</a>.</p>"}))
    CreateFacetRequest.add_member(:object_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectType, location_name: 'ObjectType', traits: {"smithy.api#documentation" => "<p>Specifies whether a given object created from this facet is of type node, leaf node,\n      policy or index.</p>\n         <ul>\n            <li>\n               <p>Node: Can have multiple children but one parent.</p>\n            </li>\n         </ul>\n         <ul>\n            <li>\n               <p>Leaf node: Cannot have children but can have multiple parents.</p>\n            </li>\n         </ul>\n         <ul>\n            <li>\n               <p>Policy: Allows you to store a policy document and policy type. For more\n        information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies\">Policies</a>.</p>\n            </li>\n         </ul>\n         <ul>\n            <li>\n               <p>Index: Can be created with the Index API.</p>\n            </li>\n         </ul>"}))
    CreateFacetRequest.add_member(:facet_style, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetStyle, location_name: 'FacetStyle', traits: {"smithy.api#documentation" => "<p>There are two different styles that you can define on any given facet, <code>Static</code> and <code>Dynamic</code>. For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.</p>"}))
    CreateFacetRequest.type = Types::CreateFacetRequest
    CreateFacetResponse.type = Types::CreateFacetResponse
    CreateIndexRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the directory where the index should be created.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:ordered_indexed_attribute_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKeyList, location_name: 'OrderedIndexedAttributeList', traits: {"smithy.api#documentation" => "<p>Specifies the attributes that should be indexed on. Currently only a single attribute\n      is supported.</p>", "smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:is_unique, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'IsUnique', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the attribute that is being indexed has unique values or\n      not.</p>", "smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:parent_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ParentReference', traits: {"smithy.api#documentation" => "<p>A reference to the parent object that contains the index object.</p>"}))
    CreateIndexRequest.add_member(:link_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkName, location_name: 'LinkName', traits: {"smithy.api#documentation" => "<p>The name of the link between the parent object and the index object.</p>"}))
    CreateIndexRequest.type = Types::CreateIndexRequest
    CreateIndexResponse.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>ObjectIdentifier</code> of the index created by this operation.</p>"}))
    CreateIndexResponse.type = Types::CreateIndexResponse
    CreateObjectRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>\n      in which the object will be created. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    CreateObjectRequest.add_member(:schema_facets, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaFacetList, location_name: 'SchemaFacets', traits: {"smithy.api#documentation" => "<p>A list of schema facets to be associated with the object. Do not provide minor version components. See <a>SchemaFacet</a> for details.</p>", "smithy.api#required" => {}}))
    CreateObjectRequest.add_member(:object_attribute_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: 'ObjectAttributeList', traits: {"smithy.api#documentation" => "<p>The attribute map whose attribute ARN contains the key and attribute value as the map\n      value.</p>"}))
    CreateObjectRequest.add_member(:parent_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ParentReference', traits: {"smithy.api#documentation" => "<p>If specified, the parent reference to which this object will be attached.</p>"}))
    CreateObjectRequest.add_member(:link_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkName, location_name: 'LinkName', traits: {"smithy.api#documentation" => "<p>The name of link that is used to attach this object to a parent.</p>"}))
    CreateObjectRequest.type = Types::CreateObjectRequest
    CreateObjectResponse.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier that is associated with the object.</p>"}))
    CreateObjectResponse.type = Types::CreateObjectResponse
    CreateSchemaRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name that is associated with the schema. This is unique to each account and in each\n      region.</p>", "smithy.api#required" => {}}))
    CreateSchemaRequest.type = Types::CreateSchemaRequest
    CreateSchemaResponse.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the schema. For more\n      information, see <a>arns</a>.</p>"}))
    CreateSchemaResponse.type = Types::CreateSchemaResponse
    CreateTypedLinkFacetRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the schema. For more\n      information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    CreateTypedLinkFacetRequest.add_member(:facet, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkFacet, location_name: 'Facet', traits: {"smithy.api#documentation" => "<p>\n            <a>Facet</a> structure that is associated with the typed link\n      facet.</p>", "smithy.api#required" => {}}))
    CreateTypedLinkFacetRequest.type = Types::CreateTypedLinkFacetRequest
    CreateTypedLinkFacetResponse.type = Types::CreateTypedLinkFacetResponse
    DeleteDirectoryRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the directory to delete.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DeleteDirectoryRequest.type = Types::DeleteDirectoryRequest
    DeleteDirectoryResponse.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the deleted directory.</p>", "smithy.api#required" => {}}))
    DeleteDirectoryResponse.type = Types::DeleteDirectoryResponse
    DeleteFacetRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.\n      For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DeleteFacetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the facet to delete.</p>", "smithy.api#required" => {}}))
    DeleteFacetRequest.type = Types::DeleteFacetRequest
    DeleteFacetResponse.type = Types::DeleteFacetResponse
    DeleteObjectRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>\n      where the object resides. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DeleteObjectRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>A reference that identifies the object.</p>", "smithy.api#required" => {}}))
    DeleteObjectRequest.type = Types::DeleteObjectRequest
    DeleteObjectResponse.type = Types::DeleteObjectResponse
    DeleteSchemaRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the development schema. For more information, see\n        <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DeleteSchemaRequest.type = Types::DeleteSchemaRequest
    DeleteSchemaResponse.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The input ARN that is returned as part of the response. For more information, see\n        <a>arns</a>.</p>"}))
    DeleteSchemaResponse.type = Types::DeleteSchemaResponse
    DeleteTypedLinkFacetRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the schema. For more\n      information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DeleteTypedLinkFacetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The unique name of the typed link facet.</p>", "smithy.api#required" => {}}))
    DeleteTypedLinkFacetRequest.type = Types::DeleteTypedLinkFacetRequest
    DeleteTypedLinkFacetResponse.type = Types::DeleteTypedLinkFacetResponse
    DetachFromIndexRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the directory the index and object exist\n      in.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DetachFromIndexRequest.add_member(:index_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'IndexReference', traits: {"smithy.api#documentation" => "<p>A reference to the index object.</p>", "smithy.api#required" => {}}))
    DetachFromIndexRequest.add_member(:target_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'TargetReference', traits: {"smithy.api#documentation" => "<p>A reference to the object being detached from the index.</p>", "smithy.api#required" => {}}))
    DetachFromIndexRequest.type = Types::DetachFromIndexRequest
    DetachFromIndexResponse.add_member(:detached_object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'DetachedObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>ObjectIdentifier</code> of the object that was detached from the index.</p>"}))
    DetachFromIndexResponse.type = Types::DetachFromIndexResponse
    DetachObjectRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>\n      where objects reside. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DetachObjectRequest.add_member(:parent_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ParentReference', traits: {"smithy.api#documentation" => "<p>The parent reference from which the object with the specified link name is\n      detached.</p>", "smithy.api#required" => {}}))
    DetachObjectRequest.add_member(:link_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkName, location_name: 'LinkName', traits: {"smithy.api#documentation" => "<p>The link name associated with the object that needs to be detached.</p>", "smithy.api#required" => {}}))
    DetachObjectRequest.type = Types::DetachObjectRequest
    DetachObjectResponse.add_member(:detached_object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'DetachedObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>ObjectIdentifier</code> that was detached from the object.</p>"}))
    DetachObjectResponse.type = Types::DetachObjectResponse
    DetachPolicyRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>\n      where both objects reside. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DetachPolicyRequest.add_member(:policy_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'PolicyReference', traits: {"smithy.api#documentation" => "<p>Reference that identifies the policy object.</p>", "smithy.api#required" => {}}))
    DetachPolicyRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>Reference that identifies the object whose policy object will be detached.</p>", "smithy.api#required" => {}}))
    DetachPolicyRequest.type = Types::DetachPolicyRequest
    DetachPolicyResponse.type = Types::DetachPolicyResponse
    DetachTypedLinkRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the directory where you want to detach the typed\n      link.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DetachTypedLinkRequest.add_member(:typed_link_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSpecifier, location_name: 'TypedLinkSpecifier', traits: {"smithy.api#documentation" => "<p>Used to accept a typed link specifier as input.</p>", "smithy.api#required" => {}}))
    DetachTypedLinkRequest.type = Types::DetachTypedLinkRequest
    Directory.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the directory.</p>"}))
    Directory.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryArn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the directory. For more\n      information, see <a>arns</a>.</p>"}))
    Directory.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the directory. Can be either <code>Enabled</code>, <code>Disabled</code>, or <code>Deleted</code>.</p>"}))
    Directory.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the directory was created.</p>"}))
    Directory.type = Types::Directory
    DirectoryAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DirectoryAlreadyExistsException.type = Types::DirectoryAlreadyExistsException
    DirectoryDeletedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DirectoryDeletedException.type = Types::DirectoryDeletedException
    DirectoryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Directory)
    DirectoryNotDisabledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DirectoryNotDisabledException.type = Types::DirectoryNotDisabledException
    DirectoryNotEnabledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DirectoryNotEnabledException.type = Types::DirectoryNotEnabledException
    DirectoryState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    DirectoryState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    DirectoryState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    DisableDirectoryRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the directory to disable.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DisableDirectoryRequest.type = Types::DisableDirectoryRequest
    DisableDirectoryResponse.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the directory that has been disabled.</p>", "smithy.api#required" => {}}))
    DisableDirectoryResponse.type = Types::DisableDirectoryResponse
    EnableDirectoryRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the directory to enable.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    EnableDirectoryRequest.type = Types::EnableDirectoryRequest
    EnableDirectoryResponse.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the enabled directory.</p>", "smithy.api#required" => {}}))
    EnableDirectoryResponse.type = Types::EnableDirectoryResponse
    Facet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <a>Facet</a>.</p>"}))
    Facet.add_member(:object_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectType, location_name: 'ObjectType', traits: {"smithy.api#documentation" => "<p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>"}))
    Facet.add_member(:facet_style, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetStyle, location_name: 'FacetStyle', traits: {"smithy.api#documentation" => "<p>There are two different styles that you can define on any given facet, <code>Static</code> and <code>Dynamic</code>. For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.</p>"}))
    Facet.type = Types::Facet
    FacetAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    FacetAlreadyExistsException.type = Types::FacetAlreadyExistsException
    FacetAttribute.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the facet attribute.</p>", "smithy.api#required" => {}}))
    FacetAttribute.add_member(:attribute_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetAttributeDefinition, location_name: 'AttributeDefinition', traits: {"smithy.api#documentation" => "<p>A facet attribute consists of either a definition or a reference. This structure\n      contains the attribute definition. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html\">Attribute References</a> for more information.</p>"}))
    FacetAttribute.add_member(:attribute_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetAttributeReference, location_name: 'AttributeReference', traits: {"smithy.api#documentation" => "<p>An attribute reference that is associated with the attribute. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html\">Attribute References</a> for more information.</p>"}))
    FacetAttribute.add_member(:required_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredAttributeBehavior, location_name: 'RequiredBehavior', traits: {"smithy.api#documentation" => "<p>The required behavior of the <code>FacetAttribute</code>.</p>"}))
    FacetAttribute.type = Types::FacetAttribute
    FacetAttributeDefinition.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetAttributeType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the attribute.</p>", "smithy.api#required" => {}}))
    FacetAttributeDefinition.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedAttributeValue, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "<p>The default value of the attribute (if configured).</p>"}))
    FacetAttributeDefinition.add_member(:is_immutable, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'IsImmutable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the attribute is mutable or not.</p>"}))
    FacetAttributeDefinition.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleMap, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>Validation rules attached to the attribute definition.</p>"}))
    FacetAttributeDefinition.type = Types::FacetAttributeDefinition
    FacetAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FacetAttribute)
    FacetAttributeReference.add_member(:target_facet_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetName, location_name: 'TargetFacetName', traits: {"smithy.api#documentation" => "<p>The target facet name that is associated with the facet reference. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html\">Attribute References</a> for more information.</p>", "smithy.api#required" => {}}))
    FacetAttributeReference.add_member(:target_attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'TargetAttributeName', traits: {"smithy.api#documentation" => "<p>The target attribute name that is associated with the facet reference. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html\">Attribute References</a> for more information.</p>", "smithy.api#required" => {}}))
    FacetAttributeReference.type = Types::FacetAttributeReference
    FacetAttributeType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    FacetAttributeType.add_member(:binary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BINARY', traits: {"smithy.api#enumValue" => "BINARY"}))
    FacetAttributeType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    FacetAttributeType.add_member(:number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMBER', traits: {"smithy.api#enumValue" => "NUMBER"}))
    FacetAttributeType.add_member(:datetime, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATETIME', traits: {"smithy.api#enumValue" => "DATETIME"}))
    FacetAttributeType.add_member(:variant, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VARIANT', traits: {"smithy.api#enumValue" => "VARIANT"}))
    FacetAttributeUpdate.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetAttribute, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The attribute to update.</p>"}))
    FacetAttributeUpdate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateActionType, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action to perform when updating the attribute.</p>"}))
    FacetAttributeUpdate.type = Types::FacetAttributeUpdate
    FacetAttributeUpdateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FacetAttributeUpdate)
    FacetInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    FacetInUseException.type = Types::FacetInUseException
    FacetNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FacetName)
    FacetNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    FacetNotFoundException.type = Types::FacetNotFoundException
    FacetStyle.add_member(:static, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATIC', traits: {"smithy.api#enumValue" => "STATIC"}))
    FacetStyle.add_member(:dynamic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DYNAMIC', traits: {"smithy.api#enumValue" => "DYNAMIC"}))
    FacetValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    FacetValidationException.type = Types::FacetValidationException
    GetAppliedSchemaVersionRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The ARN of the applied schema.</p>", "smithy.api#required" => {}}))
    GetAppliedSchemaVersionRequest.type = Types::GetAppliedSchemaVersionRequest
    GetAppliedSchemaVersionResponse.add_member(:applied_schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AppliedSchemaArn', traits: {"smithy.api#documentation" => "<p>Current applied schema ARN, including the minor version in use if one was provided.</p>"}))
    GetAppliedSchemaVersionResponse.type = Types::GetAppliedSchemaVersionResponse
    GetDirectoryRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryArn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the directory.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    GetDirectoryRequest.type = Types::GetDirectoryRequest
    GetDirectoryResponse.add_member(:directory, Smithy::Schema::Shapes::ShapeRef.new(shape: Directory, location_name: 'Directory', traits: {"smithy.api#documentation" => "<p>Metadata about the directory.</p>", "smithy.api#required" => {}}))
    GetDirectoryResponse.type = Types::GetDirectoryResponse
    GetFacetRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.\n      For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    GetFacetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the facet to retrieve.</p>", "smithy.api#required" => {}}))
    GetFacetRequest.type = Types::GetFacetRequest
    GetFacetResponse.add_member(:facet, Smithy::Schema::Shapes::ShapeRef.new(shape: Facet, location_name: 'Facet', traits: {"smithy.api#documentation" => "<p>The <a>Facet</a> structure that is associated with the facet.</p>"}))
    GetFacetResponse.type = Types::GetFacetResponse
    GetLinkAttributesRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the Directory where the typed link resides. For more information, see <a>arns</a> or <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    GetLinkAttributesRequest.add_member(:typed_link_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSpecifier, location_name: 'TypedLinkSpecifier', traits: {"smithy.api#documentation" => "<p>Allows a typed link specifier to be accepted as input.</p>", "smithy.api#required" => {}}))
    GetLinkAttributesRequest.add_member(:attribute_names, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: 'AttributeNames', traits: {"smithy.api#documentation" => "<p>A list of attribute names whose values will be retrieved.</p>", "smithy.api#required" => {}}))
    GetLinkAttributesRequest.add_member(:consistency_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: 'ConsistencyLevel', traits: {"smithy.api#documentation" => "<p>The consistency level at which to retrieve the attributes on a typed link.</p>"}))
    GetLinkAttributesRequest.type = Types::GetLinkAttributesRequest
    GetLinkAttributesResponse.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>The attributes that are associated with the typed link.</p>"}))
    GetLinkAttributesResponse.type = Types::GetLinkAttributesResponse
    GetObjectAttributesRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    GetObjectAttributesRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>Reference that identifies the object whose attributes will be retrieved.</p>", "smithy.api#required" => {}}))
    GetObjectAttributesRequest.add_member(:consistency_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: 'ConsistencyLevel', traits: {"smithy.api#documentation" => "<p>The consistency level at which to retrieve the attributes on an object.</p>", "smithy.api#httpHeader" => "x-amz-consistency-level"}))
    GetObjectAttributesRequest.add_member(:schema_facet, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaFacet, location_name: 'SchemaFacet', traits: {"smithy.api#documentation" => "<p>Identifier for the facet whose attributes will be retrieved. See <a>SchemaFacet</a> for details.</p>", "smithy.api#required" => {}}))
    GetObjectAttributesRequest.add_member(:attribute_names, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: 'AttributeNames', traits: {"smithy.api#documentation" => "<p>List of attribute names whose values will be retrieved.</p>", "smithy.api#required" => {}}))
    GetObjectAttributesRequest.type = Types::GetObjectAttributesRequest
    GetObjectAttributesResponse.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>The attributes that are associated with the object.</p>"}))
    GetObjectAttributesResponse.type = Types::GetObjectAttributesResponse
    GetObjectInformationRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the directory being retrieved.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    GetObjectInformationRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>A reference to the object.</p>", "smithy.api#required" => {}}))
    GetObjectInformationRequest.add_member(:consistency_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: 'ConsistencyLevel', traits: {"smithy.api#documentation" => "<p>The consistency level at which to retrieve the object information.</p>", "smithy.api#httpHeader" => "x-amz-consistency-level"}))
    GetObjectInformationRequest.type = Types::GetObjectInformationRequest
    GetObjectInformationResponse.add_member(:schema_facets, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaFacetList, location_name: 'SchemaFacets', traits: {"smithy.api#documentation" => "<p>The facets attached to the specified object. Although the response does not include minor version information, the most recently applied minor version of each Facet is in effect. See <a>GetAppliedSchemaVersion</a> for details.</p>"}))
    GetObjectInformationResponse.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>ObjectIdentifier</code> of the specified object.</p>"}))
    GetObjectInformationResponse.type = Types::GetObjectInformationResponse
    GetSchemaAsJsonRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The ARN of the schema to retrieve.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    GetSchemaAsJsonRequest.type = Types::GetSchemaAsJsonRequest
    GetSchemaAsJsonResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the retrieved schema.</p>"}))
    GetSchemaAsJsonResponse.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaJsonDocument, location_name: 'Document', traits: {"smithy.api#documentation" => "<p>The JSON representation of the schema document.</p>"}))
    GetSchemaAsJsonResponse.type = Types::GetSchemaAsJsonResponse
    GetTypedLinkFacetInformationRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the schema. For more\n      information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    GetTypedLinkFacetInformationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The unique name of the typed link facet.</p>", "smithy.api#required" => {}}))
    GetTypedLinkFacetInformationRequest.type = Types::GetTypedLinkFacetInformationRequest
    GetTypedLinkFacetInformationResponse.add_member(:identity_attribute_order, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: 'IdentityAttributeOrder', traits: {"smithy.api#documentation" => "<p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed\n      links considers the order that the attributes are defined on the typed link facet. When\n      providing ranges to typed link selection, any inexact ranges must be specified at the end. Any\n      attributes that do not have a range specified are presumed to match the entire range. Filters\n      are interpreted in the order of the attributes on the typed link facet, not the order in which\n      they are supplied to any API calls. For more information about identity attributes, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"}))
    GetTypedLinkFacetInformationResponse.type = Types::GetTypedLinkFacetInformationResponse
    IncompatibleSchemaException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    IncompatibleSchemaException.type = Types::IncompatibleSchemaException
    IndexAttachment.add_member(:indexed_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: 'IndexedAttributes', traits: {"smithy.api#documentation" => "<p>The indexed attribute values.</p>"}))
    IndexAttachment.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>In response to <a>ListIndex</a>, the <code>ObjectIdentifier</code> of the object attached to the index. In response to <a>ListAttachedIndices</a>, the <code>ObjectIdentifier</code> of the index attached to the object. This field will always contain the <code>ObjectIdentifier</code> of the object on the opposite side of the attachment specified in the query.</p>"}))
    IndexAttachment.type = Types::IndexAttachment
    IndexAttachmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IndexAttachment)
    IndexedAttributeMissingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    IndexedAttributeMissingException.type = Types::IndexedAttributeMissingException
    InternalServiceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InternalServiceException.type = Types::InternalServiceException
    InvalidArnException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidArnException.type = Types::InvalidArnException
    InvalidAttachmentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidAttachmentException.type = Types::InvalidAttachmentException
    InvalidFacetUpdateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidFacetUpdateException.type = Types::InvalidFacetUpdateException
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidRuleException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidRuleException.type = Types::InvalidRuleException
    InvalidSchemaDocException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidSchemaDocException.type = Types::InvalidSchemaDocException
    InvalidTaggingRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidTaggingRequestException.type = Types::InvalidTaggingRequestException
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    LinkAttributeAction.add_member(:attribute_action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateActionType, location_name: 'AttributeActionType', traits: {"smithy.api#documentation" => "<p>A type that can be either <code>UPDATE_OR_CREATE</code> or <code>DELETE</code>.</p>"}))
    LinkAttributeAction.add_member(:attribute_update_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedAttributeValue, location_name: 'AttributeUpdateValue', traits: {"smithy.api#documentation" => "<p>The value that you want to update to.</p>"}))
    LinkAttributeAction.type = Types::LinkAttributeAction
    LinkAttributeUpdate.add_member(:attribute_key, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey, location_name: 'AttributeKey', traits: {"smithy.api#documentation" => "<p>The key of the attribute being updated.</p>"}))
    LinkAttributeUpdate.add_member(:attribute_action, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkAttributeAction, location_name: 'AttributeAction', traits: {"smithy.api#documentation" => "<p>The action to perform as part of the attribute update.</p>"}))
    LinkAttributeUpdate.type = Types::LinkAttributeUpdate
    LinkAttributeUpdateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LinkAttributeUpdate)
    LinkNameAlreadyInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    LinkNameAlreadyInUseException.type = Types::LinkNameAlreadyInUseException
    LinkNameToObjectIdentifierMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: LinkName)
    LinkNameToObjectIdentifierMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier)
    ListAppliedSchemaArnsRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the directory you are listing.</p>", "smithy.api#required" => {}}))
    ListAppliedSchemaArnsRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The response for <code>ListAppliedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>"}))
    ListAppliedSchemaArnsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListAppliedSchemaArnsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    ListAppliedSchemaArnsRequest.type = Types::ListAppliedSchemaArnsRequest
    ListAppliedSchemaArnsResponse.add_member(:schema_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'SchemaArns', traits: {"smithy.api#documentation" => "<p>The ARNs of schemas that are applied to the directory.</p>"}))
    ListAppliedSchemaArnsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListAppliedSchemaArnsResponse.type = Types::ListAppliedSchemaArnsResponse
    ListAttachedIndicesRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the directory.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListAttachedIndicesRequest.add_member(:target_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'TargetReference', traits: {"smithy.api#documentation" => "<p>A reference to the object that has indices attached.</p>", "smithy.api#required" => {}}))
    ListAttachedIndicesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListAttachedIndicesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    ListAttachedIndicesRequest.add_member(:consistency_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: 'ConsistencyLevel', traits: {"smithy.api#documentation" => "<p>The consistency level to use for this operation.</p>", "smithy.api#httpHeader" => "x-amz-consistency-level"}))
    ListAttachedIndicesRequest.type = Types::ListAttachedIndicesRequest
    ListAttachedIndicesResponse.add_member(:index_attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexAttachmentList, location_name: 'IndexAttachments', traits: {"smithy.api#documentation" => "<p>The indices attached to the specified object.</p>"}))
    ListAttachedIndicesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListAttachedIndicesResponse.type = Types::ListAttachedIndicesResponse
    ListDevelopmentSchemaArnsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListDevelopmentSchemaArnsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    ListDevelopmentSchemaArnsRequest.type = Types::ListDevelopmentSchemaArnsRequest
    ListDevelopmentSchemaArnsResponse.add_member(:schema_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'SchemaArns', traits: {"smithy.api#documentation" => "<p>The ARNs of retrieved development schemas.</p>"}))
    ListDevelopmentSchemaArnsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListDevelopmentSchemaArnsResponse.type = Types::ListDevelopmentSchemaArnsResponse
    ListDirectoriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListDirectoriesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    ListDirectoriesRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the directories in the list. Can be either Enabled, Disabled, or\n      Deleted.</p>"}))
    ListDirectoriesRequest.type = Types::ListDirectoriesRequest
    ListDirectoriesResponse.add_member(:directories, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryList, location_name: 'Directories', traits: {"smithy.api#documentation" => "<p>Lists all directories that are associated with your account in pagination\n      fashion.</p>", "smithy.api#required" => {}}))
    ListDirectoriesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListDirectoriesResponse.type = Types::ListDirectoriesResponse
    ListFacetAttributesRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The ARN of the schema where the facet resides.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListFacetAttributesRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the facet whose attributes will be retrieved.</p>", "smithy.api#required" => {}}))
    ListFacetAttributesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListFacetAttributesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    ListFacetAttributesRequest.type = Types::ListFacetAttributesRequest
    ListFacetAttributesResponse.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetAttributeList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>The attributes attached to the facet.</p>"}))
    ListFacetAttributesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListFacetAttributesResponse.type = Types::ListFacetAttributesResponse
    ListFacetNamesRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) to retrieve facet names from.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListFacetNamesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListFacetNamesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    ListFacetNamesRequest.type = Types::ListFacetNamesRequest
    ListFacetNamesResponse.add_member(:facet_names, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetNameList, location_name: 'FacetNames', traits: {"smithy.api#documentation" => "<p>The names of facets that exist within the schema.</p>"}))
    ListFacetNamesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListFacetNamesResponse.type = Types::ListFacetNamesResponse
    ListIncomingTypedLinksRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the directory where you want to list the typed\n      links.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListIncomingTypedLinksRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>Reference that identifies the object whose attributes will be listed.</p>", "smithy.api#required" => {}}))
    ListIncomingTypedLinksRequest.add_member(:filter_attribute_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkAttributeRangeList, location_name: 'FilterAttributeRanges', traits: {"smithy.api#documentation" => "<p>Provides range filters for multiple attributes. When providing ranges to typed link\n      selection, any inexact ranges must be specified at the end. Any attributes that do not have a\n      range specified are presumed to match the entire range.</p>"}))
    ListIncomingTypedLinksRequest.add_member(:filter_typed_link, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSchemaAndFacetName, location_name: 'FilterTypedLink', traits: {"smithy.api#documentation" => "<p>Filters are interpreted in the order of the attributes on the typed link facet, not the\n      order in which they are supplied to any API calls.</p>"}))
    ListIncomingTypedLinksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListIncomingTypedLinksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    ListIncomingTypedLinksRequest.add_member(:consistency_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: 'ConsistencyLevel', traits: {"smithy.api#documentation" => "<p>The consistency level to execute the request at.</p>"}))
    ListIncomingTypedLinksRequest.type = Types::ListIncomingTypedLinksRequest
    ListIncomingTypedLinksResponse.add_member(:link_specifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSpecifierList, location_name: 'LinkSpecifiers', traits: {"smithy.api#documentation" => "<p>Returns one or more typed link specifiers as output.</p>"}))
    ListIncomingTypedLinksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListIncomingTypedLinksResponse.type = Types::ListIncomingTypedLinksResponse
    ListIndexRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the directory that the index exists in.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListIndexRequest.add_member(:ranges_on_indexed_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectAttributeRangeList, location_name: 'RangesOnIndexedValues', traits: {"smithy.api#documentation" => "<p>Specifies the ranges of indexed values that you want to query.</p>"}))
    ListIndexRequest.add_member(:index_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'IndexReference', traits: {"smithy.api#documentation" => "<p>The reference to the index to list.</p>", "smithy.api#required" => {}}))
    ListIndexRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of objects in a single page to retrieve from the index during a request. For more information, see <a href=\"http://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html\">Amazon Cloud Directory Limits</a>.</p>"}))
    ListIndexRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListIndexRequest.add_member(:consistency_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: 'ConsistencyLevel', traits: {"smithy.api#documentation" => "<p>The consistency level to execute the request at.</p>", "smithy.api#httpHeader" => "x-amz-consistency-level"}))
    ListIndexRequest.type = Types::ListIndexRequest
    ListIndexResponse.add_member(:index_attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexAttachmentList, location_name: 'IndexAttachments', traits: {"smithy.api#documentation" => "<p>The objects and indexed values attached to the index.</p>"}))
    ListIndexResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListIndexResponse.type = Types::ListIndexResponse
    ListManagedSchemaArnsRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The response for ListManagedSchemaArns. When this parameter is used, all minor version ARNs for a major version are listed.</p>"}))
    ListManagedSchemaArnsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListManagedSchemaArnsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    ListManagedSchemaArnsRequest.type = Types::ListManagedSchemaArnsRequest
    ListManagedSchemaArnsResponse.add_member(:schema_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'SchemaArns', traits: {"smithy.api#documentation" => "<p>The ARNs for all AWS managed schemas.</p>"}))
    ListManagedSchemaArnsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListManagedSchemaArnsResponse.type = Types::ListManagedSchemaArnsResponse
    ListObjectAttributesRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>\n      where the object resides. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListObjectAttributesRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>The reference that identifies the object whose attributes will be listed.</p>", "smithy.api#required" => {}}))
    ListObjectAttributesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListObjectAttributesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to be retrieved in a single call. This is an approximate\n      number.</p>"}))
    ListObjectAttributesRequest.add_member(:consistency_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: 'ConsistencyLevel', traits: {"smithy.api#documentation" => "<p>Represents the manner and timing in which the successful write or update of an object\n      is reflected in a subsequent read operation of that same object.</p>", "smithy.api#httpHeader" => "x-amz-consistency-level"}))
    ListObjectAttributesRequest.add_member(:facet_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaFacet, location_name: 'FacetFilter', traits: {"smithy.api#documentation" => "<p>Used to filter the list of object attributes that are associated with a certain\n      facet.</p>"}))
    ListObjectAttributesRequest.type = Types::ListObjectAttributesRequest
    ListObjectAttributesResponse.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKeyAndValueList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>Attributes map that is associated with the object. <code>AttributeArn</code> is the\n      key, and attribute value is the value.</p>"}))
    ListObjectAttributesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListObjectAttributesResponse.type = Types::ListObjectAttributesResponse
    ListObjectChildrenRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>\n      where the object resides. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListObjectChildrenRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>The reference that identifies the object for which child objects are being\n      listed.</p>", "smithy.api#required" => {}}))
    ListObjectChildrenRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListObjectChildrenRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to be retrieved in a single call. This is an approximate\n      number.</p>"}))
    ListObjectChildrenRequest.add_member(:consistency_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: 'ConsistencyLevel', traits: {"smithy.api#documentation" => "<p>Represents the manner and timing in which the successful write or update of an object\n      is reflected in a subsequent read operation of that same object.</p>", "smithy.api#httpHeader" => "x-amz-consistency-level"}))
    ListObjectChildrenRequest.type = Types::ListObjectChildrenRequest
    ListObjectChildrenResponse.add_member(:children, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkNameToObjectIdentifierMap, location_name: 'Children', traits: {"smithy.api#documentation" => "<p>Children structure, which is a map with key as the <code>LinkName</code> and\n        <code>ObjectIdentifier</code> as the value.</p>"}))
    ListObjectChildrenResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListObjectChildrenResponse.type = Types::ListObjectChildrenResponse
    ListObjectParentPathsRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the directory to which the parent path applies.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListObjectParentPathsRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>The reference that identifies the object whose parent paths are listed.</p>", "smithy.api#required" => {}}))
    ListObjectParentPathsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListObjectParentPathsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to be retrieved in a single call. This is an approximate\n      number.</p>"}))
    ListObjectParentPathsRequest.type = Types::ListObjectParentPathsRequest
    ListObjectParentPathsResponse.add_member(:path_to_object_identifiers_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PathToObjectIdentifiersList, location_name: 'PathToObjectIdentifiersList', traits: {"smithy.api#documentation" => "<p>Returns the path to the <code>ObjectIdentifiers</code> that are associated with the\n      directory.</p>"}))
    ListObjectParentPathsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListObjectParentPathsResponse.type = Types::ListObjectParentPathsResponse
    ListObjectParentsRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>\n      where the object resides. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListObjectParentsRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>The reference that identifies the object for which parent objects are being\n      listed.</p>", "smithy.api#required" => {}}))
    ListObjectParentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListObjectParentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to be retrieved in a single call. This is an approximate\n      number.</p>"}))
    ListObjectParentsRequest.add_member(:consistency_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: 'ConsistencyLevel', traits: {"smithy.api#documentation" => "<p>Represents the manner and timing in which the successful write or update of an object\n      is reflected in a subsequent read operation of that same object.</p>", "smithy.api#httpHeader" => "x-amz-consistency-level"}))
    ListObjectParentsRequest.add_member(:include_all_links_to_each_parent, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'IncludeAllLinksToEachParent', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to True, returns all <a>ListObjectParentsResponse$ParentLinks</a>. There could be multiple links between a parent-child pair.</p>"}))
    ListObjectParentsRequest.type = Types::ListObjectParentsRequest
    ListObjectParentsResponse.add_member(:parents, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifierToLinkNameMap, location_name: 'Parents', traits: {"smithy.api#documentation" => "<p>The parent structure, which is a map with key as the <code>ObjectIdentifier</code> and\n      LinkName as the value.</p>"}))
    ListObjectParentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListObjectParentsResponse.add_member(:parent_links, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifierAndLinkNameList, location_name: 'ParentLinks', traits: {"smithy.api#documentation" => "<p>Returns a list of parent reference and LinkName Tuples.</p>"}))
    ListObjectParentsResponse.type = Types::ListObjectParentsResponse
    ListObjectPoliciesRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>\n      where objects reside. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListObjectPoliciesRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>Reference that identifies the object for which policies will be listed.</p>", "smithy.api#required" => {}}))
    ListObjectPoliciesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListObjectPoliciesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to be retrieved in a single call. This is an approximate\n      number.</p>"}))
    ListObjectPoliciesRequest.add_member(:consistency_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: 'ConsistencyLevel', traits: {"smithy.api#documentation" => "<p>Represents the manner and timing in which the successful write or update of an object\n      is reflected in a subsequent read operation of that same object.</p>", "smithy.api#httpHeader" => "x-amz-consistency-level"}))
    ListObjectPoliciesRequest.type = Types::ListObjectPoliciesRequest
    ListObjectPoliciesResponse.add_member(:attached_policy_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifierList, location_name: 'AttachedPolicyIds', traits: {"smithy.api#documentation" => "<p>A list of policy <code>ObjectIdentifiers</code>, that are attached to the\n      object.</p>"}))
    ListObjectPoliciesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListObjectPoliciesResponse.type = Types::ListObjectPoliciesResponse
    ListOutgoingTypedLinksRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the directory where you want to list the typed\n      links.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListOutgoingTypedLinksRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>A reference that identifies the object whose attributes will be listed.</p>", "smithy.api#required" => {}}))
    ListOutgoingTypedLinksRequest.add_member(:filter_attribute_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkAttributeRangeList, location_name: 'FilterAttributeRanges', traits: {"smithy.api#documentation" => "<p>Provides range filters for multiple attributes. When providing ranges to typed link\n      selection, any inexact ranges must be specified at the end. Any attributes that do not have a\n      range specified are presumed to match the entire range.</p>"}))
    ListOutgoingTypedLinksRequest.add_member(:filter_typed_link, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSchemaAndFacetName, location_name: 'FilterTypedLink', traits: {"smithy.api#documentation" => "<p>Filters are interpreted in the order of the attributes defined on the typed link facet,\n      not the order they are supplied to any API calls.</p>"}))
    ListOutgoingTypedLinksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListOutgoingTypedLinksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    ListOutgoingTypedLinksRequest.add_member(:consistency_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: 'ConsistencyLevel', traits: {"smithy.api#documentation" => "<p>The consistency level to execute the request at.</p>"}))
    ListOutgoingTypedLinksRequest.type = Types::ListOutgoingTypedLinksRequest
    ListOutgoingTypedLinksResponse.add_member(:typed_link_specifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSpecifierList, location_name: 'TypedLinkSpecifiers', traits: {"smithy.api#documentation" => "<p>Returns a typed link specifier as output.</p>"}))
    ListOutgoingTypedLinksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListOutgoingTypedLinksResponse.type = Types::ListOutgoingTypedLinksResponse
    ListPolicyAttachmentsRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>\n      where objects reside. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListPolicyAttachmentsRequest.add_member(:policy_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'PolicyReference', traits: {"smithy.api#documentation" => "<p>The reference that identifies the policy object.</p>", "smithy.api#required" => {}}))
    ListPolicyAttachmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListPolicyAttachmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to be retrieved in a single call. This is an approximate\n      number.</p>"}))
    ListPolicyAttachmentsRequest.add_member(:consistency_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistencyLevel, location_name: 'ConsistencyLevel', traits: {"smithy.api#documentation" => "<p>Represents the manner and timing in which the successful write or update of an object\n      is reflected in a subsequent read operation of that same object.</p>", "smithy.api#httpHeader" => "x-amz-consistency-level"}))
    ListPolicyAttachmentsRequest.type = Types::ListPolicyAttachmentsRequest
    ListPolicyAttachmentsResponse.add_member(:object_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifierList, location_name: 'ObjectIdentifiers', traits: {"smithy.api#documentation" => "<p>A list of <code>ObjectIdentifiers</code> to which the policy is attached.</p>"}))
    ListPolicyAttachmentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListPolicyAttachmentsResponse.type = Types::ListPolicyAttachmentsResponse
    ListPublishedSchemaArnsRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The response for <code>ListPublishedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>"}))
    ListPublishedSchemaArnsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListPublishedSchemaArnsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    ListPublishedSchemaArnsRequest.type = Types::ListPublishedSchemaArnsRequest
    ListPublishedSchemaArnsResponse.add_member(:schema_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: Arns, location_name: 'SchemaArns', traits: {"smithy.api#documentation" => "<p>The ARNs of published schemas.</p>"}))
    ListPublishedSchemaArnsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListPublishedSchemaArnsResponse.type = Types::ListPublishedSchemaArnsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for\n      directories.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token. This is for future use. Currently pagination is not supported for\n      tagging.</p>"}))
    ListTagsForResourceRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsNumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The <code>MaxResults</code> parameter sets the maximum number of results returned in a\n      single page. This is for future use and is not supported currently.</p>"}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag key value pairs that are associated with the response.</p>"}))
    ListTagsForResourceResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTypedLinkFacetAttributesRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the schema. For more\n      information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListTypedLinkFacetAttributesRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The unique name of the typed link facet.</p>", "smithy.api#required" => {}}))
    ListTypedLinkFacetAttributesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListTypedLinkFacetAttributesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    ListTypedLinkFacetAttributesRequest.type = Types::ListTypedLinkFacetAttributesRequest
    ListTypedLinkFacetAttributesResponse.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkAttributeDefinitionList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>An ordered set of attributes associate with the typed link.</p>"}))
    ListTypedLinkFacetAttributesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListTypedLinkFacetAttributesResponse.type = Types::ListTypedLinkFacetAttributesResponse
    ListTypedLinkFacetNamesRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the schema. For more\n      information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListTypedLinkFacetNamesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListTypedLinkFacetNamesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to retrieve.</p>"}))
    ListTypedLinkFacetNamesRequest.type = Types::ListTypedLinkFacetNamesRequest
    ListTypedLinkFacetNamesResponse.add_member(:facet_names, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkNameList, location_name: 'FacetNames', traits: {"smithy.api#documentation" => "<p>The names of typed link facets that exist within the schema.</p>"}))
    ListTypedLinkFacetNamesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    ListTypedLinkFacetNamesResponse.type = Types::ListTypedLinkFacetNamesResponse
    LookupPolicyRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.\n      For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    LookupPolicyRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>Reference that identifies the object whose policies will be looked up.</p>", "smithy.api#required" => {}}))
    LookupPolicyRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>"}))
    LookupPolicyRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to be retrieved in a single call. This is an approximate\n      number.</p>"}))
    LookupPolicyRequest.type = Types::LookupPolicyRequest
    LookupPolicyResponse.add_member(:policy_to_path_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyToPathList, location_name: 'PolicyToPathList', traits: {"smithy.api#documentation" => "<p>Provides list of path to policies. Policies contain <code>PolicyId</code>, <code>ObjectIdentifier</code>, and\n      <code>PolicyType</code>. For more\n      information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies\">Policies</a>.</p>"}))
    LookupPolicyResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token.</p>"}))
    LookupPolicyResponse.type = Types::LookupPolicyResponse
    NotIndexException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    NotIndexException.type = Types::NotIndexException
    NotNodeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    NotNodeException.type = Types::NotNodeException
    NotPolicyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    NotPolicyException.type = Types::NotPolicyException
    ObjectAlreadyDetachedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ObjectAlreadyDetachedException.type = Types::ObjectAlreadyDetachedException
    ObjectAttributeAction.add_member(:object_attribute_action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateActionType, location_name: 'ObjectAttributeActionType', traits: {"smithy.api#documentation" => "<p>A type that can be either <code>Update</code> or <code>Delete</code>.</p>"}))
    ObjectAttributeAction.add_member(:object_attribute_update_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedAttributeValue, location_name: 'ObjectAttributeUpdateValue', traits: {"smithy.api#documentation" => "<p>The value that you want to update to.</p>"}))
    ObjectAttributeAction.type = Types::ObjectAttributeAction
    ObjectAttributeRange.add_member(:attribute_key, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey, location_name: 'AttributeKey', traits: {"smithy.api#documentation" => "<p>The key of the attribute that the attribute range covers.</p>"}))
    ObjectAttributeRange.add_member(:range, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedAttributeValueRange, location_name: 'Range', traits: {"smithy.api#documentation" => "<p>The range of attribute values being selected.</p>"}))
    ObjectAttributeRange.type = Types::ObjectAttributeRange
    ObjectAttributeRangeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectAttributeRange)
    ObjectAttributeUpdate.add_member(:object_attribute_key, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey, location_name: 'ObjectAttributeKey', traits: {"smithy.api#documentation" => "<p>The key of the attribute being updated.</p>"}))
    ObjectAttributeUpdate.add_member(:object_attribute_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectAttributeAction, location_name: 'ObjectAttributeAction', traits: {"smithy.api#documentation" => "<p>The action to perform as part of the attribute update.</p>"}))
    ObjectAttributeUpdate.type = Types::ObjectAttributeUpdate
    ObjectAttributeUpdateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectAttributeUpdate)
    ObjectIdentifierAndLinkNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifierAndLinkNameTuple)
    ObjectIdentifierAndLinkNameTuple.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The ID that is associated with the object.</p>"}))
    ObjectIdentifierAndLinkNameTuple.add_member(:link_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkName, location_name: 'LinkName', traits: {"smithy.api#documentation" => "<p>The name of the link between the parent and the child object.</p>"}))
    ObjectIdentifierAndLinkNameTuple.type = Types::ObjectIdentifierAndLinkNameTuple
    ObjectIdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier)
    ObjectIdentifierToLinkNameMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier)
    ObjectIdentifierToLinkNameMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: LinkName)
    ObjectNotDetachedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ObjectNotDetachedException.type = Types::ObjectNotDetachedException
    ObjectReference.add_member(:selector, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectorObjectReference, location_name: 'Selector', traits: {"smithy.api#documentation" => "<p>A path selector supports easy selection of an object by the parent/child links leading to it from the directory root. Use the link names from each parent/child link to construct the path. Path selectors start with a slash (/) and link names are separated by slashes. For more information about paths, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_access_objects.html\">Access Objects</a>. You can identify an object in one of the following ways:</p>\n         <ul>\n            <li>\n               <p>\n                  <i>$ObjectIdentifier</i> - An object identifier is an opaque string provided by Amazon Cloud Directory. When creating objects, the system will provide you with the identifier of the created object. An object’s identifier is immutable and no two objects will ever share the same object identifier. To identify an object with ObjectIdentifier, the ObjectIdentifier must be wrapped in double quotes. </p>\n            </li>\n            <li>\n               <p>\n                  <i>/some/path</i> - Identifies the object based on path</p>\n            </li>\n            <li>\n               <p>\n                  <i>#SomeBatchReference</i> - Identifies the object in a batch call</p>\n            </li>\n         </ul>"}))
    ObjectReference.type = Types::ObjectReference
    ObjectType.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODE', traits: {"smithy.api#enumValue" => "NODE"}))
    ObjectType.add_member(:leaf_node, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEAF_NODE', traits: {"smithy.api#enumValue" => "LEAF_NODE"}))
    ObjectType.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY', traits: {"smithy.api#enumValue" => "POLICY"}))
    ObjectType.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDEX', traits: {"smithy.api#enumValue" => "INDEX"}))
    PathToObjectIdentifiers.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: PathString, location_name: 'Path', traits: {"smithy.api#documentation" => "<p>The path that is used to identify the object starting from directory root.</p>"}))
    PathToObjectIdentifiers.add_member(:object_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifierList, location_name: 'ObjectIdentifiers', traits: {"smithy.api#documentation" => "<p>Lists <code>ObjectIdentifiers</code> starting from directory root to the object in the\n      request.</p>"}))
    PathToObjectIdentifiers.type = Types::PathToObjectIdentifiers
    PathToObjectIdentifiersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PathToObjectIdentifiers)
    PolicyAttachment.add_member(:policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'PolicyId', traits: {"smithy.api#documentation" => "<p>The ID of <code>PolicyAttachment</code>.</p>"}))
    PolicyAttachment.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>ObjectIdentifier</code> that is associated with\n      <code>PolicyAttachment</code>.</p>"}))
    PolicyAttachment.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"smithy.api#documentation" => "<p>The type of policy that can be associated with <code>PolicyAttachment</code>.</p>"}))
    PolicyAttachment.type = Types::PolicyAttachment
    PolicyAttachmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyAttachment)
    PolicyToPath.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: PathString, location_name: 'Path', traits: {"smithy.api#documentation" => "<p>The path that is referenced from the root.</p>"}))
    PolicyToPath.add_member(:policies, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyAttachmentList, location_name: 'Policies', traits: {"smithy.api#documentation" => "<p>List of policy objects.</p>"}))
    PolicyToPath.type = Types::PolicyToPath
    PolicyToPathList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyToPath)
    PublishSchemaRequest.add_member(:development_schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DevelopmentSchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the development schema. For\n      more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    PublishSchemaRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The major version under which the schema will be published. Schemas have both a major and minor version associated with them.</p>", "smithy.api#required" => {}}))
    PublishSchemaRequest.add_member(:minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'MinorVersion', traits: {"smithy.api#documentation" => "<p>The minor version under which the schema will be published. This parameter is recommended. Schemas have both a major and minor version associated with them.</p>"}))
    PublishSchemaRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The new name under which the schema will be published. If this is not provided, the\n      development schema is considered.</p>"}))
    PublishSchemaRequest.type = Types::PublishSchemaRequest
    PublishSchemaResponse.add_member(:published_schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'PublishedSchemaArn', traits: {"smithy.api#documentation" => "<p>The ARN that is associated with the published schema. For more information, see <a>arns</a>.</p>"}))
    PublishSchemaResponse.type = Types::PublishSchemaResponse
    PutSchemaFromJsonRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The ARN of the schema to update.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    PutSchemaFromJsonRequest.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaJsonDocument, location_name: 'Document', traits: {"smithy.api#documentation" => "<p>The replacement JSON schema.</p>", "smithy.api#required" => {}}))
    PutSchemaFromJsonRequest.type = Types::PutSchemaFromJsonRequest
    PutSchemaFromJsonResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the schema to update.</p>"}))
    PutSchemaFromJsonResponse.type = Types::PutSchemaFromJsonResponse
    RangeMode.add_member(:first, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIRST', traits: {"smithy.api#enumValue" => "FIRST"}))
    RangeMode.add_member(:last, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAST', traits: {"smithy.api#enumValue" => "LAST"}))
    RangeMode.add_member(:last_before_missing_values, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAST_BEFORE_MISSING_VALUES', traits: {"smithy.api#enumValue" => "LAST_BEFORE_MISSING_VALUES"}))
    RangeMode.add_member(:inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCLUSIVE', traits: {"smithy.api#enumValue" => "INCLUSIVE"}))
    RangeMode.add_member(:exclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXCLUSIVE', traits: {"smithy.api#enumValue" => "EXCLUSIVE"}))
    RemoveFacetFromObjectRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the directory in which the object resides.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    RemoveFacetFromObjectRequest.add_member(:schema_facet, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaFacet, location_name: 'SchemaFacet', traits: {"smithy.api#documentation" => "<p>The facet to remove. See <a>SchemaFacet</a> for details.</p>", "smithy.api#required" => {}}))
    RemoveFacetFromObjectRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>A reference to the object to remove the facet from.</p>", "smithy.api#required" => {}}))
    RemoveFacetFromObjectRequest.type = Types::RemoveFacetFromObjectRequest
    RemoveFacetFromObjectResponse.type = Types::RemoveFacetFromObjectResponse
    RequiredAttributeBehavior.add_member(:required_always, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRED_ALWAYS', traits: {"smithy.api#enumValue" => "REQUIRED_ALWAYS"}))
    RequiredAttributeBehavior.add_member(:not_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_REQUIRED', traits: {"smithy.api#enumValue" => "NOT_REQUIRED"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryableConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    RetryableConflictException.type = Types::RetryableConflictException
    Rule.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of attribute validation rule.</p>"}))
    Rule.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleParameterMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The minimum and maximum parameters that are associated with the rule.</p>"}))
    Rule.type = Types::Rule
    RuleMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleKey)
    RuleMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Rule)
    RuleParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleParameterKey)
    RuleParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleParameterValue)
    RuleType.add_member(:binary_length, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BINARY_LENGTH', traits: {"smithy.api#enumValue" => "BINARY_LENGTH"}))
    RuleType.add_member(:number_comparison, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMBER_COMPARISON', traits: {"smithy.api#enumValue" => "NUMBER_COMPARISON"}))
    RuleType.add_member(:string_from_set, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING_FROM_SET', traits: {"smithy.api#enumValue" => "STRING_FROM_SET"}))
    RuleType.add_member(:string_length, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING_LENGTH', traits: {"smithy.api#enumValue" => "STRING_LENGTH"}))
    SchemaAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    SchemaAlreadyExistsException.type = Types::SchemaAlreadyExistsException
    SchemaAlreadyPublishedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    SchemaAlreadyPublishedException.type = Types::SchemaAlreadyPublishedException
    SchemaFacet.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The ARN of the schema that contains the facet with no minor component. See <a>arns</a> and <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_inplaceschemaupgrade.html\">In-Place Schema Upgrade</a> for a description of when to provide minor versions.\n     If this value is set, FacetName must also be set.</p>"}))
    SchemaFacet.add_member(:facet_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetName, location_name: 'FacetName', traits: {"smithy.api#documentation" => "<p>The name of the facet. If this value is set, SchemaArn must also be set.</p>"}))
    SchemaFacet.type = Types::SchemaFacet
    SchemaFacetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaFacet)
    StillContainsLinksException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    StillContainsLinksException.type = Types::StillContainsLinksException
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key that is associated with the tag.</p>"}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value that is associated with the tag.</p>"}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for\n      directories.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag key-value pairs.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TypedAttributeValue.add_member(:string_value, Types::TypedAttributeValue::StringValue, Smithy::Schema::Shapes::ShapeRef.new(shape: StringAttributeValue, location_name: 'StringValue', traits: {"smithy.api#documentation" => "<p>A string data value.</p>"}))
    TypedAttributeValue.add_member(:binary_value, Types::TypedAttributeValue::BinaryValue, Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryAttributeValue, location_name: 'BinaryValue', traits: {"smithy.api#documentation" => "<p>A binary data value.</p>"}))
    TypedAttributeValue.add_member(:boolean_value, Types::TypedAttributeValue::BooleanValue, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanAttributeValue, location_name: 'BooleanValue', traits: {"smithy.api#documentation" => "<p>A Boolean data value.</p>"}))
    TypedAttributeValue.add_member(:number_value, Types::TypedAttributeValue::NumberValue, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberAttributeValue, location_name: 'NumberValue', traits: {"smithy.api#documentation" => "<p>A number data value.</p>"}))
    TypedAttributeValue.add_member(:datetime_value, Types::TypedAttributeValue::DatetimeValue, Smithy::Schema::Shapes::ShapeRef.new(shape: DatetimeAttributeValue, location_name: 'DatetimeValue', traits: {"smithy.api#documentation" => "<p>A date and time value.</p>"}))
    TypedAttributeValue.add_member(:unknown, Types::TypedAttributeValue::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    TypedAttributeValue.type = Types::TypedAttributeValue
    TypedAttributeValueRange.add_member(:start_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: RangeMode, location_name: 'StartMode', traits: {"smithy.api#documentation" => "<p>The inclusive or exclusive range start.</p>", "smithy.api#required" => {}}))
    TypedAttributeValueRange.add_member(:start_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedAttributeValue, location_name: 'StartValue', traits: {"smithy.api#documentation" => "<p>The value to start the range at.</p>"}))
    TypedAttributeValueRange.add_member(:end_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: RangeMode, location_name: 'EndMode', traits: {"smithy.api#documentation" => "<p>The inclusive or exclusive range end.</p>", "smithy.api#required" => {}}))
    TypedAttributeValueRange.add_member(:end_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedAttributeValue, location_name: 'EndValue', traits: {"smithy.api#documentation" => "<p>The attribute value to terminate the range at.</p>"}))
    TypedAttributeValueRange.type = Types::TypedAttributeValueRange
    TypedLinkAttributeDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The unique name of the typed link attribute.</p>", "smithy.api#required" => {}}))
    TypedLinkAttributeDefinition.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetAttributeType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the attribute.</p>", "smithy.api#required" => {}}))
    TypedLinkAttributeDefinition.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedAttributeValue, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "<p>The default value of the attribute (if configured).</p>"}))
    TypedLinkAttributeDefinition.add_member(:is_immutable, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'IsImmutable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the attribute is mutable or not.</p>"}))
    TypedLinkAttributeDefinition.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleMap, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>Validation rules that are attached to the attribute definition.</p>"}))
    TypedLinkAttributeDefinition.add_member(:required_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredAttributeBehavior, location_name: 'RequiredBehavior', traits: {"smithy.api#documentation" => "<p>The required behavior of the <code>TypedLinkAttributeDefinition</code>.</p>", "smithy.api#required" => {}}))
    TypedLinkAttributeDefinition.type = Types::TypedLinkAttributeDefinition
    TypedLinkAttributeDefinitionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkAttributeDefinition)
    TypedLinkAttributeRange.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'AttributeName', traits: {"smithy.api#documentation" => "<p>The unique name of the typed link attribute.</p>"}))
    TypedLinkAttributeRange.add_member(:range, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedAttributeValueRange, location_name: 'Range', traits: {"smithy.api#documentation" => "<p>The range of attribute values that are being selected.</p>", "smithy.api#required" => {}}))
    TypedLinkAttributeRange.type = Types::TypedLinkAttributeRange
    TypedLinkAttributeRangeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkAttributeRange)
    TypedLinkFacet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The unique name of the typed link facet.</p>", "smithy.api#required" => {}}))
    TypedLinkFacet.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkAttributeDefinitionList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>A set of key-value pairs associated with the typed link. Typed link attributes are used when you have data values that are related to the link itself, and not to one of the two objects being linked. Identity attributes also serve to distinguish the link from others of the same type between the same objects.</p>", "smithy.api#required" => {}}))
    TypedLinkFacet.add_member(:identity_attribute_order, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: 'IdentityAttributeOrder', traits: {"smithy.api#documentation" => "<p>The set of attributes that distinguish links made from this facet from each other, in the order of significance. Listing typed links can filter on the values of these attributes. See <a>ListOutgoingTypedLinks</a> and <a>ListIncomingTypedLinks</a> for details.</p>", "smithy.api#required" => {}}))
    TypedLinkFacet.type = Types::TypedLinkFacet
    TypedLinkFacetAttributeUpdate.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkAttributeDefinition, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The attribute to update.</p>", "smithy.api#required" => {}}))
    TypedLinkFacetAttributeUpdate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateActionType, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action to perform when updating the attribute.</p>", "smithy.api#required" => {}}))
    TypedLinkFacetAttributeUpdate.type = Types::TypedLinkFacetAttributeUpdate
    TypedLinkFacetAttributeUpdateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkFacetAttributeUpdate)
    TypedLinkNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkName)
    TypedLinkSchemaAndFacetName.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the schema. For more\n      information, see <a>arns</a>.</p>", "smithy.api#required" => {}}))
    TypedLinkSchemaAndFacetName.add_member(:typed_link_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkName, location_name: 'TypedLinkName', traits: {"smithy.api#documentation" => "<p>The unique name of the typed link facet.</p>", "smithy.api#required" => {}}))
    TypedLinkSchemaAndFacetName.type = Types::TypedLinkSchemaAndFacetName
    TypedLinkSpecifier.add_member(:typed_link_facet, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSchemaAndFacetName, location_name: 'TypedLinkFacet', traits: {"smithy.api#documentation" => "<p>Identifies the typed link facet that is associated with the typed link.</p>", "smithy.api#required" => {}}))
    TypedLinkSpecifier.add_member(:source_object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'SourceObjectReference', traits: {"smithy.api#documentation" => "<p>Identifies the source object that the typed link will attach to.</p>", "smithy.api#required" => {}}))
    TypedLinkSpecifier.add_member(:target_object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'TargetObjectReference', traits: {"smithy.api#documentation" => "<p>Identifies the target object that the typed link will attach to.</p>", "smithy.api#required" => {}}))
    TypedLinkSpecifier.add_member(:identity_attribute_values, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameAndValueList, location_name: 'IdentityAttributeValues', traits: {"smithy.api#documentation" => "<p>Identifies the attribute value to update.</p>", "smithy.api#required" => {}}))
    TypedLinkSpecifier.type = Types::TypedLinkSpecifier
    TypedLinkSpecifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSpecifier)
    UnsupportedIndexTypeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    UnsupportedIndexTypeException.type = Types::UnsupportedIndexTypeException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for\n      directories.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>Keys of the tag that need to be removed from the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateActionType.add_member(:create_or_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_OR_UPDATE', traits: {"smithy.api#enumValue" => "CREATE_OR_UPDATE"}))
    UpdateActionType.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    UpdateFacetRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.\n      For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    UpdateFacetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the facet.</p>", "smithy.api#required" => {}}))
    UpdateFacetRequest.add_member(:attribute_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: FacetAttributeUpdateList, location_name: 'AttributeUpdates', traits: {"smithy.api#documentation" => "<p>List of attributes that need to be updated in a given schema <a>Facet</a>.\n      Each attribute is followed by <code>AttributeAction</code>, which specifies the type of update\n      operation to perform. </p>"}))
    UpdateFacetRequest.add_member(:object_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectType, location_name: 'ObjectType', traits: {"smithy.api#documentation" => "<p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>"}))
    UpdateFacetRequest.type = Types::UpdateFacetRequest
    UpdateFacetResponse.type = Types::UpdateFacetResponse
    UpdateLinkAttributesRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the Directory where the updated typed link resides. For more information, see <a>arns</a> or <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    UpdateLinkAttributesRequest.add_member(:typed_link_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkSpecifier, location_name: 'TypedLinkSpecifier', traits: {"smithy.api#documentation" => "<p>Allows a typed link specifier to be accepted as input.</p>", "smithy.api#required" => {}}))
    UpdateLinkAttributesRequest.add_member(:attribute_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkAttributeUpdateList, location_name: 'AttributeUpdates', traits: {"smithy.api#documentation" => "<p>The attributes update structure.</p>", "smithy.api#required" => {}}))
    UpdateLinkAttributesRequest.type = Types::UpdateLinkAttributesRequest
    UpdateLinkAttributesResponse.type = Types::UpdateLinkAttributesResponse
    UpdateObjectAttributesRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>\n      where the object resides. For more information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    UpdateObjectAttributesRequest.add_member(:object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectReference, location_name: 'ObjectReference', traits: {"smithy.api#documentation" => "<p>The reference that identifies the object.</p>", "smithy.api#required" => {}}))
    UpdateObjectAttributesRequest.add_member(:attribute_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectAttributeUpdateList, location_name: 'AttributeUpdates', traits: {"smithy.api#documentation" => "<p>The attributes update structure.</p>", "smithy.api#required" => {}}))
    UpdateObjectAttributesRequest.type = Types::UpdateObjectAttributesRequest
    UpdateObjectAttributesResponse.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>ObjectIdentifier</code> of the updated object.</p>"}))
    UpdateObjectAttributesResponse.type = Types::UpdateObjectAttributesResponse
    UpdateSchemaRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the development schema. For more information, see\n        <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    UpdateSchemaRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the schema.</p>", "smithy.api#required" => {}}))
    UpdateSchemaRequest.type = Types::UpdateSchemaRequest
    UpdateSchemaResponse.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The ARN that is associated with the updated schema. For more information, see <a>arns</a>.</p>"}))
    UpdateSchemaResponse.type = Types::UpdateSchemaResponse
    UpdateTypedLinkFacetRequest.add_member(:schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SchemaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the schema. For more\n      information, see <a>arns</a>.</p>", "smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    UpdateTypedLinkFacetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The unique name of the typed link facet.</p>", "smithy.api#required" => {}}))
    UpdateTypedLinkFacetRequest.add_member(:attribute_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: TypedLinkFacetAttributeUpdateList, location_name: 'AttributeUpdates', traits: {"smithy.api#documentation" => "<p>Attributes update structure.</p>", "smithy.api#required" => {}}))
    UpdateTypedLinkFacetRequest.add_member(:identity_attribute_order, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: 'IdentityAttributeOrder', traits: {"smithy.api#documentation" => "<p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed\n      links considers the order that the attributes are defined on the typed link facet.  When\n      providing ranges to a typed link selection, any inexact ranges must be specified at the end.\n      Any attributes that do not have a range specified are presumed to match the entire range.\n      Filters are interpreted in the order of the attributes on the typed link facet, not the order\n      in which they are supplied to any API calls. For more information about identity attributes, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>", "smithy.api#required" => {}}))
    UpdateTypedLinkFacetRequest.type = Types::UpdateTypedLinkFacetRequest
    UpdateTypedLinkFacetResponse.type = Types::UpdateTypedLinkFacetResponse
    UpgradeAppliedSchemaRequest.add_member(:published_schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'PublishedSchemaArn', traits: {"smithy.api#documentation" => "<p>The revision of the published schema to upgrade the directory to.</p>", "smithy.api#required" => {}}))
    UpgradeAppliedSchemaRequest.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN for the directory to which the upgraded schema will be applied.</p>", "smithy.api#required" => {}}))
    UpgradeAppliedSchemaRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Used for testing whether the major version schemas are backward compatible or not. If schema compatibility fails, an exception would be thrown else the call would succeed but no changes will be saved. This parameter is optional.</p>"}))
    UpgradeAppliedSchemaRequest.type = Types::UpgradeAppliedSchemaRequest
    UpgradeAppliedSchemaResponse.add_member(:upgraded_schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'UpgradedSchemaArn', traits: {"smithy.api#documentation" => "<p>The ARN of the upgraded schema that is returned as part of the response.</p>"}))
    UpgradeAppliedSchemaResponse.add_member(:directory_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DirectoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the directory that is returned as part of the response.</p>"}))
    UpgradeAppliedSchemaResponse.type = Types::UpgradeAppliedSchemaResponse
    UpgradePublishedSchemaRequest.add_member(:development_schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'DevelopmentSchemaArn', traits: {"smithy.api#documentation" => "<p>The ARN of the development schema with the changes used for the upgrade.</p>", "smithy.api#required" => {}}))
    UpgradePublishedSchemaRequest.add_member(:published_schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'PublishedSchemaArn', traits: {"smithy.api#documentation" => "<p>The ARN of the published schema to be upgraded.</p>", "smithy.api#required" => {}}))
    UpgradePublishedSchemaRequest.add_member(:minor_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'MinorVersion', traits: {"smithy.api#documentation" => "<p>Identifies the minor version of the published schema that will be created. This parameter is NOT optional.</p>", "smithy.api#required" => {}}))
    UpgradePublishedSchemaRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Used for testing whether the Development schema provided is backwards compatible, or not, with the publish schema provided by the user to be upgraded. If schema compatibility fails, an exception would be thrown else the call would succeed. This parameter is optional and defaults to false.</p>"}))
    UpgradePublishedSchemaRequest.type = Types::UpgradePublishedSchemaRequest
    UpgradePublishedSchemaResponse.add_member(:upgraded_schema_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'UpgradedSchemaArn', traits: {"smithy.api#documentation" => "<p>The ARN of the upgraded schema that is returned as part of the response.</p>"}))
    UpgradePublishedSchemaResponse.type = Types::UpgradePublishedSchemaResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    AmazonCloudDirectory20170111 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.clouddirectory#AmazonCloudDirectory_20170111"
      service.name = "AmazonCloudDirectory20170111"
      service.version = "2017-01-11"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudDirectory", "arnNamespace" => "clouddirectory", "cloudFormationName" => "CloudDirectory", "cloudTrailEventSource" => "clouddirectory.amazonaws.com", "endpointPrefix" => "clouddirectory"}, "aws.auth#sigv4" => {"name" => "clouddirectory"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon CloudDirectory"}
      service.add_operation(:add_facet_to_object, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#AddFacetToObject"
        operation.name = "AddFacetToObject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddFacetToObjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddFacetToObjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/object/facets", "code" => 200}}
      end)
      service.add_operation(:apply_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ApplySchema"
        operation.name = "ApplySchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplySchemaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplySchemaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAttachmentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema/apply", "code" => 200}}
      end)
      service.add_operation(:attach_object, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#AttachObject"
        operation.name = "AttachObject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachObjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachObjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAttachmentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LinkNameAlreadyInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/object/attach", "code" => 200}}
      end)
      service.add_operation(:attach_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#AttachPolicy"
        operation.name = "AttachPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/policy/attach", "code" => 200}}
      end)
      service.add_operation(:attach_to_index, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#AttachToIndex"
        operation.name = "AttachToIndex"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachToIndexRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachToIndexResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IndexedAttributeMissingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAttachmentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LinkNameAlreadyInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotIndexException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/index/attach", "code" => 200}}
      end)
      service.add_operation(:attach_typed_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#AttachTypedLink"
        operation.name = "AttachTypedLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachTypedLinkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachTypedLinkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAttachmentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/attach", "code" => 200}}
      end)
      service.add_operation(:batch_read, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#BatchRead"
        operation.name = "BatchRead"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchReadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchReadResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/batchread", "code" => 200}}
      end)
      service.add_operation(:batch_write, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#BatchWrite"
        operation.name = "BatchWrite"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchWriteRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchWriteResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchWriteException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/batchwrite", "code" => 200}}
      end)
      service.add_operation(:create_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#CreateDirectory"
        operation.name = "CreateDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/directory/create", "code" => 200}}
      end)
      service.add_operation(:create_facet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#CreateFacet"
        operation.name = "CreateFacet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFacetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFacetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRuleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/facet/create", "code" => 200}}
      end)
      service.add_operation(:create_index, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#CreateIndex"
        operation.name = "CreateIndex"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIndexRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIndexResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LinkNameAlreadyInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedIndexTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/index", "code" => 200}}
      end)
      service.add_operation(:create_object, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#CreateObject"
        operation.name = "CreateObject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateObjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateObjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LinkNameAlreadyInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedIndexTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/object", "code" => 200}}
      end)
      service.add_operation(:create_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#CreateSchema"
        operation.name = "CreateSchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSchemaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSchemaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema/create", "code" => 200}}
      end)
      service.add_operation(:create_typed_link_facet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#CreateTypedLinkFacet"
        operation.name = "CreateTypedLinkFacet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTypedLinkFacetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTypedLinkFacetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRuleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/facet/create", "code" => 200}}
      end)
      service.add_operation(:delete_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DeleteDirectory"
        operation.name = "DeleteDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/directory", "code" => 200}}
      end)
      service.add_operation(:delete_facet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DeleteFacet"
        operation.name = "DeleteFacet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFacetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFacetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/facet/delete", "code" => 200}}
      end)
      service.add_operation(:delete_object, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DeleteObject"
        operation.name = "DeleteObject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteObjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteObjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectNotDetachedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/object/delete", "code" => 200}}
      end)
      service.add_operation(:delete_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DeleteSchema"
        operation.name = "DeleteSchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSchemaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSchemaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StillContainsLinksException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema", "code" => 200}}
      end)
      service.add_operation(:delete_typed_link_facet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DeleteTypedLinkFacet"
        operation.name = "DeleteTypedLinkFacet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTypedLinkFacetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTypedLinkFacetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/facet/delete", "code" => 200}}
      end)
      service.add_operation(:detach_from_index, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DetachFromIndex"
        operation.name = "DetachFromIndex"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachFromIndexRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachFromIndexResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotIndexException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectAlreadyDetachedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/index/detach", "code" => 200}}
      end)
      service.add_operation(:detach_object, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DetachObject"
        operation.name = "DetachObject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachObjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachObjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotNodeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/object/detach", "code" => 200}}
      end)
      service.add_operation(:detach_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DetachPolicy"
        operation.name = "DetachPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/policy/detach", "code" => 200}}
      end)
      service.add_operation(:detach_typed_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DetachTypedLink"
        operation.name = "DetachTypedLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachTypedLinkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/detach", "code" => 200}}
      end)
      service.add_operation(:disable_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DisableDirectory"
        operation.name = "DisableDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableDirectoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/directory/disable", "code" => 200}}
      end)
      service.add_operation(:enable_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#EnableDirectory"
        operation.name = "EnableDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableDirectoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/directory/enable", "code" => 200}}
      end)
      service.add_operation(:get_applied_schema_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetAppliedSchemaVersion"
        operation.name = "GetAppliedSchemaVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppliedSchemaVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppliedSchemaVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/schema/getappliedschema", "code" => 200}}
      end)
      service.add_operation(:get_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetDirectory"
        operation.name = "GetDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDirectoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/directory/get", "code" => 200}}
      end)
      service.add_operation(:get_facet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetFacet"
        operation.name = "GetFacet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFacetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFacetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/facet", "code" => 200}}
      end)
      service.add_operation(:get_link_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetLinkAttributes"
        operation.name = "GetLinkAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLinkAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLinkAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/attributes/get", "code" => 200}}
      end)
      service.add_operation(:get_object_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetObjectAttributes"
        operation.name = "GetObjectAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetObjectAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetObjectAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/attributes/get", "code" => 200}}
      end)
      service.add_operation(:get_object_information, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetObjectInformation"
        operation.name = "GetObjectInformation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetObjectInformationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetObjectInformationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/information", "code" => 200}}
      end)
      service.add_operation(:get_schema_as_json, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetSchemaAsJson"
        operation.name = "GetSchemaAsJson"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSchemaAsJsonRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSchemaAsJsonResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/schema/json", "code" => 200}}
      end)
      service.add_operation(:get_typed_link_facet_information, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetTypedLinkFacetInformation"
        operation.name = "GetTypedLinkFacetInformation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTypedLinkFacetInformationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTypedLinkFacetInformationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/facet/get", "code" => 200}}
      end)
      service.add_operation(:list_applied_schema_arns, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListAppliedSchemaArns"
        operation.name = "ListAppliedSchemaArns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppliedSchemaArnsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppliedSchemaArnsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/schema/applied", "code" => 200}}
        operation[:paginator] = Paginators::ListAppliedSchemaArns.new
      end)
      service.add_operation(:list_attached_indices, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListAttachedIndices"
        operation.name = "ListAttachedIndices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachedIndicesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachedIndicesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/indices", "code" => 200}}
        operation[:paginator] = Paginators::ListAttachedIndices.new
      end)
      service.add_operation(:list_development_schema_arns, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListDevelopmentSchemaArns"
        operation.name = "ListDevelopmentSchemaArns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevelopmentSchemaArnsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevelopmentSchemaArnsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/schema/development", "code" => 200}}
        operation[:paginator] = Paginators::ListDevelopmentSchemaArns.new
      end)
      service.add_operation(:list_directories, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListDirectories"
        operation.name = "ListDirectories"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDirectoriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDirectoriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/directory/list", "code" => 200}}
        operation[:paginator] = Paginators::ListDirectories.new
      end)
      service.add_operation(:list_facet_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListFacetAttributes"
        operation.name = "ListFacetAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFacetAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFacetAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/facet/attributes", "code" => 200}}
        operation[:paginator] = Paginators::ListFacetAttributes.new
      end)
      service.add_operation(:list_facet_names, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListFacetNames"
        operation.name = "ListFacetNames"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFacetNamesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFacetNamesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/facet/list", "code" => 200}}
        operation[:paginator] = Paginators::ListFacetNames.new
      end)
      service.add_operation(:list_incoming_typed_links, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListIncomingTypedLinks"
        operation.name = "ListIncomingTypedLinks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIncomingTypedLinksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIncomingTypedLinksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/incoming", "code" => 200}}
      end)
      service.add_operation(:list_index, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListIndex"
        operation.name = "ListIndex"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotIndexException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/index/targets", "code" => 200}}
        operation[:paginator] = Paginators::ListIndex.new
      end)
      service.add_operation(:list_managed_schema_arns, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListManagedSchemaArns"
        operation.name = "ListManagedSchemaArns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedSchemaArnsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedSchemaArnsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/schema/managed", "code" => 200}}
        operation[:paginator] = Paginators::ListManagedSchemaArns.new
      end)
      service.add_operation(:list_object_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListObjectAttributes"
        operation.name = "ListObjectAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListObjectAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListObjectAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/attributes", "code" => 200}}
        operation[:paginator] = Paginators::ListObjectAttributes.new
      end)
      service.add_operation(:list_object_children, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListObjectChildren"
        operation.name = "ListObjectChildren"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListObjectChildrenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListObjectChildrenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotNodeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/children", "code" => 200}}
        operation[:paginator] = Paginators::ListObjectChildren.new
      end)
      service.add_operation(:list_object_parent_paths, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListObjectParentPaths"
        operation.name = "ListObjectParentPaths"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListObjectParentPathsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListObjectParentPathsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/parentpaths", "code" => 200}}
        operation[:paginator] = Paginators::ListObjectParentPaths.new
      end)
      service.add_operation(:list_object_parents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListObjectParents"
        operation.name = "ListObjectParents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListObjectParentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListObjectParentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CannotListParentOfRootException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/parent", "code" => 200}}
        operation[:paginator] = Paginators::ListObjectParents.new
      end)
      service.add_operation(:list_object_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListObjectPolicies"
        operation.name = "ListObjectPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListObjectPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListObjectPoliciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/policy", "code" => 200}}
        operation[:paginator] = Paginators::ListObjectPolicies.new
      end)
      service.add_operation(:list_outgoing_typed_links, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListOutgoingTypedLinks"
        operation.name = "ListOutgoingTypedLinks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOutgoingTypedLinksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOutgoingTypedLinksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/outgoing", "code" => 200}}
      end)
      service.add_operation(:list_policy_attachments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListPolicyAttachments"
        operation.name = "ListPolicyAttachments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPolicyAttachmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPolicyAttachmentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/policy/attachment", "code" => 200}}
        operation[:paginator] = Paginators::ListPolicyAttachments.new
      end)
      service.add_operation(:list_published_schema_arns, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListPublishedSchemaArns"
        operation.name = "ListPublishedSchemaArns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPublishedSchemaArnsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPublishedSchemaArnsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/schema/published", "code" => 200}}
        operation[:paginator] = Paginators::ListPublishedSchemaArns.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTaggingRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/tags", "code" => 200}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_typed_link_facet_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListTypedLinkFacetAttributes"
        operation.name = "ListTypedLinkFacetAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTypedLinkFacetAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTypedLinkFacetAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes", "code" => 200}}
        operation[:paginator] = Paginators::ListTypedLinkFacetAttributes.new
      end)
      service.add_operation(:list_typed_link_facet_names, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListTypedLinkFacetNames"
        operation.name = "ListTypedLinkFacetNames"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTypedLinkFacetNamesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTypedLinkFacetNamesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/facet/list", "code" => 200}}
        operation[:paginator] = Paginators::ListTypedLinkFacetNames.new
      end)
      service.add_operation(:lookup_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#LookupPolicy"
        operation.name = "LookupPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: LookupPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: LookupPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/policy/lookup", "code" => 200}}
        operation[:paginator] = Paginators::LookupPolicy.new
      end)
      service.add_operation(:publish_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#PublishSchema"
        operation.name = "PublishSchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PublishSchemaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PublishSchemaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaAlreadyPublishedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema/publish", "code" => 200}}
      end)
      service.add_operation(:put_schema_from_json, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#PutSchemaFromJson"
        operation.name = "PutSchemaFromJson"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSchemaFromJsonRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSchemaFromJsonResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRuleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSchemaDocException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema/json", "code" => 200}}
      end)
      service.add_operation(:remove_facet_from_object, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#RemoveFacetFromObject"
        operation.name = "RemoveFacetFromObject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveFacetFromObjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveFacetFromObjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/object/facets/delete", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTaggingRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/tags/add", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTaggingRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/tags/remove", "code" => 200}}
      end)
      service.add_operation(:update_facet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UpdateFacet"
        operation.name = "UpdateFacet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFacetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFacetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFacetUpdateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRuleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/facet", "code" => 200}}
      end)
      service.add_operation(:update_link_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UpdateLinkAttributes"
        operation.name = "UpdateLinkAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLinkAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLinkAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/attributes/update", "code" => 200}}
      end)
      service.add_operation(:update_object_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UpdateObjectAttributes"
        operation.name = "UpdateObjectAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateObjectAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateObjectAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LinkNameAlreadyInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/object/update", "code" => 200}}
      end)
      service.add_operation(:update_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UpdateSchema"
        operation.name = "UpdateSchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSchemaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSchemaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema/update", "code" => 200}}
      end)
      service.add_operation(:update_typed_link_facet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UpdateTypedLinkFacet"
        operation.name = "UpdateTypedLinkFacet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTypedLinkFacetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTypedLinkFacetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FacetValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFacetUpdateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRuleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/facet", "code" => 200}}
      end)
      service.add_operation(:upgrade_applied_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UpgradeAppliedSchema"
        operation.name = "UpgradeAppliedSchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeAppliedSchemaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeAppliedSchemaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleSchemaException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAttachmentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema/upgradeapplied", "code" => 200}}
      end)
      service.add_operation(:upgrade_published_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UpgradePublishedSchema"
        operation.name = "UpgradePublishedSchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradePublishedSchemaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradePublishedSchemaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleSchemaException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAttachmentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryableConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema/upgradepublished", "code" => 200}}
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
