# frozen_string_literal: true

# This is generated code!

module Aws::CloudDirectory
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddFacetToObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#AddFacetToObjectRequest", name: "AddFacetToObjectRequest")
    AddFacetToObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#AddFacetToObjectResponse", name: "AddFacetToObjectResponse")
    ApplySchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ApplySchemaRequest", name: "ApplySchemaRequest")
    ApplySchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ApplySchemaResponse", name: "ApplySchemaResponse")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#Arn", name: "Arn")
    Arns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#Arns", name: "Arns")
    AttachObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#AttachObjectRequest", name: "AttachObjectRequest")
    AttachObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#AttachObjectResponse", name: "AttachObjectResponse")
    AttachPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#AttachPolicyRequest", name: "AttachPolicyRequest")
    AttachPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#AttachPolicyResponse", name: "AttachPolicyResponse")
    AttachToIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#AttachToIndexRequest", name: "AttachToIndexRequest")
    AttachToIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#AttachToIndexResponse", name: "AttachToIndexResponse")
    AttachTypedLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#AttachTypedLinkRequest", name: "AttachTypedLinkRequest")
    AttachTypedLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#AttachTypedLinkResponse", name: "AttachTypedLinkResponse")
    AttributeKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#AttributeKey", name: "AttributeKey")
    AttributeKeyAndValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#AttributeKeyAndValue", name: "AttributeKeyAndValue")
    AttributeKeyAndValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#AttributeKeyAndValueList", name: "AttributeKeyAndValueList")
    AttributeKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#AttributeKeyList", name: "AttributeKeyList")
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#AttributeName", name: "AttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 230}, "smithy.api#pattern" => "^[a-zA-Z0-9._:-]*$"})
    AttributeNameAndValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#AttributeNameAndValue", name: "AttributeNameAndValue")
    AttributeNameAndValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#AttributeNameAndValueList", name: "AttributeNameAndValueList")
    AttributeNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#AttributeNameList", name: "AttributeNameList")
    BatchAddFacetToObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchAddFacetToObject", name: "BatchAddFacetToObject")
    BatchAddFacetToObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchAddFacetToObjectResponse", name: "BatchAddFacetToObjectResponse")
    BatchAttachObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchAttachObject", name: "BatchAttachObject")
    BatchAttachObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchAttachObjectResponse", name: "BatchAttachObjectResponse")
    BatchAttachPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchAttachPolicy", name: "BatchAttachPolicy")
    BatchAttachPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchAttachPolicyResponse", name: "BatchAttachPolicyResponse")
    BatchAttachToIndex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchAttachToIndex", name: "BatchAttachToIndex")
    BatchAttachToIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchAttachToIndexResponse", name: "BatchAttachToIndexResponse")
    BatchAttachTypedLink = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchAttachTypedLink", name: "BatchAttachTypedLink")
    BatchAttachTypedLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchAttachTypedLinkResponse", name: "BatchAttachTypedLinkResponse")
    BatchCreateIndex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchCreateIndex", name: "BatchCreateIndex")
    BatchCreateIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchCreateIndexResponse", name: "BatchCreateIndexResponse")
    BatchCreateObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchCreateObject", name: "BatchCreateObject")
    BatchCreateObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchCreateObjectResponse", name: "BatchCreateObjectResponse")
    BatchDeleteObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchDeleteObject", name: "BatchDeleteObject")
    BatchDeleteObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchDeleteObjectResponse", name: "BatchDeleteObjectResponse")
    BatchDetachFromIndex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchDetachFromIndex", name: "BatchDetachFromIndex")
    BatchDetachFromIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchDetachFromIndexResponse", name: "BatchDetachFromIndexResponse")
    BatchDetachObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchDetachObject", name: "BatchDetachObject")
    BatchDetachObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchDetachObjectResponse", name: "BatchDetachObjectResponse")
    BatchDetachPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchDetachPolicy", name: "BatchDetachPolicy")
    BatchDetachPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchDetachPolicyResponse", name: "BatchDetachPolicyResponse")
    BatchDetachTypedLink = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchDetachTypedLink", name: "BatchDetachTypedLink")
    BatchDetachTypedLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchDetachTypedLinkResponse", name: "BatchDetachTypedLinkResponse")
    BatchGetLinkAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchGetLinkAttributes", name: "BatchGetLinkAttributes")
    BatchGetLinkAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchGetLinkAttributesResponse", name: "BatchGetLinkAttributesResponse")
    BatchGetObjectAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchGetObjectAttributes", name: "BatchGetObjectAttributes")
    BatchGetObjectAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchGetObjectAttributesResponse", name: "BatchGetObjectAttributesResponse")
    BatchGetObjectInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchGetObjectInformation", name: "BatchGetObjectInformation")
    BatchGetObjectInformationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchGetObjectInformationResponse", name: "BatchGetObjectInformationResponse")
    BatchListAttachedIndices = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListAttachedIndices", name: "BatchListAttachedIndices")
    BatchListAttachedIndicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListAttachedIndicesResponse", name: "BatchListAttachedIndicesResponse")
    BatchListIncomingTypedLinks = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListIncomingTypedLinks", name: "BatchListIncomingTypedLinks")
    BatchListIncomingTypedLinksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListIncomingTypedLinksResponse", name: "BatchListIncomingTypedLinksResponse")
    BatchListIndex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListIndex", name: "BatchListIndex")
    BatchListIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListIndexResponse", name: "BatchListIndexResponse")
    BatchListObjectAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListObjectAttributes", name: "BatchListObjectAttributes")
    BatchListObjectAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListObjectAttributesResponse", name: "BatchListObjectAttributesResponse")
    BatchListObjectChildren = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListObjectChildren", name: "BatchListObjectChildren")
    BatchListObjectChildrenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListObjectChildrenResponse", name: "BatchListObjectChildrenResponse")
    BatchListObjectParentPaths = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListObjectParentPaths", name: "BatchListObjectParentPaths")
    BatchListObjectParentPathsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListObjectParentPathsResponse", name: "BatchListObjectParentPathsResponse")
    BatchListObjectParents = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListObjectParents", name: "BatchListObjectParents")
    BatchListObjectParentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListObjectParentsResponse", name: "BatchListObjectParentsResponse")
    BatchListObjectPolicies = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListObjectPolicies", name: "BatchListObjectPolicies")
    BatchListObjectPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListObjectPoliciesResponse", name: "BatchListObjectPoliciesResponse")
    BatchListOutgoingTypedLinks = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListOutgoingTypedLinks", name: "BatchListOutgoingTypedLinks")
    BatchListOutgoingTypedLinksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListOutgoingTypedLinksResponse", name: "BatchListOutgoingTypedLinksResponse")
    BatchListPolicyAttachments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListPolicyAttachments", name: "BatchListPolicyAttachments")
    BatchListPolicyAttachmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchListPolicyAttachmentsResponse", name: "BatchListPolicyAttachmentsResponse")
    BatchLookupPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchLookupPolicy", name: "BatchLookupPolicy")
    BatchLookupPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchLookupPolicyResponse", name: "BatchLookupPolicyResponse")
    BatchOperationIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.clouddirectory#BatchOperationIndex", name: "BatchOperationIndex", traits: {"smithy.api#default" => 0})
    BatchReadException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchReadException", name: "BatchReadException")
    BatchReadExceptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.clouddirectory#BatchReadExceptionType", name: "BatchReadExceptionType")
    BatchReadOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchReadOperation", name: "BatchReadOperation")
    BatchReadOperationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#BatchReadOperationList", name: "BatchReadOperationList")
    BatchReadOperationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchReadOperationResponse", name: "BatchReadOperationResponse")
    BatchReadOperationResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#BatchReadOperationResponseList", name: "BatchReadOperationResponseList")
    BatchReadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchReadRequest", name: "BatchReadRequest")
    BatchReadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchReadResponse", name: "BatchReadResponse")
    BatchReadSuccessfulResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchReadSuccessfulResponse", name: "BatchReadSuccessfulResponse")
    BatchReferenceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#BatchReferenceName", name: "BatchReferenceName")
    BatchRemoveFacetFromObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchRemoveFacetFromObject", name: "BatchRemoveFacetFromObject")
    BatchRemoveFacetFromObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchRemoveFacetFromObjectResponse", name: "BatchRemoveFacetFromObjectResponse")
    BatchUpdateLinkAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchUpdateLinkAttributes", name: "BatchUpdateLinkAttributes")
    BatchUpdateLinkAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchUpdateLinkAttributesResponse", name: "BatchUpdateLinkAttributesResponse")
    BatchUpdateObjectAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchUpdateObjectAttributes", name: "BatchUpdateObjectAttributes")
    BatchUpdateObjectAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchUpdateObjectAttributesResponse", name: "BatchUpdateObjectAttributesResponse")
    BatchWriteException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchWriteException", name: "BatchWriteException", traits: {"smithy.api#error" => "client"})
    BatchWriteExceptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.clouddirectory#BatchWriteExceptionType", name: "BatchWriteExceptionType")
    BatchWriteOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchWriteOperation", name: "BatchWriteOperation")
    BatchWriteOperationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#BatchWriteOperationList", name: "BatchWriteOperationList")
    BatchWriteOperationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchWriteOperationResponse", name: "BatchWriteOperationResponse")
    BatchWriteOperationResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#BatchWriteOperationResponseList", name: "BatchWriteOperationResponseList")
    BatchWriteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchWriteRequest", name: "BatchWriteRequest")
    BatchWriteResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#BatchWriteResponse", name: "BatchWriteResponse")
    BinaryAttributeValue = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.clouddirectory#BinaryAttributeValue", name: "BinaryAttributeValue")
    Bool = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.clouddirectory#Bool", name: "Bool", traits: {"smithy.api#default" => false})
    BooleanAttributeValue = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.clouddirectory#BooleanAttributeValue", name: "BooleanAttributeValue")
    CannotListParentOfRootException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#CannotListParentOfRootException", name: "CannotListParentOfRootException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConsistencyLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.clouddirectory#ConsistencyLevel", name: "ConsistencyLevel")
    CreateDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#CreateDirectoryRequest", name: "CreateDirectoryRequest")
    CreateDirectoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#CreateDirectoryResponse", name: "CreateDirectoryResponse")
    CreateFacetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#CreateFacetRequest", name: "CreateFacetRequest")
    CreateFacetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#CreateFacetResponse", name: "CreateFacetResponse")
    CreateIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#CreateIndexRequest", name: "CreateIndexRequest")
    CreateIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#CreateIndexResponse", name: "CreateIndexResponse")
    CreateObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#CreateObjectRequest", name: "CreateObjectRequest")
    CreateObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#CreateObjectResponse", name: "CreateObjectResponse")
    CreateSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#CreateSchemaRequest", name: "CreateSchemaRequest")
    CreateSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#CreateSchemaResponse", name: "CreateSchemaResponse")
    CreateTypedLinkFacetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#CreateTypedLinkFacetRequest", name: "CreateTypedLinkFacetRequest")
    CreateTypedLinkFacetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#CreateTypedLinkFacetResponse", name: "CreateTypedLinkFacetResponse")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.clouddirectory#Date", name: "Date")
    DatetimeAttributeValue = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.clouddirectory#DatetimeAttributeValue", name: "DatetimeAttributeValue")
    DeleteDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DeleteDirectoryRequest", name: "DeleteDirectoryRequest")
    DeleteDirectoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DeleteDirectoryResponse", name: "DeleteDirectoryResponse")
    DeleteFacetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DeleteFacetRequest", name: "DeleteFacetRequest")
    DeleteFacetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DeleteFacetResponse", name: "DeleteFacetResponse")
    DeleteObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DeleteObjectRequest", name: "DeleteObjectRequest")
    DeleteObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DeleteObjectResponse", name: "DeleteObjectResponse")
    DeleteSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DeleteSchemaRequest", name: "DeleteSchemaRequest")
    DeleteSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DeleteSchemaResponse", name: "DeleteSchemaResponse")
    DeleteTypedLinkFacetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DeleteTypedLinkFacetRequest", name: "DeleteTypedLinkFacetRequest")
    DeleteTypedLinkFacetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DeleteTypedLinkFacetResponse", name: "DeleteTypedLinkFacetResponse")
    DetachFromIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DetachFromIndexRequest", name: "DetachFromIndexRequest")
    DetachFromIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DetachFromIndexResponse", name: "DetachFromIndexResponse")
    DetachObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DetachObjectRequest", name: "DetachObjectRequest")
    DetachObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DetachObjectResponse", name: "DetachObjectResponse")
    DetachPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DetachPolicyRequest", name: "DetachPolicyRequest")
    DetachPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DetachPolicyResponse", name: "DetachPolicyResponse")
    DetachTypedLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DetachTypedLinkRequest", name: "DetachTypedLinkRequest")
    Directory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#Directory", name: "Directory")
    DirectoryAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DirectoryAlreadyExistsException", name: "DirectoryAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DirectoryArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#DirectoryArn", name: "DirectoryArn")
    DirectoryDeletedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DirectoryDeletedException", name: "DirectoryDeletedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DirectoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#DirectoryList", name: "DirectoryList")
    DirectoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#DirectoryName", name: "DirectoryName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]*$"})
    DirectoryNotDisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DirectoryNotDisabledException", name: "DirectoryNotDisabledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DirectoryNotEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DirectoryNotEnabledException", name: "DirectoryNotEnabledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DirectoryState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.clouddirectory#DirectoryState", name: "DirectoryState")
    DisableDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DisableDirectoryRequest", name: "DisableDirectoryRequest")
    DisableDirectoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#DisableDirectoryResponse", name: "DisableDirectoryResponse")
    EnableDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#EnableDirectoryRequest", name: "EnableDirectoryRequest")
    EnableDirectoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#EnableDirectoryResponse", name: "EnableDirectoryResponse")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#ExceptionMessage", name: "ExceptionMessage")
    Facet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#Facet", name: "Facet")
    FacetAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#FacetAlreadyExistsException", name: "FacetAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    FacetAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#FacetAttribute", name: "FacetAttribute")
    FacetAttributeDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#FacetAttributeDefinition", name: "FacetAttributeDefinition")
    FacetAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#FacetAttributeList", name: "FacetAttributeList")
    FacetAttributeReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#FacetAttributeReference", name: "FacetAttributeReference")
    FacetAttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.clouddirectory#FacetAttributeType", name: "FacetAttributeType")
    FacetAttributeUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#FacetAttributeUpdate", name: "FacetAttributeUpdate")
    FacetAttributeUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#FacetAttributeUpdateList", name: "FacetAttributeUpdateList")
    FacetInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#FacetInUseException", name: "FacetInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    FacetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#FacetName", name: "FacetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]*$"})
    FacetNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#FacetNameList", name: "FacetNameList")
    FacetNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#FacetNotFoundException", name: "FacetNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    FacetStyle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.clouddirectory#FacetStyle", name: "FacetStyle")
    FacetValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#FacetValidationException", name: "FacetValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GetAppliedSchemaVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetAppliedSchemaVersionRequest", name: "GetAppliedSchemaVersionRequest")
    GetAppliedSchemaVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetAppliedSchemaVersionResponse", name: "GetAppliedSchemaVersionResponse")
    GetDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetDirectoryRequest", name: "GetDirectoryRequest")
    GetDirectoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetDirectoryResponse", name: "GetDirectoryResponse")
    GetFacetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetFacetRequest", name: "GetFacetRequest")
    GetFacetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetFacetResponse", name: "GetFacetResponse")
    GetLinkAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetLinkAttributesRequest", name: "GetLinkAttributesRequest")
    GetLinkAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetLinkAttributesResponse", name: "GetLinkAttributesResponse")
    GetObjectAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetObjectAttributesRequest", name: "GetObjectAttributesRequest")
    GetObjectAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetObjectAttributesResponse", name: "GetObjectAttributesResponse")
    GetObjectInformationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetObjectInformationRequest", name: "GetObjectInformationRequest")
    GetObjectInformationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetObjectInformationResponse", name: "GetObjectInformationResponse")
    GetSchemaAsJsonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetSchemaAsJsonRequest", name: "GetSchemaAsJsonRequest")
    GetSchemaAsJsonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetSchemaAsJsonResponse", name: "GetSchemaAsJsonResponse")
    GetTypedLinkFacetInformationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetTypedLinkFacetInformationRequest", name: "GetTypedLinkFacetInformationRequest")
    GetTypedLinkFacetInformationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#GetTypedLinkFacetInformationResponse", name: "GetTypedLinkFacetInformationResponse")
    IncompatibleSchemaException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#IncompatibleSchemaException", name: "IncompatibleSchemaException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IndexAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#IndexAttachment", name: "IndexAttachment")
    IndexAttachmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#IndexAttachmentList", name: "IndexAttachmentList")
    IndexedAttributeMissingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#IndexedAttributeMissingException", name: "IndexedAttributeMissingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#InternalServiceException", name: "InternalServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#InvalidArnException", name: "InvalidArnException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidAttachmentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#InvalidAttachmentException", name: "InvalidAttachmentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidFacetUpdateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#InvalidFacetUpdateException", name: "InvalidFacetUpdateException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRuleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#InvalidRuleException", name: "InvalidRuleException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSchemaDocException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#InvalidSchemaDocException", name: "InvalidSchemaDocException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTaggingRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#InvalidTaggingRequestException", name: "InvalidTaggingRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LinkAttributeAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#LinkAttributeAction", name: "LinkAttributeAction")
    LinkAttributeUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#LinkAttributeUpdate", name: "LinkAttributeUpdate")
    LinkAttributeUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#LinkAttributeUpdateList", name: "LinkAttributeUpdateList")
    LinkName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#LinkName", name: "LinkName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[^\\/\\[\\]\\(\\):\\{\\}\#@!?\\s\\\\;]+$"})
    LinkNameAlreadyInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#LinkNameAlreadyInUseException", name: "LinkNameAlreadyInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LinkNameToObjectIdentifierMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.clouddirectory#LinkNameToObjectIdentifierMap", name: "LinkNameToObjectIdentifierMap")
    ListAppliedSchemaArnsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListAppliedSchemaArnsRequest", name: "ListAppliedSchemaArnsRequest")
    ListAppliedSchemaArnsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListAppliedSchemaArnsResponse", name: "ListAppliedSchemaArnsResponse")
    ListAttachedIndicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListAttachedIndicesRequest", name: "ListAttachedIndicesRequest")
    ListAttachedIndicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListAttachedIndicesResponse", name: "ListAttachedIndicesResponse")
    ListDevelopmentSchemaArnsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListDevelopmentSchemaArnsRequest", name: "ListDevelopmentSchemaArnsRequest")
    ListDevelopmentSchemaArnsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListDevelopmentSchemaArnsResponse", name: "ListDevelopmentSchemaArnsResponse")
    ListDirectoriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListDirectoriesRequest", name: "ListDirectoriesRequest")
    ListDirectoriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListDirectoriesResponse", name: "ListDirectoriesResponse")
    ListFacetAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListFacetAttributesRequest", name: "ListFacetAttributesRequest")
    ListFacetAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListFacetAttributesResponse", name: "ListFacetAttributesResponse")
    ListFacetNamesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListFacetNamesRequest", name: "ListFacetNamesRequest")
    ListFacetNamesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListFacetNamesResponse", name: "ListFacetNamesResponse")
    ListIncomingTypedLinksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListIncomingTypedLinksRequest", name: "ListIncomingTypedLinksRequest")
    ListIncomingTypedLinksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListIncomingTypedLinksResponse", name: "ListIncomingTypedLinksResponse")
    ListIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListIndexRequest", name: "ListIndexRequest")
    ListIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListIndexResponse", name: "ListIndexResponse")
    ListManagedSchemaArnsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListManagedSchemaArnsRequest", name: "ListManagedSchemaArnsRequest")
    ListManagedSchemaArnsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListManagedSchemaArnsResponse", name: "ListManagedSchemaArnsResponse")
    ListObjectAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListObjectAttributesRequest", name: "ListObjectAttributesRequest")
    ListObjectAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListObjectAttributesResponse", name: "ListObjectAttributesResponse")
    ListObjectChildrenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListObjectChildrenRequest", name: "ListObjectChildrenRequest")
    ListObjectChildrenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListObjectChildrenResponse", name: "ListObjectChildrenResponse")
    ListObjectParentPathsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListObjectParentPathsRequest", name: "ListObjectParentPathsRequest")
    ListObjectParentPathsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListObjectParentPathsResponse", name: "ListObjectParentPathsResponse")
    ListObjectParentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListObjectParentsRequest", name: "ListObjectParentsRequest")
    ListObjectParentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListObjectParentsResponse", name: "ListObjectParentsResponse")
    ListObjectPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListObjectPoliciesRequest", name: "ListObjectPoliciesRequest")
    ListObjectPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListObjectPoliciesResponse", name: "ListObjectPoliciesResponse")
    ListOutgoingTypedLinksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListOutgoingTypedLinksRequest", name: "ListOutgoingTypedLinksRequest")
    ListOutgoingTypedLinksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListOutgoingTypedLinksResponse", name: "ListOutgoingTypedLinksResponse")
    ListPolicyAttachmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListPolicyAttachmentsRequest", name: "ListPolicyAttachmentsRequest")
    ListPolicyAttachmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListPolicyAttachmentsResponse", name: "ListPolicyAttachmentsResponse")
    ListPublishedSchemaArnsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListPublishedSchemaArnsRequest", name: "ListPublishedSchemaArnsRequest")
    ListPublishedSchemaArnsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListPublishedSchemaArnsResponse", name: "ListPublishedSchemaArnsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTypedLinkFacetAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListTypedLinkFacetAttributesRequest", name: "ListTypedLinkFacetAttributesRequest")
    ListTypedLinkFacetAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListTypedLinkFacetAttributesResponse", name: "ListTypedLinkFacetAttributesResponse")
    ListTypedLinkFacetNamesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListTypedLinkFacetNamesRequest", name: "ListTypedLinkFacetNamesRequest")
    ListTypedLinkFacetNamesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ListTypedLinkFacetNamesResponse", name: "ListTypedLinkFacetNamesResponse")
    LookupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#LookupPolicyRequest", name: "LookupPolicyRequest")
    LookupPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#LookupPolicyResponse", name: "LookupPolicyResponse")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#NextToken", name: "NextToken")
    NotIndexException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#NotIndexException", name: "NotIndexException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NotNodeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#NotNodeException", name: "NotNodeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NotPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#NotPolicyException", name: "NotPolicyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NumberAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#NumberAttributeValue", name: "NumberAttributeValue")
    NumberResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.clouddirectory#NumberResults", name: "NumberResults", traits: {"smithy.api#range" => {"min" => 1}})
    ObjectAlreadyDetachedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ObjectAlreadyDetachedException", name: "ObjectAlreadyDetachedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ObjectAttributeAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ObjectAttributeAction", name: "ObjectAttributeAction")
    ObjectAttributeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ObjectAttributeRange", name: "ObjectAttributeRange")
    ObjectAttributeRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#ObjectAttributeRangeList", name: "ObjectAttributeRangeList")
    ObjectAttributeUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ObjectAttributeUpdate", name: "ObjectAttributeUpdate")
    ObjectAttributeUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#ObjectAttributeUpdateList", name: "ObjectAttributeUpdateList")
    ObjectIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#ObjectIdentifier", name: "ObjectIdentifier")
    ObjectIdentifierAndLinkNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#ObjectIdentifierAndLinkNameList", name: "ObjectIdentifierAndLinkNameList")
    ObjectIdentifierAndLinkNameTuple = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ObjectIdentifierAndLinkNameTuple", name: "ObjectIdentifierAndLinkNameTuple")
    ObjectIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#ObjectIdentifierList", name: "ObjectIdentifierList")
    ObjectIdentifierToLinkNameMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.clouddirectory#ObjectIdentifierToLinkNameMap", name: "ObjectIdentifierToLinkNameMap")
    ObjectNotDetachedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ObjectNotDetachedException", name: "ObjectNotDetachedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ObjectReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ObjectReference", name: "ObjectReference")
    ObjectType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.clouddirectory#ObjectType", name: "ObjectType")
    PathString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#PathString", name: "PathString")
    PathToObjectIdentifiers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#PathToObjectIdentifiers", name: "PathToObjectIdentifiers")
    PathToObjectIdentifiersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#PathToObjectIdentifiersList", name: "PathToObjectIdentifiersList")
    PolicyAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#PolicyAttachment", name: "PolicyAttachment")
    PolicyAttachmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#PolicyAttachmentList", name: "PolicyAttachmentList")
    PolicyToPath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#PolicyToPath", name: "PolicyToPath")
    PolicyToPathList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#PolicyToPathList", name: "PolicyToPathList")
    PolicyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#PolicyType", name: "PolicyType")
    PublishSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#PublishSchemaRequest", name: "PublishSchemaRequest")
    PublishSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#PublishSchemaResponse", name: "PublishSchemaResponse")
    PutSchemaFromJsonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#PutSchemaFromJsonRequest", name: "PutSchemaFromJsonRequest")
    PutSchemaFromJsonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#PutSchemaFromJsonResponse", name: "PutSchemaFromJsonResponse")
    RangeMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.clouddirectory#RangeMode", name: "RangeMode")
    RemoveFacetFromObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#RemoveFacetFromObjectRequest", name: "RemoveFacetFromObjectRequest")
    RemoveFacetFromObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#RemoveFacetFromObjectResponse", name: "RemoveFacetFromObjectResponse")
    RequiredAttributeBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.clouddirectory#RequiredAttributeBehavior", name: "RequiredAttributeBehavior")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryableConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#RetryableConflictException", name: "RetryableConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Rule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#Rule", name: "Rule")
    RuleKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#RuleKey", name: "RuleKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]*$"})
    RuleMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.clouddirectory#RuleMap", name: "RuleMap")
    RuleParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#RuleParameterKey", name: "RuleParameterKey")
    RuleParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.clouddirectory#RuleParameterMap", name: "RuleParameterMap")
    RuleParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#RuleParameterValue", name: "RuleParameterValue")
    RuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.clouddirectory#RuleType", name: "RuleType")
    SchemaAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#SchemaAlreadyExistsException", name: "SchemaAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SchemaAlreadyPublishedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#SchemaAlreadyPublishedException", name: "SchemaAlreadyPublishedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SchemaFacet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#SchemaFacet", name: "SchemaFacet")
    SchemaFacetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#SchemaFacetList", name: "SchemaFacetList")
    SchemaJsonDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#SchemaJsonDocument", name: "SchemaJsonDocument")
    SchemaName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#SchemaName", name: "SchemaName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]*$"})
    SelectorObjectReference = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#SelectorObjectReference", name: "SelectorObjectReference")
    StillContainsLinksException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#StillContainsLinksException", name: "StillContainsLinksException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StringAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#StringAttributeValue", name: "StringAttributeValue")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#TagKey", name: "TagKey")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#TagList", name: "TagList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#TagValue", name: "TagValue")
    TagsNumberResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.clouddirectory#TagsNumberResults", name: "TagsNumberResults", traits: {"smithy.api#range" => {"min" => 50}})
    TypedAttributeValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.clouddirectory#TypedAttributeValue", name: "TypedAttributeValue")
    TypedAttributeValueRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#TypedAttributeValueRange", name: "TypedAttributeValueRange")
    TypedLinkAttributeDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#TypedLinkAttributeDefinition", name: "TypedLinkAttributeDefinition")
    TypedLinkAttributeDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#TypedLinkAttributeDefinitionList", name: "TypedLinkAttributeDefinitionList")
    TypedLinkAttributeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#TypedLinkAttributeRange", name: "TypedLinkAttributeRange")
    TypedLinkAttributeRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#TypedLinkAttributeRangeList", name: "TypedLinkAttributeRangeList")
    TypedLinkFacet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#TypedLinkFacet", name: "TypedLinkFacet")
    TypedLinkFacetAttributeUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#TypedLinkFacetAttributeUpdate", name: "TypedLinkFacetAttributeUpdate")
    TypedLinkFacetAttributeUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#TypedLinkFacetAttributeUpdateList", name: "TypedLinkFacetAttributeUpdateList")
    TypedLinkName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#TypedLinkName", name: "TypedLinkName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9._-]*$"})
    TypedLinkNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#TypedLinkNameList", name: "TypedLinkNameList")
    TypedLinkSchemaAndFacetName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#TypedLinkSchemaAndFacetName", name: "TypedLinkSchemaAndFacetName")
    TypedLinkSpecifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#TypedLinkSpecifier", name: "TypedLinkSpecifier")
    TypedLinkSpecifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.clouddirectory#TypedLinkSpecifierList", name: "TypedLinkSpecifierList")
    UnsupportedIndexTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UnsupportedIndexTypeException", name: "UnsupportedIndexTypeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.clouddirectory#UpdateActionType", name: "UpdateActionType")
    UpdateFacetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UpdateFacetRequest", name: "UpdateFacetRequest")
    UpdateFacetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UpdateFacetResponse", name: "UpdateFacetResponse")
    UpdateLinkAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UpdateLinkAttributesRequest", name: "UpdateLinkAttributesRequest")
    UpdateLinkAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UpdateLinkAttributesResponse", name: "UpdateLinkAttributesResponse")
    UpdateObjectAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UpdateObjectAttributesRequest", name: "UpdateObjectAttributesRequest")
    UpdateObjectAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UpdateObjectAttributesResponse", name: "UpdateObjectAttributesResponse")
    UpdateSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UpdateSchemaRequest", name: "UpdateSchemaRequest")
    UpdateSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UpdateSchemaResponse", name: "UpdateSchemaResponse")
    UpdateTypedLinkFacetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UpdateTypedLinkFacetRequest", name: "UpdateTypedLinkFacetRequest")
    UpdateTypedLinkFacetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UpdateTypedLinkFacetResponse", name: "UpdateTypedLinkFacetResponse")
    UpgradeAppliedSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UpgradeAppliedSchemaRequest", name: "UpgradeAppliedSchemaRequest")
    UpgradeAppliedSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UpgradeAppliedSchemaResponse", name: "UpgradeAppliedSchemaResponse")
    UpgradePublishedSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UpgradePublishedSchemaRequest", name: "UpgradePublishedSchemaRequest")
    UpgradePublishedSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#UpgradePublishedSchemaResponse", name: "UpgradePublishedSchemaResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.clouddirectory#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.clouddirectory#Version", name: "Version", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]*$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AddFacetToObjectRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    AddFacetToObjectRequest.add_member(:schema_facet, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaFacet, name: "SchemaFacet", traits: {"smithy.api#required" => {}}))
    AddFacetToObjectRequest.add_member(:object_attribute_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKeyAndValueList, name: "ObjectAttributeList"))
    AddFacetToObjectRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    AddFacetToObjectRequest.type = Types::AddFacetToObjectRequest
    AddFacetToObjectResponse.type = Types::AddFacetToObjectResponse
    ApplySchemaRequest.add_member(:published_schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PublishedSchemaArn", traits: {"smithy.api#required" => {}}))
    ApplySchemaRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ApplySchemaRequest.type = Types::ApplySchemaRequest
    ApplySchemaResponse.add_member(:applied_schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AppliedSchemaArn"))
    ApplySchemaResponse.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn"))
    ApplySchemaResponse.type = Types::ApplySchemaResponse
    Arns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member"))
    AttachObjectRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    AttachObjectRequest.add_member(:parent_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ParentReference", traits: {"smithy.api#required" => {}}))
    AttachObjectRequest.add_member(:child_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ChildReference", traits: {"smithy.api#required" => {}}))
    AttachObjectRequest.add_member(:link_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkName, name: "LinkName", traits: {"smithy.api#required" => {}}))
    AttachObjectRequest.type = Types::AttachObjectRequest
    AttachObjectResponse.add_member(:attached_object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "AttachedObjectIdentifier"))
    AttachObjectResponse.type = Types::AttachObjectResponse
    AttachPolicyRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    AttachPolicyRequest.add_member(:policy_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "PolicyReference", traits: {"smithy.api#required" => {}}))
    AttachPolicyRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    AttachPolicyRequest.type = Types::AttachPolicyRequest
    AttachPolicyResponse.type = Types::AttachPolicyResponse
    AttachToIndexRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    AttachToIndexRequest.add_member(:index_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "IndexReference", traits: {"smithy.api#required" => {}}))
    AttachToIndexRequest.add_member(:target_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "TargetReference", traits: {"smithy.api#required" => {}}))
    AttachToIndexRequest.type = Types::AttachToIndexRequest
    AttachToIndexResponse.add_member(:attached_object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "AttachedObjectIdentifier"))
    AttachToIndexResponse.type = Types::AttachToIndexResponse
    AttachTypedLinkRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    AttachTypedLinkRequest.add_member(:source_object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "SourceObjectReference", traits: {"smithy.api#required" => {}}))
    AttachTypedLinkRequest.add_member(:target_object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "TargetObjectReference", traits: {"smithy.api#required" => {}}))
    AttachTypedLinkRequest.add_member(:typed_link_facet, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSchemaAndFacetName, name: "TypedLinkFacet", traits: {"smithy.api#required" => {}}))
    AttachTypedLinkRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameAndValueList, name: "Attributes", traits: {"smithy.api#required" => {}}))
    AttachTypedLinkRequest.type = Types::AttachTypedLinkRequest
    AttachTypedLinkResponse.add_member(:typed_link_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSpecifier, name: "TypedLinkSpecifier"))
    AttachTypedLinkResponse.type = Types::AttachTypedLinkResponse
    AttributeKey.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#required" => {}}))
    AttributeKey.add_member(:facet_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetName, name: "FacetName", traits: {"smithy.api#required" => {}}))
    AttributeKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "Name", traits: {"smithy.api#required" => {}}))
    AttributeKey.type = Types::AttributeKey
    AttributeKeyAndValue.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKey, name: "Key", traits: {"smithy.api#required" => {}}))
    AttributeKeyAndValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedAttributeValue, name: "Value", traits: {"smithy.api#required" => {}}))
    AttributeKeyAndValue.type = Types::AttributeKeyAndValue
    AttributeKeyAndValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKeyAndValue, name: "member"))
    AttributeKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKey, name: "member"))
    AttributeNameAndValue.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    AttributeNameAndValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedAttributeValue, name: "Value", traits: {"smithy.api#required" => {}}))
    AttributeNameAndValue.type = Types::AttributeNameAndValue
    AttributeNameAndValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameAndValue, name: "member"))
    AttributeNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "member"))
    BatchAddFacetToObject.add_member(:schema_facet, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaFacet, name: "SchemaFacet", traits: {"smithy.api#required" => {}}))
    BatchAddFacetToObject.add_member(:object_attribute_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKeyAndValueList, name: "ObjectAttributeList", traits: {"smithy.api#required" => {}}))
    BatchAddFacetToObject.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchAddFacetToObject.type = Types::BatchAddFacetToObject
    BatchAddFacetToObjectResponse.type = Types::BatchAddFacetToObjectResponse
    BatchAttachObject.add_member(:parent_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ParentReference", traits: {"smithy.api#required" => {}}))
    BatchAttachObject.add_member(:child_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ChildReference", traits: {"smithy.api#required" => {}}))
    BatchAttachObject.add_member(:link_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkName, name: "LinkName", traits: {"smithy.api#required" => {}}))
    BatchAttachObject.type = Types::BatchAttachObject
    BatchAttachObjectResponse.add_member(:attached_object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "attachedObjectIdentifier"))
    BatchAttachObjectResponse.type = Types::BatchAttachObjectResponse
    BatchAttachPolicy.add_member(:policy_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "PolicyReference", traits: {"smithy.api#required" => {}}))
    BatchAttachPolicy.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchAttachPolicy.type = Types::BatchAttachPolicy
    BatchAttachPolicyResponse.type = Types::BatchAttachPolicyResponse
    BatchAttachToIndex.add_member(:index_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "IndexReference", traits: {"smithy.api#required" => {}}))
    BatchAttachToIndex.add_member(:target_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "TargetReference", traits: {"smithy.api#required" => {}}))
    BatchAttachToIndex.type = Types::BatchAttachToIndex
    BatchAttachToIndexResponse.add_member(:attached_object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "AttachedObjectIdentifier"))
    BatchAttachToIndexResponse.type = Types::BatchAttachToIndexResponse
    BatchAttachTypedLink.add_member(:source_object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "SourceObjectReference", traits: {"smithy.api#required" => {}}))
    BatchAttachTypedLink.add_member(:target_object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "TargetObjectReference", traits: {"smithy.api#required" => {}}))
    BatchAttachTypedLink.add_member(:typed_link_facet, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSchemaAndFacetName, name: "TypedLinkFacet", traits: {"smithy.api#required" => {}}))
    BatchAttachTypedLink.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameAndValueList, name: "Attributes", traits: {"smithy.api#required" => {}}))
    BatchAttachTypedLink.type = Types::BatchAttachTypedLink
    BatchAttachTypedLinkResponse.add_member(:typed_link_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSpecifier, name: "TypedLinkSpecifier"))
    BatchAttachTypedLinkResponse.type = Types::BatchAttachTypedLinkResponse
    BatchCreateIndex.add_member(:ordered_indexed_attribute_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKeyList, name: "OrderedIndexedAttributeList", traits: {"smithy.api#required" => {}}))
    BatchCreateIndex.add_member(:is_unique, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "IsUnique", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    BatchCreateIndex.add_member(:parent_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ParentReference"))
    BatchCreateIndex.add_member(:link_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkName, name: "LinkName"))
    BatchCreateIndex.add_member(:batch_reference_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchReferenceName, name: "BatchReferenceName"))
    BatchCreateIndex.type = Types::BatchCreateIndex
    BatchCreateIndexResponse.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "ObjectIdentifier"))
    BatchCreateIndexResponse.type = Types::BatchCreateIndexResponse
    BatchCreateObject.add_member(:schema_facet, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaFacetList, name: "SchemaFacet", traits: {"smithy.api#required" => {}}))
    BatchCreateObject.add_member(:object_attribute_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKeyAndValueList, name: "ObjectAttributeList", traits: {"smithy.api#required" => {}}))
    BatchCreateObject.add_member(:parent_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ParentReference"))
    BatchCreateObject.add_member(:link_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkName, name: "LinkName"))
    BatchCreateObject.add_member(:batch_reference_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchReferenceName, name: "BatchReferenceName"))
    BatchCreateObject.type = Types::BatchCreateObject
    BatchCreateObjectResponse.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "ObjectIdentifier"))
    BatchCreateObjectResponse.type = Types::BatchCreateObjectResponse
    BatchDeleteObject.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchDeleteObject.type = Types::BatchDeleteObject
    BatchDeleteObjectResponse.type = Types::BatchDeleteObjectResponse
    BatchDetachFromIndex.add_member(:index_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "IndexReference", traits: {"smithy.api#required" => {}}))
    BatchDetachFromIndex.add_member(:target_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "TargetReference", traits: {"smithy.api#required" => {}}))
    BatchDetachFromIndex.type = Types::BatchDetachFromIndex
    BatchDetachFromIndexResponse.add_member(:detached_object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "DetachedObjectIdentifier"))
    BatchDetachFromIndexResponse.type = Types::BatchDetachFromIndexResponse
    BatchDetachObject.add_member(:parent_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ParentReference", traits: {"smithy.api#required" => {}}))
    BatchDetachObject.add_member(:link_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkName, name: "LinkName", traits: {"smithy.api#required" => {}}))
    BatchDetachObject.add_member(:batch_reference_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchReferenceName, name: "BatchReferenceName"))
    BatchDetachObject.type = Types::BatchDetachObject
    BatchDetachObjectResponse.add_member(:detached_object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "detachedObjectIdentifier"))
    BatchDetachObjectResponse.type = Types::BatchDetachObjectResponse
    BatchDetachPolicy.add_member(:policy_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "PolicyReference", traits: {"smithy.api#required" => {}}))
    BatchDetachPolicy.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchDetachPolicy.type = Types::BatchDetachPolicy
    BatchDetachPolicyResponse.type = Types::BatchDetachPolicyResponse
    BatchDetachTypedLink.add_member(:typed_link_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSpecifier, name: "TypedLinkSpecifier", traits: {"smithy.api#required" => {}}))
    BatchDetachTypedLink.type = Types::BatchDetachTypedLink
    BatchDetachTypedLinkResponse.type = Types::BatchDetachTypedLinkResponse
    BatchGetLinkAttributes.add_member(:typed_link_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSpecifier, name: "TypedLinkSpecifier", traits: {"smithy.api#required" => {}}))
    BatchGetLinkAttributes.add_member(:attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameList, name: "AttributeNames", traits: {"smithy.api#required" => {}}))
    BatchGetLinkAttributes.type = Types::BatchGetLinkAttributes
    BatchGetLinkAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKeyAndValueList, name: "Attributes"))
    BatchGetLinkAttributesResponse.type = Types::BatchGetLinkAttributesResponse
    BatchGetObjectAttributes.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchGetObjectAttributes.add_member(:schema_facet, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaFacet, name: "SchemaFacet", traits: {"smithy.api#required" => {}}))
    BatchGetObjectAttributes.add_member(:attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameList, name: "AttributeNames", traits: {"smithy.api#required" => {}}))
    BatchGetObjectAttributes.type = Types::BatchGetObjectAttributes
    BatchGetObjectAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKeyAndValueList, name: "Attributes"))
    BatchGetObjectAttributesResponse.type = Types::BatchGetObjectAttributesResponse
    BatchGetObjectInformation.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchGetObjectInformation.type = Types::BatchGetObjectInformation
    BatchGetObjectInformationResponse.add_member(:schema_facets, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaFacetList, name: "SchemaFacets"))
    BatchGetObjectInformationResponse.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "ObjectIdentifier"))
    BatchGetObjectInformationResponse.type = Types::BatchGetObjectInformationResponse
    BatchListAttachedIndices.add_member(:target_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "TargetReference", traits: {"smithy.api#required" => {}}))
    BatchListAttachedIndices.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListAttachedIndices.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    BatchListAttachedIndices.type = Types::BatchListAttachedIndices
    BatchListAttachedIndicesResponse.add_member(:index_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexAttachmentList, name: "IndexAttachments"))
    BatchListAttachedIndicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListAttachedIndicesResponse.type = Types::BatchListAttachedIndicesResponse
    BatchListIncomingTypedLinks.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchListIncomingTypedLinks.add_member(:filter_attribute_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkAttributeRangeList, name: "FilterAttributeRanges"))
    BatchListIncomingTypedLinks.add_member(:filter_typed_link, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSchemaAndFacetName, name: "FilterTypedLink"))
    BatchListIncomingTypedLinks.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListIncomingTypedLinks.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    BatchListIncomingTypedLinks.type = Types::BatchListIncomingTypedLinks
    BatchListIncomingTypedLinksResponse.add_member(:link_specifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSpecifierList, name: "LinkSpecifiers"))
    BatchListIncomingTypedLinksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListIncomingTypedLinksResponse.type = Types::BatchListIncomingTypedLinksResponse
    BatchListIndex.add_member(:ranges_on_indexed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectAttributeRangeList, name: "RangesOnIndexedValues"))
    BatchListIndex.add_member(:index_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "IndexReference", traits: {"smithy.api#required" => {}}))
    BatchListIndex.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    BatchListIndex.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListIndex.type = Types::BatchListIndex
    BatchListIndexResponse.add_member(:index_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexAttachmentList, name: "IndexAttachments"))
    BatchListIndexResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListIndexResponse.type = Types::BatchListIndexResponse
    BatchListObjectAttributes.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchListObjectAttributes.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListObjectAttributes.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    BatchListObjectAttributes.add_member(:facet_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaFacet, name: "FacetFilter"))
    BatchListObjectAttributes.type = Types::BatchListObjectAttributes
    BatchListObjectAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKeyAndValueList, name: "Attributes"))
    BatchListObjectAttributesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListObjectAttributesResponse.type = Types::BatchListObjectAttributesResponse
    BatchListObjectChildren.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchListObjectChildren.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListObjectChildren.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    BatchListObjectChildren.type = Types::BatchListObjectChildren
    BatchListObjectChildrenResponse.add_member(:children, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkNameToObjectIdentifierMap, name: "Children"))
    BatchListObjectChildrenResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListObjectChildrenResponse.type = Types::BatchListObjectChildrenResponse
    BatchListObjectParentPaths.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchListObjectParentPaths.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListObjectParentPaths.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    BatchListObjectParentPaths.type = Types::BatchListObjectParentPaths
    BatchListObjectParentPathsResponse.add_member(:path_to_object_identifiers_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PathToObjectIdentifiersList, name: "PathToObjectIdentifiersList"))
    BatchListObjectParentPathsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListObjectParentPathsResponse.type = Types::BatchListObjectParentPathsResponse
    BatchListObjectParents.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchListObjectParents.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListObjectParents.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    BatchListObjectParents.type = Types::BatchListObjectParents
    BatchListObjectParentsResponse.add_member(:parent_links, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifierAndLinkNameList, name: "ParentLinks"))
    BatchListObjectParentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListObjectParentsResponse.type = Types::BatchListObjectParentsResponse
    BatchListObjectPolicies.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchListObjectPolicies.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListObjectPolicies.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    BatchListObjectPolicies.type = Types::BatchListObjectPolicies
    BatchListObjectPoliciesResponse.add_member(:attached_policy_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifierList, name: "AttachedPolicyIds"))
    BatchListObjectPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListObjectPoliciesResponse.type = Types::BatchListObjectPoliciesResponse
    BatchListOutgoingTypedLinks.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchListOutgoingTypedLinks.add_member(:filter_attribute_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkAttributeRangeList, name: "FilterAttributeRanges"))
    BatchListOutgoingTypedLinks.add_member(:filter_typed_link, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSchemaAndFacetName, name: "FilterTypedLink"))
    BatchListOutgoingTypedLinks.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListOutgoingTypedLinks.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    BatchListOutgoingTypedLinks.type = Types::BatchListOutgoingTypedLinks
    BatchListOutgoingTypedLinksResponse.add_member(:typed_link_specifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSpecifierList, name: "TypedLinkSpecifiers"))
    BatchListOutgoingTypedLinksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListOutgoingTypedLinksResponse.type = Types::BatchListOutgoingTypedLinksResponse
    BatchListPolicyAttachments.add_member(:policy_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "PolicyReference", traits: {"smithy.api#required" => {}}))
    BatchListPolicyAttachments.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListPolicyAttachments.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    BatchListPolicyAttachments.type = Types::BatchListPolicyAttachments
    BatchListPolicyAttachmentsResponse.add_member(:object_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifierList, name: "ObjectIdentifiers"))
    BatchListPolicyAttachmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchListPolicyAttachmentsResponse.type = Types::BatchListPolicyAttachmentsResponse
    BatchLookupPolicy.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchLookupPolicy.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchLookupPolicy.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    BatchLookupPolicy.type = Types::BatchLookupPolicy
    BatchLookupPolicyResponse.add_member(:policy_to_path_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyToPathList, name: "PolicyToPathList"))
    BatchLookupPolicyResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    BatchLookupPolicyResponse.type = Types::BatchLookupPolicyResponse
    BatchReadException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchReadExceptionType, name: "Type"))
    BatchReadException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    BatchReadException.type = Types::BatchReadException
    BatchReadExceptionType.add_member(:validation_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ValidationException", traits: {"smithy.api#enumValue" => "ValidationException"}))
    BatchReadExceptionType.add_member(:invalid_arn_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidArnException", traits: {"smithy.api#enumValue" => "InvalidArnException"}))
    BatchReadExceptionType.add_member(:resource_not_found_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceNotFoundException", traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    BatchReadExceptionType.add_member(:invalid_next_token_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidNextTokenException", traits: {"smithy.api#enumValue" => "InvalidNextTokenException"}))
    BatchReadExceptionType.add_member(:access_denied_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessDeniedException", traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    BatchReadExceptionType.add_member(:not_node_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotNodeException", traits: {"smithy.api#enumValue" => "NotNodeException"}))
    BatchReadExceptionType.add_member(:facet_validation_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FacetValidationException", traits: {"smithy.api#enumValue" => "FacetValidationException"}))
    BatchReadExceptionType.add_member(:cannot_list_parent_of_root_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CannotListParentOfRootException", traits: {"smithy.api#enumValue" => "CannotListParentOfRootException"}))
    BatchReadExceptionType.add_member(:not_index_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotIndexException", traits: {"smithy.api#enumValue" => "NotIndexException"}))
    BatchReadExceptionType.add_member(:not_policy_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotPolicyException", traits: {"smithy.api#enumValue" => "NotPolicyException"}))
    BatchReadExceptionType.add_member(:directory_not_enabled_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DirectoryNotEnabledException", traits: {"smithy.api#enumValue" => "DirectoryNotEnabledException"}))
    BatchReadExceptionType.add_member(:limit_exceeded_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LimitExceededException", traits: {"smithy.api#enumValue" => "LimitExceededException"}))
    BatchReadExceptionType.add_member(:internal_service_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalServiceException", traits: {"smithy.api#enumValue" => "InternalServiceException"}))
    BatchReadOperation.add_member(:list_object_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListObjectAttributes, name: "ListObjectAttributes"))
    BatchReadOperation.add_member(:list_object_children, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListObjectChildren, name: "ListObjectChildren"))
    BatchReadOperation.add_member(:list_attached_indices, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListAttachedIndices, name: "ListAttachedIndices"))
    BatchReadOperation.add_member(:list_object_parent_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListObjectParentPaths, name: "ListObjectParentPaths"))
    BatchReadOperation.add_member(:get_object_information, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetObjectInformation, name: "GetObjectInformation"))
    BatchReadOperation.add_member(:get_object_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetObjectAttributes, name: "GetObjectAttributes"))
    BatchReadOperation.add_member(:list_object_parents, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListObjectParents, name: "ListObjectParents"))
    BatchReadOperation.add_member(:list_object_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListObjectPolicies, name: "ListObjectPolicies"))
    BatchReadOperation.add_member(:list_policy_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListPolicyAttachments, name: "ListPolicyAttachments"))
    BatchReadOperation.add_member(:lookup_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLookupPolicy, name: "LookupPolicy"))
    BatchReadOperation.add_member(:list_index, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListIndex, name: "ListIndex"))
    BatchReadOperation.add_member(:list_outgoing_typed_links, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListOutgoingTypedLinks, name: "ListOutgoingTypedLinks"))
    BatchReadOperation.add_member(:list_incoming_typed_links, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListIncomingTypedLinks, name: "ListIncomingTypedLinks"))
    BatchReadOperation.add_member(:get_link_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetLinkAttributes, name: "GetLinkAttributes"))
    BatchReadOperation.type = Types::BatchReadOperation
    BatchReadOperationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchReadOperation, name: "member"))
    BatchReadOperationResponse.add_member(:successful_response, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchReadSuccessfulResponse, name: "SuccessfulResponse"))
    BatchReadOperationResponse.add_member(:exception_response, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchReadException, name: "ExceptionResponse"))
    BatchReadOperationResponse.type = Types::BatchReadOperationResponse
    BatchReadOperationResponseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchReadOperationResponse, name: "member"))
    BatchReadRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    BatchReadRequest.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchReadOperationList, name: "Operations", traits: {"smithy.api#required" => {}}))
    BatchReadRequest.add_member(:consistency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistencyLevel, name: "ConsistencyLevel", traits: {"smithy.api#httpHeader" => "x-amz-consistency-level"}))
    BatchReadRequest.type = Types::BatchReadRequest
    BatchReadResponse.add_member(:responses, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchReadOperationResponseList, name: "Responses"))
    BatchReadResponse.type = Types::BatchReadResponse
    BatchReadSuccessfulResponse.add_member(:list_object_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListObjectAttributesResponse, name: "ListObjectAttributes"))
    BatchReadSuccessfulResponse.add_member(:list_object_children, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListObjectChildrenResponse, name: "ListObjectChildren"))
    BatchReadSuccessfulResponse.add_member(:get_object_information, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetObjectInformationResponse, name: "GetObjectInformation"))
    BatchReadSuccessfulResponse.add_member(:get_object_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetObjectAttributesResponse, name: "GetObjectAttributes"))
    BatchReadSuccessfulResponse.add_member(:list_attached_indices, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListAttachedIndicesResponse, name: "ListAttachedIndices"))
    BatchReadSuccessfulResponse.add_member(:list_object_parent_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListObjectParentPathsResponse, name: "ListObjectParentPaths"))
    BatchReadSuccessfulResponse.add_member(:list_object_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListObjectPoliciesResponse, name: "ListObjectPolicies"))
    BatchReadSuccessfulResponse.add_member(:list_policy_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListPolicyAttachmentsResponse, name: "ListPolicyAttachments"))
    BatchReadSuccessfulResponse.add_member(:lookup_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchLookupPolicyResponse, name: "LookupPolicy"))
    BatchReadSuccessfulResponse.add_member(:list_index, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListIndexResponse, name: "ListIndex"))
    BatchReadSuccessfulResponse.add_member(:list_outgoing_typed_links, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListOutgoingTypedLinksResponse, name: "ListOutgoingTypedLinks"))
    BatchReadSuccessfulResponse.add_member(:list_incoming_typed_links, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListIncomingTypedLinksResponse, name: "ListIncomingTypedLinks"))
    BatchReadSuccessfulResponse.add_member(:get_link_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetLinkAttributesResponse, name: "GetLinkAttributes"))
    BatchReadSuccessfulResponse.add_member(:list_object_parents, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchListObjectParentsResponse, name: "ListObjectParents"))
    BatchReadSuccessfulResponse.type = Types::BatchReadSuccessfulResponse
    BatchRemoveFacetFromObject.add_member(:schema_facet, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaFacet, name: "SchemaFacet", traits: {"smithy.api#required" => {}}))
    BatchRemoveFacetFromObject.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchRemoveFacetFromObject.type = Types::BatchRemoveFacetFromObject
    BatchRemoveFacetFromObjectResponse.type = Types::BatchRemoveFacetFromObjectResponse
    BatchUpdateLinkAttributes.add_member(:typed_link_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSpecifier, name: "TypedLinkSpecifier", traits: {"smithy.api#required" => {}}))
    BatchUpdateLinkAttributes.add_member(:attribute_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributeUpdateList, name: "AttributeUpdates", traits: {"smithy.api#required" => {}}))
    BatchUpdateLinkAttributes.type = Types::BatchUpdateLinkAttributes
    BatchUpdateLinkAttributesResponse.type = Types::BatchUpdateLinkAttributesResponse
    BatchUpdateObjectAttributes.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    BatchUpdateObjectAttributes.add_member(:attribute_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectAttributeUpdateList, name: "AttributeUpdates", traits: {"smithy.api#required" => {}}))
    BatchUpdateObjectAttributes.type = Types::BatchUpdateObjectAttributes
    BatchUpdateObjectAttributesResponse.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "ObjectIdentifier"))
    BatchUpdateObjectAttributesResponse.type = Types::BatchUpdateObjectAttributesResponse
    BatchWriteException.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchOperationIndex, name: "Index", traits: {"smithy.api#default" => 0}))
    BatchWriteException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchWriteExceptionType, name: "Type"))
    BatchWriteException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    BatchWriteException.type = Types::BatchWriteException
    BatchWriteExceptionType.add_member(:internal_service_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalServiceException", traits: {"smithy.api#enumValue" => "InternalServiceException"}))
    BatchWriteExceptionType.add_member(:validation_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ValidationException", traits: {"smithy.api#enumValue" => "ValidationException"}))
    BatchWriteExceptionType.add_member(:invalid_arn_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidArnException", traits: {"smithy.api#enumValue" => "InvalidArnException"}))
    BatchWriteExceptionType.add_member(:link_name_already_in_use_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LinkNameAlreadyInUseException", traits: {"smithy.api#enumValue" => "LinkNameAlreadyInUseException"}))
    BatchWriteExceptionType.add_member(:still_contains_links_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StillContainsLinksException", traits: {"smithy.api#enumValue" => "StillContainsLinksException"}))
    BatchWriteExceptionType.add_member(:facet_validation_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FacetValidationException", traits: {"smithy.api#enumValue" => "FacetValidationException"}))
    BatchWriteExceptionType.add_member(:object_not_detached_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ObjectNotDetachedException", traits: {"smithy.api#enumValue" => "ObjectNotDetachedException"}))
    BatchWriteExceptionType.add_member(:resource_not_found_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceNotFoundException", traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    BatchWriteExceptionType.add_member(:access_denied_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessDeniedException", traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    BatchWriteExceptionType.add_member(:invalid_attachment_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidAttachmentException", traits: {"smithy.api#enumValue" => "InvalidAttachmentException"}))
    BatchWriteExceptionType.add_member(:not_index_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotIndexException", traits: {"smithy.api#enumValue" => "NotIndexException"}))
    BatchWriteExceptionType.add_member(:not_node_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotNodeException", traits: {"smithy.api#enumValue" => "NotNodeException"}))
    BatchWriteExceptionType.add_member(:indexed_attribute_missing_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IndexedAttributeMissingException", traits: {"smithy.api#enumValue" => "IndexedAttributeMissingException"}))
    BatchWriteExceptionType.add_member(:object_already_detached_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ObjectAlreadyDetachedException", traits: {"smithy.api#enumValue" => "ObjectAlreadyDetachedException"}))
    BatchWriteExceptionType.add_member(:not_policy_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotPolicyException", traits: {"smithy.api#enumValue" => "NotPolicyException"}))
    BatchWriteExceptionType.add_member(:directory_not_enabled_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DirectoryNotEnabledException", traits: {"smithy.api#enumValue" => "DirectoryNotEnabledException"}))
    BatchWriteExceptionType.add_member(:limit_exceeded_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LimitExceededException", traits: {"smithy.api#enumValue" => "LimitExceededException"}))
    BatchWriteExceptionType.add_member(:unsupported_index_type_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UnsupportedIndexTypeException", traits: {"smithy.api#enumValue" => "UnsupportedIndexTypeException"}))
    BatchWriteOperation.add_member(:create_object, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateObject, name: "CreateObject"))
    BatchWriteOperation.add_member(:attach_object, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAttachObject, name: "AttachObject"))
    BatchWriteOperation.add_member(:detach_object, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDetachObject, name: "DetachObject"))
    BatchWriteOperation.add_member(:update_object_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateObjectAttributes, name: "UpdateObjectAttributes"))
    BatchWriteOperation.add_member(:delete_object, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteObject, name: "DeleteObject"))
    BatchWriteOperation.add_member(:add_facet_to_object, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAddFacetToObject, name: "AddFacetToObject"))
    BatchWriteOperation.add_member(:remove_facet_from_object, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchRemoveFacetFromObject, name: "RemoveFacetFromObject"))
    BatchWriteOperation.add_member(:attach_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAttachPolicy, name: "AttachPolicy"))
    BatchWriteOperation.add_member(:detach_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDetachPolicy, name: "DetachPolicy"))
    BatchWriteOperation.add_member(:create_index, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateIndex, name: "CreateIndex"))
    BatchWriteOperation.add_member(:attach_to_index, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAttachToIndex, name: "AttachToIndex"))
    BatchWriteOperation.add_member(:detach_from_index, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDetachFromIndex, name: "DetachFromIndex"))
    BatchWriteOperation.add_member(:attach_typed_link, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAttachTypedLink, name: "AttachTypedLink"))
    BatchWriteOperation.add_member(:detach_typed_link, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDetachTypedLink, name: "DetachTypedLink"))
    BatchWriteOperation.add_member(:update_link_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateLinkAttributes, name: "UpdateLinkAttributes"))
    BatchWriteOperation.type = Types::BatchWriteOperation
    BatchWriteOperationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchWriteOperation, name: "member"))
    BatchWriteOperationResponse.add_member(:create_object, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateObjectResponse, name: "CreateObject"))
    BatchWriteOperationResponse.add_member(:attach_object, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAttachObjectResponse, name: "AttachObject"))
    BatchWriteOperationResponse.add_member(:detach_object, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDetachObjectResponse, name: "DetachObject"))
    BatchWriteOperationResponse.add_member(:update_object_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateObjectAttributesResponse, name: "UpdateObjectAttributes"))
    BatchWriteOperationResponse.add_member(:delete_object, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteObjectResponse, name: "DeleteObject"))
    BatchWriteOperationResponse.add_member(:add_facet_to_object, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAddFacetToObjectResponse, name: "AddFacetToObject"))
    BatchWriteOperationResponse.add_member(:remove_facet_from_object, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchRemoveFacetFromObjectResponse, name: "RemoveFacetFromObject"))
    BatchWriteOperationResponse.add_member(:attach_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAttachPolicyResponse, name: "AttachPolicy"))
    BatchWriteOperationResponse.add_member(:detach_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDetachPolicyResponse, name: "DetachPolicy"))
    BatchWriteOperationResponse.add_member(:create_index, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateIndexResponse, name: "CreateIndex"))
    BatchWriteOperationResponse.add_member(:attach_to_index, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAttachToIndexResponse, name: "AttachToIndex"))
    BatchWriteOperationResponse.add_member(:detach_from_index, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDetachFromIndexResponse, name: "DetachFromIndex"))
    BatchWriteOperationResponse.add_member(:attach_typed_link, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAttachTypedLinkResponse, name: "AttachTypedLink"))
    BatchWriteOperationResponse.add_member(:detach_typed_link, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDetachTypedLinkResponse, name: "DetachTypedLink"))
    BatchWriteOperationResponse.add_member(:update_link_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateLinkAttributesResponse, name: "UpdateLinkAttributes"))
    BatchWriteOperationResponse.type = Types::BatchWriteOperationResponse
    BatchWriteOperationResponseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchWriteOperationResponse, name: "member"))
    BatchWriteRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    BatchWriteRequest.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchWriteOperationList, name: "Operations", traits: {"smithy.api#required" => {}}))
    BatchWriteRequest.type = Types::BatchWriteRequest
    BatchWriteResponse.add_member(:responses, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchWriteOperationResponseList, name: "Responses"))
    BatchWriteResponse.type = Types::BatchWriteResponse
    CannotListParentOfRootException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    CannotListParentOfRootException.type = Types::CannotListParentOfRootException
    ConsistencyLevel.add_member(:serializable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERIALIZABLE", traits: {"smithy.api#enumValue" => "SERIALIZABLE"}))
    ConsistencyLevel.add_member(:eventual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENTUAL", traits: {"smithy.api#enumValue" => "EVENTUAL"}))
    CreateDirectoryRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDirectoryRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    CreateDirectoryRequest.type = Types::CreateDirectoryRequest
    CreateDirectoryResponse.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryArn, name: "DirectoryArn", traits: {"smithy.api#required" => {}}))
    CreateDirectoryResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDirectoryResponse.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "ObjectIdentifier", traits: {"smithy.api#required" => {}}))
    CreateDirectoryResponse.add_member(:applied_schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AppliedSchemaArn", traits: {"smithy.api#required" => {}}))
    CreateDirectoryResponse.type = Types::CreateDirectoryResponse
    CreateFacetRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    CreateFacetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateFacetRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetAttributeList, name: "Attributes"))
    CreateFacetRequest.add_member(:object_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectType, name: "ObjectType"))
    CreateFacetRequest.add_member(:facet_style, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetStyle, name: "FacetStyle"))
    CreateFacetRequest.type = Types::CreateFacetRequest
    CreateFacetResponse.type = Types::CreateFacetResponse
    CreateIndexRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:ordered_indexed_attribute_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKeyList, name: "OrderedIndexedAttributeList", traits: {"smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:is_unique, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "IsUnique", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:parent_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ParentReference"))
    CreateIndexRequest.add_member(:link_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkName, name: "LinkName"))
    CreateIndexRequest.type = Types::CreateIndexRequest
    CreateIndexResponse.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "ObjectIdentifier"))
    CreateIndexResponse.type = Types::CreateIndexResponse
    CreateObjectRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    CreateObjectRequest.add_member(:schema_facets, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaFacetList, name: "SchemaFacets", traits: {"smithy.api#required" => {}}))
    CreateObjectRequest.add_member(:object_attribute_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKeyAndValueList, name: "ObjectAttributeList"))
    CreateObjectRequest.add_member(:parent_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ParentReference"))
    CreateObjectRequest.add_member(:link_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkName, name: "LinkName"))
    CreateObjectRequest.type = Types::CreateObjectRequest
    CreateObjectResponse.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "ObjectIdentifier"))
    CreateObjectResponse.type = Types::CreateObjectResponse
    CreateSchemaRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateSchemaRequest.type = Types::CreateSchemaRequest
    CreateSchemaResponse.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn"))
    CreateSchemaResponse.type = Types::CreateSchemaResponse
    CreateTypedLinkFacetRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    CreateTypedLinkFacetRequest.add_member(:facet, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkFacet, name: "Facet", traits: {"smithy.api#required" => {}}))
    CreateTypedLinkFacetRequest.type = Types::CreateTypedLinkFacetRequest
    CreateTypedLinkFacetResponse.type = Types::CreateTypedLinkFacetResponse
    DeleteDirectoryRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DeleteDirectoryRequest.type = Types::DeleteDirectoryRequest
    DeleteDirectoryResponse.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#required" => {}}))
    DeleteDirectoryResponse.type = Types::DeleteDirectoryResponse
    DeleteFacetRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DeleteFacetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteFacetRequest.type = Types::DeleteFacetRequest
    DeleteFacetResponse.type = Types::DeleteFacetResponse
    DeleteObjectRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DeleteObjectRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    DeleteObjectRequest.type = Types::DeleteObjectRequest
    DeleteObjectResponse.type = Types::DeleteObjectResponse
    DeleteSchemaRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DeleteSchemaRequest.type = Types::DeleteSchemaRequest
    DeleteSchemaResponse.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn"))
    DeleteSchemaResponse.type = Types::DeleteSchemaResponse
    DeleteTypedLinkFacetRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DeleteTypedLinkFacetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteTypedLinkFacetRequest.type = Types::DeleteTypedLinkFacetRequest
    DeleteTypedLinkFacetResponse.type = Types::DeleteTypedLinkFacetResponse
    DetachFromIndexRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DetachFromIndexRequest.add_member(:index_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "IndexReference", traits: {"smithy.api#required" => {}}))
    DetachFromIndexRequest.add_member(:target_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "TargetReference", traits: {"smithy.api#required" => {}}))
    DetachFromIndexRequest.type = Types::DetachFromIndexRequest
    DetachFromIndexResponse.add_member(:detached_object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "DetachedObjectIdentifier"))
    DetachFromIndexResponse.type = Types::DetachFromIndexResponse
    DetachObjectRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DetachObjectRequest.add_member(:parent_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ParentReference", traits: {"smithy.api#required" => {}}))
    DetachObjectRequest.add_member(:link_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkName, name: "LinkName", traits: {"smithy.api#required" => {}}))
    DetachObjectRequest.type = Types::DetachObjectRequest
    DetachObjectResponse.add_member(:detached_object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "DetachedObjectIdentifier"))
    DetachObjectResponse.type = Types::DetachObjectResponse
    DetachPolicyRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DetachPolicyRequest.add_member(:policy_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "PolicyReference", traits: {"smithy.api#required" => {}}))
    DetachPolicyRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    DetachPolicyRequest.type = Types::DetachPolicyRequest
    DetachPolicyResponse.type = Types::DetachPolicyResponse
    DetachTypedLinkRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DetachTypedLinkRequest.add_member(:typed_link_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSpecifier, name: "TypedLinkSpecifier", traits: {"smithy.api#required" => {}}))
    DetachTypedLinkRequest.type = Types::DetachTypedLinkRequest
    Directory.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "Name"))
    Directory.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryArn, name: "DirectoryArn"))
    Directory.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryState, name: "State"))
    Directory.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime"))
    Directory.type = Types::Directory
    DirectoryAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DirectoryAlreadyExistsException.type = Types::DirectoryAlreadyExistsException
    DirectoryDeletedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DirectoryDeletedException.type = Types::DirectoryDeletedException
    DirectoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Directory, name: "member"))
    DirectoryNotDisabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DirectoryNotDisabledException.type = Types::DirectoryNotDisabledException
    DirectoryNotEnabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DirectoryNotEnabledException.type = Types::DirectoryNotEnabledException
    DirectoryState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DirectoryState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DirectoryState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DisableDirectoryRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    DisableDirectoryRequest.type = Types::DisableDirectoryRequest
    DisableDirectoryResponse.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#required" => {}}))
    DisableDirectoryResponse.type = Types::DisableDirectoryResponse
    EnableDirectoryRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    EnableDirectoryRequest.type = Types::EnableDirectoryRequest
    EnableDirectoryResponse.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#required" => {}}))
    EnableDirectoryResponse.type = Types::EnableDirectoryResponse
    Facet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetName, name: "Name"))
    Facet.add_member(:object_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectType, name: "ObjectType"))
    Facet.add_member(:facet_style, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetStyle, name: "FacetStyle"))
    Facet.type = Types::Facet
    FacetAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    FacetAlreadyExistsException.type = Types::FacetAlreadyExistsException
    FacetAttribute.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "Name", traits: {"smithy.api#required" => {}}))
    FacetAttribute.add_member(:attribute_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetAttributeDefinition, name: "AttributeDefinition"))
    FacetAttribute.add_member(:attribute_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetAttributeReference, name: "AttributeReference"))
    FacetAttribute.add_member(:required_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredAttributeBehavior, name: "RequiredBehavior"))
    FacetAttribute.type = Types::FacetAttribute
    FacetAttributeDefinition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetAttributeType, name: "Type", traits: {"smithy.api#required" => {}}))
    FacetAttributeDefinition.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedAttributeValue, name: "DefaultValue"))
    FacetAttributeDefinition.add_member(:is_immutable, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "IsImmutable", traits: {"smithy.api#default" => false}))
    FacetAttributeDefinition.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleMap, name: "Rules"))
    FacetAttributeDefinition.type = Types::FacetAttributeDefinition
    FacetAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetAttribute, name: "member"))
    FacetAttributeReference.add_member(:target_facet_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetName, name: "TargetFacetName", traits: {"smithy.api#required" => {}}))
    FacetAttributeReference.add_member(:target_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "TargetAttributeName", traits: {"smithy.api#required" => {}}))
    FacetAttributeReference.type = Types::FacetAttributeReference
    FacetAttributeType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    FacetAttributeType.add_member(:binary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BINARY", traits: {"smithy.api#enumValue" => "BINARY"}))
    FacetAttributeType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    FacetAttributeType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER", traits: {"smithy.api#enumValue" => "NUMBER"}))
    FacetAttributeType.add_member(:datetime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATETIME", traits: {"smithy.api#enumValue" => "DATETIME"}))
    FacetAttributeType.add_member(:variant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VARIANT", traits: {"smithy.api#enumValue" => "VARIANT"}))
    FacetAttributeUpdate.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetAttribute, name: "Attribute"))
    FacetAttributeUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateActionType, name: "Action"))
    FacetAttributeUpdate.type = Types::FacetAttributeUpdate
    FacetAttributeUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetAttributeUpdate, name: "member"))
    FacetInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    FacetInUseException.type = Types::FacetInUseException
    FacetNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetName, name: "member"))
    FacetNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    FacetNotFoundException.type = Types::FacetNotFoundException
    FacetStyle.add_member(:static, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATIC", traits: {"smithy.api#enumValue" => "STATIC"}))
    FacetStyle.add_member(:dynamic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNAMIC", traits: {"smithy.api#enumValue" => "DYNAMIC"}))
    FacetValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    FacetValidationException.type = Types::FacetValidationException
    GetAppliedSchemaVersionRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#required" => {}}))
    GetAppliedSchemaVersionRequest.type = Types::GetAppliedSchemaVersionRequest
    GetAppliedSchemaVersionResponse.add_member(:applied_schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AppliedSchemaArn"))
    GetAppliedSchemaVersionResponse.type = Types::GetAppliedSchemaVersionResponse
    GetDirectoryRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryArn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    GetDirectoryRequest.type = Types::GetDirectoryRequest
    GetDirectoryResponse.add_member(:directory, ::Smithy::Schema::Shapes::MemberShape.new(target: Directory, name: "Directory", traits: {"smithy.api#required" => {}}))
    GetDirectoryResponse.type = Types::GetDirectoryResponse
    GetFacetRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    GetFacetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetName, name: "Name", traits: {"smithy.api#required" => {}}))
    GetFacetRequest.type = Types::GetFacetRequest
    GetFacetResponse.add_member(:facet, ::Smithy::Schema::Shapes::MemberShape.new(target: Facet, name: "Facet"))
    GetFacetResponse.type = Types::GetFacetResponse
    GetLinkAttributesRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    GetLinkAttributesRequest.add_member(:typed_link_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSpecifier, name: "TypedLinkSpecifier", traits: {"smithy.api#required" => {}}))
    GetLinkAttributesRequest.add_member(:attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameList, name: "AttributeNames", traits: {"smithy.api#required" => {}}))
    GetLinkAttributesRequest.add_member(:consistency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistencyLevel, name: "ConsistencyLevel"))
    GetLinkAttributesRequest.type = Types::GetLinkAttributesRequest
    GetLinkAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKeyAndValueList, name: "Attributes"))
    GetLinkAttributesResponse.type = Types::GetLinkAttributesResponse
    GetObjectAttributesRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    GetObjectAttributesRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    GetObjectAttributesRequest.add_member(:consistency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistencyLevel, name: "ConsistencyLevel", traits: {"smithy.api#httpHeader" => "x-amz-consistency-level"}))
    GetObjectAttributesRequest.add_member(:schema_facet, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaFacet, name: "SchemaFacet", traits: {"smithy.api#required" => {}}))
    GetObjectAttributesRequest.add_member(:attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameList, name: "AttributeNames", traits: {"smithy.api#required" => {}}))
    GetObjectAttributesRequest.type = Types::GetObjectAttributesRequest
    GetObjectAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKeyAndValueList, name: "Attributes"))
    GetObjectAttributesResponse.type = Types::GetObjectAttributesResponse
    GetObjectInformationRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    GetObjectInformationRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    GetObjectInformationRequest.add_member(:consistency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistencyLevel, name: "ConsistencyLevel", traits: {"smithy.api#httpHeader" => "x-amz-consistency-level"}))
    GetObjectInformationRequest.type = Types::GetObjectInformationRequest
    GetObjectInformationResponse.add_member(:schema_facets, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaFacetList, name: "SchemaFacets"))
    GetObjectInformationResponse.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "ObjectIdentifier"))
    GetObjectInformationResponse.type = Types::GetObjectInformationResponse
    GetSchemaAsJsonRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    GetSchemaAsJsonRequest.type = Types::GetSchemaAsJsonRequest
    GetSchemaAsJsonResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "Name"))
    GetSchemaAsJsonResponse.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaJsonDocument, name: "Document"))
    GetSchemaAsJsonResponse.type = Types::GetSchemaAsJsonResponse
    GetTypedLinkFacetInformationRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    GetTypedLinkFacetInformationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkName, name: "Name", traits: {"smithy.api#required" => {}}))
    GetTypedLinkFacetInformationRequest.type = Types::GetTypedLinkFacetInformationRequest
    GetTypedLinkFacetInformationResponse.add_member(:identity_attribute_order, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameList, name: "IdentityAttributeOrder"))
    GetTypedLinkFacetInformationResponse.type = Types::GetTypedLinkFacetInformationResponse
    IncompatibleSchemaException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    IncompatibleSchemaException.type = Types::IncompatibleSchemaException
    IndexAttachment.add_member(:indexed_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKeyAndValueList, name: "IndexedAttributes"))
    IndexAttachment.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "ObjectIdentifier"))
    IndexAttachment.type = Types::IndexAttachment
    IndexAttachmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexAttachment, name: "member"))
    IndexedAttributeMissingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    IndexedAttributeMissingException.type = Types::IndexedAttributeMissingException
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InternalServiceException.type = Types::InternalServiceException
    InvalidArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidArnException.type = Types::InvalidArnException
    InvalidAttachmentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidAttachmentException.type = Types::InvalidAttachmentException
    InvalidFacetUpdateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidFacetUpdateException.type = Types::InvalidFacetUpdateException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidRuleException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidRuleException.type = Types::InvalidRuleException
    InvalidSchemaDocException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidSchemaDocException.type = Types::InvalidSchemaDocException
    InvalidTaggingRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidTaggingRequestException.type = Types::InvalidTaggingRequestException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    LinkAttributeAction.add_member(:attribute_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateActionType, name: "AttributeActionType"))
    LinkAttributeAction.add_member(:attribute_update_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedAttributeValue, name: "AttributeUpdateValue"))
    LinkAttributeAction.type = Types::LinkAttributeAction
    LinkAttributeUpdate.add_member(:attribute_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKey, name: "AttributeKey"))
    LinkAttributeUpdate.add_member(:attribute_action, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributeAction, name: "AttributeAction"))
    LinkAttributeUpdate.type = Types::LinkAttributeUpdate
    LinkAttributeUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributeUpdate, name: "member"))
    LinkNameAlreadyInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    LinkNameAlreadyInUseException.type = Types::LinkNameAlreadyInUseException
    LinkNameToObjectIdentifierMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkName, name: "key"))
    LinkNameToObjectIdentifierMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "value"))
    ListAppliedSchemaArnsRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#required" => {}}))
    ListAppliedSchemaArnsRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn"))
    ListAppliedSchemaArnsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAppliedSchemaArnsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListAppliedSchemaArnsRequest.type = Types::ListAppliedSchemaArnsRequest
    ListAppliedSchemaArnsResponse.add_member(:schema_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: Arns, name: "SchemaArns"))
    ListAppliedSchemaArnsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAppliedSchemaArnsResponse.type = Types::ListAppliedSchemaArnsResponse
    ListAttachedIndicesRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListAttachedIndicesRequest.add_member(:target_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "TargetReference", traits: {"smithy.api#required" => {}}))
    ListAttachedIndicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAttachedIndicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListAttachedIndicesRequest.add_member(:consistency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistencyLevel, name: "ConsistencyLevel", traits: {"smithy.api#httpHeader" => "x-amz-consistency-level"}))
    ListAttachedIndicesRequest.type = Types::ListAttachedIndicesRequest
    ListAttachedIndicesResponse.add_member(:index_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexAttachmentList, name: "IndexAttachments"))
    ListAttachedIndicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAttachedIndicesResponse.type = Types::ListAttachedIndicesResponse
    ListDevelopmentSchemaArnsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDevelopmentSchemaArnsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListDevelopmentSchemaArnsRequest.type = Types::ListDevelopmentSchemaArnsRequest
    ListDevelopmentSchemaArnsResponse.add_member(:schema_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: Arns, name: "SchemaArns"))
    ListDevelopmentSchemaArnsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDevelopmentSchemaArnsResponse.type = Types::ListDevelopmentSchemaArnsResponse
    ListDirectoriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDirectoriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListDirectoriesRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryState, name: "state"))
    ListDirectoriesRequest.type = Types::ListDirectoriesRequest
    ListDirectoriesResponse.add_member(:directories, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryList, name: "Directories", traits: {"smithy.api#required" => {}}))
    ListDirectoriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDirectoriesResponse.type = Types::ListDirectoriesResponse
    ListFacetAttributesRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListFacetAttributesRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetName, name: "Name", traits: {"smithy.api#required" => {}}))
    ListFacetAttributesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFacetAttributesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListFacetAttributesRequest.type = Types::ListFacetAttributesRequest
    ListFacetAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetAttributeList, name: "Attributes"))
    ListFacetAttributesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFacetAttributesResponse.type = Types::ListFacetAttributesResponse
    ListFacetNamesRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListFacetNamesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFacetNamesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListFacetNamesRequest.type = Types::ListFacetNamesRequest
    ListFacetNamesResponse.add_member(:facet_names, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetNameList, name: "FacetNames"))
    ListFacetNamesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFacetNamesResponse.type = Types::ListFacetNamesResponse
    ListIncomingTypedLinksRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListIncomingTypedLinksRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    ListIncomingTypedLinksRequest.add_member(:filter_attribute_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkAttributeRangeList, name: "FilterAttributeRanges"))
    ListIncomingTypedLinksRequest.add_member(:filter_typed_link, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSchemaAndFacetName, name: "FilterTypedLink"))
    ListIncomingTypedLinksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListIncomingTypedLinksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListIncomingTypedLinksRequest.add_member(:consistency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistencyLevel, name: "ConsistencyLevel"))
    ListIncomingTypedLinksRequest.type = Types::ListIncomingTypedLinksRequest
    ListIncomingTypedLinksResponse.add_member(:link_specifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSpecifierList, name: "LinkSpecifiers"))
    ListIncomingTypedLinksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListIncomingTypedLinksResponse.type = Types::ListIncomingTypedLinksResponse
    ListIndexRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListIndexRequest.add_member(:ranges_on_indexed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectAttributeRangeList, name: "RangesOnIndexedValues"))
    ListIndexRequest.add_member(:index_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "IndexReference", traits: {"smithy.api#required" => {}}))
    ListIndexRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListIndexRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListIndexRequest.add_member(:consistency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistencyLevel, name: "ConsistencyLevel", traits: {"smithy.api#httpHeader" => "x-amz-consistency-level"}))
    ListIndexRequest.type = Types::ListIndexRequest
    ListIndexResponse.add_member(:index_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexAttachmentList, name: "IndexAttachments"))
    ListIndexResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListIndexResponse.type = Types::ListIndexResponse
    ListManagedSchemaArnsRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn"))
    ListManagedSchemaArnsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListManagedSchemaArnsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListManagedSchemaArnsRequest.type = Types::ListManagedSchemaArnsRequest
    ListManagedSchemaArnsResponse.add_member(:schema_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: Arns, name: "SchemaArns"))
    ListManagedSchemaArnsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListManagedSchemaArnsResponse.type = Types::ListManagedSchemaArnsResponse
    ListObjectAttributesRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListObjectAttributesRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    ListObjectAttributesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListObjectAttributesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListObjectAttributesRequest.add_member(:consistency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistencyLevel, name: "ConsistencyLevel", traits: {"smithy.api#httpHeader" => "x-amz-consistency-level"}))
    ListObjectAttributesRequest.add_member(:facet_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaFacet, name: "FacetFilter"))
    ListObjectAttributesRequest.type = Types::ListObjectAttributesRequest
    ListObjectAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKeyAndValueList, name: "Attributes"))
    ListObjectAttributesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListObjectAttributesResponse.type = Types::ListObjectAttributesResponse
    ListObjectChildrenRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListObjectChildrenRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    ListObjectChildrenRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListObjectChildrenRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListObjectChildrenRequest.add_member(:consistency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistencyLevel, name: "ConsistencyLevel", traits: {"smithy.api#httpHeader" => "x-amz-consistency-level"}))
    ListObjectChildrenRequest.type = Types::ListObjectChildrenRequest
    ListObjectChildrenResponse.add_member(:children, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkNameToObjectIdentifierMap, name: "Children"))
    ListObjectChildrenResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListObjectChildrenResponse.type = Types::ListObjectChildrenResponse
    ListObjectParentPathsRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListObjectParentPathsRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    ListObjectParentPathsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListObjectParentPathsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListObjectParentPathsRequest.type = Types::ListObjectParentPathsRequest
    ListObjectParentPathsResponse.add_member(:path_to_object_identifiers_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PathToObjectIdentifiersList, name: "PathToObjectIdentifiersList"))
    ListObjectParentPathsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListObjectParentPathsResponse.type = Types::ListObjectParentPathsResponse
    ListObjectParentsRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListObjectParentsRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    ListObjectParentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListObjectParentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListObjectParentsRequest.add_member(:consistency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistencyLevel, name: "ConsistencyLevel", traits: {"smithy.api#httpHeader" => "x-amz-consistency-level"}))
    ListObjectParentsRequest.add_member(:include_all_links_to_each_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "IncludeAllLinksToEachParent", traits: {"smithy.api#default" => false}))
    ListObjectParentsRequest.type = Types::ListObjectParentsRequest
    ListObjectParentsResponse.add_member(:parents, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifierToLinkNameMap, name: "Parents"))
    ListObjectParentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListObjectParentsResponse.add_member(:parent_links, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifierAndLinkNameList, name: "ParentLinks"))
    ListObjectParentsResponse.type = Types::ListObjectParentsResponse
    ListObjectPoliciesRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListObjectPoliciesRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    ListObjectPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListObjectPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListObjectPoliciesRequest.add_member(:consistency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistencyLevel, name: "ConsistencyLevel", traits: {"smithy.api#httpHeader" => "x-amz-consistency-level"}))
    ListObjectPoliciesRequest.type = Types::ListObjectPoliciesRequest
    ListObjectPoliciesResponse.add_member(:attached_policy_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifierList, name: "AttachedPolicyIds"))
    ListObjectPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListObjectPoliciesResponse.type = Types::ListObjectPoliciesResponse
    ListOutgoingTypedLinksRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListOutgoingTypedLinksRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    ListOutgoingTypedLinksRequest.add_member(:filter_attribute_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkAttributeRangeList, name: "FilterAttributeRanges"))
    ListOutgoingTypedLinksRequest.add_member(:filter_typed_link, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSchemaAndFacetName, name: "FilterTypedLink"))
    ListOutgoingTypedLinksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOutgoingTypedLinksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListOutgoingTypedLinksRequest.add_member(:consistency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistencyLevel, name: "ConsistencyLevel"))
    ListOutgoingTypedLinksRequest.type = Types::ListOutgoingTypedLinksRequest
    ListOutgoingTypedLinksResponse.add_member(:typed_link_specifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSpecifierList, name: "TypedLinkSpecifiers"))
    ListOutgoingTypedLinksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOutgoingTypedLinksResponse.type = Types::ListOutgoingTypedLinksResponse
    ListPolicyAttachmentsRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListPolicyAttachmentsRequest.add_member(:policy_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "PolicyReference", traits: {"smithy.api#required" => {}}))
    ListPolicyAttachmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPolicyAttachmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListPolicyAttachmentsRequest.add_member(:consistency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistencyLevel, name: "ConsistencyLevel", traits: {"smithy.api#httpHeader" => "x-amz-consistency-level"}))
    ListPolicyAttachmentsRequest.type = Types::ListPolicyAttachmentsRequest
    ListPolicyAttachmentsResponse.add_member(:object_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifierList, name: "ObjectIdentifiers"))
    ListPolicyAttachmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPolicyAttachmentsResponse.type = Types::ListPolicyAttachmentsResponse
    ListPublishedSchemaArnsRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn"))
    ListPublishedSchemaArnsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPublishedSchemaArnsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListPublishedSchemaArnsRequest.type = Types::ListPublishedSchemaArnsRequest
    ListPublishedSchemaArnsResponse.add_member(:schema_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: Arns, name: "SchemaArns"))
    ListPublishedSchemaArnsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPublishedSchemaArnsResponse.type = Types::ListPublishedSchemaArnsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsNumberResults, name: "MaxResults"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTypedLinkFacetAttributesRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListTypedLinkFacetAttributesRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkName, name: "Name", traits: {"smithy.api#required" => {}}))
    ListTypedLinkFacetAttributesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTypedLinkFacetAttributesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListTypedLinkFacetAttributesRequest.type = Types::ListTypedLinkFacetAttributesRequest
    ListTypedLinkFacetAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkAttributeDefinitionList, name: "Attributes"))
    ListTypedLinkFacetAttributesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTypedLinkFacetAttributesResponse.type = Types::ListTypedLinkFacetAttributesResponse
    ListTypedLinkFacetNamesRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    ListTypedLinkFacetNamesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTypedLinkFacetNamesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    ListTypedLinkFacetNamesRequest.type = Types::ListTypedLinkFacetNamesRequest
    ListTypedLinkFacetNamesResponse.add_member(:facet_names, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkNameList, name: "FacetNames"))
    ListTypedLinkFacetNamesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTypedLinkFacetNamesResponse.type = Types::ListTypedLinkFacetNamesResponse
    LookupPolicyRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    LookupPolicyRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    LookupPolicyRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    LookupPolicyRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberResults, name: "MaxResults"))
    LookupPolicyRequest.type = Types::LookupPolicyRequest
    LookupPolicyResponse.add_member(:policy_to_path_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyToPathList, name: "PolicyToPathList"))
    LookupPolicyResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    LookupPolicyResponse.type = Types::LookupPolicyResponse
    NotIndexException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    NotIndexException.type = Types::NotIndexException
    NotNodeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    NotNodeException.type = Types::NotNodeException
    NotPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    NotPolicyException.type = Types::NotPolicyException
    ObjectAlreadyDetachedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ObjectAlreadyDetachedException.type = Types::ObjectAlreadyDetachedException
    ObjectAttributeAction.add_member(:object_attribute_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateActionType, name: "ObjectAttributeActionType"))
    ObjectAttributeAction.add_member(:object_attribute_update_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedAttributeValue, name: "ObjectAttributeUpdateValue"))
    ObjectAttributeAction.type = Types::ObjectAttributeAction
    ObjectAttributeRange.add_member(:attribute_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKey, name: "AttributeKey"))
    ObjectAttributeRange.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedAttributeValueRange, name: "Range"))
    ObjectAttributeRange.type = Types::ObjectAttributeRange
    ObjectAttributeRangeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectAttributeRange, name: "member"))
    ObjectAttributeUpdate.add_member(:object_attribute_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKey, name: "ObjectAttributeKey"))
    ObjectAttributeUpdate.add_member(:object_attribute_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectAttributeAction, name: "ObjectAttributeAction"))
    ObjectAttributeUpdate.type = Types::ObjectAttributeUpdate
    ObjectAttributeUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectAttributeUpdate, name: "member"))
    ObjectIdentifierAndLinkNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifierAndLinkNameTuple, name: "member"))
    ObjectIdentifierAndLinkNameTuple.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "ObjectIdentifier"))
    ObjectIdentifierAndLinkNameTuple.add_member(:link_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkName, name: "LinkName"))
    ObjectIdentifierAndLinkNameTuple.type = Types::ObjectIdentifierAndLinkNameTuple
    ObjectIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "member"))
    ObjectIdentifierToLinkNameMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "key"))
    ObjectIdentifierToLinkNameMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkName, name: "value"))
    ObjectNotDetachedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ObjectNotDetachedException.type = Types::ObjectNotDetachedException
    ObjectReference.add_member(:selector, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectorObjectReference, name: "Selector"))
    ObjectReference.type = Types::ObjectReference
    ObjectType.add_member(:node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODE", traits: {"smithy.api#enumValue" => "NODE"}))
    ObjectType.add_member(:leaf_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEAF_NODE", traits: {"smithy.api#enumValue" => "LEAF_NODE"}))
    ObjectType.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY", traits: {"smithy.api#enumValue" => "POLICY"}))
    ObjectType.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INDEX", traits: {"smithy.api#enumValue" => "INDEX"}))
    PathToObjectIdentifiers.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathString, name: "Path"))
    PathToObjectIdentifiers.add_member(:object_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifierList, name: "ObjectIdentifiers"))
    PathToObjectIdentifiers.type = Types::PathToObjectIdentifiers
    PathToObjectIdentifiersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PathToObjectIdentifiers, name: "member"))
    PolicyAttachment.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "PolicyId"))
    PolicyAttachment.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "ObjectIdentifier"))
    PolicyAttachment.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "PolicyType"))
    PolicyAttachment.type = Types::PolicyAttachment
    PolicyAttachmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyAttachment, name: "member"))
    PolicyToPath.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathString, name: "Path"))
    PolicyToPath.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyAttachmentList, name: "Policies"))
    PolicyToPath.type = Types::PolicyToPath
    PolicyToPathList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyToPath, name: "member"))
    PublishSchemaRequest.add_member(:development_schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DevelopmentSchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    PublishSchemaRequest.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version", traits: {"smithy.api#required" => {}}))
    PublishSchemaRequest.add_member(:minor_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "MinorVersion"))
    PublishSchemaRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "Name"))
    PublishSchemaRequest.type = Types::PublishSchemaRequest
    PublishSchemaResponse.add_member(:published_schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PublishedSchemaArn"))
    PublishSchemaResponse.type = Types::PublishSchemaResponse
    PutSchemaFromJsonRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    PutSchemaFromJsonRequest.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaJsonDocument, name: "Document", traits: {"smithy.api#required" => {}}))
    PutSchemaFromJsonRequest.type = Types::PutSchemaFromJsonRequest
    PutSchemaFromJsonResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    PutSchemaFromJsonResponse.type = Types::PutSchemaFromJsonResponse
    RangeMode.add_member(:first, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIRST", traits: {"smithy.api#enumValue" => "FIRST"}))
    RangeMode.add_member(:last, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST", traits: {"smithy.api#enumValue" => "LAST"}))
    RangeMode.add_member(:last_before_missing_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_BEFORE_MISSING_VALUES", traits: {"smithy.api#enumValue" => "LAST_BEFORE_MISSING_VALUES"}))
    RangeMode.add_member(:inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUSIVE", traits: {"smithy.api#enumValue" => "INCLUSIVE"}))
    RangeMode.add_member(:exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUSIVE", traits: {"smithy.api#enumValue" => "EXCLUSIVE"}))
    RemoveFacetFromObjectRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    RemoveFacetFromObjectRequest.add_member(:schema_facet, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaFacet, name: "SchemaFacet", traits: {"smithy.api#required" => {}}))
    RemoveFacetFromObjectRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    RemoveFacetFromObjectRequest.type = Types::RemoveFacetFromObjectRequest
    RemoveFacetFromObjectResponse.type = Types::RemoveFacetFromObjectResponse
    RequiredAttributeBehavior.add_member(:required_always, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED_ALWAYS", traits: {"smithy.api#enumValue" => "REQUIRED_ALWAYS"}))
    RequiredAttributeBehavior.add_member(:not_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_REQUIRED", traits: {"smithy.api#enumValue" => "NOT_REQUIRED"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryableConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    RetryableConflictException.type = Types::RetryableConflictException
    Rule.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "Type"))
    Rule.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleParameterMap, name: "Parameters"))
    Rule.type = Types::Rule
    RuleMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleKey, name: "key"))
    RuleMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "value"))
    RuleParameterMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleParameterKey, name: "key"))
    RuleParameterMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleParameterValue, name: "value"))
    RuleType.add_member(:binary_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BINARY_LENGTH", traits: {"smithy.api#enumValue" => "BINARY_LENGTH"}))
    RuleType.add_member(:number_comparison, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER_COMPARISON", traits: {"smithy.api#enumValue" => "NUMBER_COMPARISON"}))
    RuleType.add_member(:string_from_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_FROM_SET", traits: {"smithy.api#enumValue" => "STRING_FROM_SET"}))
    RuleType.add_member(:string_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_LENGTH", traits: {"smithy.api#enumValue" => "STRING_LENGTH"}))
    SchemaAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    SchemaAlreadyExistsException.type = Types::SchemaAlreadyExistsException
    SchemaAlreadyPublishedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    SchemaAlreadyPublishedException.type = Types::SchemaAlreadyPublishedException
    SchemaFacet.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn"))
    SchemaFacet.add_member(:facet_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetName, name: "FacetName"))
    SchemaFacet.type = Types::SchemaFacet
    SchemaFacetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaFacet, name: "member"))
    StillContainsLinksException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    StillContainsLinksException.type = Types::StillContainsLinksException
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TypedAttributeValue.add_member(:string_value, Types::TypedAttributeValue::StringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: StringAttributeValue, name: "StringValue"))
    TypedAttributeValue.add_member(:binary_value, Types::TypedAttributeValue::BinaryValue, ::Smithy::Schema::Shapes::MemberShape.new(target: BinaryAttributeValue, name: "BinaryValue"))
    TypedAttributeValue.add_member(:boolean_value, Types::TypedAttributeValue::BooleanValue, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanAttributeValue, name: "BooleanValue"))
    TypedAttributeValue.add_member(:number_value, Types::TypedAttributeValue::NumberValue, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberAttributeValue, name: "NumberValue"))
    TypedAttributeValue.add_member(:datetime_value, Types::TypedAttributeValue::DatetimeValue, ::Smithy::Schema::Shapes::MemberShape.new(target: DatetimeAttributeValue, name: "DatetimeValue"))
    TypedAttributeValue.add_member(:unknown, Types::TypedAttributeValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TypedAttributeValue.type = Types::TypedAttributeValue
    TypedAttributeValueRange.add_member(:start_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RangeMode, name: "StartMode", traits: {"smithy.api#required" => {}}))
    TypedAttributeValueRange.add_member(:start_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedAttributeValue, name: "StartValue"))
    TypedAttributeValueRange.add_member(:end_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RangeMode, name: "EndMode", traits: {"smithy.api#required" => {}}))
    TypedAttributeValueRange.add_member(:end_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedAttributeValue, name: "EndValue"))
    TypedAttributeValueRange.type = Types::TypedAttributeValueRange
    TypedLinkAttributeDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "Name", traits: {"smithy.api#required" => {}}))
    TypedLinkAttributeDefinition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetAttributeType, name: "Type", traits: {"smithy.api#required" => {}}))
    TypedLinkAttributeDefinition.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedAttributeValue, name: "DefaultValue"))
    TypedLinkAttributeDefinition.add_member(:is_immutable, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "IsImmutable", traits: {"smithy.api#default" => false}))
    TypedLinkAttributeDefinition.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleMap, name: "Rules"))
    TypedLinkAttributeDefinition.add_member(:required_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredAttributeBehavior, name: "RequiredBehavior", traits: {"smithy.api#required" => {}}))
    TypedLinkAttributeDefinition.type = Types::TypedLinkAttributeDefinition
    TypedLinkAttributeDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkAttributeDefinition, name: "member"))
    TypedLinkAttributeRange.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "AttributeName"))
    TypedLinkAttributeRange.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedAttributeValueRange, name: "Range", traits: {"smithy.api#required" => {}}))
    TypedLinkAttributeRange.type = Types::TypedLinkAttributeRange
    TypedLinkAttributeRangeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkAttributeRange, name: "member"))
    TypedLinkFacet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkName, name: "Name", traits: {"smithy.api#required" => {}}))
    TypedLinkFacet.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkAttributeDefinitionList, name: "Attributes", traits: {"smithy.api#required" => {}}))
    TypedLinkFacet.add_member(:identity_attribute_order, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameList, name: "IdentityAttributeOrder", traits: {"smithy.api#required" => {}}))
    TypedLinkFacet.type = Types::TypedLinkFacet
    TypedLinkFacetAttributeUpdate.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkAttributeDefinition, name: "Attribute", traits: {"smithy.api#required" => {}}))
    TypedLinkFacetAttributeUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateActionType, name: "Action", traits: {"smithy.api#required" => {}}))
    TypedLinkFacetAttributeUpdate.type = Types::TypedLinkFacetAttributeUpdate
    TypedLinkFacetAttributeUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkFacetAttributeUpdate, name: "member"))
    TypedLinkNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkName, name: "member"))
    TypedLinkSchemaAndFacetName.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#required" => {}}))
    TypedLinkSchemaAndFacetName.add_member(:typed_link_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkName, name: "TypedLinkName", traits: {"smithy.api#required" => {}}))
    TypedLinkSchemaAndFacetName.type = Types::TypedLinkSchemaAndFacetName
    TypedLinkSpecifier.add_member(:typed_link_facet, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSchemaAndFacetName, name: "TypedLinkFacet", traits: {"smithy.api#required" => {}}))
    TypedLinkSpecifier.add_member(:source_object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "SourceObjectReference", traits: {"smithy.api#required" => {}}))
    TypedLinkSpecifier.add_member(:target_object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "TargetObjectReference", traits: {"smithy.api#required" => {}}))
    TypedLinkSpecifier.add_member(:identity_attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameAndValueList, name: "IdentityAttributeValues", traits: {"smithy.api#required" => {}}))
    TypedLinkSpecifier.type = Types::TypedLinkSpecifier
    TypedLinkSpecifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSpecifier, name: "member"))
    UnsupportedIndexTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    UnsupportedIndexTypeException.type = Types::UnsupportedIndexTypeException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateActionType.add_member(:create_or_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_OR_UPDATE", traits: {"smithy.api#enumValue" => "CREATE_OR_UPDATE"}))
    UpdateActionType.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    UpdateFacetRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    UpdateFacetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateFacetRequest.add_member(:attribute_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetAttributeUpdateList, name: "AttributeUpdates"))
    UpdateFacetRequest.add_member(:object_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectType, name: "ObjectType"))
    UpdateFacetRequest.type = Types::UpdateFacetRequest
    UpdateFacetResponse.type = Types::UpdateFacetResponse
    UpdateLinkAttributesRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    UpdateLinkAttributesRequest.add_member(:typed_link_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkSpecifier, name: "TypedLinkSpecifier", traits: {"smithy.api#required" => {}}))
    UpdateLinkAttributesRequest.add_member(:attribute_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributeUpdateList, name: "AttributeUpdates", traits: {"smithy.api#required" => {}}))
    UpdateLinkAttributesRequest.type = Types::UpdateLinkAttributesRequest
    UpdateLinkAttributesResponse.type = Types::UpdateLinkAttributesResponse
    UpdateObjectAttributesRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    UpdateObjectAttributesRequest.add_member(:object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectReference, name: "ObjectReference", traits: {"smithy.api#required" => {}}))
    UpdateObjectAttributesRequest.add_member(:attribute_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectAttributeUpdateList, name: "AttributeUpdates", traits: {"smithy.api#required" => {}}))
    UpdateObjectAttributesRequest.type = Types::UpdateObjectAttributesRequest
    UpdateObjectAttributesResponse.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "ObjectIdentifier"))
    UpdateObjectAttributesResponse.type = Types::UpdateObjectAttributesResponse
    UpdateSchemaRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    UpdateSchemaRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateSchemaRequest.type = Types::UpdateSchemaRequest
    UpdateSchemaResponse.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn"))
    UpdateSchemaResponse.type = Types::UpdateSchemaResponse
    UpdateTypedLinkFacetRequest.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SchemaArn", traits: {"smithy.api#httpHeader" => "x-amz-data-partition", "smithy.api#required" => {}}))
    UpdateTypedLinkFacetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateTypedLinkFacetRequest.add_member(:attribute_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: TypedLinkFacetAttributeUpdateList, name: "AttributeUpdates", traits: {"smithy.api#required" => {}}))
    UpdateTypedLinkFacetRequest.add_member(:identity_attribute_order, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameList, name: "IdentityAttributeOrder", traits: {"smithy.api#required" => {}}))
    UpdateTypedLinkFacetRequest.type = Types::UpdateTypedLinkFacetRequest
    UpdateTypedLinkFacetResponse.type = Types::UpdateTypedLinkFacetResponse
    UpgradeAppliedSchemaRequest.add_member(:published_schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PublishedSchemaArn", traits: {"smithy.api#required" => {}}))
    UpgradeAppliedSchemaRequest.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn", traits: {"smithy.api#required" => {}}))
    UpgradeAppliedSchemaRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "DryRun", traits: {"smithy.api#default" => false}))
    UpgradeAppliedSchemaRequest.type = Types::UpgradeAppliedSchemaRequest
    UpgradeAppliedSchemaResponse.add_member(:upgraded_schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "UpgradedSchemaArn"))
    UpgradeAppliedSchemaResponse.add_member(:directory_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DirectoryArn"))
    UpgradeAppliedSchemaResponse.type = Types::UpgradeAppliedSchemaResponse
    UpgradePublishedSchemaRequest.add_member(:development_schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "DevelopmentSchemaArn", traits: {"smithy.api#required" => {}}))
    UpgradePublishedSchemaRequest.add_member(:published_schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PublishedSchemaArn", traits: {"smithy.api#required" => {}}))
    UpgradePublishedSchemaRequest.add_member(:minor_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "MinorVersion", traits: {"smithy.api#required" => {}}))
    UpgradePublishedSchemaRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "DryRun", traits: {"smithy.api#default" => false}))
    UpgradePublishedSchemaRequest.type = Types::UpgradePublishedSchemaRequest
    UpgradePublishedSchemaResponse.add_member(:upgraded_schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "UpgradedSchemaArn"))
    UpgradePublishedSchemaResponse.type = Types::UpgradePublishedSchemaResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ValidationException.type = Types::ValidationException

    AmazonCloudDirectory20170111 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.clouddirectory#AmazonCloudDirectory_20170111"
      service.name = "AmazonCloudDirectory20170111"
      service.version = "2017-01-11"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudDirectory", "arnNamespace" => "clouddirectory", "cloudFormationName" => "CloudDirectory", "cloudTrailEventSource" => "clouddirectory.amazonaws.com", "endpointPrefix" => "clouddirectory"}, "aws.auth#sigv4" => {"name" => "clouddirectory"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon CloudDirectory"}
      service.add_operation(:add_facet_to_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#AddFacetToObject"
        operation.name = "AddFacetToObject"
        operation.input = AddFacetToObjectRequest
        operation.output = AddFacetToObjectResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/object/facets", "code" => 200}}
      end)
      service.add_operation(:apply_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ApplySchema"
        operation.name = "ApplySchema"
        operation.input = ApplySchemaRequest
        operation.output = ApplySchemaResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidAttachmentException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << SchemaAlreadyExistsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema/apply", "code" => 200}}
      end)
      service.add_operation(:attach_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#AttachObject"
        operation.name = "AttachObject"
        operation.input = AttachObjectRequest
        operation.output = AttachObjectResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidAttachmentException
        operation.errors << LimitExceededException
        operation.errors << LinkNameAlreadyInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/object/attach", "code" => 200}}
      end)
      service.add_operation(:attach_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#AttachPolicy"
        operation.name = "AttachPolicy"
        operation.input = AttachPolicyRequest
        operation.output = AttachPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << NotPolicyException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/policy/attach", "code" => 200}}
      end)
      service.add_operation(:attach_to_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#AttachToIndex"
        operation.name = "AttachToIndex"
        operation.input = AttachToIndexRequest
        operation.output = AttachToIndexResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << IndexedAttributeMissingException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidAttachmentException
        operation.errors << LimitExceededException
        operation.errors << LinkNameAlreadyInUseException
        operation.errors << NotIndexException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/index/attach", "code" => 200}}
      end)
      service.add_operation(:attach_typed_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#AttachTypedLink"
        operation.name = "AttachTypedLink"
        operation.input = AttachTypedLinkRequest
        operation.output = AttachTypedLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidAttachmentException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/attach", "code" => 200}}
      end)
      service.add_operation(:batch_read, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#BatchRead"
        operation.name = "BatchRead"
        operation.input = BatchReadRequest
        operation.output = BatchReadResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/batchread", "code" => 200}}
      end)
      service.add_operation(:batch_write, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#BatchWrite"
        operation.name = "BatchWrite"
        operation.input = BatchWriteRequest
        operation.output = BatchWriteResponse
        operation.errors << AccessDeniedException
        operation.errors << BatchWriteException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/batchwrite", "code" => 200}}
      end)
      service.add_operation(:create_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#CreateDirectory"
        operation.name = "CreateDirectory"
        operation.input = CreateDirectoryRequest
        operation.output = CreateDirectoryResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryAlreadyExistsException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/directory/create", "code" => 200}}
      end)
      service.add_operation(:create_facet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#CreateFacet"
        operation.name = "CreateFacet"
        operation.input = CreateFacetRequest
        operation.output = CreateFacetResponse
        operation.errors << AccessDeniedException
        operation.errors << FacetAlreadyExistsException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidRuleException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/facet/create", "code" => 200}}
      end)
      service.add_operation(:create_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#CreateIndex"
        operation.name = "CreateIndex"
        operation.input = CreateIndexRequest
        operation.output = CreateIndexResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << LinkNameAlreadyInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << UnsupportedIndexTypeException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/index", "code" => 200}}
      end)
      service.add_operation(:create_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#CreateObject"
        operation.name = "CreateObject"
        operation.input = CreateObjectRequest
        operation.output = CreateObjectResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << LinkNameAlreadyInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << UnsupportedIndexTypeException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/object", "code" => 200}}
      end)
      service.add_operation(:create_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#CreateSchema"
        operation.name = "CreateSchema"
        operation.input = CreateSchemaRequest
        operation.output = CreateSchemaResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << RetryableConflictException
        operation.errors << SchemaAlreadyExistsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema/create", "code" => 200}}
      end)
      service.add_operation(:create_typed_link_facet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#CreateTypedLinkFacet"
        operation.name = "CreateTypedLinkFacet"
        operation.input = CreateTypedLinkFacetRequest
        operation.output = CreateTypedLinkFacetResponse
        operation.errors << AccessDeniedException
        operation.errors << FacetAlreadyExistsException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidRuleException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/facet/create", "code" => 200}}
      end)
      service.add_operation(:delete_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DeleteDirectory"
        operation.name = "DeleteDirectory"
        operation.input = DeleteDirectoryRequest
        operation.output = DeleteDirectoryResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryDeletedException
        operation.errors << DirectoryNotDisabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/directory", "code" => 200}}
      end)
      service.add_operation(:delete_facet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DeleteFacet"
        operation.name = "DeleteFacet"
        operation.input = DeleteFacetRequest
        operation.output = DeleteFacetResponse
        operation.errors << AccessDeniedException
        operation.errors << FacetInUseException
        operation.errors << FacetNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/facet/delete", "code" => 200}}
      end)
      service.add_operation(:delete_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DeleteObject"
        operation.name = "DeleteObject"
        operation.input = DeleteObjectRequest
        operation.output = DeleteObjectResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ObjectNotDetachedException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/object/delete", "code" => 200}}
      end)
      service.add_operation(:delete_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DeleteSchema"
        operation.name = "DeleteSchema"
        operation.input = DeleteSchemaRequest
        operation.output = DeleteSchemaResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << StillContainsLinksException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema", "code" => 200}}
      end)
      service.add_operation(:delete_typed_link_facet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DeleteTypedLinkFacet"
        operation.name = "DeleteTypedLinkFacet"
        operation.input = DeleteTypedLinkFacetRequest
        operation.output = DeleteTypedLinkFacetResponse
        operation.errors << AccessDeniedException
        operation.errors << FacetNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/facet/delete", "code" => 200}}
      end)
      service.add_operation(:detach_from_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DetachFromIndex"
        operation.name = "DetachFromIndex"
        operation.input = DetachFromIndexRequest
        operation.output = DetachFromIndexResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << NotIndexException
        operation.errors << ObjectAlreadyDetachedException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/index/detach", "code" => 200}}
      end)
      service.add_operation(:detach_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DetachObject"
        operation.name = "DetachObject"
        operation.input = DetachObjectRequest
        operation.output = DetachObjectResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << NotNodeException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/object/detach", "code" => 200}}
      end)
      service.add_operation(:detach_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DetachPolicy"
        operation.name = "DetachPolicy"
        operation.input = DetachPolicyRequest
        operation.output = DetachPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << NotPolicyException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/policy/detach", "code" => 200}}
      end)
      service.add_operation(:detach_typed_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DetachTypedLink"
        operation.name = "DetachTypedLink"
        operation.input = DetachTypedLinkRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/detach", "code" => 200}}
      end)
      service.add_operation(:disable_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#DisableDirectory"
        operation.name = "DisableDirectory"
        operation.input = DisableDirectoryRequest
        operation.output = DisableDirectoryResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryDeletedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/directory/disable", "code" => 200}}
      end)
      service.add_operation(:enable_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#EnableDirectory"
        operation.name = "EnableDirectory"
        operation.input = EnableDirectoryRequest
        operation.output = EnableDirectoryResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryDeletedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/directory/enable", "code" => 200}}
      end)
      service.add_operation(:get_applied_schema_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetAppliedSchemaVersion"
        operation.name = "GetAppliedSchemaVersion"
        operation.input = GetAppliedSchemaVersionRequest
        operation.output = GetAppliedSchemaVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/schema/getappliedschema", "code" => 200}}
      end)
      service.add_operation(:get_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetDirectory"
        operation.name = "GetDirectory"
        operation.input = GetDirectoryRequest
        operation.output = GetDirectoryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/directory/get", "code" => 200}}
      end)
      service.add_operation(:get_facet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetFacet"
        operation.name = "GetFacet"
        operation.input = GetFacetRequest
        operation.output = GetFacetResponse
        operation.errors << AccessDeniedException
        operation.errors << FacetNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/facet", "code" => 200}}
      end)
      service.add_operation(:get_link_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetLinkAttributes"
        operation.name = "GetLinkAttributes"
        operation.input = GetLinkAttributesRequest
        operation.output = GetLinkAttributesResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/attributes/get", "code" => 200}}
      end)
      service.add_operation(:get_object_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetObjectAttributes"
        operation.name = "GetObjectAttributes"
        operation.input = GetObjectAttributesRequest
        operation.output = GetObjectAttributesResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/attributes/get", "code" => 200}}
      end)
      service.add_operation(:get_object_information, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetObjectInformation"
        operation.name = "GetObjectInformation"
        operation.input = GetObjectInformationRequest
        operation.output = GetObjectInformationResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/information", "code" => 200}}
      end)
      service.add_operation(:get_schema_as_json, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetSchemaAsJson"
        operation.name = "GetSchemaAsJson"
        operation.input = GetSchemaAsJsonRequest
        operation.output = GetSchemaAsJsonResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/schema/json", "code" => 200}}
      end)
      service.add_operation(:get_typed_link_facet_information, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#GetTypedLinkFacetInformation"
        operation.name = "GetTypedLinkFacetInformation"
        operation.input = GetTypedLinkFacetInformationRequest
        operation.output = GetTypedLinkFacetInformationResponse
        operation.errors << AccessDeniedException
        operation.errors << FacetNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/facet/get", "code" => 200}}
      end)
      service.add_operation(:list_applied_schema_arns, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListAppliedSchemaArns"
        operation.name = "ListAppliedSchemaArns"
        operation.input = ListAppliedSchemaArnsRequest
        operation.output = ListAppliedSchemaArnsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/schema/applied", "code" => 200}}
        operation[:paginator] = Paginators::ListAppliedSchemaArns.new
      end)
      service.add_operation(:list_attached_indices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListAttachedIndices"
        operation.name = "ListAttachedIndices"
        operation.input = ListAttachedIndicesRequest
        operation.output = ListAttachedIndicesResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/indices", "code" => 200}}
        operation[:paginator] = Paginators::ListAttachedIndices.new
      end)
      service.add_operation(:list_development_schema_arns, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListDevelopmentSchemaArns"
        operation.name = "ListDevelopmentSchemaArns"
        operation.input = ListDevelopmentSchemaArnsRequest
        operation.output = ListDevelopmentSchemaArnsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/schema/development", "code" => 200}}
        operation[:paginator] = Paginators::ListDevelopmentSchemaArns.new
      end)
      service.add_operation(:list_directories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListDirectories"
        operation.name = "ListDirectories"
        operation.input = ListDirectoriesRequest
        operation.output = ListDirectoriesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/directory/list", "code" => 200}}
        operation[:paginator] = Paginators::ListDirectories.new
      end)
      service.add_operation(:list_facet_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListFacetAttributes"
        operation.name = "ListFacetAttributes"
        operation.input = ListFacetAttributesRequest
        operation.output = ListFacetAttributesResponse
        operation.errors << AccessDeniedException
        operation.errors << FacetNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/facet/attributes", "code" => 200}}
        operation[:paginator] = Paginators::ListFacetAttributes.new
      end)
      service.add_operation(:list_facet_names, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListFacetNames"
        operation.name = "ListFacetNames"
        operation.input = ListFacetNamesRequest
        operation.output = ListFacetNamesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/facet/list", "code" => 200}}
        operation[:paginator] = Paginators::ListFacetNames.new
      end)
      service.add_operation(:list_incoming_typed_links, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListIncomingTypedLinks"
        operation.name = "ListIncomingTypedLinks"
        operation.input = ListIncomingTypedLinksRequest
        operation.output = ListIncomingTypedLinksResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/incoming", "code" => 200}}
      end)
      service.add_operation(:list_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListIndex"
        operation.name = "ListIndex"
        operation.input = ListIndexRequest
        operation.output = ListIndexResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << NotIndexException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/index/targets", "code" => 200}}
        operation[:paginator] = Paginators::ListIndex.new
      end)
      service.add_operation(:list_managed_schema_arns, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListManagedSchemaArns"
        operation.name = "ListManagedSchemaArns"
        operation.input = ListManagedSchemaArnsRequest
        operation.output = ListManagedSchemaArnsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/schema/managed", "code" => 200}}
        operation[:paginator] = Paginators::ListManagedSchemaArns.new
      end)
      service.add_operation(:list_object_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListObjectAttributes"
        operation.name = "ListObjectAttributes"
        operation.input = ListObjectAttributesRequest
        operation.output = ListObjectAttributesResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/attributes", "code" => 200}}
        operation[:paginator] = Paginators::ListObjectAttributes.new
      end)
      service.add_operation(:list_object_children, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListObjectChildren"
        operation.name = "ListObjectChildren"
        operation.input = ListObjectChildrenRequest
        operation.output = ListObjectChildrenResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << NotNodeException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/children", "code" => 200}}
        operation[:paginator] = Paginators::ListObjectChildren.new
      end)
      service.add_operation(:list_object_parent_paths, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListObjectParentPaths"
        operation.name = "ListObjectParentPaths"
        operation.input = ListObjectParentPathsRequest
        operation.output = ListObjectParentPathsResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/parentpaths", "code" => 200}}
        operation[:paginator] = Paginators::ListObjectParentPaths.new
      end)
      service.add_operation(:list_object_parents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListObjectParents"
        operation.name = "ListObjectParents"
        operation.input = ListObjectParentsRequest
        operation.output = ListObjectParentsResponse
        operation.errors << AccessDeniedException
        operation.errors << CannotListParentOfRootException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/parent", "code" => 200}}
        operation[:paginator] = Paginators::ListObjectParents.new
      end)
      service.add_operation(:list_object_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListObjectPolicies"
        operation.name = "ListObjectPolicies"
        operation.input = ListObjectPoliciesRequest
        operation.output = ListObjectPoliciesResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/object/policy", "code" => 200}}
        operation[:paginator] = Paginators::ListObjectPolicies.new
      end)
      service.add_operation(:list_outgoing_typed_links, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListOutgoingTypedLinks"
        operation.name = "ListOutgoingTypedLinks"
        operation.input = ListOutgoingTypedLinksRequest
        operation.output = ListOutgoingTypedLinksResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/outgoing", "code" => 200}}
      end)
      service.add_operation(:list_policy_attachments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListPolicyAttachments"
        operation.name = "ListPolicyAttachments"
        operation.input = ListPolicyAttachmentsRequest
        operation.output = ListPolicyAttachmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << NotPolicyException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/policy/attachment", "code" => 200}}
        operation[:paginator] = Paginators::ListPolicyAttachments.new
      end)
      service.add_operation(:list_published_schema_arns, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListPublishedSchemaArns"
        operation.name = "ListPublishedSchemaArns"
        operation.input = ListPublishedSchemaArnsRequest
        operation.output = ListPublishedSchemaArnsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/schema/published", "code" => 200}}
        operation[:paginator] = Paginators::ListPublishedSchemaArns.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidTaggingRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/tags", "code" => 200}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_typed_link_facet_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListTypedLinkFacetAttributes"
        operation.name = "ListTypedLinkFacetAttributes"
        operation.input = ListTypedLinkFacetAttributesRequest
        operation.output = ListTypedLinkFacetAttributesResponse
        operation.errors << AccessDeniedException
        operation.errors << FacetNotFoundException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes", "code" => 200}}
        operation[:paginator] = Paginators::ListTypedLinkFacetAttributes.new
      end)
      service.add_operation(:list_typed_link_facet_names, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#ListTypedLinkFacetNames"
        operation.name = "ListTypedLinkFacetNames"
        operation.input = ListTypedLinkFacetNamesRequest
        operation.output = ListTypedLinkFacetNamesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/facet/list", "code" => 200}}
        operation[:paginator] = Paginators::ListTypedLinkFacetNames.new
      end)
      service.add_operation(:lookup_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#LookupPolicy"
        operation.name = "LookupPolicy"
        operation.input = LookupPolicyRequest
        operation.output = LookupPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/policy/lookup", "code" => 200}}
        operation[:paginator] = Paginators::LookupPolicy.new
      end)
      service.add_operation(:publish_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#PublishSchema"
        operation.name = "PublishSchema"
        operation.input = PublishSchemaRequest
        operation.output = PublishSchemaResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << SchemaAlreadyPublishedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema/publish", "code" => 200}}
      end)
      service.add_operation(:put_schema_from_json, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#PutSchemaFromJson"
        operation.name = "PutSchemaFromJson"
        operation.input = PutSchemaFromJsonRequest
        operation.output = PutSchemaFromJsonResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidRuleException
        operation.errors << InvalidSchemaDocException
        operation.errors << LimitExceededException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema/json", "code" => 200}}
      end)
      service.add_operation(:remove_facet_from_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#RemoveFacetFromObject"
        operation.name = "RemoveFacetFromObject"
        operation.input = RemoveFacetFromObjectRequest
        operation.output = RemoveFacetFromObjectResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/object/facets/delete", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidTaggingRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/tags/add", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidTaggingRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/tags/remove", "code" => 200}}
      end)
      service.add_operation(:update_facet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UpdateFacet"
        operation.name = "UpdateFacet"
        operation.input = UpdateFacetRequest
        operation.output = UpdateFacetResponse
        operation.errors << AccessDeniedException
        operation.errors << FacetNotFoundException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidFacetUpdateException
        operation.errors << InvalidRuleException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/facet", "code" => 200}}
      end)
      service.add_operation(:update_link_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UpdateLinkAttributes"
        operation.name = "UpdateLinkAttributes"
        operation.input = UpdateLinkAttributesRequest
        operation.output = UpdateLinkAttributesResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/attributes/update", "code" => 200}}
      end)
      service.add_operation(:update_object_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UpdateObjectAttributes"
        operation.name = "UpdateObjectAttributes"
        operation.input = UpdateObjectAttributesRequest
        operation.output = UpdateObjectAttributesResponse
        operation.errors << AccessDeniedException
        operation.errors << DirectoryNotEnabledException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << LinkNameAlreadyInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/object/update", "code" => 200}}
      end)
      service.add_operation(:update_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UpdateSchema"
        operation.name = "UpdateSchema"
        operation.input = UpdateSchemaRequest
        operation.output = UpdateSchemaResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema/update", "code" => 200}}
      end)
      service.add_operation(:update_typed_link_facet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UpdateTypedLinkFacet"
        operation.name = "UpdateTypedLinkFacet"
        operation.input = UpdateTypedLinkFacetRequest
        operation.output = UpdateTypedLinkFacetResponse
        operation.errors << AccessDeniedException
        operation.errors << FacetNotFoundException
        operation.errors << FacetValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidFacetUpdateException
        operation.errors << InvalidRuleException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/typedlink/facet", "code" => 200}}
      end)
      service.add_operation(:upgrade_applied_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UpgradeAppliedSchema"
        operation.name = "UpgradeAppliedSchema"
        operation.input = UpgradeAppliedSchemaRequest
        operation.output = UpgradeAppliedSchemaResponse
        operation.errors << AccessDeniedException
        operation.errors << IncompatibleSchemaException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidAttachmentException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << SchemaAlreadyExistsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema/upgradeapplied", "code" => 200}}
      end)
      service.add_operation(:upgrade_published_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.clouddirectory#UpgradePublishedSchema"
        operation.name = "UpgradePublishedSchema"
        operation.input = UpgradePublishedSchemaRequest
        operation.output = UpgradePublishedSchemaResponse
        operation.errors << AccessDeniedException
        operation.errors << IncompatibleSchemaException
        operation.errors << InternalServiceException
        operation.errors << InvalidArnException
        operation.errors << InvalidAttachmentException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/amazonclouddirectory/2017-01-11/schema/upgradepublished", "code" => 200}}
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
