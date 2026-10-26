# frozen_string_literal: true

# This is generated code!

module Aws::CustomerProfiles
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#ActionType", name: "ActionType")
    AddProfileKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AddProfileKeyRequest", name: "AddProfileKeyRequest")
    AddProfileKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AddProfileKeyResponse", name: "AddProfileKeyResponse")
    AdditionalSearchKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AdditionalSearchKey", name: "AdditionalSearchKey")
    Address = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#Address", name: "Address", traits: {"smithy.api#sensitive" => {}})
    AddressDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AddressDimension", name: "AddressDimension")
    AddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#AddressList", name: "AddressList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    AppflowIntegration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AppflowIntegration", name: "AppflowIntegration")
    AppflowIntegrationWorkflowAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AppflowIntegrationWorkflowAttributes", name: "AppflowIntegrationWorkflowAttributes")
    AppflowIntegrationWorkflowMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AppflowIntegrationWorkflowMetrics", name: "AppflowIntegrationWorkflowMetrics")
    AppflowIntegrationWorkflowStep = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AppflowIntegrationWorkflowStep", name: "AppflowIntegrationWorkflowStep")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#Arn", name: "Arn", traits: {"smithy.api#pattern" => "^arn:([a-z\\d-]+):profile:.*:.*:.+$"})
    AssociateStreamForSegmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AssociateStreamForSegmentsRequest", name: "AssociateStreamForSegmentsRequest")
    AssociateStreamForSegmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AssociateStreamForSegmentsResponse", name: "AssociateStreamForSegmentsResponse")
    AssociatedSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AssociatedSegment", name: "AssociatedSegment")
    AssociatedSegmentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#AssociatedSegmentsList", name: "AssociatedSegmentsList")
    AttributeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AttributeDetails", name: "AttributeDetails", traits: {"smithy.api#sensitive" => {}})
    AttributeDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AttributeDimension", name: "AttributeDimension")
    AttributeDimensionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#AttributeDimensionType", name: "AttributeDimensionType")
    AttributeItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AttributeItem", name: "AttributeItem")
    AttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#AttributeList", name: "AttributeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#AttributeMap", name: "AttributeMap")
    AttributeMatchingModel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#AttributeMatchingModel", name: "AttributeMatchingModel")
    AttributeSourceIdMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#AttributeSourceIdMap", name: "AttributeSourceIdMap")
    AttributeTypesSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AttributeTypesSelector", name: "AttributeTypesSelector")
    AttributeValueItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AttributeValueItem", name: "AttributeValueItem")
    AttributeValueItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#AttributeValueItemList", name: "AttributeValueItemList")
    Attributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#Attributes", name: "Attributes", traits: {"smithy.api#sensitive" => {}})
    AutoMerging = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#AutoMerging", name: "AutoMerging")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Batch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#Batch", name: "Batch")
    BatchGetCalculatedAttributeForProfileError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#BatchGetCalculatedAttributeForProfileError", name: "BatchGetCalculatedAttributeForProfileError")
    BatchGetCalculatedAttributeForProfileErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#BatchGetCalculatedAttributeForProfileErrorList", name: "BatchGetCalculatedAttributeForProfileErrorList")
    BatchGetCalculatedAttributeForProfileIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#BatchGetCalculatedAttributeForProfileIdList", name: "BatchGetCalculatedAttributeForProfileIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BatchGetCalculatedAttributeForProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#BatchGetCalculatedAttributeForProfileRequest", name: "BatchGetCalculatedAttributeForProfileRequest")
    BatchGetCalculatedAttributeForProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#BatchGetCalculatedAttributeForProfileResponse", name: "BatchGetCalculatedAttributeForProfileResponse")
    BatchGetProfileError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#BatchGetProfileError", name: "BatchGetProfileError")
    BatchGetProfileErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#BatchGetProfileErrorList", name: "BatchGetProfileErrorList")
    BatchGetProfileIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#BatchGetProfileIdList", name: "BatchGetProfileIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    BatchGetProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#BatchGetProfileRequest", name: "BatchGetProfileRequest")
    BatchGetProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#BatchGetProfileResponse", name: "BatchGetProfileResponse")
    BatchPutProfileObjectErrorItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#BatchPutProfileObjectErrorItem", name: "BatchPutProfileObjectErrorItem")
    BatchPutProfileObjectErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#BatchPutProfileObjectErrorList", name: "BatchPutProfileObjectErrorList")
    BatchPutProfileObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#BatchPutProfileObjectRequest", name: "BatchPutProfileObjectRequest")
    BatchPutProfileObjectRequestItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#BatchPutProfileObjectRequestItem", name: "BatchPutProfileObjectRequestItem")
    BatchPutProfileObjectRequestItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#BatchPutProfileObjectRequestItemList", name: "BatchPutProfileObjectRequestItemList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    BatchPutProfileObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#BatchPutProfileObjectResponse", name: "BatchPutProfileObjectResponse")
    BatchPutProfileObjectResponseItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#BatchPutProfileObjectResponseItem", name: "BatchPutProfileObjectResponseItem")
    BatchPutProfileObjectResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#BatchPutProfileObjectResponseList", name: "BatchPutProfileObjectResponseList")
    Batches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#Batches", name: "Batches")
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#BucketName", name: "BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^\\S+$"})
    BucketPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#BucketPrefix", name: "BucketPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*"})
    CalculatedAttributeDefinitionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#CalculatedAttributeDefinitionsList", name: "CalculatedAttributeDefinitionsList", traits: {"smithy.api#sensitive" => {}})
    CalculatedAttributeDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CalculatedAttributeDimension", name: "CalculatedAttributeDimension")
    CalculatedAttributeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CalculatedAttributeValue", name: "CalculatedAttributeValue")
    CalculatedAttributeValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#CalculatedAttributeValueList", name: "CalculatedAttributeValueList")
    CalculatedAttributesForProfileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#CalculatedAttributesForProfileList", name: "CalculatedAttributesForProfileList")
    CalculatedCustomAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#CalculatedCustomAttributes", name: "CalculatedCustomAttributes")
    CandidateIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#CandidateIdList", name: "CandidateIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    CatalogItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CatalogItem", name: "CatalogItem")
    ColumnNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ColumnNamesList", name: "ColumnNamesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#ComparisonOperator", name: "ComparisonOperator")
    ConditionOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ConditionOverrides", name: "ConditionOverrides", traits: {"smithy.api#sensitive" => {}})
    Conditions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#Conditions", name: "Conditions", traits: {"smithy.api#sensitive" => {}})
    ConflictResolution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ConflictResolution", name: "ConflictResolution")
    ConflictResolvingModel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#ConflictResolvingModel", name: "ConflictResolvingModel")
    ConnectorOperator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ConnectorOperator", name: "ConnectorOperator")
    ConnectorProfileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#ConnectorProfileName", name: "ConnectorProfileName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\w/!@#+=.-]+$"})
    Consolidation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#Consolidation", name: "Consolidation")
    ContactPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ContactPreference", name: "ContactPreference")
    ContactType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#ContactType", name: "ContactType")
    ContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#ContentType", name: "ContentType")
    ContextKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#ContextKey", name: "ContextKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    CreateCalculatedAttributeDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateCalculatedAttributeDefinitionRequest", name: "CreateCalculatedAttributeDefinitionRequest")
    CreateCalculatedAttributeDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateCalculatedAttributeDefinitionResponse", name: "CreateCalculatedAttributeDefinitionResponse")
    CreateDomainLayoutRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateDomainLayoutRequest", name: "CreateDomainLayoutRequest")
    CreateDomainLayoutResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateDomainLayoutResponse", name: "CreateDomainLayoutResponse")
    CreateDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateDomainRequest", name: "CreateDomainRequest")
    CreateDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateDomainResponse", name: "CreateDomainResponse")
    CreateEventStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateEventStreamRequest", name: "CreateEventStreamRequest")
    CreateEventStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateEventStreamResponse", name: "CreateEventStreamResponse")
    CreateEventTriggerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateEventTriggerRequest", name: "CreateEventTriggerRequest")
    CreateEventTriggerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateEventTriggerResponse", name: "CreateEventTriggerResponse")
    CreateIntegrationWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateIntegrationWorkflowRequest", name: "CreateIntegrationWorkflowRequest")
    CreateIntegrationWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateIntegrationWorkflowResponse", name: "CreateIntegrationWorkflowResponse")
    CreateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateProfileRequest", name: "CreateProfileRequest")
    CreateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateProfileResponse", name: "CreateProfileResponse")
    CreateRecommenderFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateRecommenderFilterRequest", name: "CreateRecommenderFilterRequest")
    CreateRecommenderFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateRecommenderFilterResponse", name: "CreateRecommenderFilterResponse")
    CreateRecommenderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateRecommenderRequest", name: "CreateRecommenderRequest")
    CreateRecommenderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateRecommenderResponse", name: "CreateRecommenderResponse")
    CreateRecommenderSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateRecommenderSchemaRequest", name: "CreateRecommenderSchemaRequest")
    CreateRecommenderSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateRecommenderSchemaResponse", name: "CreateRecommenderSchemaResponse")
    CreateSegmentDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateSegmentDefinitionRequest", name: "CreateSegmentDefinitionRequest")
    CreateSegmentDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateSegmentDefinitionResponse", name: "CreateSegmentDefinitionResponse")
    CreateSegmentEstimateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateSegmentEstimateRequest", name: "CreateSegmentEstimateRequest")
    CreateSegmentEstimateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateSegmentEstimateResponse", name: "CreateSegmentEstimateResponse")
    CreateSegmentSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateSegmentSnapshotRequest", name: "CreateSegmentSnapshotRequest")
    CreateSegmentSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateSegmentSnapshotResponse", name: "CreateSegmentSnapshotResponse")
    CreateUploadJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateUploadJobRequest", name: "CreateUploadJobRequest")
    CreateUploadJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#CreateUploadJobResponse", name: "CreateUploadJobResponse")
    CustomAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#CustomAttributes", name: "CustomAttributes")
    DataFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#DataFormat", name: "DataFormat")
    DataPullMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#DataPullMode", name: "DataPullMode")
    DataStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DataStoreRequest", name: "DataStoreRequest")
    DataStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DataStoreResponse", name: "DataStoreResponse")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.customerprofiles#Date", name: "Date")
    DateDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DateDimension", name: "DateDimension")
    DateDimensionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#DateDimensionType", name: "DateDimensionType")
    DateValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#DateValues", name: "DateValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DatetimeTypeFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#DatetimeTypeFieldName", name: "DatetimeTypeFieldName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    DeleteCalculatedAttributeDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteCalculatedAttributeDefinitionRequest", name: "DeleteCalculatedAttributeDefinitionRequest")
    DeleteCalculatedAttributeDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteCalculatedAttributeDefinitionResponse", name: "DeleteCalculatedAttributeDefinitionResponse")
    DeleteDomainLayoutRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteDomainLayoutRequest", name: "DeleteDomainLayoutRequest")
    DeleteDomainLayoutResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteDomainLayoutResponse", name: "DeleteDomainLayoutResponse")
    DeleteDomainObjectTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteDomainObjectTypeRequest", name: "DeleteDomainObjectTypeRequest")
    DeleteDomainObjectTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteDomainObjectTypeResponse", name: "DeleteDomainObjectTypeResponse")
    DeleteDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteDomainRequest", name: "DeleteDomainRequest")
    DeleteDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteDomainResponse", name: "DeleteDomainResponse")
    DeleteEventStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteEventStreamRequest", name: "DeleteEventStreamRequest")
    DeleteEventStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteEventStreamResponse", name: "DeleteEventStreamResponse")
    DeleteEventTriggerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteEventTriggerRequest", name: "DeleteEventTriggerRequest")
    DeleteEventTriggerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteEventTriggerResponse", name: "DeleteEventTriggerResponse")
    DeleteIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteIntegrationRequest", name: "DeleteIntegrationRequest")
    DeleteIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteIntegrationResponse", name: "DeleteIntegrationResponse")
    DeleteProfileKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteProfileKeyRequest", name: "DeleteProfileKeyRequest")
    DeleteProfileKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteProfileKeyResponse", name: "DeleteProfileKeyResponse")
    DeleteProfileObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteProfileObjectRequest", name: "DeleteProfileObjectRequest")
    DeleteProfileObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteProfileObjectResponse", name: "DeleteProfileObjectResponse")
    DeleteProfileObjectTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteProfileObjectTypeRequest", name: "DeleteProfileObjectTypeRequest")
    DeleteProfileObjectTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteProfileObjectTypeResponse", name: "DeleteProfileObjectTypeResponse")
    DeleteProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteProfileRequest", name: "DeleteProfileRequest")
    DeleteProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteProfileResponse", name: "DeleteProfileResponse")
    DeleteRecommenderFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteRecommenderFilterRequest", name: "DeleteRecommenderFilterRequest")
    DeleteRecommenderFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteRecommenderFilterResponse", name: "DeleteRecommenderFilterResponse")
    DeleteRecommenderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteRecommenderRequest", name: "DeleteRecommenderRequest")
    DeleteRecommenderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteRecommenderResponse", name: "DeleteRecommenderResponse")
    DeleteRecommenderSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteRecommenderSchemaRequest", name: "DeleteRecommenderSchemaRequest")
    DeleteRecommenderSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteRecommenderSchemaResponse", name: "DeleteRecommenderSchemaResponse")
    DeleteSegmentDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteSegmentDefinitionRequest", name: "DeleteSegmentDefinitionRequest")
    DeleteSegmentDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteSegmentDefinitionResponse", name: "DeleteSegmentDefinitionResponse")
    DeleteSegmentSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteSegmentSubscriptionRequest", name: "DeleteSegmentSubscriptionRequest")
    DeleteSegmentSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteSegmentSubscriptionResponse", name: "DeleteSegmentSubscriptionResponse")
    DeleteWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteWorkflowRequest", name: "DeleteWorkflowRequest")
    DeleteWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DeleteWorkflowResponse", name: "DeleteWorkflowResponse")
    DestinationArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#DestinationArnString", name: "DestinationArnString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    DestinationField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#DestinationField", name: "DestinationField", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    DestinationRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#DestinationRoleArn", name: "DestinationRoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "arn:aws:iam:.*:[0-9]+:"})
    DestinationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DestinationSummary", name: "DestinationSummary")
    DetectProfileObjectTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DetectProfileObjectTypeRequest", name: "DetectProfileObjectTypeRequest")
    DetectProfileObjectTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DetectProfileObjectTypeResponse", name: "DetectProfileObjectTypeResponse")
    DetectedProfileObjectType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DetectedProfileObjectType", name: "DetectedProfileObjectType")
    DetectedProfileObjectTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#DetectedProfileObjectTypes", name: "DetectedProfileObjectTypes")
    Dimension = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.customerprofiles#Dimension", name: "Dimension")
    DimensionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#DimensionList", name: "DimensionList")
    DisassociateStreamForSegmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DisassociateStreamForSegmentsRequest", name: "DisassociateStreamForSegmentsRequest")
    DisassociateStreamForSegmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DisassociateStreamForSegmentsResponse", name: "DisassociateStreamForSegmentsResponse")
    DiversityCapType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#DiversityCapType", name: "DiversityCapType")
    DiversityCapValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#DiversityCapValue", name: "DiversityCapValue", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    DiversityColumn = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DiversityColumn", name: "DiversityColumn")
    DiversityColumnsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#DiversityColumnsList", name: "DiversityColumnsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    DiversityConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DiversityConfig", name: "DiversityConfig")
    DiversityPlaceholderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#DiversityPlaceholderName", name: "DiversityPlaceholderName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    DiversityTargetExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#DiversityTargetExpression", name: "DiversityTargetExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(\\d+|\\$[a-z_]+)$"})
    DiversityValuesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#DiversityValuesMap", name: "DiversityValuesMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    DomainList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#DomainList", name: "DomainList")
    DomainObjectTypeField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DomainObjectTypeField", name: "DomainObjectTypeField")
    DomainObjectTypeFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#DomainObjectTypeFieldName", name: "DomainObjectTypeFieldName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    DomainObjectTypeFields = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#DomainObjectTypeFields", name: "DomainObjectTypeFields")
    DomainObjectTypesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#DomainObjectTypesList", name: "DomainObjectTypesList", traits: {"smithy.api#sensitive" => {}})
    DomainObjectTypesListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DomainObjectTypesListItem", name: "DomainObjectTypesListItem")
    DomainStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#DomainStats", name: "DomainStats")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.customerprofiles#Double", name: "Double")
    Double0To1 = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.customerprofiles#Double0To1", name: "Double0To1", traits: {"smithy.api#range" => {"min" => 0.0, "max" => 1.0}})
    EmailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#EmailList", name: "EmailList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    EmailPreferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#EmailPreferenceList", name: "EmailPreferenceList")
    End = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#End", name: "End", traits: {"smithy.api#default" => 0})
    EngagementPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#EngagementPreferences", name: "EngagementPreferences", traits: {"smithy.api#sensitive" => {}})
    EstimateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#EstimateStatus", name: "EstimateStatus")
    EventParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#EventParameters", name: "EventParameters")
    EventParametersEventTypeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#EventParametersEventTypeString", name: "EventParametersEventTypeString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    EventParametersEventWeightDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.customerprofiles#EventParametersEventWeightDouble", name: "EventParametersEventWeightDouble", traits: {"smithy.api#range" => {"min" => 0.0, "max" => 1.0}})
    EventParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#EventParametersList", name: "EventParametersList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EventStreamDestinationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#EventStreamDestinationDetails", name: "EventStreamDestinationDetails")
    EventStreamDestinationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#EventStreamDestinationStatus", name: "EventStreamDestinationStatus")
    EventStreamState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#EventStreamState", name: "EventStreamState")
    EventStreamSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#EventStreamSummary", name: "EventStreamSummary")
    EventStreamSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#EventStreamSummaryList", name: "EventStreamSummaryList")
    EventSubscriptionSegmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#EventSubscriptionSegmentStatus", name: "EventSubscriptionSegmentStatus")
    EventSubscriptionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#EventSubscriptionState", name: "EventSubscriptionState")
    EventTriggerCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#EventTriggerCondition", name: "EventTriggerCondition")
    EventTriggerConditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#EventTriggerConditions", name: "EventTriggerConditions", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#sensitive" => {}})
    EventTriggerDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#EventTriggerDimension", name: "EventTriggerDimension")
    EventTriggerDimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#EventTriggerDimensions", name: "EventTriggerDimensions", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EventTriggerLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#EventTriggerLimits", name: "EventTriggerLimits")
    EventTriggerLogicalOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#EventTriggerLogicalOperator", name: "EventTriggerLogicalOperator")
    EventTriggerNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#EventTriggerNames", name: "EventTriggerNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    EventTriggerSummaryItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#EventTriggerSummaryItem", name: "EventTriggerSummaryItem")
    EventTriggerSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#EventTriggerSummaryList", name: "EventTriggerSummaryList", traits: {"smithy.api#sensitive" => {}})
    EventTriggerValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#EventTriggerValues", name: "EventTriggerValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EventsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#EventsConfig", name: "EventsConfig")
    ExportingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ExportingConfig", name: "ExportingConfig")
    ExportingLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ExportingLocation", name: "ExportingLocation")
    ExtraLengthValueProfileDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ExtraLengthValueProfileDimension", name: "ExtraLengthValueProfileDimension")
    ExtraLengthValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ExtraLengthValues", name: "ExtraLengthValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Failures = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#Failures", name: "Failures")
    FeatureType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#FeatureType", name: "FeatureType")
    FieldContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#FieldContentType", name: "FieldContentType")
    FieldMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#FieldMap", name: "FieldMap", traits: {"smithy.api#sensitive" => {}})
    FieldNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#FieldNameList", name: "FieldNameList")
    FieldSourceProfileIds = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#FieldSourceProfileIds", name: "FieldSourceProfileIds")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#Filter", name: "Filter")
    FilterAttributeDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#FilterAttributeDimension", name: "FilterAttributeDimension")
    FilterDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#FilterDimension", name: "FilterDimension")
    FilterDimensionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#FilterDimensionList", name: "FilterDimensionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FilterDimensionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#FilterDimensionType", name: "FilterDimensionType")
    FilterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#FilterGroup", name: "FilterGroup")
    FlowDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#FlowDefinition", name: "FlowDefinition", traits: {"smithy.api#sensitive" => {}})
    FlowDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#FlowDescription", name: "FlowDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\w!@#\\-.?,\\s]*$"})
    FlowName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#FlowName", name: "FlowName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][\\w!@#.-]+$"})
    FoundByKeyValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#FoundByKeyValue", name: "FoundByKeyValue")
    Gender = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#Gender", name: "Gender", traits: {"smithy.api#deprecated" => {}, "smithy.api#sensitive" => {}})
    GetAutoMergingPreviewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetAutoMergingPreviewRequest", name: "GetAutoMergingPreviewRequest")
    GetAutoMergingPreviewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetAutoMergingPreviewResponse", name: "GetAutoMergingPreviewResponse")
    GetCalculatedAttributeDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetCalculatedAttributeDefinitionRequest", name: "GetCalculatedAttributeDefinitionRequest")
    GetCalculatedAttributeDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetCalculatedAttributeDefinitionResponse", name: "GetCalculatedAttributeDefinitionResponse")
    GetCalculatedAttributeForProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetCalculatedAttributeForProfileRequest", name: "GetCalculatedAttributeForProfileRequest")
    GetCalculatedAttributeForProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetCalculatedAttributeForProfileResponse", name: "GetCalculatedAttributeForProfileResponse")
    GetDomainLayoutRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetDomainLayoutRequest", name: "GetDomainLayoutRequest")
    GetDomainLayoutResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetDomainLayoutResponse", name: "GetDomainLayoutResponse")
    GetDomainObjectTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetDomainObjectTypeRequest", name: "GetDomainObjectTypeRequest")
    GetDomainObjectTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetDomainObjectTypeResponse", name: "GetDomainObjectTypeResponse")
    GetDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetDomainRequest", name: "GetDomainRequest")
    GetDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetDomainResponse", name: "GetDomainResponse")
    GetEventStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetEventStreamRequest", name: "GetEventStreamRequest")
    GetEventStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetEventStreamResponse", name: "GetEventStreamResponse")
    GetEventTriggerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetEventTriggerRequest", name: "GetEventTriggerRequest")
    GetEventTriggerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetEventTriggerResponse", name: "GetEventTriggerResponse")
    GetIdentityResolutionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetIdentityResolutionJobRequest", name: "GetIdentityResolutionJobRequest")
    GetIdentityResolutionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetIdentityResolutionJobResponse", name: "GetIdentityResolutionJobResponse")
    GetIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetIntegrationRequest", name: "GetIntegrationRequest")
    GetIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetIntegrationResponse", name: "GetIntegrationResponse")
    GetMatchesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetMatchesRequest", name: "GetMatchesRequest")
    GetMatchesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetMatchesResponse", name: "GetMatchesResponse")
    GetObjectTypeAttributeStatisticsPercentiles = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetObjectTypeAttributeStatisticsPercentiles", name: "GetObjectTypeAttributeStatisticsPercentiles")
    GetObjectTypeAttributeStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetObjectTypeAttributeStatisticsRequest", name: "GetObjectTypeAttributeStatisticsRequest")
    GetObjectTypeAttributeStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetObjectTypeAttributeStatisticsResponse", name: "GetObjectTypeAttributeStatisticsResponse")
    GetObjectTypeAttributeStatisticsStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetObjectTypeAttributeStatisticsStats", name: "GetObjectTypeAttributeStatisticsStats")
    GetProfileHistoryRecordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetProfileHistoryRecordRequest", name: "GetProfileHistoryRecordRequest")
    GetProfileHistoryRecordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetProfileHistoryRecordResponse", name: "GetProfileHistoryRecordResponse")
    GetProfileObjectTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetProfileObjectTypeRequest", name: "GetProfileObjectTypeRequest")
    GetProfileObjectTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetProfileObjectTypeResponse", name: "GetProfileObjectTypeResponse")
    GetProfileObjectTypeTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetProfileObjectTypeTemplateRequest", name: "GetProfileObjectTypeTemplateRequest")
    GetProfileObjectTypeTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetProfileObjectTypeTemplateResponse", name: "GetProfileObjectTypeTemplateResponse")
    GetProfileRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetProfileRecommendationsRequest", name: "GetProfileRecommendationsRequest")
    GetProfileRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetProfileRecommendationsResponse", name: "GetProfileRecommendationsResponse")
    GetRecommenderFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetRecommenderFilterRequest", name: "GetRecommenderFilterRequest")
    GetRecommenderFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetRecommenderFilterResponse", name: "GetRecommenderFilterResponse")
    GetRecommenderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetRecommenderRequest", name: "GetRecommenderRequest")
    GetRecommenderRequestTrainingMetricsCountInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#GetRecommenderRequestTrainingMetricsCountInteger", name: "GetRecommenderRequestTrainingMetricsCountInteger", traits: {"smithy.api#range" => {"min" => 0, "max" => 5}})
    GetRecommenderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetRecommenderResponse", name: "GetRecommenderResponse")
    GetRecommenderSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetRecommenderSchemaRequest", name: "GetRecommenderSchemaRequest")
    GetRecommenderSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetRecommenderSchemaResponse", name: "GetRecommenderSchemaResponse")
    GetSegmentDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetSegmentDefinitionRequest", name: "GetSegmentDefinitionRequest")
    GetSegmentDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetSegmentDefinitionResponse", name: "GetSegmentDefinitionResponse")
    GetSegmentEstimateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetSegmentEstimateRequest", name: "GetSegmentEstimateRequest")
    GetSegmentEstimateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetSegmentEstimateResponse", name: "GetSegmentEstimateResponse")
    GetSegmentMembershipMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#GetSegmentMembershipMessage", name: "GetSegmentMembershipMessage")
    GetSegmentMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetSegmentMembershipRequest", name: "GetSegmentMembershipRequest")
    GetSegmentMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetSegmentMembershipResponse", name: "GetSegmentMembershipResponse")
    GetSegmentMembershipStatus = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#GetSegmentMembershipStatus", name: "GetSegmentMembershipStatus")
    GetSegmentSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetSegmentSnapshotRequest", name: "GetSegmentSnapshotRequest")
    GetSegmentSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetSegmentSnapshotResponse", name: "GetSegmentSnapshotResponse")
    GetSegmentSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetSegmentSubscriptionRequest", name: "GetSegmentSubscriptionRequest")
    GetSegmentSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetSegmentSubscriptionResponse", name: "GetSegmentSubscriptionResponse")
    GetSimilarProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetSimilarProfilesRequest", name: "GetSimilarProfilesRequest")
    GetSimilarProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetSimilarProfilesResponse", name: "GetSimilarProfilesResponse")
    GetStreamForSegmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetStreamForSegmentsRequest", name: "GetStreamForSegmentsRequest")
    GetStreamForSegmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetStreamForSegmentsResponse", name: "GetStreamForSegmentsResponse")
    GetUploadJobPathRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetUploadJobPathRequest", name: "GetUploadJobPathRequest")
    GetUploadJobPathResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetUploadJobPathResponse", name: "GetUploadJobPathResponse")
    GetUploadJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetUploadJobRequest", name: "GetUploadJobRequest")
    GetUploadJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetUploadJobResponse", name: "GetUploadJobResponse")
    GetWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetWorkflowRequest", name: "GetWorkflowRequest")
    GetWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetWorkflowResponse", name: "GetWorkflowResponse")
    GetWorkflowStepsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetWorkflowStepsRequest", name: "GetWorkflowStepsRequest")
    GetWorkflowStepsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#GetWorkflowStepsResponse", name: "GetWorkflowStepsResponse")
    Group = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#Group", name: "Group")
    GroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#GroupList", name: "GroupList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    IdentityResolutionJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#IdentityResolutionJob", name: "IdentityResolutionJob")
    IdentityResolutionJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#IdentityResolutionJobStatus", name: "IdentityResolutionJobStatus")
    IdentityResolutionJobsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#IdentityResolutionJobsList", name: "IdentityResolutionJobsList")
    Include = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#Include", name: "Include")
    IncludeOptions = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#IncludeOptions", name: "IncludeOptions")
    IncludedColumns = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#IncludedColumns", name: "IncludedColumns", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    IncrementalPullConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#IncrementalPullConfig", name: "IncrementalPullConfig")
    InferenceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#InferenceConfig", name: "InferenceConfig")
    InferenceConfigMinProvisionedTPSInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#InferenceConfigMinProvisionedTPSInteger", name: "InferenceConfigMinProvisionedTPSInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    IntegrationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#IntegrationConfig", name: "IntegrationConfig")
    IntegrationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#IntegrationList", name: "IntegrationList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IntervalValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#IntervalValue", name: "IntervalValue", traits: {"smithy.api#range" => {"min" => 1, "max" => 24}})
    JobSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#JobSchedule", name: "JobSchedule")
    JobScheduleDayOfTheWeek = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#JobScheduleDayOfTheWeek", name: "JobScheduleDayOfTheWeek")
    JobScheduleTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#JobScheduleTime", name: "JobScheduleTime", traits: {"smithy.api#length" => {"min" => 3, "max" => 5}, "smithy.api#pattern" => "^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$"})
    JobStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#JobStats", name: "JobStats")
    KeyMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#KeyMap", name: "KeyMap", traits: {"smithy.api#sensitive" => {}})
    KeyValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#KeyValuesList", name: "KeyValuesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#sensitive" => {}})
    KmsArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#KmsArn", name: "KmsArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:kms:.*:[0-9]+:"})
    LayoutItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#LayoutItem", name: "LayoutItem")
    LayoutList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#LayoutList", name: "LayoutList")
    LayoutType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#LayoutType", name: "LayoutType")
    ListAccountIntegrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListAccountIntegrationsRequest", name: "ListAccountIntegrationsRequest")
    ListAccountIntegrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListAccountIntegrationsResponse", name: "ListAccountIntegrationsResponse")
    ListCalculatedAttributeDefinitionItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListCalculatedAttributeDefinitionItem", name: "ListCalculatedAttributeDefinitionItem")
    ListCalculatedAttributeDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListCalculatedAttributeDefinitionsRequest", name: "ListCalculatedAttributeDefinitionsRequest")
    ListCalculatedAttributeDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListCalculatedAttributeDefinitionsResponse", name: "ListCalculatedAttributeDefinitionsResponse")
    ListCalculatedAttributeForProfileItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListCalculatedAttributeForProfileItem", name: "ListCalculatedAttributeForProfileItem")
    ListCalculatedAttributesForProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListCalculatedAttributesForProfileRequest", name: "ListCalculatedAttributesForProfileRequest")
    ListCalculatedAttributesForProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListCalculatedAttributesForProfileResponse", name: "ListCalculatedAttributesForProfileResponse")
    ListDomainItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListDomainItem", name: "ListDomainItem")
    ListDomainLayoutsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListDomainLayoutsRequest", name: "ListDomainLayoutsRequest")
    ListDomainLayoutsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListDomainLayoutsResponse", name: "ListDomainLayoutsResponse")
    ListDomainObjectTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListDomainObjectTypesRequest", name: "ListDomainObjectTypesRequest")
    ListDomainObjectTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListDomainObjectTypesResponse", name: "ListDomainObjectTypesResponse")
    ListDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListDomainsRequest", name: "ListDomainsRequest")
    ListDomainsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListDomainsResponse", name: "ListDomainsResponse")
    ListEventStreamsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListEventStreamsRequest", name: "ListEventStreamsRequest")
    ListEventStreamsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListEventStreamsResponse", name: "ListEventStreamsResponse")
    ListEventTriggersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListEventTriggersRequest", name: "ListEventTriggersRequest")
    ListEventTriggersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListEventTriggersResponse", name: "ListEventTriggersResponse")
    ListIdentityResolutionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListIdentityResolutionJobsRequest", name: "ListIdentityResolutionJobsRequest")
    ListIdentityResolutionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListIdentityResolutionJobsResponse", name: "ListIdentityResolutionJobsResponse")
    ListIntegrationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListIntegrationItem", name: "ListIntegrationItem")
    ListIntegrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListIntegrationsRequest", name: "ListIntegrationsRequest")
    ListIntegrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListIntegrationsResponse", name: "ListIntegrationsResponse")
    ListObjectTypeAttributeItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListObjectTypeAttributeItem", name: "ListObjectTypeAttributeItem")
    ListObjectTypeAttributeValuesItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListObjectTypeAttributeValuesItem", name: "ListObjectTypeAttributeValuesItem")
    ListObjectTypeAttributeValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ListObjectTypeAttributeValuesList", name: "ListObjectTypeAttributeValuesList")
    ListObjectTypeAttributeValuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListObjectTypeAttributeValuesRequest", name: "ListObjectTypeAttributeValuesRequest")
    ListObjectTypeAttributeValuesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListObjectTypeAttributeValuesResponse", name: "ListObjectTypeAttributeValuesResponse")
    ListObjectTypeAttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ListObjectTypeAttributesList", name: "ListObjectTypeAttributesList")
    ListObjectTypeAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListObjectTypeAttributesRequest", name: "ListObjectTypeAttributesRequest")
    ListObjectTypeAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListObjectTypeAttributesResponse", name: "ListObjectTypeAttributesResponse")
    ListProfileHistoryRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListProfileHistoryRecordsRequest", name: "ListProfileHistoryRecordsRequest")
    ListProfileHistoryRecordsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListProfileHistoryRecordsResponse", name: "ListProfileHistoryRecordsResponse")
    ListProfileObjectTypeItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListProfileObjectTypeItem", name: "ListProfileObjectTypeItem")
    ListProfileObjectTypeTemplateItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListProfileObjectTypeTemplateItem", name: "ListProfileObjectTypeTemplateItem")
    ListProfileObjectTypeTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListProfileObjectTypeTemplatesRequest", name: "ListProfileObjectTypeTemplatesRequest")
    ListProfileObjectTypeTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListProfileObjectTypeTemplatesResponse", name: "ListProfileObjectTypeTemplatesResponse")
    ListProfileObjectTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListProfileObjectTypesRequest", name: "ListProfileObjectTypesRequest")
    ListProfileObjectTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListProfileObjectTypesResponse", name: "ListProfileObjectTypesResponse")
    ListProfileObjectsItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListProfileObjectsItem", name: "ListProfileObjectsItem")
    ListProfileObjectsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListProfileObjectsRequest", name: "ListProfileObjectsRequest")
    ListProfileObjectsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListProfileObjectsResponse", name: "ListProfileObjectsResponse")
    ListRecommenderFiltersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListRecommenderFiltersRequest", name: "ListRecommenderFiltersRequest")
    ListRecommenderFiltersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListRecommenderFiltersResponse", name: "ListRecommenderFiltersResponse")
    ListRecommenderRecipesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListRecommenderRecipesRequest", name: "ListRecommenderRecipesRequest")
    ListRecommenderRecipesRequestMaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#ListRecommenderRecipesRequestMaxResultsInteger", name: "ListRecommenderRecipesRequestMaxResultsInteger", traits: {"smithy.api#range" => {"min" => 10, "max" => 100}})
    ListRecommenderRecipesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListRecommenderRecipesResponse", name: "ListRecommenderRecipesResponse")
    ListRecommenderSchemasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListRecommenderSchemasRequest", name: "ListRecommenderSchemasRequest")
    ListRecommenderSchemasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListRecommenderSchemasResponse", name: "ListRecommenderSchemasResponse")
    ListRecommendersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListRecommendersRequest", name: "ListRecommendersRequest")
    ListRecommendersRequestMaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#ListRecommendersRequestMaxResultsInteger", name: "ListRecommendersRequestMaxResultsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListRecommendersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListRecommendersResponse", name: "ListRecommendersResponse")
    ListRuleBasedMatchesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListRuleBasedMatchesRequest", name: "ListRuleBasedMatchesRequest")
    ListRuleBasedMatchesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListRuleBasedMatchesResponse", name: "ListRuleBasedMatchesResponse")
    ListSegmentDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListSegmentDefinitionsRequest", name: "ListSegmentDefinitionsRequest")
    ListSegmentDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListSegmentDefinitionsResponse", name: "ListSegmentDefinitionsResponse")
    ListSegmentSubscriptionEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListSegmentSubscriptionEventsRequest", name: "ListSegmentSubscriptionEventsRequest")
    ListSegmentSubscriptionEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListSegmentSubscriptionEventsResponse", name: "ListSegmentSubscriptionEventsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListUploadJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListUploadJobsRequest", name: "ListUploadJobsRequest")
    ListUploadJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListUploadJobsResponse", name: "ListUploadJobsResponse")
    ListWorkflowsItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListWorkflowsItem", name: "ListWorkflowsItem")
    ListWorkflowsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListWorkflowsRequest", name: "ListWorkflowsRequest")
    ListWorkflowsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ListWorkflowsResponse", name: "ListWorkflowsResponse")
    MarketoConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#MarketoConnectorOperator", name: "MarketoConnectorOperator")
    MarketoSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#MarketoSourceProperties", name: "MarketoSourceProperties")
    MatchIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#MatchIdList", name: "MatchIdList")
    MatchItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#MatchItem", name: "MatchItem")
    MatchType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#MatchType", name: "MatchType")
    MatchesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#MatchesList", name: "MatchesList")
    MatchingAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#MatchingAttributes", name: "MatchingAttributes", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    MatchingAttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#MatchingAttributesList", name: "MatchingAttributesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MatchingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#MatchingRequest", name: "MatchingRequest")
    MatchingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#MatchingResponse", name: "MatchingResponse")
    MatchingRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#MatchingRule", name: "MatchingRule")
    MatchingRuleAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#MatchingRuleAttributeList", name: "MatchingRuleAttributeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    MatchingRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#MatchingRules", name: "MatchingRules", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    MaxAllowedRuleLevelForMatching = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#MaxAllowedRuleLevelForMatching", name: "MaxAllowedRuleLevelForMatching", traits: {"smithy.api#range" => {"min" => 1, "max" => 15}})
    MaxAllowedRuleLevelForMerging = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#MaxAllowedRuleLevelForMerging", name: "MaxAllowedRuleLevelForMerging", traits: {"smithy.api#range" => {"min" => 1, "max" => 15}})
    MaxSize500 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#MaxSize500", name: "MaxSize500", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    MergeProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#MergeProfilesRequest", name: "MergeProfilesRequest")
    MergeProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#MergeProfilesResponse", name: "MergeProfilesResponse")
    MetadataColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#MetadataColumnName", name: "MetadataColumnName", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    MetadataColumnsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#MetadataColumnsList", name: "MetadataColumnsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MetadataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#MetadataConfig", name: "MetadataConfig")
    Metrics = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#Metrics", name: "Metrics")
    Object = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#Object", name: "Object", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})
    ObjectAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ObjectAttribute", name: "ObjectAttribute")
    ObjectAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ObjectAttributes", name: "ObjectAttributes", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ObjectCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#ObjectCount", name: "ObjectCount", traits: {"smithy.api#range" => {"min" => 1}})
    ObjectFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ObjectFilter", name: "ObjectFilter")
    ObjectTypeField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ObjectTypeField", name: "ObjectTypeField")
    ObjectTypeKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ObjectTypeKey", name: "ObjectTypeKey")
    ObjectTypeKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ObjectTypeKeyList", name: "ObjectTypeKeyList")
    ObjectTypeNames = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#ObjectTypeNames", name: "ObjectTypeNames")
    Objects = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#Objects", name: "Objects", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#sensitive" => {}})
    Operator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#Operator", name: "Operator")
    OperatorPropertiesKeys = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#OperatorPropertiesKeys", name: "OperatorPropertiesKeys")
    PartyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#PartyType", name: "PartyType", traits: {"smithy.api#deprecated" => {}, "smithy.api#sensitive" => {}})
    PercentPromotedItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#PercentPromotedItems", name: "PercentPromotedItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Period = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#Period", name: "Period")
    PeriodUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#PeriodUnit", name: "PeriodUnit")
    Periods = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#Periods", name: "Periods", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    PhoneNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#PhoneNumberList", name: "PhoneNumberList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    PhonePreferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#PhonePreferenceList", name: "PhonePreferenceList")
    Profile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#Profile", name: "Profile")
    ProfileAttributeValuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ProfileAttributeValuesRequest", name: "ProfileAttributeValuesRequest")
    ProfileAttributeValuesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ProfileAttributeValuesResponse", name: "ProfileAttributeValuesResponse")
    ProfileAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ProfileAttributes", name: "ProfileAttributes", traits: {"smithy.api#sensitive" => {}})
    ProfileDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ProfileDimension", name: "ProfileDimension")
    ProfileHistoryRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ProfileHistoryRecord", name: "ProfileHistoryRecord")
    ProfileHistoryRecords = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ProfileHistoryRecords", name: "ProfileHistoryRecords")
    ProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#ProfileId", name: "ProfileId")
    ProfileIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ProfileIdList", name: "ProfileIdList")
    ProfileIdToBeMergedList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ProfileIdToBeMergedList", name: "ProfileIdToBeMergedList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ProfileIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ProfileIds", name: "ProfileIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ProfileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ProfileList", name: "ProfileList")
    ProfileObjectList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ProfileObjectList", name: "ProfileObjectList")
    ProfileObjectTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ProfileObjectTypeList", name: "ProfileObjectTypeList", traits: {"smithy.api#sensitive" => {}})
    ProfileObjectTypeTemplateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ProfileObjectTypeTemplateList", name: "ProfileObjectTypeTemplateList")
    ProfileQueryFailures = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ProfileQueryFailures", name: "ProfileQueryFailures")
    ProfileQueryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ProfileQueryResult", name: "ProfileQueryResult")
    ProfileType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#ProfileType", name: "ProfileType", traits: {"smithy.api#sensitive" => {}})
    ProfileTypeDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ProfileTypeDimension", name: "ProfileTypeDimension")
    ProfileTypeDimensionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#ProfileTypeDimensionType", name: "ProfileTypeDimensionType")
    ProfileTypeValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ProfileTypeValues", name: "ProfileTypeValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Profiles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#Profiles", name: "Profiles")
    Property = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#Property", name: "Property", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^.+$"})
    PutDomainObjectTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#PutDomainObjectTypeRequest", name: "PutDomainObjectTypeRequest")
    PutDomainObjectTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#PutDomainObjectTypeResponse", name: "PutDomainObjectTypeResponse")
    PutIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#PutIntegrationRequest", name: "PutIntegrationRequest")
    PutIntegrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#PutIntegrationResponse", name: "PutIntegrationResponse")
    PutProfileObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#PutProfileObjectRequest", name: "PutProfileObjectRequest")
    PutProfileObjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#PutProfileObjectResponse", name: "PutProfileObjectResponse")
    PutProfileObjectTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#PutProfileObjectTypeRequest", name: "PutProfileObjectTypeRequest")
    PutProfileObjectTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#PutProfileObjectTypeResponse", name: "PutProfileObjectTypeResponse")
    PutSegmentSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#PutSegmentSubscriptionRequest", name: "PutSegmentSubscriptionRequest")
    PutSegmentSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#PutSegmentSubscriptionResponse", name: "PutSegmentSubscriptionResponse")
    QueryResult = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#QueryResult", name: "QueryResult")
    Range = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#Range", name: "Range")
    RangeOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#RangeOverride", name: "RangeOverride")
    RangeUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#RangeUnit", name: "RangeUnit")
    Readiness = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#Readiness", name: "Readiness")
    ReadinessStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#ReadinessStatus", name: "ReadinessStatus")
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#Recommendation", name: "Recommendation")
    RecommendationDiversityConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#RecommendationDiversityConfig", name: "RecommendationDiversityConfig")
    RecommendationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#RecommendationMetadata", name: "RecommendationMetadata")
    Recommendations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#Recommendations", name: "Recommendations", traits: {"smithy.api#sensitive" => {}})
    Recommender = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#Recommender", name: "Recommender")
    RecommenderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#RecommenderConfig", name: "RecommenderConfig")
    RecommenderConfigTrainingFrequencyInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#RecommenderConfigTrainingFrequencyInteger", name: "RecommenderConfigTrainingFrequencyInteger", traits: {"smithy.api#range" => {"min" => 0, "max" => 30}})
    RecommenderContext = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#RecommenderContext", name: "RecommenderContext", traits: {"smithy.api#sensitive" => {}})
    RecommenderFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#RecommenderFilter", name: "RecommenderFilter")
    RecommenderFilterAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#RecommenderFilterAttributeName", name: "RecommenderFilterAttributeName", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    RecommenderFilterAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#RecommenderFilterAttributeValue", name: "RecommenderFilterAttributeValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 3000}, "smithy.api#sensitive" => {}})
    RecommenderFilterExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#RecommenderFilterExpression", name: "RecommenderFilterExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 2500}, "smithy.api#sensitive" => {}})
    RecommenderFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#RecommenderFilterName", name: "RecommenderFilterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    RecommenderFilterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#RecommenderFilterStatus", name: "RecommenderFilterStatus")
    RecommenderFilterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#RecommenderFilterSummary", name: "RecommenderFilterSummary")
    RecommenderFilterSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#RecommenderFilterSummaryList", name: "RecommenderFilterSummaryList")
    RecommenderFilterValues = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#RecommenderFilterValues", name: "RecommenderFilterValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    RecommenderFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#RecommenderFilters", name: "RecommenderFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    RecommenderPromotionalFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#RecommenderPromotionalFilter", name: "RecommenderPromotionalFilter")
    RecommenderPromotionalFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#RecommenderPromotionalFilters", name: "RecommenderPromotionalFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    RecommenderRecipe = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#RecommenderRecipe", name: "RecommenderRecipe")
    RecommenderRecipeName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#RecommenderRecipeName", name: "RecommenderRecipeName")
    RecommenderRecipesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#RecommenderRecipesList", name: "RecommenderRecipesList")
    RecommenderSchemaField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#RecommenderSchemaField", name: "RecommenderSchemaField")
    RecommenderSchemaFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#RecommenderSchemaFieldList", name: "RecommenderSchemaFieldList", traits: {"smithy.api#length" => {"min" => 1, "max" => 9}})
    RecommenderSchemaFields = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#RecommenderSchemaFields", name: "RecommenderSchemaFields", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    RecommenderSchemaStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#RecommenderSchemaStatus", name: "RecommenderSchemaStatus")
    RecommenderSchemaSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#RecommenderSchemaSummary", name: "RecommenderSchemaSummary")
    RecommenderSchemaSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#RecommenderSchemaSummaryList", name: "RecommenderSchemaSummaryList")
    RecommenderStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#RecommenderStatus", name: "RecommenderStatus")
    RecommenderSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#RecommenderSummary", name: "RecommenderSummary")
    RecommenderSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#RecommenderSummaryList", name: "RecommenderSummaryList")
    RecommenderUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#RecommenderUpdate", name: "RecommenderUpdate")
    RecommenderVersionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#RecommenderVersionName", name: "RecommenderVersionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+/\\d{4}-\\d{2}-\\d{2}T\\d{2}-\\d{2}-\\d{2}Z$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ResultsSummary", name: "ResultsSummary")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^arn:aws:iam:.*:[0-9]+:"})
    RuleBasedMatchingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#RuleBasedMatchingRequest", name: "RuleBasedMatchingRequest")
    RuleBasedMatchingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#RuleBasedMatchingResponse", name: "RuleBasedMatchingResponse")
    RuleBasedMatchingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#RuleBasedMatchingStatus", name: "RuleBasedMatchingStatus")
    RuleLevel = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#RuleLevel", name: "RuleLevel", traits: {"smithy.api#range" => {"min" => 1, "max" => 15}})
    S3ConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#S3ConnectorOperator", name: "S3ConnectorOperator")
    S3ExportingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#S3ExportingConfig", name: "S3ExportingConfig")
    S3ExportingLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#S3ExportingLocation", name: "S3ExportingLocation")
    S3SourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#S3SourceProperties", name: "S3SourceProperties")
    SalesforceConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#SalesforceConnectorOperator", name: "SalesforceConnectorOperator")
    SalesforceSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#SalesforceSourceProperties", name: "SalesforceSourceProperties")
    ScheduleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ScheduleConfiguration", name: "ScheduleConfiguration")
    ScheduleConfigurationUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#ScheduleConfigurationUnit", name: "ScheduleConfigurationUnit")
    ScheduleExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#ScheduleExpression", name: "ScheduleExpression", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    ScheduleOffset = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#ScheduleOffset", name: "ScheduleOffset", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 36000}})
    ScheduledExecutions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ScheduledExecutions", name: "ScheduledExecutions")
    ScheduledTriggerProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ScheduledTriggerProperties", name: "ScheduledTriggerProperties")
    Scope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#Scope", name: "Scope")
    SearchProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#SearchProfilesRequest", name: "SearchProfilesRequest")
    SearchProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#SearchProfilesResponse", name: "SearchProfilesResponse")
    SearchRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#SearchRecommendationsRequest", name: "SearchRecommendationsRequest")
    SearchRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#SearchRecommendationsResponse", name: "SearchRecommendationsResponse")
    SegmentDefinitionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#SegmentDefinitionArn", name: "SegmentDefinitionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SegmentDefinitionItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#SegmentDefinitionItem", name: "SegmentDefinitionItem")
    SegmentDefinitionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#SegmentDefinitionsList", name: "SegmentDefinitionsList")
    SegmentGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#SegmentGroup", name: "SegmentGroup", traits: {"smithy.api#sensitive" => {}})
    SegmentGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#SegmentGroupList", name: "SegmentGroupList")
    SegmentGroupStructure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#SegmentGroupStructure", name: "SegmentGroupStructure")
    SegmentSnapshotStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#SegmentSnapshotStatus", name: "SegmentSnapshotStatus")
    SegmentSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#SegmentSort", name: "SegmentSort", traits: {"smithy.api#sensitive" => {}})
    SegmentSortDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#SegmentSortDataType", name: "SegmentSortDataType")
    SegmentSortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#SegmentSortOrder", name: "SegmentSortOrder")
    SegmentSubscriptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#SegmentSubscriptionStatus", name: "SegmentSubscriptionStatus")
    SegmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#SegmentType", name: "SegmentType")
    ServiceNowConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#ServiceNowConnectorOperator", name: "ServiceNowConnectorOperator")
    ServiceNowSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ServiceNowSourceProperties", name: "ServiceNowSourceProperties")
    SortAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#SortAttribute", name: "SortAttribute")
    SortAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#SortAttributeList", name: "SortAttributeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SortAttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#SortAttributeType", name: "SortAttributeType")
    SourceConnectorProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#SourceConnectorProperties", name: "SourceConnectorProperties")
    SourceConnectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#SourceConnectorType", name: "SourceConnectorType")
    SourceFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#SourceFields", name: "SourceFields")
    SourceFlowConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#SourceFlowConfig", name: "SourceFlowConfig")
    SourceSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#SourceSegment", name: "SourceSegment")
    SourceSegmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#SourceSegmentList", name: "SourceSegmentList")
    StandardIdentifier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#StandardIdentifier", name: "StandardIdentifier")
    StandardIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#StandardIdentifierList", name: "StandardIdentifierList")
    Start = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#Start", name: "Start")
    StartRecommenderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#StartRecommenderRequest", name: "StartRecommenderRequest")
    StartRecommenderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#StartRecommenderResponse", name: "StartRecommenderResponse")
    StartUploadJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#StartUploadJobRequest", name: "StartUploadJobRequest")
    StartUploadJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#StartUploadJobResponse", name: "StartUploadJobResponse")
    Statistic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#Statistic", name: "Statistic", traits: {"smithy.api#sensitive" => {}})
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#Status", name: "Status")
    StatusCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#StatusCode", name: "StatusCode", traits: {"smithy.api#default" => 0})
    StatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#StatusReason", name: "StatusReason")
    StopRecommenderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#StopRecommenderRequest", name: "StopRecommenderRequest")
    StopRecommenderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#StopRecommenderResponse", name: "StopRecommenderResponse")
    StopUploadJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#StopUploadJobRequest", name: "StopUploadJobRequest")
    StopUploadJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#StopUploadJobResponse", name: "StopUploadJobResponse")
    StringDimensionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#StringDimensionType", name: "StringDimensionType")
    SubscriptionEvent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#SubscriptionEvent", name: "SubscriptionEvent")
    SubscriptionEventItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#SubscriptionEventItem", name: "SubscriptionEventItem")
    SubscriptionEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#SubscriptionEventType", name: "SubscriptionEventType")
    SubscriptionEventsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#SubscriptionEventsList", name: "SubscriptionEventsList")
    TagArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#TagArn", name: "TagArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:[a-z0-9]{1,10}:profile$"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Task = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#Task", name: "Task")
    TaskPropertiesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#TaskPropertiesMap", name: "TaskPropertiesMap")
    TaskType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#TaskType", name: "TaskType")
    Tasks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#Tasks", name: "Tasks")
    Threshold = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#Threshold", name: "Threshold")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#Timezone", name: "Timezone", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    TrainingMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#TrainingMetricName", name: "TrainingMetricName")
    TrainingMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#TrainingMetrics", name: "TrainingMetrics")
    TrainingMetricsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#TrainingMetricsList", name: "TrainingMetricsList")
    TriggerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#TriggerConfig", name: "TriggerConfig")
    TriggerProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#TriggerProperties", name: "TriggerProperties")
    TriggerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#TriggerType", name: "TriggerType")
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#Type", name: "Type")
    Unit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#Unit", name: "Unit")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAddress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UpdateAddress", name: "UpdateAddress", traits: {"smithy.api#sensitive" => {}})
    UpdateAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.customerprofiles#UpdateAttributes", name: "UpdateAttributes", traits: {"smithy.api#sensitive" => {}})
    UpdateCalculatedAttributeDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UpdateCalculatedAttributeDefinitionRequest", name: "UpdateCalculatedAttributeDefinitionRequest")
    UpdateCalculatedAttributeDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UpdateCalculatedAttributeDefinitionResponse", name: "UpdateCalculatedAttributeDefinitionResponse")
    UpdateDomainLayoutRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UpdateDomainLayoutRequest", name: "UpdateDomainLayoutRequest")
    UpdateDomainLayoutResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UpdateDomainLayoutResponse", name: "UpdateDomainLayoutResponse")
    UpdateDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UpdateDomainRequest", name: "UpdateDomainRequest")
    UpdateDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UpdateDomainResponse", name: "UpdateDomainResponse")
    UpdateEventTriggerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UpdateEventTriggerRequest", name: "UpdateEventTriggerRequest")
    UpdateEventTriggerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UpdateEventTriggerResponse", name: "UpdateEventTriggerResponse")
    UpdateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UpdateProfileRequest", name: "UpdateProfileRequest")
    UpdateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UpdateProfileResponse", name: "UpdateProfileResponse")
    UpdateRecommenderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UpdateRecommenderRequest", name: "UpdateRecommenderRequest")
    UpdateRecommenderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UpdateRecommenderResponse", name: "UpdateRecommenderResponse")
    UploadJobItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#UploadJobItem", name: "UploadJobItem")
    UploadJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#UploadJobStatus", name: "UploadJobStatus")
    UploadJobsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#UploadJobsList", name: "UploadJobsList")
    Value = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#Value", name: "Value", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    ValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#ValueList", name: "ValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ValueRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ValueRange", name: "ValueRange")
    ValueRangeEnd = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#ValueRangeEnd", name: "ValueRangeEnd")
    ValueRangeStart = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#ValueRangeStart", name: "ValueRangeStart")
    Values = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#Values", name: "Values", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    WorkflowAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#WorkflowAttributes", name: "WorkflowAttributes")
    WorkflowList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#WorkflowList", name: "WorkflowList")
    WorkflowMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#WorkflowMetrics", name: "WorkflowMetrics")
    WorkflowStepItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#WorkflowStepItem", name: "WorkflowStepItem")
    WorkflowStepsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#WorkflowStepsList", name: "WorkflowStepsList")
    WorkflowType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#WorkflowType", name: "WorkflowType")
    ZendeskConnectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#ZendeskConnectorOperator", name: "ZendeskConnectorOperator")
    ZendeskSourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.customerprofiles#ZendeskSourceProperties", name: "ZendeskSourceProperties")
    AdditionalSearchKeysList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#additionalSearchKeysList", name: "AdditionalSearchKeysList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#attributeName", name: "AttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.customerprofiles#boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#displayName", name: "DisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z_][a-zA-Z_0-9-\\s]*$"})
    EncryptionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#encryptionKey", name: "EncryptionKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    ExpirationDaysInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#expirationDaysInteger", name: "ExpirationDaysInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 1098}})
    FieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#fieldName", name: "FieldName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    FoundByList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#foundByList", name: "FoundByList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    LogicalOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.customerprofiles#logicalOperator", name: "LogicalOperator")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#long", name: "Long", traits: {"smithy.api#default" => 0})
    MatchesNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#matchesNumber", name: "MatchesNumber", traits: {"smithy.api#range" => {"min" => 0}})
    MaxSize100 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#maxSize100", name: "MaxSize100", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxSize1000 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#maxSize1000", name: "MaxSize1000", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxSize60 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#maxSize60", name: "MaxSize60", traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#message", name: "Message")
    MinSize0 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#minSize0", name: "MinSize0", traits: {"smithy.api#range" => {"min" => 0}})
    MinSize1 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#minSize1", name: "MinSize1", traits: {"smithy.api#range" => {"min" => 1}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    OptionalBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.customerprofiles#optionalBoolean", name: "OptionalBoolean")
    OptionalLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#optionalLong", name: "OptionalLong")
    PercentageInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#percentageInteger", name: "PercentageInteger", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    RequestValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.customerprofiles#requestValueList", name: "RequestValueList")
    ResponseCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.customerprofiles#responseCode", name: "ResponseCode", traits: {"smithy.api#range" => {"min" => 200, "max" => 599}})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#s3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9.-]+$"})
    S3KeyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#s3KeyName", name: "S3KeyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    S3KeyNameCustomerOutputConfig = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#s3KeyNameCustomerOutputConfig", name: "S3KeyNameCustomerOutputConfig", traits: {"smithy.api#length" => {"min" => 1, "max" => 800}, "smithy.api#pattern" => ".*"})
    SensitiveString0To1000 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#sensitiveString0To1000", name: "SensitiveString0To1000", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#sensitive" => {}})
    SensitiveString0To255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#sensitiveString0To255", name: "SensitiveString0To255", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#sensitive" => {}})
    SensitiveString1To1000 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#sensitiveString1To1000", name: "SensitiveString1To1000", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#sensitive" => {}})
    SensitiveString1To10000 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#sensitiveString1To10000", name: "SensitiveString1To10000", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#sensitive" => {}})
    SensitiveString1To2000000 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#sensitiveString1To2000000", name: "SensitiveString1To2000000", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000000}, "smithy.api#sensitive" => {}})
    SensitiveString1To255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#sensitiveString1To255", name: "SensitiveString1To255", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    SensitiveString1To4000 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#sensitiveString1To4000", name: "SensitiveString1To4000", traits: {"smithy.api#length" => {"min" => 1, "max" => 4000}, "smithy.api#sensitive" => {}})
    SensitiveString1To50000 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#sensitiveString1To50000", name: "SensitiveString1To50000", traits: {"smithy.api#length" => {"min" => 1, "max" => 50000}, "smithy.api#sensitive" => {}})
    SensitiveText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#sensitiveText", name: "SensitiveText", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#sensitive" => {}})
    SqsQueueUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#sqsQueueUrl", name: "SqsQueueUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    String0To255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#string0To255", name: "String0To255", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    String1To1000 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#string1To1000", name: "String1To1000", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    String1To255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#string1To255", name: "String1To255", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    StringTo2048 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#stringTo2048", name: "StringTo2048", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*"})
    StringifiedJson = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#stringifiedJson", name: "StringifiedJson", traits: {"smithy.api#length" => {"min" => 1, "max" => 256000}, "smithy.api#sensitive" => {}})
    Text = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#text", name: "Text", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.customerprofiles#timestamp", name: "Timestamp")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#token", name: "Token", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    TypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#typeName", name: "TypeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z_][a-zA-Z_0-9-]*$"})
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.customerprofiles#uuid", name: "Uuid", traits: {"smithy.api#pattern" => "^[a-f0-9]{32}$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionType.add_member(:added_profile_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDED_PROFILE_KEY", traits: {"smithy.api#enumValue" => "ADDED_PROFILE_KEY"}))
    ActionType.add_member(:deleted_profile_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED_PROFILE_KEY", traits: {"smithy.api#enumValue" => "DELETED_PROFILE_KEY"}))
    ActionType.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ActionType.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED", traits: {"smithy.api#enumValue" => "UPDATED"}))
    ActionType.add_member(:ingested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INGESTED", traits: {"smithy.api#enumValue" => "INGESTED"}))
    ActionType.add_member(:deleted_by_customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED_BY_CUSTOMER", traits: {"smithy.api#enumValue" => "DELETED_BY_CUSTOMER"}))
    ActionType.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ActionType.add_member(:merged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MERGED", traits: {"smithy.api#enumValue" => "MERGED"}))
    ActionType.add_member(:deleted_by_merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED_BY_MERGE", traits: {"smithy.api#enumValue" => "DELETED_BY_MERGE"}))
    AddProfileKeyRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    AddProfileKeyRequest.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "KeyName", traits: {"smithy.api#required" => {}}))
    AddProfileKeyRequest.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    AddProfileKeyRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddProfileKeyRequest.type = Types::AddProfileKeyRequest
    AddProfileKeyResponse.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "KeyName"))
    AddProfileKeyResponse.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestValueList, name: "Values"))
    AddProfileKeyResponse.type = Types::AddProfileKeyResponse
    AdditionalSearchKey.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "KeyName", traits: {"smithy.api#required" => {}}))
    AdditionalSearchKey.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    AdditionalSearchKey.type = Types::AdditionalSearchKey
    Address.add_member(:address1, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Address1"))
    Address.add_member(:address2, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Address2"))
    Address.add_member(:address3, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Address3"))
    Address.add_member(:address4, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Address4"))
    Address.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "City"))
    Address.add_member(:county, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "County"))
    Address.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "State"))
    Address.add_member(:province, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Province"))
    Address.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Country"))
    Address.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "PostalCode"))
    Address.type = Types::Address
    AddressDimension.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "City", traits: {"smithy.api#jsonName" => "City"}))
    AddressDimension.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "Country", traits: {"smithy.api#jsonName" => "Country"}))
    AddressDimension.add_member(:county, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "County", traits: {"smithy.api#jsonName" => "County"}))
    AddressDimension.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "PostalCode", traits: {"smithy.api#jsonName" => "PostalCode"}))
    AddressDimension.add_member(:province, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "Province", traits: {"smithy.api#jsonName" => "Province"}))
    AddressDimension.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "State", traits: {"smithy.api#jsonName" => "State"}))
    AddressDimension.type = Types::AddressDimension
    AddressList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "member"))
    AppflowIntegration.add_member(:flow_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowDefinition, name: "FlowDefinition", traits: {"smithy.api#required" => {}}))
    AppflowIntegration.add_member(:batches, ::Smithy::Schema::Shapes::MemberShape.new(target: Batches, name: "Batches"))
    AppflowIntegration.type = Types::AppflowIntegration
    AppflowIntegrationWorkflowAttributes.add_member(:source_connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConnectorType, name: "SourceConnectorType", traits: {"smithy.api#required" => {}}))
    AppflowIntegrationWorkflowAttributes.add_member(:connector_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileName, name: "ConnectorProfileName", traits: {"smithy.api#required" => {}}))
    AppflowIntegrationWorkflowAttributes.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "RoleArn"))
    AppflowIntegrationWorkflowAttributes.type = Types::AppflowIntegrationWorkflowAttributes
    AppflowIntegrationWorkflowMetrics.add_member(:records_processed, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "RecordsProcessed", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AppflowIntegrationWorkflowMetrics.add_member(:steps_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "StepsCompleted", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AppflowIntegrationWorkflowMetrics.add_member(:total_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalSteps", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AppflowIntegrationWorkflowMetrics.type = Types::AppflowIntegrationWorkflowMetrics
    AppflowIntegrationWorkflowStep.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowName, name: "FlowName", traits: {"smithy.api#required" => {}}))
    AppflowIntegrationWorkflowStep.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status", traits: {"smithy.api#required" => {}}))
    AppflowIntegrationWorkflowStep.add_member(:execution_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "ExecutionMessage", traits: {"smithy.api#required" => {}}))
    AppflowIntegrationWorkflowStep.add_member(:records_processed, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "RecordsProcessed", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AppflowIntegrationWorkflowStep.add_member(:batch_records_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "BatchRecordsStartTime", traits: {"smithy.api#required" => {}}))
    AppflowIntegrationWorkflowStep.add_member(:batch_records_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "BatchRecordsEndTime", traits: {"smithy.api#required" => {}}))
    AppflowIntegrationWorkflowStep.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    AppflowIntegrationWorkflowStep.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    AppflowIntegrationWorkflowStep.type = Types::AppflowIntegrationWorkflowStep
    AssociateStreamForSegmentsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateStreamForSegmentsRequest.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArnString, name: "DestinationArn", traits: {"smithy.api#required" => {}}))
    AssociateStreamForSegmentsRequest.add_member(:destination_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationRoleArn, name: "DestinationRoleArn", traits: {"smithy.api#required" => {}}))
    AssociateStreamForSegmentsRequest.type = Types::AssociateStreamForSegmentsRequest
    AssociateStreamForSegmentsResponse.type = Types::AssociateStreamForSegmentsResponse
    AssociatedSegment.add_member(:segment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentName", traits: {"smithy.api#jsonName" => "SegmentName"}))
    AssociatedSegment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscriptionSegmentStatus, name: "Status", traits: {"smithy.api#jsonName" => "Status"}))
    AssociatedSegment.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To1000, name: "Message", traits: {"smithy.api#jsonName" => "Message"}))
    AssociatedSegment.type = Types::AssociatedSegment
    AssociatedSegmentsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedSegment, name: "member"))
    AttributeDetails.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeList, name: "Attributes", traits: {"smithy.api#required" => {}}))
    AttributeDetails.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Expression", traits: {"smithy.api#required" => {}}))
    AttributeDetails.type = Types::AttributeDetails
    AttributeDimension.add_member(:dimension_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeDimensionType, name: "DimensionType", traits: {"smithy.api#jsonName" => "DimensionType", "smithy.api#required" => {}}))
    AttributeDimension.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, name: "Values", traits: {"smithy.api#jsonName" => "Values", "smithy.api#required" => {}}))
    AttributeDimension.type = Types::AttributeDimension
    AttributeDimensionType.add_member(:inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUSIVE", traits: {"smithy.api#enumValue" => "INCLUSIVE"}))
    AttributeDimensionType.add_member(:exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUSIVE", traits: {"smithy.api#enumValue" => "EXCLUSIVE"}))
    AttributeDimensionType.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    AttributeDimensionType.add_member(:begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEGINS_WITH", traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    AttributeDimensionType.add_member(:ends_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDS_WITH", traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    AttributeDimensionType.add_member(:before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE", traits: {"smithy.api#enumValue" => "BEFORE"}))
    AttributeDimensionType.add_member(:after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER", traits: {"smithy.api#enumValue" => "AFTER"}))
    AttributeDimensionType.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    AttributeDimensionType.add_member(:not_between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_BETWEEN", traits: {"smithy.api#enumValue" => "NOT_BETWEEN"}))
    AttributeDimensionType.add_member(:on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON", traits: {"smithy.api#enumValue" => "ON"}))
    AttributeDimensionType.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    AttributeDimensionType.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    AttributeDimensionType.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL"}))
    AttributeDimensionType.add_member(:less_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL"}))
    AttributeDimensionType.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "EQUAL"}))
    AttributeDimensionType.add_member(:list_contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIST_CONTAINS", traits: {"smithy.api#enumValue" => "LIST_CONTAINS"}))
    AttributeDimensionType.add_member(:list_contains_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIST_CONTAINS_ALL", traits: {"smithy.api#enumValue" => "LIST_CONTAINS_ALL"}))
    AttributeItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "Name", traits: {"smithy.api#required" => {}}))
    AttributeItem.type = Types::AttributeItem
    AttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeItem, name: "member"))
    AttributeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    AttributeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttributeDimension, name: "value"))
    AttributeMatchingModel.add_member(:one_to_one, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_TO_ONE", traits: {"smithy.api#enumValue" => "ONE_TO_ONE"}))
    AttributeMatchingModel.add_member(:many_to_many, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANY_TO_MANY", traits: {"smithy.api#enumValue" => "MANY_TO_MANY"}))
    AttributeSourceIdMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "key"))
    AttributeSourceIdMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "value"))
    AttributeTypesSelector.add_member(:attribute_matching_model, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMatchingModel, name: "AttributeMatchingModel", traits: {"smithy.api#required" => {}}))
    AttributeTypesSelector.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressList, name: "Address"))
    AttributeTypesSelector.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberList, name: "PhoneNumber"))
    AttributeTypesSelector.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailList, name: "EmailAddress"))
    AttributeTypesSelector.type = Types::AttributeTypesSelector
    AttributeValueItem.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Value"))
    AttributeValueItem.type = Types::AttributeValueItem
    AttributeValueItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueItem, name: "member"))
    Attributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "key"))
    Attributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "value"))
    AutoMerging.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    AutoMerging.add_member(:consolidation, ::Smithy::Schema::Shapes::MemberShape.new(target: Consolidation, name: "Consolidation"))
    AutoMerging.add_member(:conflict_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolution, name: "ConflictResolution"))
    AutoMerging.add_member(:min_allowed_confidence_score_for_merging, ::Smithy::Schema::Shapes::MemberShape.new(target: Double0To1, name: "MinAllowedConfidenceScoreForMerging"))
    AutoMerging.type = Types::AutoMerging
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    BadRequestException.type = Types::BadRequestException
    Batch.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    Batch.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    Batch.type = Types::Batch
    BatchGetCalculatedAttributeForProfileError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Code", traits: {"smithy.api#required" => {}}))
    BatchGetCalculatedAttributeForProfileError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To1000, name: "Message", traits: {"smithy.api#required" => {}}))
    BatchGetCalculatedAttributeForProfileError.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    BatchGetCalculatedAttributeForProfileError.type = Types::BatchGetCalculatedAttributeForProfileError
    BatchGetCalculatedAttributeForProfileErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetCalculatedAttributeForProfileError, name: "member"))
    BatchGetCalculatedAttributeForProfileIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "member"))
    BatchGetCalculatedAttributeForProfileRequest.add_member(:calculated_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "CalculatedAttributeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchGetCalculatedAttributeForProfileRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchGetCalculatedAttributeForProfileRequest.add_member(:profile_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetCalculatedAttributeForProfileIdList, name: "ProfileIds", traits: {"smithy.api#required" => {}}))
    BatchGetCalculatedAttributeForProfileRequest.add_member(:condition_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionOverrides, name: "ConditionOverrides"))
    BatchGetCalculatedAttributeForProfileRequest.type = Types::BatchGetCalculatedAttributeForProfileRequest
    BatchGetCalculatedAttributeForProfileResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetCalculatedAttributeForProfileErrorList, name: "Errors"))
    BatchGetCalculatedAttributeForProfileResponse.add_member(:calculated_attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculatedAttributeValueList, name: "CalculatedAttributeValues"))
    BatchGetCalculatedAttributeForProfileResponse.add_member(:condition_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionOverrides, name: "ConditionOverrides"))
    BatchGetCalculatedAttributeForProfileResponse.type = Types::BatchGetCalculatedAttributeForProfileResponse
    BatchGetProfileError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Code", traits: {"smithy.api#required" => {}}))
    BatchGetProfileError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To1000, name: "Message", traits: {"smithy.api#required" => {}}))
    BatchGetProfileError.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    BatchGetProfileError.type = Types::BatchGetProfileError
    BatchGetProfileErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetProfileError, name: "member"))
    BatchGetProfileIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "member"))
    BatchGetProfileRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchGetProfileRequest.add_member(:profile_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetProfileIdList, name: "ProfileIds", traits: {"smithy.api#required" => {}}))
    BatchGetProfileRequest.type = Types::BatchGetProfileRequest
    BatchGetProfileResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetProfileErrorList, name: "Errors"))
    BatchGetProfileResponse.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileList, name: "Profiles"))
    BatchGetProfileResponse.type = Types::BatchGetProfileResponse
    BatchPutProfileObjectErrorItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Id", traits: {"smithy.api#required" => {}}))
    BatchPutProfileObjectErrorItem.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseCode, name: "Code", traits: {"smithy.api#required" => {}}))
    BatchPutProfileObjectErrorItem.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "Message"))
    BatchPutProfileObjectErrorItem.type = Types::BatchPutProfileObjectErrorItem
    BatchPutProfileObjectErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutProfileObjectErrorItem, name: "member"))
    BatchPutProfileObjectRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchPutProfileObjectRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#required" => {}}))
    BatchPutProfileObjectRequest.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutProfileObjectRequestItemList, name: "Items", traits: {"smithy.api#required" => {}}))
    BatchPutProfileObjectRequest.type = Types::BatchPutProfileObjectRequest
    BatchPutProfileObjectRequestItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Id", traits: {"smithy.api#required" => {}}))
    BatchPutProfileObjectRequestItem.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: StringifiedJson, name: "Object", traits: {"smithy.api#required" => {}}))
    BatchPutProfileObjectRequestItem.type = Types::BatchPutProfileObjectRequestItem
    BatchPutProfileObjectRequestItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutProfileObjectRequestItem, name: "member"))
    BatchPutProfileObjectResponse.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutProfileObjectResponseList, name: "Successful"))
    BatchPutProfileObjectResponse.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutProfileObjectErrorList, name: "Failed"))
    BatchPutProfileObjectResponse.type = Types::BatchPutProfileObjectResponse
    BatchPutProfileObjectResponseItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Id", traits: {"smithy.api#required" => {}}))
    BatchPutProfileObjectResponseItem.add_member(:profile_object_unique_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "ProfileObjectUniqueKey", traits: {"smithy.api#required" => {}}))
    BatchPutProfileObjectResponseItem.type = Types::BatchPutProfileObjectResponseItem
    BatchPutProfileObjectResponseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutProfileObjectResponseItem, name: "member"))
    Batches.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Batch, name: "member"))
    CalculatedAttributeDefinitionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCalculatedAttributeDefinitionItem, name: "member"))
    CalculatedAttributeDimension.add_member(:dimension_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeDimensionType, name: "DimensionType", traits: {"smithy.api#jsonName" => "DimensionType", "smithy.api#required" => {}}))
    CalculatedAttributeDimension.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, name: "Values", traits: {"smithy.api#jsonName" => "Values", "smithy.api#required" => {}}))
    CalculatedAttributeDimension.add_member(:condition_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionOverrides, name: "ConditionOverrides", traits: {"smithy.api#jsonName" => "ConditionOverrides"}))
    CalculatedAttributeDimension.type = Types::CalculatedAttributeDimension
    CalculatedAttributeValue.add_member(:calculated_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "CalculatedAttributeName"))
    CalculatedAttributeValue.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    CalculatedAttributeValue.add_member(:is_data_partial, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "IsDataPartial"))
    CalculatedAttributeValue.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId"))
    CalculatedAttributeValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Value"))
    CalculatedAttributeValue.add_member(:last_object_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastObjectTimestamp"))
    CalculatedAttributeValue.type = Types::CalculatedAttributeValue
    CalculatedAttributeValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculatedAttributeValue, name: "member"))
    CalculatedAttributesForProfileList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCalculatedAttributeForProfileItem, name: "member"))
    CalculatedCustomAttributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "key"))
    CalculatedCustomAttributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculatedAttributeDimension, name: "value"))
    CandidateIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "member"))
    CatalogItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "Id"))
    CatalogItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "Name"))
    CatalogItem.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "Code"))
    CatalogItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "Type"))
    CatalogItem.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "Category"))
    CatalogItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "Description"))
    CatalogItem.add_member(:additional_information, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To1000, name: "AdditionalInformation"))
    CatalogItem.add_member(:image_link, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To1000, name: "ImageLink"))
    CatalogItem.add_member(:link, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To1000, name: "Link"))
    CatalogItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    CatalogItem.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    CatalogItem.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "Price"))
    CatalogItem.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "Attributes"))
    CatalogItem.type = Types::CatalogItem
    ColumnNamesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "member"))
    ComparisonOperator.add_member(:inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUSIVE", traits: {"smithy.api#enumValue" => "INCLUSIVE"}))
    ComparisonOperator.add_member(:exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUSIVE", traits: {"smithy.api#enumValue" => "EXCLUSIVE"}))
    ComparisonOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    ComparisonOperator.add_member(:begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEGINS_WITH", traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    ComparisonOperator.add_member(:ends_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDS_WITH", traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    ComparisonOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    ComparisonOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    ComparisonOperator.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL"}))
    ComparisonOperator.add_member(:less_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL"}))
    ComparisonOperator.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "EQUAL"}))
    ComparisonOperator.add_member(:before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE", traits: {"smithy.api#enumValue" => "BEFORE"}))
    ComparisonOperator.add_member(:after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER", traits: {"smithy.api#enumValue" => "AFTER"}))
    ComparisonOperator.add_member(:on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON", traits: {"smithy.api#enumValue" => "ON"}))
    ComparisonOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    ComparisonOperator.add_member(:not_between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_BETWEEN", traits: {"smithy.api#enumValue" => "NOT_BETWEEN"}))
    ConditionOverrides.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: RangeOverride, name: "Range"))
    ConditionOverrides.type = Types::ConditionOverrides
    Conditions.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: Range, name: "Range"))
    Conditions.add_member(:object_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectCount, name: "ObjectCount"))
    Conditions.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Threshold, name: "Threshold"))
    Conditions.type = Types::Conditions
    ConflictResolution.add_member(:conflict_resolving_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolvingModel, name: "ConflictResolvingModel", traits: {"smithy.api#required" => {}}))
    ConflictResolution.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "SourceName"))
    ConflictResolution.type = Types::ConflictResolution
    ConflictResolvingModel.add_member(:recency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECENCY", traits: {"smithy.api#enumValue" => "RECENCY"}))
    ConflictResolvingModel.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE", traits: {"smithy.api#enumValue" => "SOURCE"}))
    ConnectorOperator.add_member(:marketo, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketoConnectorOperator, name: "Marketo"))
    ConnectorOperator.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ConnectorOperator, name: "S3"))
    ConnectorOperator.add_member(:salesforce, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceConnectorOperator, name: "Salesforce"))
    ConnectorOperator.add_member(:service_now, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowConnectorOperator, name: "ServiceNow"))
    ConnectorOperator.add_member(:zendesk, ::Smithy::Schema::Shapes::MemberShape.new(target: ZendeskConnectorOperator, name: "Zendesk"))
    ConnectorOperator.type = Types::ConnectorOperator
    Consolidation.add_member(:matching_attributes_list, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchingAttributesList, name: "MatchingAttributesList", traits: {"smithy.api#required" => {}}))
    Consolidation.type = Types::Consolidation
    ContactPreference.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "KeyName"))
    ContactPreference.add_member(:key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "KeyValue"))
    ContactPreference.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId"))
    ContactPreference.add_member(:contact_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactType, name: "ContactType"))
    ContactPreference.type = Types::ContactPreference
    ContactType.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHONE_NUMBER", traits: {"smithy.api#enumValue" => "PhoneNumber"}))
    ContactType.add_member(:mobile_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MOBILE_PHONE_NUMBER", traits: {"smithy.api#enumValue" => "MobilePhoneNumber"}))
    ContactType.add_member(:home_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOME_PHONE_NUMBER", traits: {"smithy.api#enumValue" => "HomePhoneNumber"}))
    ContactType.add_member(:business_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_PHONE_NUMBER", traits: {"smithy.api#enumValue" => "BusinessPhoneNumber"}))
    ContactType.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_ADDRESS", traits: {"smithy.api#enumValue" => "EmailAddress"}))
    ContactType.add_member(:personal_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERSONAL_EMAIL_ADDRESS", traits: {"smithy.api#enumValue" => "PersonalEmailAddress"}))
    ContactType.add_member(:business_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_EMAIL_ADDRESS", traits: {"smithy.api#enumValue" => "BusinessEmailAddress"}))
    ContentType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    ContentType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER", traits: {"smithy.api#enumValue" => "NUMBER"}))
    CreateCalculatedAttributeDefinitionRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCalculatedAttributeDefinitionRequest.add_member(:calculated_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "CalculatedAttributeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCalculatedAttributeDefinitionRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    CreateCalculatedAttributeDefinitionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    CreateCalculatedAttributeDefinitionRequest.add_member(:attribute_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeDetails, name: "AttributeDetails", traits: {"smithy.api#required" => {}}))
    CreateCalculatedAttributeDefinitionRequest.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Conditions, name: "Conditions"))
    CreateCalculatedAttributeDefinitionRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "Filter"))
    CreateCalculatedAttributeDefinitionRequest.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistic, name: "Statistic", traits: {"smithy.api#required" => {}}))
    CreateCalculatedAttributeDefinitionRequest.add_member(:use_historical_data, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "UseHistoricalData"))
    CreateCalculatedAttributeDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateCalculatedAttributeDefinitionRequest.type = Types::CreateCalculatedAttributeDefinitionRequest
    CreateCalculatedAttributeDefinitionResponse.add_member(:calculated_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "CalculatedAttributeName"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:attribute_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeDetails, name: "AttributeDetails"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Conditions, name: "Conditions"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "Filter"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistic, name: "Statistic"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:use_historical_data, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "UseHistoricalData"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadinessStatus, name: "Status"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:readiness, ::Smithy::Schema::Shapes::MemberShape.new(target: Readiness, name: "Readiness"))
    CreateCalculatedAttributeDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateCalculatedAttributeDefinitionResponse.type = Types::CreateCalculatedAttributeDefinitionResponse
    CreateDomainLayoutRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDomainLayoutRequest.add_member(:layout_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "LayoutDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDomainLayoutRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description", traits: {"smithy.api#required" => {}}))
    CreateDomainLayoutRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    CreateDomainLayoutRequest.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDefault", traits: {"smithy.api#default" => false}))
    CreateDomainLayoutRequest.add_member(:layout_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LayoutType, name: "LayoutType", traits: {"smithy.api#required" => {}}))
    CreateDomainLayoutRequest.add_member(:layout, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To2000000, name: "Layout", traits: {"smithy.api#required" => {}}))
    CreateDomainLayoutRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateDomainLayoutRequest.type = Types::CreateDomainLayoutRequest
    CreateDomainLayoutResponse.add_member(:layout_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "LayoutDefinitionName", traits: {"smithy.api#required" => {}}))
    CreateDomainLayoutResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description", traits: {"smithy.api#required" => {}}))
    CreateDomainLayoutResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    CreateDomainLayoutResponse.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDefault", traits: {"smithy.api#default" => false}))
    CreateDomainLayoutResponse.add_member(:layout_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LayoutType, name: "LayoutType", traits: {"smithy.api#required" => {}}))
    CreateDomainLayoutResponse.add_member(:layout, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To2000000, name: "Layout", traits: {"smithy.api#required" => {}}))
    CreateDomainLayoutResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Version", traits: {"smithy.api#required" => {}}))
    CreateDomainLayoutResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateDomainLayoutResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    CreateDomainLayoutResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    CreateDomainLayoutResponse.type = Types::CreateDomainLayoutResponse
    CreateDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDomainRequest.add_member(:default_expiration_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDaysInteger, name: "DefaultExpirationDays", traits: {"smithy.api#required" => {}}))
    CreateDomainRequest.add_member(:default_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "DefaultEncryptionKey"))
    CreateDomainRequest.add_member(:dead_letter_queue_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SqsQueueUrl, name: "DeadLetterQueueUrl"))
    CreateDomainRequest.add_member(:matching, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchingRequest, name: "Matching"))
    CreateDomainRequest.add_member(:rule_based_matching, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleBasedMatchingRequest, name: "RuleBasedMatching"))
    CreateDomainRequest.add_member(:data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: DataStoreRequest, name: "DataStore"))
    CreateDomainRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateDomainRequest.type = Types::CreateDomainRequest
    CreateDomainResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#required" => {}}))
    CreateDomainResponse.add_member(:default_expiration_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDaysInteger, name: "DefaultExpirationDays", traits: {"smithy.api#required" => {}}))
    CreateDomainResponse.add_member(:default_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "DefaultEncryptionKey"))
    CreateDomainResponse.add_member(:dead_letter_queue_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SqsQueueUrl, name: "DeadLetterQueueUrl"))
    CreateDomainResponse.add_member(:matching, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchingResponse, name: "Matching"))
    CreateDomainResponse.add_member(:rule_based_matching, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleBasedMatchingResponse, name: "RuleBasedMatching"))
    CreateDomainResponse.add_member(:data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: DataStoreResponse, name: "DataStore"))
    CreateDomainResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    CreateDomainResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    CreateDomainResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateDomainResponse.type = Types::CreateDomainResponse
    CreateEventStreamRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEventStreamRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Uri", traits: {"smithy.api#required" => {}}))
    CreateEventStreamRequest.add_member(:event_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EventStreamName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEventStreamRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateEventStreamRequest.type = Types::CreateEventStreamRequest
    CreateEventStreamResponse.add_member(:event_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "EventStreamArn", traits: {"smithy.api#required" => {}}))
    CreateEventStreamResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateEventStreamResponse.type = Types::CreateEventStreamResponse
    CreateEventTriggerRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEventTriggerRequest.add_member(:event_trigger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EventTriggerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEventTriggerRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#required" => {}}))
    CreateEventTriggerRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    CreateEventTriggerRequest.add_member(:event_trigger_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerConditions, name: "EventTriggerConditions", traits: {"smithy.api#required" => {}}))
    CreateEventTriggerRequest.add_member(:segment_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentFilter"))
    CreateEventTriggerRequest.add_member(:event_trigger_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerLimits, name: "EventTriggerLimits"))
    CreateEventTriggerRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateEventTriggerRequest.type = Types::CreateEventTriggerRequest
    CreateEventTriggerResponse.add_member(:event_trigger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EventTriggerName"))
    CreateEventTriggerResponse.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName"))
    CreateEventTriggerResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    CreateEventTriggerResponse.add_member(:event_trigger_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerConditions, name: "EventTriggerConditions"))
    CreateEventTriggerResponse.add_member(:segment_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentFilter"))
    CreateEventTriggerResponse.add_member(:event_trigger_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerLimits, name: "EventTriggerLimits"))
    CreateEventTriggerResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    CreateEventTriggerResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    CreateEventTriggerResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateEventTriggerResponse.type = Types::CreateEventTriggerResponse
    CreateIntegrationWorkflowRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIntegrationWorkflowRequest.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "WorkflowType", traits: {"smithy.api#required" => {}}))
    CreateIntegrationWorkflowRequest.add_member(:integration_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationConfig, name: "IntegrationConfig", traits: {"smithy.api#required" => {}}))
    CreateIntegrationWorkflowRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#required" => {}}))
    CreateIntegrationWorkflowRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateIntegrationWorkflowRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateIntegrationWorkflowRequest.type = Types::CreateIntegrationWorkflowRequest
    CreateIntegrationWorkflowResponse.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "WorkflowId", traits: {"smithy.api#required" => {}}))
    CreateIntegrationWorkflowResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Message", traits: {"smithy.api#required" => {}}))
    CreateIntegrationWorkflowResponse.type = Types::CreateIntegrationWorkflowResponse
    CreateProfileRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateProfileRequest.add_member(:account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "AccountNumber"))
    CreateProfileRequest.add_member(:additional_information, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To1000, name: "AdditionalInformation"))
    CreateProfileRequest.add_member(:party_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PartyType, name: "PartyType"))
    CreateProfileRequest.add_member(:business_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "BusinessName"))
    CreateProfileRequest.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "FirstName"))
    CreateProfileRequest.add_member(:middle_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "MiddleName"))
    CreateProfileRequest.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "LastName"))
    CreateProfileRequest.add_member(:birth_date, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "BirthDate"))
    CreateProfileRequest.add_member(:gender, ::Smithy::Schema::Shapes::MemberShape.new(target: Gender, name: "Gender"))
    CreateProfileRequest.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "PhoneNumber"))
    CreateProfileRequest.add_member(:mobile_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "MobilePhoneNumber"))
    CreateProfileRequest.add_member(:home_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "HomePhoneNumber"))
    CreateProfileRequest.add_member(:business_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "BusinessPhoneNumber"))
    CreateProfileRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "EmailAddress"))
    CreateProfileRequest.add_member(:personal_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "PersonalEmailAddress"))
    CreateProfileRequest.add_member(:business_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "BusinessEmailAddress"))
    CreateProfileRequest.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    CreateProfileRequest.add_member(:shipping_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "ShippingAddress"))
    CreateProfileRequest.add_member(:mailing_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "MailingAddress"))
    CreateProfileRequest.add_member(:billing_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "BillingAddress"))
    CreateProfileRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "Attributes"))
    CreateProfileRequest.add_member(:party_type_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "PartyTypeString"))
    CreateProfileRequest.add_member(:gender_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "GenderString"))
    CreateProfileRequest.add_member(:profile_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileType, name: "ProfileType"))
    CreateProfileRequest.add_member(:engagement_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementPreferences, name: "EngagementPreferences"))
    CreateProfileRequest.type = Types::CreateProfileRequest
    CreateProfileResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    CreateProfileResponse.type = Types::CreateProfileResponse
    CreateRecommenderFilterRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRecommenderFilterRequest.add_member(:recommender_filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterName, name: "RecommenderFilterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRecommenderFilterRequest.add_member(:recommender_filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterExpression, name: "RecommenderFilterExpression", traits: {"smithy.api#required" => {}}))
    CreateRecommenderFilterRequest.add_member(:recommender_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderSchemaName"))
    CreateRecommenderFilterRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    CreateRecommenderFilterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateRecommenderFilterRequest.type = Types::CreateRecommenderFilterRequest
    CreateRecommenderFilterResponse.add_member(:recommender_filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RecommenderFilterArn", traits: {"smithy.api#required" => {}}))
    CreateRecommenderFilterResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateRecommenderFilterResponse.type = Types::CreateRecommenderFilterResponse
    CreateRecommenderRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRecommenderRequest.add_member(:recommender_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRecommenderRequest.add_member(:recommender_recipe_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderRecipeName, name: "RecommenderRecipeName", traits: {"smithy.api#required" => {}}))
    CreateRecommenderRequest.add_member(:recommender_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderConfig, name: "RecommenderConfig"))
    CreateRecommenderRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    CreateRecommenderRequest.add_member(:recommender_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderSchemaName"))
    CreateRecommenderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateRecommenderRequest.type = Types::CreateRecommenderRequest
    CreateRecommenderResponse.add_member(:recommender_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RecommenderArn", traits: {"smithy.api#required" => {}}))
    CreateRecommenderResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateRecommenderResponse.type = Types::CreateRecommenderResponse
    CreateRecommenderSchemaRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRecommenderSchemaRequest.add_member(:recommender_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderSchemaName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRecommenderSchemaRequest.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderSchemaFields, name: "Fields", traits: {"smithy.api#required" => {}}))
    CreateRecommenderSchemaRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateRecommenderSchemaRequest.type = Types::CreateRecommenderSchemaRequest
    CreateRecommenderSchemaResponse.add_member(:recommender_schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RecommenderSchemaArn", traits: {"smithy.api#required" => {}}))
    CreateRecommenderSchemaResponse.add_member(:recommender_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderSchemaName", traits: {"smithy.api#required" => {}}))
    CreateRecommenderSchemaResponse.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderSchemaFields, name: "Fields", traits: {"smithy.api#required" => {}}))
    CreateRecommenderSchemaResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    CreateRecommenderSchemaResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderSchemaStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CreateRecommenderSchemaResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateRecommenderSchemaResponse.type = Types::CreateRecommenderSchemaResponse
    CreateSegmentDefinitionRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSegmentDefinitionRequest.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSegmentDefinitionRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    CreateSegmentDefinitionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To4000, name: "Description"))
    CreateSegmentDefinitionRequest.add_member(:segment_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentGroup, name: "SegmentGroups"))
    CreateSegmentDefinitionRequest.add_member(:segment_sql_query, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To50000, name: "SegmentSqlQuery"))
    CreateSegmentDefinitionRequest.add_member(:segment_sort, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentSort, name: "SegmentSort"))
    CreateSegmentDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateSegmentDefinitionRequest.type = Types::CreateSegmentDefinitionRequest
    CreateSegmentDefinitionResponse.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#jsonName" => "SegmentDefinitionName", "smithy.api#required" => {}}))
    CreateSegmentDefinitionResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "DisplayName", traits: {"smithy.api#jsonName" => "DisplayName"}))
    CreateSegmentDefinitionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To4000, name: "Description", traits: {"smithy.api#jsonName" => "Description"}))
    CreateSegmentDefinitionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "CreatedAt"}))
    CreateSegmentDefinitionResponse.add_member(:segment_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentDefinitionArn, name: "SegmentDefinitionArn", traits: {"smithy.api#jsonName" => "SegmentDefinitionArn"}))
    CreateSegmentDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "Tags"}))
    CreateSegmentDefinitionResponse.type = Types::CreateSegmentDefinitionResponse
    CreateSegmentEstimateRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSegmentEstimateRequest.add_member(:segment_query, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentGroupStructure, name: "SegmentQuery"))
    CreateSegmentEstimateRequest.add_member(:segment_sql_query, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To50000, name: "SegmentSqlQuery"))
    CreateSegmentEstimateRequest.type = Types::CreateSegmentEstimateRequest
    CreateSegmentEstimateResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName"))
    CreateSegmentEstimateResponse.add_member(:estimate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "EstimateId"))
    CreateSegmentEstimateResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "StatusCode", traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}}))
    CreateSegmentEstimateResponse.type = Types::CreateSegmentEstimateResponse
    CreateSegmentSnapshotRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSegmentSnapshotRequest.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSegmentSnapshotRequest.add_member(:data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFormat, name: "DataFormat", traits: {"smithy.api#required" => {}}))
    CreateSegmentSnapshotRequest.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "EncryptionKey"))
    CreateSegmentSnapshotRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    CreateSegmentSnapshotRequest.add_member(:destination_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "DestinationUri"))
    CreateSegmentSnapshotRequest.type = Types::CreateSegmentSnapshotRequest
    CreateSegmentSnapshotResponse.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "SnapshotId", traits: {"smithy.api#required" => {}}))
    CreateSegmentSnapshotResponse.type = Types::CreateSegmentSnapshotResponse
    CreateUploadJobRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateUploadJobRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    CreateUploadJobRequest.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldMap, name: "Fields", traits: {"smithy.api#required" => {}}))
    CreateUploadJobRequest.add_member(:unique_key, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "UniqueKey", traits: {"smithy.api#required" => {}}))
    CreateUploadJobRequest.add_member(:data_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDaysInteger, name: "DataExpiry"))
    CreateUploadJobRequest.type = Types::CreateUploadJobRequest
    CreateUploadJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "JobId", traits: {"smithy.api#jsonName" => "JobId", "smithy.api#required" => {}}))
    CreateUploadJobResponse.type = Types::CreateUploadJobResponse
    CustomAttributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "key"))
    CustomAttributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeDimension, name: "value"))
    DataFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    DataFormat.add_member(:jsonl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSONL", traits: {"smithy.api#enumValue" => "JSONL"}))
    DataFormat.add_member(:orc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORC", traits: {"smithy.api#enumValue" => "ORC"}))
    DataPullMode.add_member(:incremental, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCREMENTAL", traits: {"smithy.api#enumValue" => "Incremental"}))
    DataPullMode.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "Complete"}))
    DataStoreRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "Enabled"))
    DataStoreRequest.type = Types::DataStoreRequest
    DataStoreResponse.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "Enabled"))
    DataStoreResponse.add_member(:readiness, ::Smithy::Schema::Shapes::MemberShape.new(target: Readiness, name: "Readiness"))
    DataStoreResponse.type = Types::DataStoreResponse
    DateDimension.add_member(:dimension_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DateDimensionType, name: "DimensionType", traits: {"smithy.api#jsonName" => "DimensionType", "smithy.api#required" => {}}))
    DateDimension.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: DateValues, name: "Values", traits: {"smithy.api#jsonName" => "Values", "smithy.api#required" => {}}))
    DateDimension.type = Types::DateDimension
    DateDimensionType.add_member(:before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE", traits: {"smithy.api#enumValue" => "BEFORE"}))
    DateDimensionType.add_member(:after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER", traits: {"smithy.api#enumValue" => "AFTER"}))
    DateDimensionType.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    DateDimensionType.add_member(:not_between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_BETWEEN", traits: {"smithy.api#enumValue" => "NOT_BETWEEN"}))
    DateDimensionType.add_member(:on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON", traits: {"smithy.api#enumValue" => "ON"}))
    DateValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    DeleteCalculatedAttributeDefinitionRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCalculatedAttributeDefinitionRequest.add_member(:calculated_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "CalculatedAttributeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCalculatedAttributeDefinitionRequest.type = Types::DeleteCalculatedAttributeDefinitionRequest
    DeleteCalculatedAttributeDefinitionResponse.type = Types::DeleteCalculatedAttributeDefinitionResponse
    DeleteDomainLayoutRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainLayoutRequest.add_member(:layout_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "LayoutDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainLayoutRequest.type = Types::DeleteDomainLayoutRequest
    DeleteDomainLayoutResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message", traits: {"smithy.api#required" => {}}))
    DeleteDomainLayoutResponse.type = Types::DeleteDomainLayoutResponse
    DeleteDomainObjectTypeRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainObjectTypeRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainObjectTypeRequest.type = Types::DeleteDomainObjectTypeRequest
    DeleteDomainObjectTypeResponse.type = Types::DeleteDomainObjectTypeResponse
    DeleteDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainRequest.type = Types::DeleteDomainRequest
    DeleteDomainResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message", traits: {"smithy.api#required" => {}}))
    DeleteDomainResponse.type = Types::DeleteDomainResponse
    DeleteEventStreamRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventStreamRequest.add_member(:event_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EventStreamName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventStreamRequest.type = Types::DeleteEventStreamRequest
    DeleteEventStreamResponse.type = Types::DeleteEventStreamResponse
    DeleteEventTriggerRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventTriggerRequest.add_member(:event_trigger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EventTriggerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventTriggerRequest.type = Types::DeleteEventTriggerRequest
    DeleteEventTriggerResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message", traits: {"smithy.api#required" => {}}))
    DeleteEventTriggerResponse.type = Types::DeleteEventTriggerResponse
    DeleteIntegrationRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Uri", traits: {"smithy.api#required" => {}}))
    DeleteIntegrationRequest.type = Types::DeleteIntegrationRequest
    DeleteIntegrationResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message", traits: {"smithy.api#required" => {}}))
    DeleteIntegrationResponse.type = Types::DeleteIntegrationResponse
    DeleteProfileKeyRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    DeleteProfileKeyRequest.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "KeyName", traits: {"smithy.api#required" => {}}))
    DeleteProfileKeyRequest.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    DeleteProfileKeyRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileKeyRequest.type = Types::DeleteProfileKeyRequest
    DeleteProfileKeyResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DeleteProfileKeyResponse.type = Types::DeleteProfileKeyResponse
    DeleteProfileObjectRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    DeleteProfileObjectRequest.add_member(:profile_object_unique_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "ProfileObjectUniqueKey", traits: {"smithy.api#required" => {}}))
    DeleteProfileObjectRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#required" => {}}))
    DeleteProfileObjectRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileObjectRequest.type = Types::DeleteProfileObjectRequest
    DeleteProfileObjectResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DeleteProfileObjectResponse.type = Types::DeleteProfileObjectResponse
    DeleteProfileObjectTypeRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileObjectTypeRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileObjectTypeRequest.type = Types::DeleteProfileObjectTypeRequest
    DeleteProfileObjectTypeResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message", traits: {"smithy.api#required" => {}}))
    DeleteProfileObjectTypeResponse.type = Types::DeleteProfileObjectTypeResponse
    DeleteProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    DeleteProfileRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileRequest.type = Types::DeleteProfileRequest
    DeleteProfileResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    DeleteProfileResponse.type = Types::DeleteProfileResponse
    DeleteRecommenderFilterRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecommenderFilterRequest.add_member(:recommender_filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterName, name: "RecommenderFilterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecommenderFilterRequest.type = Types::DeleteRecommenderFilterRequest
    DeleteRecommenderFilterResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    DeleteRecommenderFilterResponse.type = Types::DeleteRecommenderFilterResponse
    DeleteRecommenderRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecommenderRequest.add_member(:recommender_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecommenderRequest.type = Types::DeleteRecommenderRequest
    DeleteRecommenderResponse.type = Types::DeleteRecommenderResponse
    DeleteRecommenderSchemaRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecommenderSchemaRequest.add_member(:recommender_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderSchemaName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecommenderSchemaRequest.type = Types::DeleteRecommenderSchemaRequest
    DeleteRecommenderSchemaResponse.type = Types::DeleteRecommenderSchemaResponse
    DeleteSegmentDefinitionRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSegmentDefinitionRequest.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSegmentDefinitionRequest.type = Types::DeleteSegmentDefinitionRequest
    DeleteSegmentDefinitionResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To1000, name: "Message", traits: {"smithy.api#jsonName" => "Message"}))
    DeleteSegmentDefinitionResponse.type = Types::DeleteSegmentDefinitionResponse
    DeleteSegmentSubscriptionRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSegmentSubscriptionRequest.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSegmentSubscriptionRequest.type = Types::DeleteSegmentSubscriptionRequest
    DeleteSegmentSubscriptionResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To1000, name: "Message", traits: {"smithy.api#jsonName" => "Message"}))
    DeleteSegmentSubscriptionResponse.type = Types::DeleteSegmentSubscriptionResponse
    DeleteWorkflowRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowRequest.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "WorkflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowRequest.type = Types::DeleteWorkflowRequest
    DeleteWorkflowResponse.type = Types::DeleteWorkflowResponse
    DestinationSummary.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Uri", traits: {"smithy.api#required" => {}}))
    DestinationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStreamDestinationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    DestinationSummary.add_member(:unhealthy_since, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UnhealthySince"))
    DestinationSummary.type = Types::DestinationSummary
    DetectProfileObjectTypeRequest.add_member(:objects, ::Smithy::Schema::Shapes::MemberShape.new(target: Objects, name: "Objects", traits: {"smithy.api#required" => {}}))
    DetectProfileObjectTypeRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DetectProfileObjectTypeRequest.type = Types::DetectProfileObjectTypeRequest
    DetectProfileObjectTypeResponse.add_member(:detected_profile_object_types, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectedProfileObjectTypes, name: "DetectedProfileObjectTypes"))
    DetectProfileObjectTypeResponse.type = Types::DetectProfileObjectTypeResponse
    DetectedProfileObjectType.add_member(:source_last_updated_timestamp_format, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "SourceLastUpdatedTimestampFormat"))
    DetectedProfileObjectType.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldMap, name: "Fields"))
    DetectedProfileObjectType.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyMap, name: "Keys"))
    DetectedProfileObjectType.type = Types::DetectedProfileObjectType
    DetectedProfileObjectTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectedProfileObjectType, name: "member"))
    Dimension.add_member(:profile_attributes, Types::Dimension::ProfileAttributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileAttributes, name: "ProfileAttributes", traits: {"smithy.api#jsonName" => "ProfileAttributes"}))
    Dimension.add_member(:calculated_attributes, Types::Dimension::CalculatedAttributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculatedCustomAttributes, name: "CalculatedAttributes", traits: {"smithy.api#jsonName" => "CalculatedAttributes"}))
    Dimension.add_member(:unknown, Types::Dimension::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Dimension.type = Types::Dimension
    DimensionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "member"))
    DisassociateStreamForSegmentsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateStreamForSegmentsRequest.type = Types::DisassociateStreamForSegmentsRequest
    DisassociateStreamForSegmentsResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To1000, name: "Message", traits: {"smithy.api#jsonName" => "Message"}))
    DisassociateStreamForSegmentsResponse.type = Types::DisassociateStreamForSegmentsResponse
    DiversityCapType.add_member(:percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERCENTAGE", traits: {"smithy.api#enumValue" => "PERCENTAGE"}))
    DiversityCapType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUE", traits: {"smithy.api#enumValue" => "VALUE"}))
    DiversityColumn.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "Name", traits: {"smithy.api#required" => {}}))
    DiversityColumn.add_member(:cap_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DiversityCapType, name: "CapType", traits: {"smithy.api#required" => {}}))
    DiversityColumn.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: DiversityTargetExpression, name: "Target", traits: {"smithy.api#required" => {}}))
    DiversityColumn.type = Types::DiversityColumn
    DiversityColumnsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DiversityColumn, name: "member"))
    DiversityConfig.add_member(:diversity_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: DiversityColumnsList, name: "DiversityColumns"))
    DiversityConfig.type = Types::DiversityConfig
    DiversityValuesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DiversityPlaceholderName, name: "key"))
    DiversityValuesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DiversityCapValue, name: "value"))
    DomainList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListDomainItem, name: "member"))
    DomainObjectTypeField.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "Source", traits: {"smithy.api#required" => {}}))
    DomainObjectTypeField.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "Target", traits: {"smithy.api#required" => {}}))
    DomainObjectTypeField.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType"))
    DomainObjectTypeField.add_member(:feature_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureType, name: "FeatureType"))
    DomainObjectTypeField.type = Types::DomainObjectTypeField
    DomainObjectTypeFields.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainObjectTypeFieldName, name: "key"))
    DomainObjectTypeFields.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainObjectTypeField, name: "value"))
    DomainObjectTypesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainObjectTypesListItem, name: "member"))
    DomainObjectTypesListItem.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#required" => {}}))
    DomainObjectTypesListItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To10000, name: "Description"))
    DomainObjectTypesListItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    DomainObjectTypesListItem.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    DomainObjectTypesListItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    DomainObjectTypesListItem.type = Types::DomainObjectTypesListItem
    DomainStats.add_member(:profile_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ProfileCount", traits: {"smithy.api#default" => 0}))
    DomainStats.add_member(:metering_profile_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MeteringProfileCount", traits: {"smithy.api#default" => 0}))
    DomainStats.add_member(:object_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ObjectCount", traits: {"smithy.api#default" => 0}))
    DomainStats.add_member(:total_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalSize", traits: {"smithy.api#default" => 0}))
    DomainStats.type = Types::DomainStats
    EmailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "member"))
    EmailPreferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactPreference, name: "member"))
    EngagementPreferences.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: PhonePreferenceList, name: "Phone"))
    EngagementPreferences.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailPreferenceList, name: "Email"))
    EngagementPreferences.type = Types::EngagementPreferences
    EstimateStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    EstimateStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    EstimateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    EventParameters.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventParametersEventTypeString, name: "EventType", traits: {"smithy.api#required" => {}}))
    EventParameters.add_member(:event_value_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "EventValueThreshold"))
    EventParameters.add_member(:event_weight, ::Smithy::Schema::Shapes::MemberShape.new(target: EventParametersEventWeightDouble, name: "EventWeight"))
    EventParameters.type = Types::EventParameters
    EventParametersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventParameters, name: "member"))
    EventStreamDestinationDetails.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Uri", traits: {"smithy.api#required" => {}}))
    EventStreamDestinationDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStreamDestinationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    EventStreamDestinationDetails.add_member(:unhealthy_since, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UnhealthySince"))
    EventStreamDestinationDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To1000, name: "Message"))
    EventStreamDestinationDetails.type = Types::EventStreamDestinationDetails
    EventStreamDestinationStatus.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    EventStreamDestinationStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    EventStreamState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    EventStreamState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    EventStreamSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#required" => {}}))
    EventStreamSummary.add_member(:event_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EventStreamName", traits: {"smithy.api#required" => {}}))
    EventStreamSummary.add_member(:event_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "EventStreamArn", traits: {"smithy.api#required" => {}}))
    EventStreamSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStreamState, name: "State", traits: {"smithy.api#required" => {}}))
    EventStreamSummary.add_member(:stopped_since, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StoppedSince"))
    EventStreamSummary.add_member(:destination_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationSummary, name: "DestinationSummary"))
    EventStreamSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    EventStreamSummary.type = Types::EventStreamSummary
    EventStreamSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStreamSummary, name: "member"))
    EventSubscriptionSegmentStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    EventSubscriptionSegmentStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    EventSubscriptionSegmentStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    EventSubscriptionSegmentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    EventSubscriptionState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    EventSubscriptionState.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    EventSubscriptionState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    EventTriggerCondition.add_member(:event_trigger_dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerDimensions, name: "EventTriggerDimensions", traits: {"smithy.api#required" => {}}))
    EventTriggerCondition.add_member(:logical_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerLogicalOperator, name: "LogicalOperator", traits: {"smithy.api#required" => {}}))
    EventTriggerCondition.type = Types::EventTriggerCondition
    EventTriggerConditions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerCondition, name: "member"))
    EventTriggerDimension.add_member(:object_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectAttributes, name: "ObjectAttributes", traits: {"smithy.api#required" => {}}))
    EventTriggerDimension.type = Types::EventTriggerDimension
    EventTriggerDimensions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerDimension, name: "member"))
    EventTriggerLimits.add_member(:event_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalLong, name: "EventExpiration"))
    EventTriggerLimits.add_member(:periods, ::Smithy::Schema::Shapes::MemberShape.new(target: Periods, name: "Periods"))
    EventTriggerLimits.type = Types::EventTriggerLimits
    EventTriggerLogicalOperator.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    EventTriggerLogicalOperator.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    EventTriggerLogicalOperator.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    EventTriggerNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "member"))
    EventTriggerSummaryItem.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName"))
    EventTriggerSummaryItem.add_member(:event_trigger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EventTriggerName"))
    EventTriggerSummaryItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "Description"))
    EventTriggerSummaryItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    EventTriggerSummaryItem.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    EventTriggerSummaryItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    EventTriggerSummaryItem.type = Types::EventTriggerSummaryItem
    EventTriggerSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerSummaryItem, name: "member"))
    EventTriggerValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "member"))
    EventsConfig.add_member(:event_parameters_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventParametersList, name: "EventParametersList", traits: {"smithy.api#required" => {}}))
    EventsConfig.type = Types::EventsConfig
    ExportingConfig.add_member(:s3_exporting, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ExportingConfig, name: "S3Exporting"))
    ExportingConfig.type = Types::ExportingConfig
    ExportingLocation.add_member(:s3_exporting, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ExportingLocation, name: "S3Exporting"))
    ExportingLocation.type = Types::ExportingLocation
    ExtraLengthValueProfileDimension.add_member(:dimension_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringDimensionType, name: "DimensionType", traits: {"smithy.api#jsonName" => "DimensionType", "smithy.api#required" => {}}))
    ExtraLengthValueProfileDimension.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtraLengthValues, name: "Values", traits: {"smithy.api#jsonName" => "Values", "smithy.api#required" => {}}))
    ExtraLengthValueProfileDimension.type = Types::ExtraLengthValueProfileDimension
    ExtraLengthValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To1000, name: "member"))
    Failures.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileQueryFailures, name: "member"))
    FeatureType.add_member(:textual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXTUAL", traits: {"smithy.api#enumValue" => "TEXTUAL"}))
    FeatureType.add_member(:categorical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CATEGORICAL", traits: {"smithy.api#enumValue" => "CATEGORICAL"}))
    FieldContentType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    FieldContentType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER", traits: {"smithy.api#enumValue" => "NUMBER"}))
    FieldContentType.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHONE_NUMBER", traits: {"smithy.api#enumValue" => "PHONE_NUMBER"}))
    FieldContentType.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_ADDRESS", traits: {"smithy.api#enumValue" => "EMAIL_ADDRESS"}))
    FieldContentType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    FieldMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, name: "key"))
    FieldMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectTypeField, name: "value"))
    FieldNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "member"))
    FieldSourceProfileIds.add_member(:account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "AccountNumber"))
    FieldSourceProfileIds.add_member(:additional_information, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "AdditionalInformation"))
    FieldSourceProfileIds.add_member(:party_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "PartyType"))
    FieldSourceProfileIds.add_member(:business_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "BusinessName"))
    FieldSourceProfileIds.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "FirstName"))
    FieldSourceProfileIds.add_member(:middle_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "MiddleName"))
    FieldSourceProfileIds.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "LastName"))
    FieldSourceProfileIds.add_member(:birth_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "BirthDate"))
    FieldSourceProfileIds.add_member(:gender, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "Gender"))
    FieldSourceProfileIds.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "PhoneNumber"))
    FieldSourceProfileIds.add_member(:mobile_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "MobilePhoneNumber"))
    FieldSourceProfileIds.add_member(:home_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "HomePhoneNumber"))
    FieldSourceProfileIds.add_member(:business_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "BusinessPhoneNumber"))
    FieldSourceProfileIds.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "EmailAddress"))
    FieldSourceProfileIds.add_member(:personal_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "PersonalEmailAddress"))
    FieldSourceProfileIds.add_member(:business_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "BusinessEmailAddress"))
    FieldSourceProfileIds.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "Address"))
    FieldSourceProfileIds.add_member(:shipping_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ShippingAddress"))
    FieldSourceProfileIds.add_member(:mailing_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "MailingAddress"))
    FieldSourceProfileIds.add_member(:billing_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "BillingAddress"))
    FieldSourceProfileIds.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeSourceIdMap, name: "Attributes"))
    FieldSourceProfileIds.add_member(:profile_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileType"))
    FieldSourceProfileIds.add_member(:engagement_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "EngagementPreferences"))
    FieldSourceProfileIds.type = Types::FieldSourceProfileIds
    Filter.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: Include, name: "Include", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupList, name: "Groups", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterAttributeDimension.add_member(:dimension_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterDimensionType, name: "DimensionType", traits: {"smithy.api#required" => {}}))
    FilterAttributeDimension.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    FilterAttributeDimension.type = Types::FilterAttributeDimension
    FilterDimension.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "Attributes", traits: {"smithy.api#required" => {}}))
    FilterDimension.type = Types::FilterDimension
    FilterDimensionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterDimension, name: "member"))
    FilterDimensionType.add_member(:inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUSIVE", traits: {"smithy.api#enumValue" => "INCLUSIVE"}))
    FilterDimensionType.add_member(:exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUSIVE", traits: {"smithy.api#enumValue" => "EXCLUSIVE"}))
    FilterDimensionType.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    FilterDimensionType.add_member(:begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEGINS_WITH", traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    FilterDimensionType.add_member(:ends_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDS_WITH", traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    FilterDimensionType.add_member(:before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE", traits: {"smithy.api#enumValue" => "BEFORE"}))
    FilterDimensionType.add_member(:after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER", traits: {"smithy.api#enumValue" => "AFTER"}))
    FilterDimensionType.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    FilterDimensionType.add_member(:not_between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_BETWEEN", traits: {"smithy.api#enumValue" => "NOT_BETWEEN"}))
    FilterDimensionType.add_member(:on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON", traits: {"smithy.api#enumValue" => "ON"}))
    FilterDimensionType.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    FilterDimensionType.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    FilterDimensionType.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL"}))
    FilterDimensionType.add_member(:less_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL"}))
    FilterDimensionType.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "EQUAL"}))
    FilterGroup.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type", traits: {"smithy.api#required" => {}}))
    FilterGroup.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterDimensionList, name: "Dimensions", traits: {"smithy.api#required" => {}}))
    FilterGroup.type = Types::FilterGroup
    FlowDefinition.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowDescription, name: "Description"))
    FlowDefinition.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowName, name: "FlowName", traits: {"smithy.api#required" => {}}))
    FlowDefinition.add_member(:kms_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsArn, name: "KmsArn", traits: {"smithy.api#required" => {}}))
    FlowDefinition.add_member(:source_flow_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFlowConfig, name: "SourceFlowConfig", traits: {"smithy.api#required" => {}}))
    FlowDefinition.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: Tasks, name: "Tasks", traits: {"smithy.api#required" => {}}))
    FlowDefinition.add_member(:trigger_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerConfig, name: "TriggerConfig", traits: {"smithy.api#required" => {}}))
    FlowDefinition.type = Types::FlowDefinition
    FoundByKeyValue.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "KeyName"))
    FoundByKeyValue.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestValueList, name: "Values"))
    FoundByKeyValue.type = Types::FoundByKeyValue
    Gender.add_member(:male, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MALE", traits: {"smithy.api#enumValue" => "MALE"}))
    Gender.add_member(:female, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FEMALE", traits: {"smithy.api#enumValue" => "FEMALE"}))
    Gender.add_member(:unspecified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSPECIFIED", traits: {"smithy.api#enumValue" => "UNSPECIFIED"}))
    GetAutoMergingPreviewRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutoMergingPreviewRequest.add_member(:consolidation, ::Smithy::Schema::Shapes::MemberShape.new(target: Consolidation, name: "Consolidation", traits: {"smithy.api#required" => {}}))
    GetAutoMergingPreviewRequest.add_member(:conflict_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolution, name: "ConflictResolution", traits: {"smithy.api#required" => {}}))
    GetAutoMergingPreviewRequest.add_member(:min_allowed_confidence_score_for_merging, ::Smithy::Schema::Shapes::MemberShape.new(target: Double0To1, name: "MinAllowedConfidenceScoreForMerging"))
    GetAutoMergingPreviewRequest.type = Types::GetAutoMergingPreviewRequest
    GetAutoMergingPreviewResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#required" => {}}))
    GetAutoMergingPreviewResponse.add_member(:number_of_matches_in_sample, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "NumberOfMatchesInSample", traits: {"smithy.api#default" => 0}))
    GetAutoMergingPreviewResponse.add_member(:number_of_profiles_in_sample, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "NumberOfProfilesInSample", traits: {"smithy.api#default" => 0}))
    GetAutoMergingPreviewResponse.add_member(:number_of_profiles_will_be_merged, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "NumberOfProfilesWillBeMerged", traits: {"smithy.api#default" => 0}))
    GetAutoMergingPreviewResponse.type = Types::GetAutoMergingPreviewResponse
    GetCalculatedAttributeDefinitionRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCalculatedAttributeDefinitionRequest.add_member(:calculated_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "CalculatedAttributeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCalculatedAttributeDefinitionRequest.type = Types::GetCalculatedAttributeDefinitionRequest
    GetCalculatedAttributeDefinitionResponse.add_member(:calculated_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "CalculatedAttributeName"))
    GetCalculatedAttributeDefinitionResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    GetCalculatedAttributeDefinitionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    GetCalculatedAttributeDefinitionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    GetCalculatedAttributeDefinitionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    GetCalculatedAttributeDefinitionResponse.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistic, name: "Statistic"))
    GetCalculatedAttributeDefinitionResponse.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "Filter"))
    GetCalculatedAttributeDefinitionResponse.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Conditions, name: "Conditions"))
    GetCalculatedAttributeDefinitionResponse.add_member(:attribute_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeDetails, name: "AttributeDetails"))
    GetCalculatedAttributeDefinitionResponse.add_member(:use_historical_data, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "UseHistoricalData"))
    GetCalculatedAttributeDefinitionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadinessStatus, name: "Status"))
    GetCalculatedAttributeDefinitionResponse.add_member(:readiness, ::Smithy::Schema::Shapes::MemberShape.new(target: Readiness, name: "Readiness"))
    GetCalculatedAttributeDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetCalculatedAttributeDefinitionResponse.type = Types::GetCalculatedAttributeDefinitionResponse
    GetCalculatedAttributeForProfileRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCalculatedAttributeForProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCalculatedAttributeForProfileRequest.add_member(:calculated_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "CalculatedAttributeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCalculatedAttributeForProfileRequest.type = Types::GetCalculatedAttributeForProfileRequest
    GetCalculatedAttributeForProfileResponse.add_member(:calculated_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "CalculatedAttributeName"))
    GetCalculatedAttributeForProfileResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    GetCalculatedAttributeForProfileResponse.add_member(:is_data_partial, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "IsDataPartial"))
    GetCalculatedAttributeForProfileResponse.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Value"))
    GetCalculatedAttributeForProfileResponse.add_member(:last_object_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastObjectTimestamp"))
    GetCalculatedAttributeForProfileResponse.type = Types::GetCalculatedAttributeForProfileResponse
    GetDomainLayoutRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainLayoutRequest.add_member(:layout_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "LayoutDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainLayoutRequest.type = Types::GetDomainLayoutRequest
    GetDomainLayoutResponse.add_member(:layout_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "LayoutDefinitionName", traits: {"smithy.api#required" => {}}))
    GetDomainLayoutResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description", traits: {"smithy.api#required" => {}}))
    GetDomainLayoutResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    GetDomainLayoutResponse.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDefault", traits: {"smithy.api#default" => false}))
    GetDomainLayoutResponse.add_member(:layout_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LayoutType, name: "LayoutType", traits: {"smithy.api#required" => {}}))
    GetDomainLayoutResponse.add_member(:layout, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To2000000, name: "Layout", traits: {"smithy.api#required" => {}}))
    GetDomainLayoutResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Version", traits: {"smithy.api#required" => {}}))
    GetDomainLayoutResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetDomainLayoutResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    GetDomainLayoutResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetDomainLayoutResponse.type = Types::GetDomainLayoutResponse
    GetDomainObjectTypeRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainObjectTypeRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainObjectTypeRequest.type = Types::GetDomainObjectTypeRequest
    GetDomainObjectTypeResponse.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#required" => {}}))
    GetDomainObjectTypeResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To10000, name: "Description"))
    GetDomainObjectTypeResponse.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "EncryptionKey"))
    GetDomainObjectTypeResponse.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainObjectTypeFields, name: "Fields"))
    GetDomainObjectTypeResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    GetDomainObjectTypeResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    GetDomainObjectTypeResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetDomainObjectTypeResponse.type = Types::GetDomainObjectTypeResponse
    GetDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainRequest.type = Types::GetDomainRequest
    GetDomainResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#required" => {}}))
    GetDomainResponse.add_member(:default_expiration_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDaysInteger, name: "DefaultExpirationDays"))
    GetDomainResponse.add_member(:default_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "DefaultEncryptionKey"))
    GetDomainResponse.add_member(:dead_letter_queue_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SqsQueueUrl, name: "DeadLetterQueueUrl"))
    GetDomainResponse.add_member(:stats, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStats, name: "Stats"))
    GetDomainResponse.add_member(:matching, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchingResponse, name: "Matching"))
    GetDomainResponse.add_member(:rule_based_matching, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleBasedMatchingResponse, name: "RuleBasedMatching"))
    GetDomainResponse.add_member(:data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: DataStoreResponse, name: "DataStore"))
    GetDomainResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetDomainResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    GetDomainResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetDomainResponse.type = Types::GetDomainResponse
    GetEventStreamRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventStreamRequest.add_member(:event_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EventStreamName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventStreamRequest.type = Types::GetEventStreamRequest
    GetEventStreamResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#required" => {}}))
    GetEventStreamResponse.add_member(:event_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "EventStreamArn", traits: {"smithy.api#required" => {}}))
    GetEventStreamResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetEventStreamResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStreamState, name: "State", traits: {"smithy.api#required" => {}}))
    GetEventStreamResponse.add_member(:stopped_since, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StoppedSince"))
    GetEventStreamResponse.add_member(:destination_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStreamDestinationDetails, name: "DestinationDetails", traits: {"smithy.api#required" => {}}))
    GetEventStreamResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetEventStreamResponse.type = Types::GetEventStreamResponse
    GetEventTriggerRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventTriggerRequest.add_member(:event_trigger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EventTriggerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventTriggerRequest.type = Types::GetEventTriggerRequest
    GetEventTriggerResponse.add_member(:event_trigger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EventTriggerName"))
    GetEventTriggerResponse.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName"))
    GetEventTriggerResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    GetEventTriggerResponse.add_member(:event_trigger_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerConditions, name: "EventTriggerConditions"))
    GetEventTriggerResponse.add_member(:segment_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentFilter"))
    GetEventTriggerResponse.add_member(:event_trigger_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerLimits, name: "EventTriggerLimits"))
    GetEventTriggerResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    GetEventTriggerResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    GetEventTriggerResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetEventTriggerResponse.type = Types::GetEventTriggerResponse
    GetIdentityResolutionJobRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIdentityResolutionJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIdentityResolutionJobRequest.type = Types::GetIdentityResolutionJobRequest
    GetIdentityResolutionJobResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName"))
    GetIdentityResolutionJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "JobId"))
    GetIdentityResolutionJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityResolutionJobStatus, name: "Status"))
    GetIdentityResolutionJobResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: StringTo2048, name: "Message"))
    GetIdentityResolutionJobResponse.add_member(:job_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "JobStartTime"))
    GetIdentityResolutionJobResponse.add_member(:job_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "JobEndTime"))
    GetIdentityResolutionJobResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    GetIdentityResolutionJobResponse.add_member(:job_expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "JobExpirationTime"))
    GetIdentityResolutionJobResponse.add_member(:auto_merging, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoMerging, name: "AutoMerging"))
    GetIdentityResolutionJobResponse.add_member(:exporting_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportingLocation, name: "ExportingLocation"))
    GetIdentityResolutionJobResponse.add_member(:job_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStats, name: "JobStats"))
    GetIdentityResolutionJobResponse.type = Types::GetIdentityResolutionJobResponse
    GetIntegrationRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIntegrationRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Uri", traits: {"smithy.api#required" => {}}))
    GetIntegrationRequest.type = Types::GetIntegrationRequest
    GetIntegrationResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#required" => {}}))
    GetIntegrationResponse.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Uri", traits: {"smithy.api#required" => {}}))
    GetIntegrationResponse.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName"))
    GetIntegrationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetIntegrationResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    GetIntegrationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetIntegrationResponse.add_member(:object_type_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectTypeNames, name: "ObjectTypeNames"))
    GetIntegrationResponse.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "WorkflowId"))
    GetIntegrationResponse.add_member(:is_unstructured, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "IsUnstructured"))
    GetIntegrationResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    GetIntegrationResponse.add_member(:event_trigger_names, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerNames, name: "EventTriggerNames"))
    GetIntegrationResponse.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope"))
    GetIntegrationResponse.type = Types::GetIntegrationResponse
    GetMatchesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    GetMatchesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    GetMatchesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMatchesRequest.type = Types::GetMatchesRequest
    GetMatchesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetMatchesResponse.add_member(:match_generation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "MatchGenerationDate"))
    GetMatchesResponse.add_member(:potential_matches, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchesNumber, name: "PotentialMatches"))
    GetMatchesResponse.add_member(:matches, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchesList, name: "Matches"))
    GetMatchesResponse.type = Types::GetMatchesResponse
    GetObjectTypeAttributeStatisticsPercentiles.add_member(:p5, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "P5", traits: {"smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsPercentiles.add_member(:p25, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "P25", traits: {"smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsPercentiles.add_member(:p50, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "P50", traits: {"smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsPercentiles.add_member(:p75, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "P75", traits: {"smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsPercentiles.add_member(:p95, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "P95", traits: {"smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsPercentiles.type = Types::GetObjectTypeAttributeStatisticsPercentiles
    GetObjectTypeAttributeStatisticsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsRequest.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To1000, name: "AttributeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsRequest.type = Types::GetObjectTypeAttributeStatisticsRequest
    GetObjectTypeAttributeStatisticsResponse.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: GetObjectTypeAttributeStatisticsStats, name: "Statistics", traits: {"smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsResponse.add_member(:calculated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CalculatedAt", traits: {"smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsResponse.type = Types::GetObjectTypeAttributeStatisticsResponse
    GetObjectTypeAttributeStatisticsStats.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Maximum", traits: {"smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsStats.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Minimum", traits: {"smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsStats.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Average", traits: {"smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsStats.add_member(:standard_deviation, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "StandardDeviation", traits: {"smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsStats.add_member(:percentiles, ::Smithy::Schema::Shapes::MemberShape.new(target: GetObjectTypeAttributeStatisticsPercentiles, name: "Percentiles", traits: {"smithy.api#required" => {}}))
    GetObjectTypeAttributeStatisticsStats.type = Types::GetObjectTypeAttributeStatisticsStats
    GetProfileHistoryRecordRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileHistoryRecordRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileHistoryRecordRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileHistoryRecordRequest.type = Types::GetProfileHistoryRecordRequest
    GetProfileHistoryRecordResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "Id", traits: {"smithy.api#required" => {}}))
    GetProfileHistoryRecordResponse.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#required" => {}}))
    GetProfileHistoryRecordResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetProfileHistoryRecordResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    GetProfileHistoryRecordResponse.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionType, name: "ActionType", traits: {"smithy.api#required" => {}}))
    GetProfileHistoryRecordResponse.add_member(:profile_object_unique_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "ProfileObjectUniqueKey"))
    GetProfileHistoryRecordResponse.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: StringifiedJson, name: "Content"))
    GetProfileHistoryRecordResponse.add_member(:performed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "PerformedBy"))
    GetProfileHistoryRecordResponse.type = Types::GetProfileHistoryRecordResponse
    GetProfileObjectTypeRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileObjectTypeRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileObjectTypeRequest.type = Types::GetProfileObjectTypeRequest
    GetProfileObjectTypeResponse.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#required" => {}}))
    GetProfileObjectTypeResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description", traits: {"smithy.api#required" => {}}))
    GetProfileObjectTypeResponse.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "TemplateId"))
    GetProfileObjectTypeResponse.add_member(:expiration_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDaysInteger, name: "ExpirationDays"))
    GetProfileObjectTypeResponse.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "EncryptionKey"))
    GetProfileObjectTypeResponse.add_member(:allow_profile_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowProfileCreation", traits: {"smithy.api#default" => false}))
    GetProfileObjectTypeResponse.add_member(:source_last_updated_timestamp_format, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "SourceLastUpdatedTimestampFormat"))
    GetProfileObjectTypeResponse.add_member(:max_available_profile_object_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSize0, name: "MaxAvailableProfileObjectCount"))
    GetProfileObjectTypeResponse.add_member(:max_profile_object_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSize1, name: "MaxProfileObjectCount"))
    GetProfileObjectTypeResponse.add_member(:source_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSize1, name: "SourcePriority"))
    GetProfileObjectTypeResponse.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldMap, name: "Fields"))
    GetProfileObjectTypeResponse.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyMap, name: "Keys"))
    GetProfileObjectTypeResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    GetProfileObjectTypeResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    GetProfileObjectTypeResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetProfileObjectTypeResponse.type = Types::GetProfileObjectTypeResponse
    GetProfileObjectTypeTemplateRequest.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "TemplateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileObjectTypeTemplateRequest.type = Types::GetProfileObjectTypeTemplateRequest
    GetProfileObjectTypeTemplateResponse.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "TemplateId"))
    GetProfileObjectTypeTemplateResponse.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SourceName"))
    GetProfileObjectTypeTemplateResponse.add_member(:source_object, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SourceObject"))
    GetProfileObjectTypeTemplateResponse.add_member(:allow_profile_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowProfileCreation", traits: {"smithy.api#default" => false}))
    GetProfileObjectTypeTemplateResponse.add_member(:source_last_updated_timestamp_format, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "SourceLastUpdatedTimestampFormat"))
    GetProfileObjectTypeTemplateResponse.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldMap, name: "Fields"))
    GetProfileObjectTypeTemplateResponse.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyMap, name: "Keys"))
    GetProfileObjectTypeTemplateResponse.type = Types::GetProfileObjectTypeTemplateResponse
    GetProfileRecommendationsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileRecommendationsRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileRecommendationsRequest.add_member(:recommender_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderName", traits: {"smithy.api#required" => {}}))
    GetProfileRecommendationsRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderContext, name: "Context"))
    GetProfileRecommendationsRequest.add_member(:recommender_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilters, name: "RecommenderFilters"))
    GetProfileRecommendationsRequest.add_member(:recommender_promotional_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderPromotionalFilters, name: "RecommenderPromotionalFilters"))
    GetProfileRecommendationsRequest.add_member(:candidate_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CandidateIdList, name: "CandidateIds"))
    GetProfileRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize500, name: "MaxResults"))
    GetProfileRecommendationsRequest.add_member(:metadata_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataConfig, name: "MetadataConfig"))
    GetProfileRecommendationsRequest.add_member(:diversity_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationDiversityConfig, name: "DiversityConfig"))
    GetProfileRecommendationsRequest.type = Types::GetProfileRecommendationsRequest
    GetProfileRecommendationsResponse.add_member(:recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendations, name: "Recommendations"))
    GetProfileRecommendationsResponse.type = Types::GetProfileRecommendationsResponse
    GetRecommenderFilterRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommenderFilterRequest.add_member(:recommender_filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterName, name: "RecommenderFilterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommenderFilterRequest.type = Types::GetRecommenderFilterRequest
    GetRecommenderFilterResponse.add_member(:recommender_filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterName, name: "RecommenderFilterName", traits: {"smithy.api#required" => {}}))
    GetRecommenderFilterResponse.add_member(:recommender_filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterExpression, name: "RecommenderFilterExpression", traits: {"smithy.api#required" => {}}))
    GetRecommenderFilterResponse.add_member(:recommender_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderSchemaName"))
    GetRecommenderFilterResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetRecommenderFilterResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetRecommenderFilterResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    GetRecommenderFilterResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FailureReason"))
    GetRecommenderFilterResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    GetRecommenderFilterResponse.type = Types::GetRecommenderFilterResponse
    GetRecommenderRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommenderRequest.add_member(:recommender_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommenderRequest.add_member(:training_metrics_count, ::Smithy::Schema::Shapes::MemberShape.new(target: GetRecommenderRequestTrainingMetricsCountInteger, name: "TrainingMetricsCount", traits: {"smithy.api#httpQuery" => "training-metrics-count"}))
    GetRecommenderRequest.type = Types::GetRecommenderRequest
    GetRecommenderResponse.add_member(:recommender_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderName", traits: {"smithy.api#required" => {}}))
    GetRecommenderResponse.add_member(:recommender_recipe_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderRecipeName, name: "RecommenderRecipeName", traits: {"smithy.api#required" => {}}))
    GetRecommenderResponse.add_member(:recommender_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderSchemaName"))
    GetRecommenderResponse.add_member(:recommender_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderConfig, name: "RecommenderConfig"))
    GetRecommenderResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    GetRecommenderResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderStatus, name: "Status"))
    GetRecommenderResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    GetRecommenderResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    GetRecommenderResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FailureReason"))
    GetRecommenderResponse.add_member(:latest_recommender_update, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderUpdate, name: "LatestRecommenderUpdate"))
    GetRecommenderResponse.add_member(:active_recommender_version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderVersionName, name: "ActiveRecommenderVersionName"))
    GetRecommenderResponse.add_member(:training_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingMetricsList, name: "TrainingMetrics"))
    GetRecommenderResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetRecommenderResponse.type = Types::GetRecommenderResponse
    GetRecommenderSchemaRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommenderSchemaRequest.add_member(:recommender_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderSchemaName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommenderSchemaRequest.type = Types::GetRecommenderSchemaRequest
    GetRecommenderSchemaResponse.add_member(:recommender_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderSchemaName", traits: {"smithy.api#required" => {}}))
    GetRecommenderSchemaResponse.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderSchemaFields, name: "Fields", traits: {"smithy.api#required" => {}}))
    GetRecommenderSchemaResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetRecommenderSchemaResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderSchemaStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetRecommenderSchemaResponse.type = Types::GetRecommenderSchemaResponse
    GetSegmentDefinitionRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentDefinitionRequest.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentDefinitionRequest.type = Types::GetSegmentDefinitionRequest
    GetSegmentDefinitionResponse.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#jsonName" => "SegmentDefinitionName"}))
    GetSegmentDefinitionResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "DisplayName", traits: {"smithy.api#jsonName" => "DisplayName"}))
    GetSegmentDefinitionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To4000, name: "Description", traits: {"smithy.api#jsonName" => "Description"}))
    GetSegmentDefinitionResponse.add_member(:segment_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentGroup, name: "SegmentGroups", traits: {"smithy.api#jsonName" => "SegmentGroups"}))
    GetSegmentDefinitionResponse.add_member(:segment_sort, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentSort, name: "SegmentSort", traits: {"smithy.api#jsonName" => "SegmentSort"}))
    GetSegmentDefinitionResponse.add_member(:segment_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentDefinitionArn, name: "SegmentDefinitionArn", traits: {"smithy.api#jsonName" => "SegmentDefinitionArn", "smithy.api#required" => {}}))
    GetSegmentDefinitionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "CreatedAt"}))
    GetSegmentDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "Tags"}))
    GetSegmentDefinitionResponse.add_member(:segment_sql_query, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To50000, name: "SegmentSqlQuery", traits: {"smithy.api#jsonName" => "SegmentSqlQuery"}))
    GetSegmentDefinitionResponse.add_member(:segment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentType, name: "SegmentType", traits: {"smithy.api#jsonName" => "SegmentType"}))
    GetSegmentDefinitionResponse.type = Types::GetSegmentDefinitionResponse
    GetSegmentEstimateRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentEstimateRequest.add_member(:estimate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "EstimateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentEstimateRequest.type = Types::GetSegmentEstimateRequest
    GetSegmentEstimateResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName"))
    GetSegmentEstimateResponse.add_member(:estimate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "EstimateId"))
    GetSegmentEstimateResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimateStatus, name: "Status"))
    GetSegmentEstimateResponse.add_member(:estimate, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Estimate"))
    GetSegmentEstimateResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Message"))
    GetSegmentEstimateResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "StatusCode", traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}}))
    GetSegmentEstimateResponse.type = Types::GetSegmentEstimateResponse
    GetSegmentMembershipRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentMembershipRequest.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentMembershipRequest.add_member(:profile_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIds, name: "ProfileIds", traits: {"smithy.api#jsonName" => "ProfileIds", "smithy.api#required" => {}}))
    GetSegmentMembershipRequest.type = Types::GetSegmentMembershipRequest
    GetSegmentMembershipResponse.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#jsonName" => "SegmentDefinitionName"}))
    GetSegmentMembershipResponse.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: Profiles, name: "Profiles", traits: {"smithy.api#jsonName" => "Profiles"}))
    GetSegmentMembershipResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "Failures", traits: {"smithy.api#jsonName" => "Failures"}))
    GetSegmentMembershipResponse.add_member(:last_computed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastComputedAt", traits: {"smithy.api#jsonName" => "LastComputedAt"}))
    GetSegmentMembershipResponse.type = Types::GetSegmentMembershipResponse
    GetSegmentSnapshotRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentSnapshotRequest.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentSnapshotRequest.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "SnapshotId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentSnapshotRequest.type = Types::GetSegmentSnapshotRequest
    GetSegmentSnapshotResponse.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "SnapshotId", traits: {"smithy.api#required" => {}}))
    GetSegmentSnapshotResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentSnapshotStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetSegmentSnapshotResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To1000, name: "StatusMessage"))
    GetSegmentSnapshotResponse.add_member(:data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFormat, name: "DataFormat", traits: {"smithy.api#required" => {}}))
    GetSegmentSnapshotResponse.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "EncryptionKey"))
    GetSegmentSnapshotResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    GetSegmentSnapshotResponse.add_member(:destination_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "DestinationUri"))
    GetSegmentSnapshotResponse.type = Types::GetSegmentSnapshotResponse
    GetSegmentSubscriptionRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentSubscriptionRequest.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSegmentSubscriptionRequest.type = Types::GetSegmentSubscriptionRequest
    GetSegmentSubscriptionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentSubscriptionStatus, name: "Status", traits: {"smithy.api#jsonName" => "Status"}))
    GetSegmentSubscriptionResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To1000, name: "Message", traits: {"smithy.api#jsonName" => "Message"}))
    GetSegmentSubscriptionResponse.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleConfiguration, name: "ScheduleConfiguration", traits: {"smithy.api#jsonName" => "ScheduleConfiguration"}))
    GetSegmentSubscriptionResponse.add_member(:scheduled_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledExecutions, name: "ScheduledExecutions", traits: {"smithy.api#jsonName" => "ScheduledExecutions"}))
    GetSegmentSubscriptionResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartedAt", traits: {"smithy.api#jsonName" => "StartedAt"}))
    GetSegmentSubscriptionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#jsonName" => "LastUpdatedAt"}))
    GetSegmentSubscriptionResponse.type = Types::GetSegmentSubscriptionResponse
    GetSimilarProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    GetSimilarProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    GetSimilarProfilesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSimilarProfilesRequest.add_member(:match_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchType, name: "MatchType", traits: {"smithy.api#required" => {}}))
    GetSimilarProfilesRequest.add_member(:search_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "SearchKey", traits: {"smithy.api#required" => {}}))
    GetSimilarProfilesRequest.add_member(:search_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "SearchValue", traits: {"smithy.api#required" => {}}))
    GetSimilarProfilesRequest.type = Types::GetSimilarProfilesRequest
    GetSimilarProfilesResponse.add_member(:profile_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdList, name: "ProfileIds"))
    GetSimilarProfilesResponse.add_member(:match_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "MatchId"))
    GetSimilarProfilesResponse.add_member(:match_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchType, name: "MatchType"))
    GetSimilarProfilesResponse.add_member(:rule_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleLevel, name: "RuleLevel"))
    GetSimilarProfilesResponse.add_member(:confidence_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "ConfidenceScore"))
    GetSimilarProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetSimilarProfilesResponse.type = Types::GetSimilarProfilesResponse
    GetStreamForSegmentsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStreamForSegmentsRequest.type = Types::GetStreamForSegmentsRequest
    GetStreamForSegmentsResponse.add_member(:associated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "AssociatedAt", traits: {"smithy.api#jsonName" => "AssociatedAt"}))
    GetStreamForSegmentsResponse.add_member(:associated_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedSegmentsList, name: "AssociatedSegments", traits: {"smithy.api#jsonName" => "AssociatedSegments"}))
    GetStreamForSegmentsResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#jsonName" => "DomainName"}))
    GetStreamForSegmentsResponse.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArnString, name: "DestinationArn", traits: {"smithy.api#jsonName" => "DestinationArn"}))
    GetStreamForSegmentsResponse.add_member(:destination_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationRoleArn, name: "DestinationRoleArn", traits: {"smithy.api#jsonName" => "DestinationRoleArn"}))
    GetStreamForSegmentsResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscriptionState, name: "State", traits: {"smithy.api#jsonName" => "State"}))
    GetStreamForSegmentsResponse.add_member(:disassociated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "DisassociatedAt", traits: {"smithy.api#jsonName" => "DisassociatedAt"}))
    GetStreamForSegmentsResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "FailureReason", traits: {"smithy.api#jsonName" => "FailureReason"}))
    GetStreamForSegmentsResponse.type = Types::GetStreamForSegmentsResponse
    GetUploadJobPathRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUploadJobPathRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUploadJobPathRequest.type = Types::GetUploadJobPathRequest
    GetUploadJobPathResponse.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: StringTo2048, name: "Url", traits: {"smithy.api#jsonName" => "Url", "smithy.api#required" => {}}))
    GetUploadJobPathResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "ClientToken", traits: {"smithy.api#jsonName" => "ClientToken"}))
    GetUploadJobPathResponse.add_member(:valid_until, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ValidUntil", traits: {"smithy.api#jsonName" => "ValidUntil"}))
    GetUploadJobPathResponse.type = Types::GetUploadJobPathResponse
    GetUploadJobRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUploadJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUploadJobRequest.type = Types::GetUploadJobRequest
    GetUploadJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "JobId", traits: {"smithy.api#jsonName" => "JobId"}))
    GetUploadJobResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "DisplayName", traits: {"smithy.api#jsonName" => "DisplayName"}))
    GetUploadJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadJobStatus, name: "Status", traits: {"smithy.api#jsonName" => "Status"}))
    GetUploadJobResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "StatusReason", traits: {"smithy.api#jsonName" => "StatusReason"}))
    GetUploadJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "CreatedAt"}))
    GetUploadJobResponse.add_member(:completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompletedAt", traits: {"smithy.api#jsonName" => "CompletedAt"}))
    GetUploadJobResponse.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldMap, name: "Fields", traits: {"smithy.api#jsonName" => "Fields"}))
    GetUploadJobResponse.add_member(:unique_key, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "UniqueKey", traits: {"smithy.api#jsonName" => "UniqueKey"}))
    GetUploadJobResponse.add_member(:results_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultsSummary, name: "ResultsSummary", traits: {"smithy.api#jsonName" => "ResultsSummary"}))
    GetUploadJobResponse.add_member(:data_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDaysInteger, name: "DataExpiry", traits: {"smithy.api#jsonName" => "DataExpiry"}))
    GetUploadJobResponse.type = Types::GetUploadJobResponse
    GetWorkflowRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowRequest.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "WorkflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowRequest.type = Types::GetWorkflowRequest
    GetWorkflowResponse.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "WorkflowId"))
    GetWorkflowResponse.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "WorkflowType"))
    GetWorkflowResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    GetWorkflowResponse.add_member(:error_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "ErrorDescription"))
    GetWorkflowResponse.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartDate"))
    GetWorkflowResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    GetWorkflowResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowAttributes, name: "Attributes"))
    GetWorkflowResponse.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowMetrics, name: "Metrics"))
    GetWorkflowResponse.type = Types::GetWorkflowResponse
    GetWorkflowStepsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowStepsRequest.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "WorkflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowStepsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    GetWorkflowStepsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    GetWorkflowStepsRequest.type = Types::GetWorkflowStepsRequest
    GetWorkflowStepsResponse.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "WorkflowId"))
    GetWorkflowStepsResponse.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "WorkflowType"))
    GetWorkflowStepsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepsList, name: "Items"))
    GetWorkflowStepsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetWorkflowStepsResponse.type = Types::GetWorkflowStepsResponse
    Group.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionList, name: "Dimensions", traits: {"smithy.api#jsonName" => "Dimensions"}))
    Group.add_member(:source_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSegmentList, name: "SourceSegments", traits: {"smithy.api#jsonName" => "SourceSegments"}))
    Group.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeOptions, name: "SourceType", traits: {"smithy.api#default" => "ALL", "smithy.api#jsonName" => "SourceType"}))
    Group.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeOptions, name: "Type", traits: {"smithy.api#default" => "ALL", "smithy.api#jsonName" => "Type"}))
    Group.type = Types::Group
    GroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterGroup, name: "member"))
    IdentityResolutionJob.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName"))
    IdentityResolutionJob.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "JobId"))
    IdentityResolutionJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityResolutionJobStatus, name: "Status"))
    IdentityResolutionJob.add_member(:job_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "JobStartTime"))
    IdentityResolutionJob.add_member(:job_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "JobEndTime"))
    IdentityResolutionJob.add_member(:job_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStats, name: "JobStats"))
    IdentityResolutionJob.add_member(:exporting_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportingLocation, name: "ExportingLocation"))
    IdentityResolutionJob.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: StringTo2048, name: "Message"))
    IdentityResolutionJob.type = Types::IdentityResolutionJob
    IdentityResolutionJobStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    IdentityResolutionJobStatus.add_member(:preprocessing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREPROCESSING", traits: {"smithy.api#enumValue" => "PREPROCESSING"}))
    IdentityResolutionJobStatus.add_member(:find_matching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIND_MATCHING", traits: {"smithy.api#enumValue" => "FIND_MATCHING"}))
    IdentityResolutionJobStatus.add_member(:merging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MERGING", traits: {"smithy.api#enumValue" => "MERGING"}))
    IdentityResolutionJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    IdentityResolutionJobStatus.add_member(:partial_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL_SUCCESS", traits: {"smithy.api#enumValue" => "PARTIAL_SUCCESS"}))
    IdentityResolutionJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IdentityResolutionJobsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityResolutionJob, name: "member"))
    Include.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    Include.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    Include.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    IncludeOptions.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    IncludeOptions.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    IncludeOptions.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    IncludedColumns.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    IncludedColumns.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnNamesList, name: "value"))
    IncrementalPullConfig.add_member(:datetime_type_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatetimeTypeFieldName, name: "DatetimeTypeFieldName"))
    IncrementalPullConfig.type = Types::IncrementalPullConfig
    InferenceConfig.add_member(:min_provisioned_tps, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceConfigMinProvisionedTPSInteger, name: "MinProvisionedTPS"))
    InferenceConfig.type = Types::InferenceConfig
    IntegrationConfig.add_member(:appflow_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: AppflowIntegration, name: "AppflowIntegration"))
    IntegrationConfig.type = Types::IntegrationConfig
    IntegrationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListIntegrationItem, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    JobSchedule.add_member(:day_of_the_week, ::Smithy::Schema::Shapes::MemberShape.new(target: JobScheduleDayOfTheWeek, name: "DayOfTheWeek", traits: {"smithy.api#required" => {}}))
    JobSchedule.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: JobScheduleTime, name: "Time", traits: {"smithy.api#required" => {}}))
    JobSchedule.type = Types::JobSchedule
    JobScheduleDayOfTheWeek.add_member(:sunday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUNDAY", traits: {"smithy.api#enumValue" => "SUNDAY"}))
    JobScheduleDayOfTheWeek.add_member(:monday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONDAY", traits: {"smithy.api#enumValue" => "MONDAY"}))
    JobScheduleDayOfTheWeek.add_member(:tuesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TUESDAY", traits: {"smithy.api#enumValue" => "TUESDAY"}))
    JobScheduleDayOfTheWeek.add_member(:wednesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEDNESDAY", traits: {"smithy.api#enumValue" => "WEDNESDAY"}))
    JobScheduleDayOfTheWeek.add_member(:thursday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THURSDAY", traits: {"smithy.api#enumValue" => "THURSDAY"}))
    JobScheduleDayOfTheWeek.add_member(:friday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FRIDAY", traits: {"smithy.api#enumValue" => "FRIDAY"}))
    JobScheduleDayOfTheWeek.add_member(:saturday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SATURDAY", traits: {"smithy.api#enumValue" => "SATURDAY"}))
    JobStats.add_member(:number_of_profiles_reviewed, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "NumberOfProfilesReviewed", traits: {"smithy.api#default" => 0}))
    JobStats.add_member(:number_of_matches_found, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "NumberOfMatchesFound", traits: {"smithy.api#default" => 0}))
    JobStats.add_member(:number_of_merges_done, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "NumberOfMergesDone", traits: {"smithy.api#default" => 0}))
    JobStats.type = Types::JobStats
    KeyMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    KeyMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectTypeKeyList, name: "value"))
    KeyValuesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "member"))
    LayoutItem.add_member(:layout_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "LayoutDefinitionName", traits: {"smithy.api#required" => {}}))
    LayoutItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description", traits: {"smithy.api#required" => {}}))
    LayoutItem.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    LayoutItem.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDefault", traits: {"smithy.api#default" => false}))
    LayoutItem.add_member(:layout_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LayoutType, name: "LayoutType", traits: {"smithy.api#required" => {}}))
    LayoutItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    LayoutItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    LayoutItem.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    LayoutItem.type = Types::LayoutItem
    LayoutList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LayoutItem, name: "member"))
    LayoutType.add_member(:profile_explorer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFILE_EXPLORER", traits: {"smithy.api#enumValue" => "PROFILE_EXPLORER"}))
    ListAccountIntegrationsRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Uri", traits: {"smithy.api#required" => {}}))
    ListAccountIntegrationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListAccountIntegrationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListAccountIntegrationsRequest.add_member(:include_hidden, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "IncludeHidden", traits: {"smithy.api#httpQuery" => "include-hidden"}))
    ListAccountIntegrationsRequest.type = Types::ListAccountIntegrationsRequest
    ListAccountIntegrationsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationList, name: "Items"))
    ListAccountIntegrationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAccountIntegrationsResponse.type = Types::ListAccountIntegrationsResponse
    ListCalculatedAttributeDefinitionItem.add_member(:calculated_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "CalculatedAttributeName"))
    ListCalculatedAttributeDefinitionItem.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    ListCalculatedAttributeDefinitionItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    ListCalculatedAttributeDefinitionItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    ListCalculatedAttributeDefinitionItem.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    ListCalculatedAttributeDefinitionItem.add_member(:use_historical_data, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "UseHistoricalData"))
    ListCalculatedAttributeDefinitionItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadinessStatus, name: "Status"))
    ListCalculatedAttributeDefinitionItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListCalculatedAttributeDefinitionItem.type = Types::ListCalculatedAttributeDefinitionItem
    ListCalculatedAttributeDefinitionsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCalculatedAttributeDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListCalculatedAttributeDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListCalculatedAttributeDefinitionsRequest.type = Types::ListCalculatedAttributeDefinitionsRequest
    ListCalculatedAttributeDefinitionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculatedAttributeDefinitionsList, name: "Items"))
    ListCalculatedAttributeDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListCalculatedAttributeDefinitionsResponse.type = Types::ListCalculatedAttributeDefinitionsResponse
    ListCalculatedAttributeForProfileItem.add_member(:calculated_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "CalculatedAttributeName"))
    ListCalculatedAttributeForProfileItem.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    ListCalculatedAttributeForProfileItem.add_member(:is_data_partial, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "IsDataPartial"))
    ListCalculatedAttributeForProfileItem.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Value"))
    ListCalculatedAttributeForProfileItem.add_member(:last_object_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastObjectTimestamp"))
    ListCalculatedAttributeForProfileItem.type = Types::ListCalculatedAttributeForProfileItem
    ListCalculatedAttributesForProfileRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListCalculatedAttributesForProfileRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListCalculatedAttributesForProfileRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCalculatedAttributesForProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCalculatedAttributesForProfileRequest.type = Types::ListCalculatedAttributesForProfileRequest
    ListCalculatedAttributesForProfileResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculatedAttributesForProfileList, name: "Items"))
    ListCalculatedAttributesForProfileResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListCalculatedAttributesForProfileResponse.type = Types::ListCalculatedAttributesForProfileResponse
    ListDomainItem.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#required" => {}}))
    ListDomainItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    ListDomainItem.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    ListDomainItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListDomainItem.type = Types::ListDomainItem
    ListDomainLayoutsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDomainLayoutsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListDomainLayoutsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListDomainLayoutsRequest.type = Types::ListDomainLayoutsRequest
    ListDomainLayoutsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: LayoutList, name: "Items"))
    ListDomainLayoutsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListDomainLayoutsResponse.type = Types::ListDomainLayoutsResponse
    ListDomainObjectTypesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDomainObjectTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListDomainObjectTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListDomainObjectTypesRequest.type = Types::ListDomainObjectTypesRequest
    ListDomainObjectTypesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainObjectTypesList, name: "Items"))
    ListDomainObjectTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListDomainObjectTypesResponse.type = Types::ListDomainObjectTypesResponse
    ListDomainsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListDomainsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListDomainsRequest.type = Types::ListDomainsRequest
    ListDomainsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainList, name: "Items"))
    ListDomainsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListDomainsResponse.type = Types::ListDomainsResponse
    ListEventStreamsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEventStreamsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListEventStreamsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListEventStreamsRequest.type = Types::ListEventStreamsRequest
    ListEventStreamsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: EventStreamSummaryList, name: "Items"))
    ListEventStreamsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListEventStreamsResponse.type = Types::ListEventStreamsResponse
    ListEventTriggersRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEventTriggersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListEventTriggersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListEventTriggersRequest.type = Types::ListEventTriggersRequest
    ListEventTriggersResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerSummaryList, name: "Items"))
    ListEventTriggersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListEventTriggersResponse.type = Types::ListEventTriggersResponse
    ListIdentityResolutionJobsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIdentityResolutionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListIdentityResolutionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListIdentityResolutionJobsRequest.type = Types::ListIdentityResolutionJobsRequest
    ListIdentityResolutionJobsResponse.add_member(:identity_resolution_jobs_list, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityResolutionJobsList, name: "IdentityResolutionJobsList"))
    ListIdentityResolutionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListIdentityResolutionJobsResponse.type = Types::ListIdentityResolutionJobsResponse
    ListIntegrationItem.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#required" => {}}))
    ListIntegrationItem.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Uri", traits: {"smithy.api#required" => {}}))
    ListIntegrationItem.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName"))
    ListIntegrationItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    ListIntegrationItem.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    ListIntegrationItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListIntegrationItem.add_member(:object_type_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectTypeNames, name: "ObjectTypeNames"))
    ListIntegrationItem.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "WorkflowId"))
    ListIntegrationItem.add_member(:is_unstructured, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "IsUnstructured"))
    ListIntegrationItem.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    ListIntegrationItem.add_member(:event_trigger_names, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerNames, name: "EventTriggerNames"))
    ListIntegrationItem.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope"))
    ListIntegrationItem.type = Types::ListIntegrationItem
    ListIntegrationsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIntegrationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListIntegrationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListIntegrationsRequest.add_member(:include_hidden, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "IncludeHidden", traits: {"smithy.api#httpQuery" => "include-hidden"}))
    ListIntegrationsRequest.type = Types::ListIntegrationsRequest
    ListIntegrationsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationList, name: "Items"))
    ListIntegrationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListIntegrationsResponse.type = Types::ListIntegrationsResponse
    ListObjectTypeAttributeItem.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    ListObjectTypeAttributeItem.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    ListObjectTypeAttributeItem.type = Types::ListObjectTypeAttributeItem
    ListObjectTypeAttributeValuesItem.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To1000, name: "Value", traits: {"smithy.api#required" => {}}))
    ListObjectTypeAttributeValuesItem.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    ListObjectTypeAttributeValuesItem.type = Types::ListObjectTypeAttributeValuesItem
    ListObjectTypeAttributeValuesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListObjectTypeAttributeValuesItem, name: "member"))
    ListObjectTypeAttributeValuesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListObjectTypeAttributeValuesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListObjectTypeAttributeValuesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListObjectTypeAttributeValuesRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListObjectTypeAttributeValuesRequest.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To1000, name: "AttributeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListObjectTypeAttributeValuesRequest.type = Types::ListObjectTypeAttributeValuesRequest
    ListObjectTypeAttributeValuesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListObjectTypeAttributeValuesList, name: "Items"))
    ListObjectTypeAttributeValuesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListObjectTypeAttributeValuesResponse.type = Types::ListObjectTypeAttributeValuesResponse
    ListObjectTypeAttributesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListObjectTypeAttributeItem, name: "member"))
    ListObjectTypeAttributesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListObjectTypeAttributesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListObjectTypeAttributesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListObjectTypeAttributesRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListObjectTypeAttributesRequest.type = Types::ListObjectTypeAttributesRequest
    ListObjectTypeAttributesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListObjectTypeAttributesList, name: "Items"))
    ListObjectTypeAttributesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListObjectTypeAttributesResponse.type = Types::ListObjectTypeAttributesResponse
    ListProfileHistoryRecordsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProfileHistoryRecordsRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    ListProfileHistoryRecordsRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName"))
    ListProfileHistoryRecordsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListProfileHistoryRecordsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListProfileHistoryRecordsRequest.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionType, name: "ActionType"))
    ListProfileHistoryRecordsRequest.add_member(:performed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "PerformedBy"))
    ListProfileHistoryRecordsRequest.type = Types::ListProfileHistoryRecordsRequest
    ListProfileHistoryRecordsResponse.add_member(:profile_history_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileHistoryRecords, name: "ProfileHistoryRecords"))
    ListProfileHistoryRecordsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListProfileHistoryRecordsResponse.type = Types::ListProfileHistoryRecordsResponse
    ListProfileObjectTypeItem.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#required" => {}}))
    ListProfileObjectTypeItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "Description", traits: {"smithy.api#required" => {}}))
    ListProfileObjectTypeItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    ListProfileObjectTypeItem.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    ListProfileObjectTypeItem.add_member(:max_profile_object_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSize1, name: "MaxProfileObjectCount"))
    ListProfileObjectTypeItem.add_member(:max_available_profile_object_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSize0, name: "MaxAvailableProfileObjectCount"))
    ListProfileObjectTypeItem.add_member(:source_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSize1, name: "SourcePriority"))
    ListProfileObjectTypeItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListProfileObjectTypeItem.type = Types::ListProfileObjectTypeItem
    ListProfileObjectTypeTemplateItem.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "TemplateId"))
    ListProfileObjectTypeTemplateItem.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SourceName"))
    ListProfileObjectTypeTemplateItem.add_member(:source_object, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SourceObject"))
    ListProfileObjectTypeTemplateItem.type = Types::ListProfileObjectTypeTemplateItem
    ListProfileObjectTypeTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListProfileObjectTypeTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListProfileObjectTypeTemplatesRequest.type = Types::ListProfileObjectTypeTemplatesRequest
    ListProfileObjectTypeTemplatesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileObjectTypeTemplateList, name: "Items"))
    ListProfileObjectTypeTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListProfileObjectTypeTemplatesResponse.type = Types::ListProfileObjectTypeTemplatesResponse
    ListProfileObjectTypesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProfileObjectTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListProfileObjectTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListProfileObjectTypesRequest.type = Types::ListProfileObjectTypesRequest
    ListProfileObjectTypesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileObjectTypeList, name: "Items"))
    ListProfileObjectTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListProfileObjectTypesResponse.type = Types::ListProfileObjectTypesResponse
    ListProfileObjectsItem.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName"))
    ListProfileObjectsItem.add_member(:profile_object_unique_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "ProfileObjectUniqueKey"))
    ListProfileObjectsItem.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: StringifiedJson, name: "Object"))
    ListProfileObjectsItem.type = Types::ListProfileObjectsItem
    ListProfileObjectsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListProfileObjectsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListProfileObjectsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProfileObjectsRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#required" => {}}))
    ListProfileObjectsRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    ListProfileObjectsRequest.add_member(:object_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectFilter, name: "ObjectFilter"))
    ListProfileObjectsRequest.type = Types::ListProfileObjectsRequest
    ListProfileObjectsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileObjectList, name: "Items"))
    ListProfileObjectsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListProfileObjectsResponse.type = Types::ListProfileObjectsResponse
    ListRecommenderFiltersRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecommenderFiltersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListRecommenderFiltersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListRecommenderFiltersRequest.type = Types::ListRecommenderFiltersRequest
    ListRecommenderFiltersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListRecommenderFiltersResponse.add_member(:recommender_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterSummaryList, name: "RecommenderFilters"))
    ListRecommenderFiltersResponse.type = Types::ListRecommenderFiltersResponse
    ListRecommenderRecipesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRecommenderRecipesRequestMaxResultsInteger, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListRecommenderRecipesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListRecommenderRecipesRequest.type = Types::ListRecommenderRecipesRequest
    ListRecommenderRecipesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListRecommenderRecipesResponse.add_member(:recommender_recipes, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderRecipesList, name: "RecommenderRecipes"))
    ListRecommenderRecipesResponse.type = Types::ListRecommenderRecipesResponse
    ListRecommenderSchemasRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecommenderSchemasRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListRecommenderSchemasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListRecommenderSchemasRequest.type = Types::ListRecommenderSchemasRequest
    ListRecommenderSchemasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListRecommenderSchemasResponse.add_member(:recommender_schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderSchemaSummaryList, name: "RecommenderSchemas"))
    ListRecommenderSchemasResponse.type = Types::ListRecommenderSchemasResponse
    ListRecommendersRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecommendersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRecommendersRequestMaxResultsInteger, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListRecommendersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListRecommendersRequest.type = Types::ListRecommendersRequest
    ListRecommendersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListRecommendersResponse.add_member(:recommenders, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderSummaryList, name: "Recommenders"))
    ListRecommendersResponse.type = Types::ListRecommendersResponse
    ListRuleBasedMatchesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListRuleBasedMatchesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListRuleBasedMatchesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRuleBasedMatchesRequest.type = Types::ListRuleBasedMatchesRequest
    ListRuleBasedMatchesResponse.add_member(:match_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchIdList, name: "MatchIds"))
    ListRuleBasedMatchesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListRuleBasedMatchesResponse.type = Types::ListRuleBasedMatchesResponse
    ListSegmentDefinitionsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSegmentDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize500, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListSegmentDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListSegmentDefinitionsRequest.type = Types::ListSegmentDefinitionsRequest
    ListSegmentDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#jsonName" => "NextToken"}))
    ListSegmentDefinitionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentDefinitionsList, name: "Items", traits: {"smithy.api#jsonName" => "Items"}))
    ListSegmentDefinitionsResponse.type = Types::ListSegmentDefinitionsResponse
    ListSegmentSubscriptionEventsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSegmentSubscriptionEventsRequest.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSegmentSubscriptionEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListSegmentSubscriptionEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListSegmentSubscriptionEventsRequest.type = Types::ListSegmentSubscriptionEventsRequest
    ListSegmentSubscriptionEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionEventsList, name: "Events", traits: {"smithy.api#jsonName" => "Events"}))
    ListSegmentSubscriptionEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#jsonName" => "NextToken"}))
    ListSegmentSubscriptionEventsResponse.type = Types::ListSegmentSubscriptionEventsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListUploadJobsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListUploadJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize500, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListUploadJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListUploadJobsRequest.type = Types::ListUploadJobsRequest
    ListUploadJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#jsonName" => "NextToken"}))
    ListUploadJobsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadJobsList, name: "Items", traits: {"smithy.api#jsonName" => "Items"}))
    ListUploadJobsResponse.type = Types::ListUploadJobsResponse
    ListWorkflowsItem.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "WorkflowType", traits: {"smithy.api#required" => {}}))
    ListWorkflowsItem.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "WorkflowId", traits: {"smithy.api#required" => {}}))
    ListWorkflowsItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status", traits: {"smithy.api#required" => {}}))
    ListWorkflowsItem.add_member(:status_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "StatusDescription", traits: {"smithy.api#required" => {}}))
    ListWorkflowsItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    ListWorkflowsItem.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    ListWorkflowsItem.type = Types::ListWorkflowsItem
    ListWorkflowsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkflowsRequest.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "WorkflowType"))
    ListWorkflowsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    ListWorkflowsRequest.add_member(:query_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "QueryStartDate"))
    ListWorkflowsRequest.add_member(:query_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "QueryEndDate"))
    ListWorkflowsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListWorkflowsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListWorkflowsRequest.type = Types::ListWorkflowsRequest
    ListWorkflowsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowList, name: "Items"))
    ListWorkflowsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListWorkflowsResponse.type = Types::ListWorkflowsResponse
    MarketoConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    MarketoConnectorOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    MarketoConnectorOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    MarketoConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    MarketoConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    MarketoConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    MarketoConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    MarketoConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    MarketoConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    MarketoConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    MarketoConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    MarketoConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    MarketoConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    MarketoConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    MarketoConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    MarketoConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    MarketoSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, name: "Object", traits: {"smithy.api#required" => {}}))
    MarketoSourceProperties.type = Types::MarketoSourceProperties
    MatchIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "member"))
    MatchItem.add_member(:match_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "MatchId"))
    MatchItem.add_member(:profile_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdList, name: "ProfileIds"))
    MatchItem.add_member(:confidence_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "ConfidenceScore"))
    MatchItem.type = Types::MatchItem
    MatchType.add_member(:rule_based_matching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RULE_BASED_MATCHING", traits: {"smithy.api#enumValue" => "RULE_BASED_MATCHING"}))
    MatchType.add_member(:ml_based_matching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ML_BASED_MATCHING", traits: {"smithy.api#enumValue" => "ML_BASED_MATCHING"}))
    MatchesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchItem, name: "member"))
    MatchingAttributes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "member"))
    MatchingAttributesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchingAttributes, name: "member"))
    MatchingRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    MatchingRequest.add_member(:job_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSchedule, name: "JobSchedule"))
    MatchingRequest.add_member(:auto_merging, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoMerging, name: "AutoMerging"))
    MatchingRequest.add_member(:exporting_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportingConfig, name: "ExportingConfig"))
    MatchingRequest.type = Types::MatchingRequest
    MatchingResponse.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "Enabled"))
    MatchingResponse.add_member(:job_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSchedule, name: "JobSchedule"))
    MatchingResponse.add_member(:auto_merging, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoMerging, name: "AutoMerging"))
    MatchingResponse.add_member(:exporting_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportingConfig, name: "ExportingConfig"))
    MatchingResponse.type = Types::MatchingResponse
    MatchingRule.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchingRuleAttributeList, name: "Rule", traits: {"smithy.api#required" => {}}))
    MatchingRule.type = Types::MatchingRule
    MatchingRuleAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "member"))
    MatchingRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchingRule, name: "member"))
    MergeProfilesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    MergeProfilesRequest.add_member(:main_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "MainProfileId", traits: {"smithy.api#required" => {}}))
    MergeProfilesRequest.add_member(:profile_ids_to_be_merged, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileIdToBeMergedList, name: "ProfileIdsToBeMerged", traits: {"smithy.api#required" => {}}))
    MergeProfilesRequest.add_member(:field_source_profile_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldSourceProfileIds, name: "FieldSourceProfileIds"))
    MergeProfilesRequest.type = Types::MergeProfilesRequest
    MergeProfilesResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    MergeProfilesResponse.type = Types::MergeProfilesResponse
    MetadataColumnsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataColumnName, name: "member"))
    MetadataConfig.add_member(:metadata_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataColumnsList, name: "MetadataColumns"))
    MetadataConfig.type = Types::MetadataConfig
    Metrics.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingMetricName, name: "key"))
    Metrics.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "value"))
    ObjectAttribute.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "Source"))
    ObjectAttribute.add_member(:field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, name: "FieldName"))
    ObjectAttribute.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "ComparisonOperator", traits: {"smithy.api#required" => {}}))
    ObjectAttribute.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerValues, name: "Values", traits: {"smithy.api#required" => {}}))
    ObjectAttribute.type = Types::ObjectAttribute
    ObjectAttributes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectAttribute, name: "member"))
    ObjectFilter.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "KeyName", traits: {"smithy.api#required" => {}}))
    ObjectFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    ObjectFilter.type = Types::ObjectFilter
    ObjectTypeField.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "Source"))
    ObjectTypeField.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "Target"))
    ObjectTypeField.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldContentType, name: "ContentType"))
    ObjectTypeField.type = Types::ObjectTypeField
    ObjectTypeKey.add_member(:standard_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardIdentifierList, name: "StandardIdentifiers"))
    ObjectTypeKey.add_member(:field_names, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNameList, name: "FieldNames"))
    ObjectTypeKey.type = Types::ObjectTypeKey
    ObjectTypeKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectTypeKey, name: "member"))
    ObjectTypeNames.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "key"))
    ObjectTypeNames.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "value"))
    Objects.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringifiedJson, name: "member"))
    Operator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    Operator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    Operator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    Operator.add_member(:not_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUAL_TO", traits: {"smithy.api#enumValue" => "NOT_EQUAL_TO"}))
    OperatorPropertiesKeys.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUE", traits: {"smithy.api#enumValue" => "VALUE"}))
    OperatorPropertiesKeys.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUES", traits: {"smithy.api#enumValue" => "VALUES"}))
    OperatorPropertiesKeys.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_TYPE", traits: {"smithy.api#enumValue" => "DATA_TYPE"}))
    OperatorPropertiesKeys.add_member(:upper_bound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPPER_BOUND", traits: {"smithy.api#enumValue" => "UPPER_BOUND"}))
    OperatorPropertiesKeys.add_member(:lower_bound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOWER_BOUND", traits: {"smithy.api#enumValue" => "LOWER_BOUND"}))
    OperatorPropertiesKeys.add_member(:source_data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_DATA_TYPE", traits: {"smithy.api#enumValue" => "SOURCE_DATA_TYPE"}))
    OperatorPropertiesKeys.add_member(:destination_data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESTINATION_DATA_TYPE", traits: {"smithy.api#enumValue" => "DESTINATION_DATA_TYPE"}))
    OperatorPropertiesKeys.add_member(:validation_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_ACTION", traits: {"smithy.api#enumValue" => "VALIDATION_ACTION"}))
    OperatorPropertiesKeys.add_member(:mask_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_VALUE", traits: {"smithy.api#enumValue" => "MASK_VALUE"}))
    OperatorPropertiesKeys.add_member(:mask_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_LENGTH", traits: {"smithy.api#enumValue" => "MASK_LENGTH"}))
    OperatorPropertiesKeys.add_member(:truncate_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUNCATE_LENGTH", traits: {"smithy.api#enumValue" => "TRUNCATE_LENGTH"}))
    OperatorPropertiesKeys.add_member(:math_operation_fields_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MATH_OPERATION_FIELDS_ORDER", traits: {"smithy.api#enumValue" => "MATH_OPERATION_FIELDS_ORDER"}))
    OperatorPropertiesKeys.add_member(:concat_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONCAT_FORMAT", traits: {"smithy.api#enumValue" => "CONCAT_FORMAT"}))
    OperatorPropertiesKeys.add_member(:subfield_category_map, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBFIELD_CATEGORY_MAP", traits: {"smithy.api#enumValue" => "SUBFIELD_CATEGORY_MAP"}))
    PartyType.add_member(:individual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INDIVIDUAL", traits: {"smithy.api#enumValue" => "INDIVIDUAL"}))
    PartyType.add_member(:business, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS", traits: {"smithy.api#enumValue" => "BUSINESS"}))
    PartyType.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    Period.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: PeriodUnit, name: "Unit", traits: {"smithy.api#required" => {}}))
    Period.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize60, name: "Value", traits: {"smithy.api#required" => {}}))
    Period.add_member(:max_invocations_per_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize1000, name: "MaxInvocationsPerProfile"))
    Period.add_member(:unlimited, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Unlimited", traits: {"smithy.api#default" => false}))
    Period.type = Types::Period
    PeriodUnit.add_member(:minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINUTES", traits: {"smithy.api#enumValue" => "MINUTES"}))
    PeriodUnit.add_member(:hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURS", traits: {"smithy.api#enumValue" => "HOURS"}))
    PeriodUnit.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    PeriodUnit.add_member(:weeks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEEKS", traits: {"smithy.api#enumValue" => "WEEKS"}))
    PeriodUnit.add_member(:months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHS", traits: {"smithy.api#enumValue" => "MONTHS"}))
    Periods.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "member"))
    PhoneNumberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "member"))
    PhonePreferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactPreference, name: "member"))
    Profile.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId"))
    Profile.add_member(:account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "AccountNumber"))
    Profile.add_member(:additional_information, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To1000, name: "AdditionalInformation"))
    Profile.add_member(:party_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PartyType, name: "PartyType"))
    Profile.add_member(:business_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "BusinessName"))
    Profile.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "FirstName"))
    Profile.add_member(:middle_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "MiddleName"))
    Profile.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "LastName"))
    Profile.add_member(:birth_date, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "BirthDate"))
    Profile.add_member(:gender, ::Smithy::Schema::Shapes::MemberShape.new(target: Gender, name: "Gender"))
    Profile.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "PhoneNumber"))
    Profile.add_member(:mobile_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "MobilePhoneNumber"))
    Profile.add_member(:home_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "HomePhoneNumber"))
    Profile.add_member(:business_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "BusinessPhoneNumber"))
    Profile.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "EmailAddress"))
    Profile.add_member(:personal_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "PersonalEmailAddress"))
    Profile.add_member(:business_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "BusinessEmailAddress"))
    Profile.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    Profile.add_member(:shipping_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "ShippingAddress"))
    Profile.add_member(:mailing_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "MailingAddress"))
    Profile.add_member(:billing_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "BillingAddress"))
    Profile.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "Attributes"))
    Profile.add_member(:found_by_items, ::Smithy::Schema::Shapes::MemberShape.new(target: FoundByList, name: "FoundByItems"))
    Profile.add_member(:party_type_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "PartyTypeString"))
    Profile.add_member(:gender_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To255, name: "GenderString"))
    Profile.add_member(:profile_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileType, name: "ProfileType"))
    Profile.add_member(:engagement_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementPreferences, name: "EngagementPreferences"))
    Profile.type = Types::Profile
    ProfileAttributeValuesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ProfileAttributeValuesRequest.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "AttributeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ProfileAttributeValuesRequest.type = Types::ProfileAttributeValuesRequest
    ProfileAttributeValuesResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName"))
    ProfileAttributeValuesResponse.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "AttributeName"))
    ProfileAttributeValuesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueItemList, name: "Items"))
    ProfileAttributeValuesResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "StatusCode", traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}}))
    ProfileAttributeValuesResponse.type = Types::ProfileAttributeValuesResponse
    ProfileAttributes.add_member(:account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "AccountNumber", traits: {"smithy.api#jsonName" => "AccountNumber"}))
    ProfileAttributes.add_member(:additional_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtraLengthValueProfileDimension, name: "AdditionalInformation", traits: {"smithy.api#jsonName" => "AdditionalInformation"}))
    ProfileAttributes.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "FirstName", traits: {"smithy.api#jsonName" => "FirstName"}))
    ProfileAttributes.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "LastName", traits: {"smithy.api#jsonName" => "LastName"}))
    ProfileAttributes.add_member(:middle_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "MiddleName", traits: {"smithy.api#jsonName" => "MiddleName"}))
    ProfileAttributes.add_member(:gender_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "GenderString", traits: {"smithy.api#jsonName" => "GenderString"}))
    ProfileAttributes.add_member(:party_type_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "PartyTypeString", traits: {"smithy.api#jsonName" => "PartyTypeString"}))
    ProfileAttributes.add_member(:birth_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateDimension, name: "BirthDate", traits: {"smithy.api#jsonName" => "BirthDate"}))
    ProfileAttributes.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "PhoneNumber", traits: {"smithy.api#jsonName" => "PhoneNumber"}))
    ProfileAttributes.add_member(:business_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "BusinessName", traits: {"smithy.api#jsonName" => "BusinessName"}))
    ProfileAttributes.add_member(:business_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "BusinessPhoneNumber", traits: {"smithy.api#jsonName" => "BusinessPhoneNumber"}))
    ProfileAttributes.add_member(:home_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "HomePhoneNumber", traits: {"smithy.api#jsonName" => "HomePhoneNumber"}))
    ProfileAttributes.add_member(:mobile_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "MobilePhoneNumber", traits: {"smithy.api#jsonName" => "MobilePhoneNumber"}))
    ProfileAttributes.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "EmailAddress", traits: {"smithy.api#jsonName" => "EmailAddress"}))
    ProfileAttributes.add_member(:personal_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "PersonalEmailAddress", traits: {"smithy.api#jsonName" => "PersonalEmailAddress"}))
    ProfileAttributes.add_member(:business_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileDimension, name: "BusinessEmailAddress", traits: {"smithy.api#jsonName" => "BusinessEmailAddress"}))
    ProfileAttributes.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressDimension, name: "Address", traits: {"smithy.api#jsonName" => "Address"}))
    ProfileAttributes.add_member(:shipping_address, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressDimension, name: "ShippingAddress", traits: {"smithy.api#jsonName" => "ShippingAddress"}))
    ProfileAttributes.add_member(:mailing_address, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressDimension, name: "MailingAddress", traits: {"smithy.api#jsonName" => "MailingAddress"}))
    ProfileAttributes.add_member(:billing_address, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressDimension, name: "BillingAddress", traits: {"smithy.api#jsonName" => "BillingAddress"}))
    ProfileAttributes.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAttributes, name: "Attributes", traits: {"smithy.api#jsonName" => "Attributes"}))
    ProfileAttributes.add_member(:profile_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTypeDimension, name: "ProfileType", traits: {"smithy.api#jsonName" => "ProfileType"}))
    ProfileAttributes.type = Types::ProfileAttributes
    ProfileDimension.add_member(:dimension_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringDimensionType, name: "DimensionType", traits: {"smithy.api#jsonName" => "DimensionType", "smithy.api#required" => {}}))
    ProfileDimension.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, name: "Values", traits: {"smithy.api#jsonName" => "Values", "smithy.api#required" => {}}))
    ProfileDimension.type = Types::ProfileDimension
    ProfileHistoryRecord.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "Id", traits: {"smithy.api#required" => {}}))
    ProfileHistoryRecord.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#required" => {}}))
    ProfileHistoryRecord.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    ProfileHistoryRecord.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    ProfileHistoryRecord.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionType, name: "ActionType", traits: {"smithy.api#required" => {}}))
    ProfileHistoryRecord.add_member(:profile_object_unique_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "ProfileObjectUniqueKey"))
    ProfileHistoryRecord.add_member(:performed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "PerformedBy"))
    ProfileHistoryRecord.type = Types::ProfileHistoryRecord
    ProfileHistoryRecords.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileHistoryRecord, name: "member"))
    ProfileIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "member"))
    ProfileIdToBeMergedList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "member"))
    ProfileIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "member"))
    ProfileList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Profile, name: "member"))
    ProfileObjectList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListProfileObjectsItem, name: "member"))
    ProfileObjectTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListProfileObjectTypeItem, name: "member"))
    ProfileObjectTypeTemplateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListProfileObjectTypeTemplateItem, name: "member"))
    ProfileQueryFailures.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, name: "ProfileId", traits: {"smithy.api#jsonName" => "ProfileId", "smithy.api#required" => {}}))
    ProfileQueryFailures.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSegmentMembershipMessage, name: "Message", traits: {"smithy.api#jsonName" => "Message", "smithy.api#required" => {}}))
    ProfileQueryFailures.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSegmentMembershipStatus, name: "Status", traits: {"smithy.api#jsonName" => "Status"}))
    ProfileQueryFailures.type = Types::ProfileQueryFailures
    ProfileQueryResult.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, name: "ProfileId", traits: {"smithy.api#jsonName" => "ProfileId", "smithy.api#required" => {}}))
    ProfileQueryResult.add_member(:query_result, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResult, name: "QueryResult", traits: {"smithy.api#jsonName" => "QueryResult", "smithy.api#required" => {}}))
    ProfileQueryResult.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: Profile, name: "Profile", traits: {"smithy.api#jsonName" => "Profile"}))
    ProfileQueryResult.type = Types::ProfileQueryResult
    ProfileType.add_member(:account_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_PROFILE", traits: {"smithy.api#enumValue" => "ACCOUNT_PROFILE"}))
    ProfileType.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFILE", traits: {"smithy.api#enumValue" => "PROFILE"}))
    ProfileTypeDimension.add_member(:dimension_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTypeDimensionType, name: "DimensionType", traits: {"smithy.api#jsonName" => "DimensionType", "smithy.api#required" => {}}))
    ProfileTypeDimension.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTypeValues, name: "Values", traits: {"smithy.api#jsonName" => "Values", "smithy.api#required" => {}}))
    ProfileTypeDimension.type = Types::ProfileTypeDimension
    ProfileTypeDimensionType.add_member(:inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUSIVE", traits: {"smithy.api#enumValue" => "INCLUSIVE"}))
    ProfileTypeDimensionType.add_member(:exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUSIVE", traits: {"smithy.api#enumValue" => "EXCLUSIVE"}))
    ProfileTypeValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileType, name: "member"))
    Profiles.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileQueryResult, name: "member"))
    PutDomainObjectTypeRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDomainObjectTypeRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDomainObjectTypeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To10000, name: "Description"))
    PutDomainObjectTypeRequest.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "EncryptionKey"))
    PutDomainObjectTypeRequest.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainObjectTypeFields, name: "Fields", traits: {"smithy.api#required" => {}}))
    PutDomainObjectTypeRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    PutDomainObjectTypeRequest.type = Types::PutDomainObjectTypeRequest
    PutDomainObjectTypeResponse.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName"))
    PutDomainObjectTypeResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To10000, name: "Description"))
    PutDomainObjectTypeResponse.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "EncryptionKey"))
    PutDomainObjectTypeResponse.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainObjectTypeFields, name: "Fields"))
    PutDomainObjectTypeResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    PutDomainObjectTypeResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    PutDomainObjectTypeResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    PutDomainObjectTypeResponse.type = Types::PutDomainObjectTypeResponse
    PutIntegrationRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutIntegrationRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Uri"))
    PutIntegrationRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName"))
    PutIntegrationRequest.add_member(:object_type_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectTypeNames, name: "ObjectTypeNames"))
    PutIntegrationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    PutIntegrationRequest.add_member(:flow_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowDefinition, name: "FlowDefinition"))
    PutIntegrationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    PutIntegrationRequest.add_member(:event_trigger_names, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerNames, name: "EventTriggerNames"))
    PutIntegrationRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope"))
    PutIntegrationRequest.type = Types::PutIntegrationRequest
    PutIntegrationResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#required" => {}}))
    PutIntegrationResponse.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Uri", traits: {"smithy.api#required" => {}}))
    PutIntegrationResponse.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName"))
    PutIntegrationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    PutIntegrationResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    PutIntegrationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    PutIntegrationResponse.add_member(:object_type_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectTypeNames, name: "ObjectTypeNames"))
    PutIntegrationResponse.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "WorkflowId"))
    PutIntegrationResponse.add_member(:is_unstructured, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "IsUnstructured"))
    PutIntegrationResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    PutIntegrationResponse.add_member(:event_trigger_names, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerNames, name: "EventTriggerNames"))
    PutIntegrationResponse.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope"))
    PutIntegrationResponse.type = Types::PutIntegrationResponse
    PutProfileObjectRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#required" => {}}))
    PutProfileObjectRequest.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: StringifiedJson, name: "Object", traits: {"smithy.api#required" => {}}))
    PutProfileObjectRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutProfileObjectRequest.type = Types::PutProfileObjectRequest
    PutProfileObjectResponse.add_member(:profile_object_unique_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "ProfileObjectUniqueKey"))
    PutProfileObjectResponse.type = Types::PutProfileObjectResponse
    PutProfileObjectTypeRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutProfileObjectTypeRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutProfileObjectTypeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description", traits: {"smithy.api#required" => {}}))
    PutProfileObjectTypeRequest.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "TemplateId"))
    PutProfileObjectTypeRequest.add_member(:expiration_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDaysInteger, name: "ExpirationDays"))
    PutProfileObjectTypeRequest.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "EncryptionKey"))
    PutProfileObjectTypeRequest.add_member(:allow_profile_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowProfileCreation", traits: {"smithy.api#default" => false}))
    PutProfileObjectTypeRequest.add_member(:source_last_updated_timestamp_format, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "SourceLastUpdatedTimestampFormat"))
    PutProfileObjectTypeRequest.add_member(:max_profile_object_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSize1, name: "MaxProfileObjectCount"))
    PutProfileObjectTypeRequest.add_member(:source_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSize1, name: "SourcePriority"))
    PutProfileObjectTypeRequest.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldMap, name: "Fields"))
    PutProfileObjectTypeRequest.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyMap, name: "Keys"))
    PutProfileObjectTypeRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    PutProfileObjectTypeRequest.type = Types::PutProfileObjectTypeRequest
    PutProfileObjectTypeResponse.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName", traits: {"smithy.api#required" => {}}))
    PutProfileObjectTypeResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description", traits: {"smithy.api#required" => {}}))
    PutProfileObjectTypeResponse.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "TemplateId"))
    PutProfileObjectTypeResponse.add_member(:expiration_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDaysInteger, name: "ExpirationDays"))
    PutProfileObjectTypeResponse.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "EncryptionKey"))
    PutProfileObjectTypeResponse.add_member(:allow_profile_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowProfileCreation", traits: {"smithy.api#default" => false}))
    PutProfileObjectTypeResponse.add_member(:source_last_updated_timestamp_format, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "SourceLastUpdatedTimestampFormat"))
    PutProfileObjectTypeResponse.add_member(:max_profile_object_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSize1, name: "MaxProfileObjectCount"))
    PutProfileObjectTypeResponse.add_member(:max_available_profile_object_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSize0, name: "MaxAvailableProfileObjectCount"))
    PutProfileObjectTypeResponse.add_member(:source_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSize1, name: "SourcePriority"))
    PutProfileObjectTypeResponse.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldMap, name: "Fields"))
    PutProfileObjectTypeResponse.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyMap, name: "Keys"))
    PutProfileObjectTypeResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    PutProfileObjectTypeResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    PutProfileObjectTypeResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    PutProfileObjectTypeResponse.type = Types::PutProfileObjectTypeResponse
    PutSegmentSubscriptionRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSegmentSubscriptionRequest.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSegmentSubscriptionRequest.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleConfiguration, name: "ScheduleConfiguration"))
    PutSegmentSubscriptionRequest.type = Types::PutSegmentSubscriptionRequest
    PutSegmentSubscriptionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentSubscriptionStatus, name: "Status", traits: {"smithy.api#jsonName" => "Status"}))
    PutSegmentSubscriptionResponse.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleConfiguration, name: "ScheduleConfiguration", traits: {"smithy.api#jsonName" => "ScheduleConfiguration"}))
    PutSegmentSubscriptionResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartedAt", traits: {"smithy.api#jsonName" => "StartedAt"}))
    PutSegmentSubscriptionResponse.type = Types::PutSegmentSubscriptionResponse
    QueryResult.add_member(:present, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESENT", traits: {"smithy.api#enumValue" => "PRESENT"}))
    QueryResult.add_member(:absent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABSENT", traits: {"smithy.api#enumValue" => "ABSENT"}))
    Range.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "Value", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => 0}))
    Range.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: Unit, name: "Unit", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "DAYS"}))
    Range.add_member(:value_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueRange, name: "ValueRange"))
    Range.add_member(:timestamp_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "TimestampSource"))
    Range.add_member(:timestamp_format, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "TimestampFormat"))
    Range.type = Types::Range
    RangeOverride.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: Start, name: "Start", traits: {"smithy.api#default" => 366, "smithy.api#required" => {}}))
    RangeOverride.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: End, name: "End", traits: {"smithy.api#default" => 0}))
    RangeOverride.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: RangeUnit, name: "Unit", traits: {"smithy.api#required" => {}}))
    RangeOverride.type = Types::RangeOverride
    RangeUnit.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    Readiness.add_member(:progress_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentageInteger, name: "ProgressPercentage"))
    Readiness.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "Message"))
    Readiness.type = Types::Readiness
    ReadinessStatus.add_member(:preparing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREPARING", traits: {"smithy.api#enumValue" => "PREPARING"}))
    ReadinessStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ReadinessStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ReadinessStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Recommendation.add_member(:catalog_item, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogItem, name: "CatalogItem"))
    Recommendation.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double0To1, name: "Score"))
    Recommendation.type = Types::Recommendation
    RecommendationDiversityConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    RecommendationDiversityConfig.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: DiversityValuesMap, name: "Values"))
    RecommendationDiversityConfig.type = Types::RecommendationDiversityConfig
    RecommendationMetadata.add_member(:columns, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataColumnsList, name: "Columns"))
    RecommendationMetadata.type = Types::RecommendationMetadata
    Recommendations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation, name: "member"))
    Recommender.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    Recommender.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilters, name: "Filters"))
    Recommender.add_member(:promotional_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderPromotionalFilters, name: "PromotionalFilters"))
    Recommender.type = Types::Recommender
    RecommenderConfig.add_member(:events_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventsConfig, name: "EventsConfig"))
    RecommenderConfig.add_member(:training_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderConfigTrainingFrequencyInteger, name: "TrainingFrequency"))
    RecommenderConfig.add_member(:inference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceConfig, name: "InferenceConfig"))
    RecommenderConfig.add_member(:included_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedColumns, name: "IncludedColumns"))
    RecommenderConfig.add_member(:excluded_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedColumns, name: "ExcludedColumns"))
    RecommenderConfig.add_member(:diversity_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DiversityConfig, name: "DiversityConfig"))
    RecommenderConfig.type = Types::RecommenderConfig
    RecommenderContext.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKey, name: "key"))
    RecommenderContext.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "value"))
    RecommenderFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    RecommenderFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterValues, name: "Values"))
    RecommenderFilter.type = Types::RecommenderFilter
    RecommenderFilterStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RecommenderFilterStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    RecommenderFilterStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    RecommenderFilterStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RecommenderFilterStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    RecommenderFilterSummary.add_member(:recommender_filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterName, name: "RecommenderFilterName"))
    RecommenderFilterSummary.add_member(:recommender_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderSchemaName"))
    RecommenderFilterSummary.add_member(:recommender_filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterExpression, name: "RecommenderFilterExpression"))
    RecommenderFilterSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    RecommenderFilterSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    RecommenderFilterSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterStatus, name: "Status"))
    RecommenderFilterSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FailureReason"))
    RecommenderFilterSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    RecommenderFilterSummary.type = Types::RecommenderFilterSummary
    RecommenderFilterSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterSummary, name: "member"))
    RecommenderFilterValues.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterAttributeName, name: "key"))
    RecommenderFilterValues.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterAttributeValue, name: "value"))
    RecommenderFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilter, name: "member"))
    RecommenderPromotionalFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    RecommenderPromotionalFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderFilterValues, name: "Values"))
    RecommenderPromotionalFilter.add_member(:promotion_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "PromotionName"))
    RecommenderPromotionalFilter.add_member(:percent_promoted_items, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentPromotedItems, name: "PercentPromotedItems"))
    RecommenderPromotionalFilter.type = Types::RecommenderPromotionalFilter
    RecommenderPromotionalFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderPromotionalFilter, name: "member"))
    RecommenderRecipe.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderRecipeName, name: "name"))
    RecommenderRecipe.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    RecommenderRecipe.type = Types::RecommenderRecipe
    RecommenderRecipeName.add_member(:recommended_for_you, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDED_FOR_YOU", traits: {"smithy.api#enumValue" => "recommended-for-you"}))
    RecommenderRecipeName.add_member(:similar_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIMILAR_ITEMS", traits: {"smithy.api#enumValue" => "similar-items"}))
    RecommenderRecipeName.add_member(:frequently_paired_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FREQUENTLY_PAIRED_ITEMS", traits: {"smithy.api#enumValue" => "frequently-paired-items"}))
    RecommenderRecipeName.add_member(:popular_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POPULAR_ITEMS", traits: {"smithy.api#enumValue" => "popular-items"}))
    RecommenderRecipeName.add_member(:trending_now, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRENDING_NOW", traits: {"smithy.api#enumValue" => "trending-now"}))
    RecommenderRecipeName.add_member(:personalized_ranking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERSONALIZED_RANKING", traits: {"smithy.api#enumValue" => "personalized-ranking"}))
    RecommenderRecipesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderRecipe, name: "member"))
    RecommenderSchemaField.add_member(:target_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, name: "TargetFieldName", traits: {"smithy.api#required" => {}}))
    RecommenderSchemaField.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType"))
    RecommenderSchemaField.add_member(:feature_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureType, name: "FeatureType"))
    RecommenderSchemaField.type = Types::RecommenderSchemaField
    RecommenderSchemaFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderSchemaField, name: "member"))
    RecommenderSchemaFields.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    RecommenderSchemaFields.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderSchemaFieldList, name: "value"))
    RecommenderSchemaStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RecommenderSchemaStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    RecommenderSchemaSummary.add_member(:recommender_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderSchemaName", traits: {"smithy.api#required" => {}}))
    RecommenderSchemaSummary.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderSchemaFields, name: "Fields", traits: {"smithy.api#required" => {}}))
    RecommenderSchemaSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    RecommenderSchemaSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderSchemaStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    RecommenderSchemaSummary.type = Types::RecommenderSchemaSummary
    RecommenderSchemaSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderSchemaSummary, name: "member"))
    RecommenderStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    RecommenderStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    RecommenderStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RecommenderStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RecommenderStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    RecommenderStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    RecommenderStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    RecommenderStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    RecommenderSummary.add_member(:recommender_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderName"))
    RecommenderSummary.add_member(:recipe_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderRecipeName, name: "RecipeName"))
    RecommenderSummary.add_member(:recommender_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderSchemaName"))
    RecommenderSummary.add_member(:recommender_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderConfig, name: "RecommenderConfig"))
    RecommenderSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    RecommenderSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    RecommenderSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderStatus, name: "Status"))
    RecommenderSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    RecommenderSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    RecommenderSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FailureReason"))
    RecommenderSummary.add_member(:latest_recommender_update, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderUpdate, name: "LatestRecommenderUpdate"))
    RecommenderSummary.type = Types::RecommenderSummary
    RecommenderSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderSummary, name: "member"))
    RecommenderUpdate.add_member(:recommender_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderConfig, name: "RecommenderConfig"))
    RecommenderUpdate.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderStatus, name: "Status"))
    RecommenderUpdate.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    RecommenderUpdate.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    RecommenderUpdate.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FailureReason"))
    RecommenderUpdate.add_member(:recommender_version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderVersionName, name: "RecommenderVersionName"))
    RecommenderUpdate.type = Types::RecommenderUpdate
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResultsSummary.add_member(:updated_records, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalLong, name: "UpdatedRecords", traits: {"smithy.api#jsonName" => "UpdatedRecords"}))
    ResultsSummary.add_member(:created_records, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalLong, name: "CreatedRecords", traits: {"smithy.api#jsonName" => "CreatedRecords"}))
    ResultsSummary.add_member(:failed_records, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalLong, name: "FailedRecords", traits: {"smithy.api#jsonName" => "FailedRecords"}))
    ResultsSummary.type = Types::ResultsSummary
    RuleBasedMatchingRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    RuleBasedMatchingRequest.add_member(:matching_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchingRules, name: "MatchingRules"))
    RuleBasedMatchingRequest.add_member(:max_allowed_rule_level_for_merging, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxAllowedRuleLevelForMerging, name: "MaxAllowedRuleLevelForMerging"))
    RuleBasedMatchingRequest.add_member(:max_allowed_rule_level_for_matching, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxAllowedRuleLevelForMatching, name: "MaxAllowedRuleLevelForMatching"))
    RuleBasedMatchingRequest.add_member(:attribute_types_selector, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeTypesSelector, name: "AttributeTypesSelector"))
    RuleBasedMatchingRequest.add_member(:conflict_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolution, name: "ConflictResolution"))
    RuleBasedMatchingRequest.add_member(:exporting_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportingConfig, name: "ExportingConfig"))
    RuleBasedMatchingRequest.type = Types::RuleBasedMatchingRequest
    RuleBasedMatchingResponse.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "Enabled"))
    RuleBasedMatchingResponse.add_member(:matching_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchingRules, name: "MatchingRules"))
    RuleBasedMatchingResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleBasedMatchingStatus, name: "Status"))
    RuleBasedMatchingResponse.add_member(:max_allowed_rule_level_for_merging, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxAllowedRuleLevelForMerging, name: "MaxAllowedRuleLevelForMerging"))
    RuleBasedMatchingResponse.add_member(:max_allowed_rule_level_for_matching, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxAllowedRuleLevelForMatching, name: "MaxAllowedRuleLevelForMatching"))
    RuleBasedMatchingResponse.add_member(:attribute_types_selector, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeTypesSelector, name: "AttributeTypesSelector"))
    RuleBasedMatchingResponse.add_member(:conflict_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolution, name: "ConflictResolution"))
    RuleBasedMatchingResponse.add_member(:exporting_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportingConfig, name: "ExportingConfig"))
    RuleBasedMatchingResponse.type = Types::RuleBasedMatchingResponse
    RuleBasedMatchingStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    RuleBasedMatchingStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    RuleBasedMatchingStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    S3ConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    S3ConnectorOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    S3ConnectorOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    S3ConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    S3ConnectorOperator.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL_TO"}))
    S3ConnectorOperator.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL_TO"}))
    S3ConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    S3ConnectorOperator.add_member(:not_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUAL_TO", traits: {"smithy.api#enumValue" => "NOT_EQUAL_TO"}))
    S3ConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    S3ConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    S3ConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    S3ConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    S3ConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    S3ConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    S3ConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    S3ConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    S3ConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    S3ConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    S3ConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    S3ConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    S3ExportingConfig.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "S3BucketName", traits: {"smithy.api#required" => {}}))
    S3ExportingConfig.add_member(:s3_key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyNameCustomerOutputConfig, name: "S3KeyName"))
    S3ExportingConfig.type = Types::S3ExportingConfig
    S3ExportingLocation.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "S3BucketName"))
    S3ExportingLocation.add_member(:s3_key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyName, name: "S3KeyName"))
    S3ExportingLocation.type = Types::S3ExportingLocation
    S3SourceProperties.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "BucketName", traits: {"smithy.api#required" => {}}))
    S3SourceProperties.add_member(:bucket_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketPrefix, name: "BucketPrefix"))
    S3SourceProperties.type = Types::S3SourceProperties
    SalesforceConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    SalesforceConnectorOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    SalesforceConnectorOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    SalesforceConnectorOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    SalesforceConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    SalesforceConnectorOperator.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL_TO"}))
    SalesforceConnectorOperator.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL_TO"}))
    SalesforceConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    SalesforceConnectorOperator.add_member(:not_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUAL_TO", traits: {"smithy.api#enumValue" => "NOT_EQUAL_TO"}))
    SalesforceConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    SalesforceConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    SalesforceConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    SalesforceConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    SalesforceConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    SalesforceConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    SalesforceConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    SalesforceConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    SalesforceConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    SalesforceConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    SalesforceConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    SalesforceConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    SalesforceSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, name: "Object", traits: {"smithy.api#required" => {}}))
    SalesforceSourceProperties.add_member(:enable_dynamic_field_update, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableDynamicFieldUpdate", traits: {"smithy.api#default" => false}))
    SalesforceSourceProperties.add_member(:include_deleted_records, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeDeletedRecords", traits: {"smithy.api#default" => false}))
    SalesforceSourceProperties.type = Types::SalesforceSourceProperties
    ScheduleConfiguration.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntervalValue, name: "Interval", traits: {"smithy.api#jsonName" => "Interval", "smithy.api#required" => {}}))
    ScheduleConfiguration.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleConfigurationUnit, name: "Unit", traits: {"smithy.api#jsonName" => "Unit"}))
    ScheduleConfiguration.type = Types::ScheduleConfiguration
    ScheduleConfigurationUnit.add_member(:hourly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURLY", traits: {"smithy.api#enumValue" => "HOURLY"}))
    ScheduledExecutions.add_member(:next_executed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "NextExecutedAt", traits: {"smithy.api#jsonName" => "NextExecutedAt"}))
    ScheduledExecutions.add_member(:last_executed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastExecutedAt", traits: {"smithy.api#jsonName" => "LastExecutedAt"}))
    ScheduledExecutions.type = Types::ScheduledExecutions
    ScheduledTriggerProperties.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpression, name: "ScheduleExpression", traits: {"smithy.api#required" => {}}))
    ScheduledTriggerProperties.add_member(:data_pull_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPullMode, name: "DataPullMode"))
    ScheduledTriggerProperties.add_member(:schedule_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ScheduleStartTime"))
    ScheduledTriggerProperties.add_member(:schedule_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ScheduleEndTime"))
    ScheduledTriggerProperties.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: Timezone, name: "Timezone"))
    ScheduledTriggerProperties.add_member(:schedule_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleOffset, name: "ScheduleOffset", traits: {"smithy.api#default" => nil}))
    ScheduledTriggerProperties.add_member(:first_execution_from, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "FirstExecutionFrom"))
    ScheduledTriggerProperties.type = Types::ScheduledTriggerProperties
    Scope.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFILE", traits: {"smithy.api#enumValue" => "PROFILE"}))
    Scope.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN", traits: {"smithy.api#enumValue" => "DOMAIN"}))
    SearchProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    SearchProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    SearchProfilesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchProfilesRequest.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "KeyName", traits: {"smithy.api#required" => {}}))
    SearchProfilesRequest.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    SearchProfilesRequest.add_member(:additional_search_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalSearchKeysList, name: "AdditionalSearchKeys"))
    SearchProfilesRequest.add_member(:logical_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalOperator, name: "LogicalOperator"))
    SearchProfilesRequest.type = Types::SearchProfilesRequest
    SearchProfilesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileList, name: "Items"))
    SearchProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    SearchProfilesResponse.type = Types::SearchProfilesResponse
    SearchRecommendationsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchRecommendationsRequest.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "KeyName", traits: {"smithy.api#required" => {}}))
    SearchRecommendationsRequest.add_member(:key_values, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValuesList, name: "KeyValues", traits: {"smithy.api#required" => {}}))
    SearchRecommendationsRequest.add_member(:recommender, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommender, name: "Recommender", traits: {"smithy.api#required" => {}}))
    SearchRecommendationsRequest.add_member(:candidate_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CandidateIdList, name: "CandidateIds"))
    SearchRecommendationsRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderContext, name: "Context"))
    SearchRecommendationsRequest.add_member(:diversity, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationDiversityConfig, name: "Diversity"))
    SearchRecommendationsRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationMetadata, name: "Metadata"))
    SearchRecommendationsRequest.add_member(:max_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize500, name: "MaxRecommendations"))
    SearchRecommendationsRequest.type = Types::SearchRecommendationsRequest
    SearchRecommendationsResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId"))
    SearchRecommendationsResponse.add_member(:recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendations, name: "Recommendations"))
    SearchRecommendationsResponse.type = Types::SearchRecommendationsResponse
    SegmentDefinitionItem.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#jsonName" => "SegmentDefinitionName"}))
    SegmentDefinitionItem.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "DisplayName", traits: {"smithy.api#jsonName" => "DisplayName"}))
    SegmentDefinitionItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To4000, name: "Description", traits: {"smithy.api#jsonName" => "Description"}))
    SegmentDefinitionItem.add_member(:segment_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentDefinitionArn, name: "SegmentDefinitionArn", traits: {"smithy.api#jsonName" => "SegmentDefinitionArn"}))
    SegmentDefinitionItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "CreatedAt"}))
    SegmentDefinitionItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "Tags"}))
    SegmentDefinitionItem.add_member(:segment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentType, name: "SegmentType", traits: {"smithy.api#jsonName" => "SegmentType"}))
    SegmentDefinitionItem.type = Types::SegmentDefinitionItem
    SegmentDefinitionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentDefinitionItem, name: "member"))
    SegmentGroup.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentGroupList, name: "Groups", traits: {"smithy.api#jsonName" => "Groups"}))
    SegmentGroup.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeOptions, name: "Include", traits: {"smithy.api#default" => "ALL", "smithy.api#jsonName" => "Include"}))
    SegmentGroup.type = Types::SegmentGroup
    SegmentGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Group, name: "member"))
    SegmentGroupStructure.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentGroupList, name: "Groups"))
    SegmentGroupStructure.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeOptions, name: "Include"))
    SegmentGroupStructure.type = Types::SegmentGroupStructure
    SegmentSnapshotStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    SegmentSnapshotStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    SegmentSnapshotStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SegmentSort.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SortAttributeList, name: "Attributes", traits: {"smithy.api#jsonName" => "Attributes", "smithy.api#required" => {}}))
    SegmentSort.type = Types::SegmentSort
    SegmentSortDataType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    SegmentSortDataType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER", traits: {"smithy.api#enumValue" => "NUMBER"}))
    SegmentSortDataType.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATE", traits: {"smithy.api#enumValue" => "DATE"}))
    SegmentSortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    SegmentSortOrder.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    SegmentSubscriptionStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    SegmentSubscriptionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    SegmentSubscriptionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    SegmentSubscriptionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SegmentType.add_member(:classic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLASSIC", traits: {"smithy.api#enumValue" => "CLASSIC"}))
    SegmentType.add_member(:enhanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENHANCED", traits: {"smithy.api#enumValue" => "ENHANCED"}))
    ServiceNowConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    ServiceNowConnectorOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    ServiceNowConnectorOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    ServiceNowConnectorOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    ServiceNowConnectorOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    ServiceNowConnectorOperator.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL_TO"}))
    ServiceNowConnectorOperator.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUAL_TO", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL_TO"}))
    ServiceNowConnectorOperator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL_TO", traits: {"smithy.api#enumValue" => "EQUAL_TO"}))
    ServiceNowConnectorOperator.add_member(:not_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUAL_TO", traits: {"smithy.api#enumValue" => "NOT_EQUAL_TO"}))
    ServiceNowConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    ServiceNowConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    ServiceNowConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    ServiceNowConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    ServiceNowConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    ServiceNowConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    ServiceNowConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    ServiceNowConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    ServiceNowConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    ServiceNowConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    ServiceNowConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    ServiceNowConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    ServiceNowSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, name: "Object", traits: {"smithy.api#required" => {}}))
    ServiceNowSourceProperties.type = Types::ServiceNowSourceProperties
    SortAttribute.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, name: "Name", traits: {"smithy.api#jsonName" => "Name", "smithy.api#required" => {}}))
    SortAttribute.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentSortDataType, name: "DataType", traits: {"smithy.api#jsonName" => "DataType"}))
    SortAttribute.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentSortOrder, name: "Order", traits: {"smithy.api#jsonName" => "Order", "smithy.api#required" => {}}))
    SortAttribute.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SortAttributeType, name: "Type", traits: {"smithy.api#default" => "PROFILE", "smithy.api#jsonName" => "Type"}))
    SortAttribute.type = Types::SortAttribute
    SortAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SortAttribute, name: "member"))
    SortAttributeType.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFILE", traits: {"smithy.api#enumValue" => "PROFILE"}))
    SortAttributeType.add_member(:calculated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CALCULATED", traits: {"smithy.api#enumValue" => "CALCULATED"}))
    SourceConnectorProperties.add_member(:marketo, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketoSourceProperties, name: "Marketo"))
    SourceConnectorProperties.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SourceProperties, name: "S3"))
    SourceConnectorProperties.add_member(:salesforce, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceSourceProperties, name: "Salesforce"))
    SourceConnectorProperties.add_member(:service_now, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowSourceProperties, name: "ServiceNow"))
    SourceConnectorProperties.add_member(:zendesk, ::Smithy::Schema::Shapes::MemberShape.new(target: ZendeskSourceProperties, name: "Zendesk"))
    SourceConnectorProperties.type = Types::SourceConnectorProperties
    SourceConnectorType.add_member(:salesforce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SALESFORCE", traits: {"smithy.api#enumValue" => "Salesforce"}))
    SourceConnectorType.add_member(:marketo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MARKETO", traits: {"smithy.api#enumValue" => "Marketo"}))
    SourceConnectorType.add_member(:zendesk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZENDESK", traits: {"smithy.api#enumValue" => "Zendesk"}))
    SourceConnectorType.add_member(:servicenow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICENOW", traits: {"smithy.api#enumValue" => "Servicenow"}))
    SourceConnectorType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    SourceFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringTo2048, name: "member"))
    SourceFlowConfig.add_member(:connector_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorProfileName, name: "ConnectorProfileName"))
    SourceFlowConfig.add_member(:connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConnectorType, name: "ConnectorType", traits: {"smithy.api#required" => {}}))
    SourceFlowConfig.add_member(:incremental_pull_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IncrementalPullConfig, name: "IncrementalPullConfig"))
    SourceFlowConfig.add_member(:source_connector_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConnectorProperties, name: "SourceConnectorProperties", traits: {"smithy.api#required" => {}}))
    SourceFlowConfig.type = Types::SourceFlowConfig
    SourceSegment.add_member(:segment_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentDefinitionName", traits: {"smithy.api#jsonName" => "SegmentDefinitionName"}))
    SourceSegment.type = Types::SourceSegment
    SourceSegmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSegment, name: "member"))
    StandardIdentifier.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFILE", traits: {"smithy.api#enumValue" => "PROFILE"}))
    StandardIdentifier.add_member(:asset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSET", traits: {"smithy.api#enumValue" => "ASSET"}))
    StandardIdentifier.add_member(:case, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CASE", traits: {"smithy.api#enumValue" => "CASE"}))
    StandardIdentifier.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVICE", traits: {"smithy.api#enumValue" => "DEVICE"}))
    StandardIdentifier.add_member(:web_analytics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEB_ANALYTICS", traits: {"smithy.api#enumValue" => "WEB_ANALYTICS"}))
    StandardIdentifier.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORDER", traits: {"smithy.api#enumValue" => "ORDER"}))
    StandardIdentifier.add_member(:communication_record, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMUNICATION_RECORD", traits: {"smithy.api#enumValue" => "COMMUNICATION_RECORD"}))
    StandardIdentifier.add_member(:air_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AIR_PREFERENCE", traits: {"smithy.api#enumValue" => "AIR_PREFERENCE"}))
    StandardIdentifier.add_member(:hotel_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOTEL_PREFERENCE", traits: {"smithy.api#enumValue" => "HOTEL_PREFERENCE"}))
    StandardIdentifier.add_member(:air_booking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AIR_BOOKING", traits: {"smithy.api#enumValue" => "AIR_BOOKING"}))
    StandardIdentifier.add_member(:air_segment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AIR_SEGMENT", traits: {"smithy.api#enumValue" => "AIR_SEGMENT"}))
    StandardIdentifier.add_member(:hotel_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOTEL_RESERVATION", traits: {"smithy.api#enumValue" => "HOTEL_RESERVATION"}))
    StandardIdentifier.add_member(:hotel_stay_revenue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOTEL_STAY_REVENUE", traits: {"smithy.api#enumValue" => "HOTEL_STAY_REVENUE"}))
    StandardIdentifier.add_member(:loyalty, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOYALTY", traits: {"smithy.api#enumValue" => "LOYALTY"}))
    StandardIdentifier.add_member(:loyalty_transaction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOYALTY_TRANSACTION", traits: {"smithy.api#enumValue" => "LOYALTY_TRANSACTION"}))
    StandardIdentifier.add_member(:loyalty_promotion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOYALTY_PROMOTION", traits: {"smithy.api#enumValue" => "LOYALTY_PROMOTION"}))
    StandardIdentifier.add_member(:unique, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNIQUE", traits: {"smithy.api#enumValue" => "UNIQUE"}))
    StandardIdentifier.add_member(:secondary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECONDARY", traits: {"smithy.api#enumValue" => "SECONDARY"}))
    StandardIdentifier.add_member(:lookup_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOOKUP_ONLY", traits: {"smithy.api#enumValue" => "LOOKUP_ONLY"}))
    StandardIdentifier.add_member(:new_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_ONLY", traits: {"smithy.api#enumValue" => "NEW_ONLY"}))
    StandardIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardIdentifier, name: "member"))
    StartRecommenderRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartRecommenderRequest.add_member(:recommender_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartRecommenderRequest.type = Types::StartRecommenderRequest
    StartRecommenderResponse.type = Types::StartRecommenderResponse
    StartUploadJobRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartUploadJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartUploadJobRequest.type = Types::StartUploadJobRequest
    StartUploadJobResponse.type = Types::StartUploadJobResponse
    Statistic.add_member(:first_occurrence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIRST_OCCURRENCE", traits: {"smithy.api#enumValue" => "FIRST_OCCURRENCE"}))
    Statistic.add_member(:last_occurrence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_OCCURRENCE", traits: {"smithy.api#enumValue" => "LAST_OCCURRENCE"}))
    Statistic.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    Statistic.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUM", traits: {"smithy.api#enumValue" => "SUM"}))
    Statistic.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINIMUM", traits: {"smithy.api#enumValue" => "MINIMUM"}))
    Statistic.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAXIMUM", traits: {"smithy.api#enumValue" => "MAXIMUM"}))
    Statistic.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVERAGE", traits: {"smithy.api#enumValue" => "AVERAGE"}))
    Statistic.add_member(:max_occurrence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_OCCURRENCE", traits: {"smithy.api#enumValue" => "MAX_OCCURRENCE"}))
    Statistic.add_member(:recent_occurrences, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECENT_OCCURRENCES", traits: {"smithy.api#enumValue" => "RECENT_OCCURRENCES"}))
    Status.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    Status.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    Status.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    Status.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Status.add_member(:split, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPLIT", traits: {"smithy.api#enumValue" => "SPLIT"}))
    Status.add_member(:retry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETRY", traits: {"smithy.api#enumValue" => "RETRY"}))
    Status.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    StatusReason.add_member(:validation_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_FAILURE", traits: {"smithy.api#enumValue" => "VALIDATION_FAILURE"}))
    StatusReason.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    StopRecommenderRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopRecommenderRequest.add_member(:recommender_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopRecommenderRequest.type = Types::StopRecommenderRequest
    StopRecommenderResponse.type = Types::StopRecommenderResponse
    StopUploadJobRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopUploadJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopUploadJobRequest.type = Types::StopUploadJobRequest
    StopUploadJobResponse.type = Types::StopUploadJobResponse
    StringDimensionType.add_member(:inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUSIVE", traits: {"smithy.api#enumValue" => "INCLUSIVE"}))
    StringDimensionType.add_member(:exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUSIVE", traits: {"smithy.api#enumValue" => "EXCLUSIVE"}))
    StringDimensionType.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    StringDimensionType.add_member(:begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEGINS_WITH", traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    StringDimensionType.add_member(:ends_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDS_WITH", traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    SubscriptionEvent.add_member(:joined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JOINED", traits: {"smithy.api#enumValue" => "JOINED"}))
    SubscriptionEvent.add_member(:left, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEFT", traits: {"smithy.api#enumValue" => "LEFT"}))
    SubscriptionEventItem.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#jsonName" => "ProfileId"}))
    SubscriptionEventItem.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "UpdatedAt"}))
    SubscriptionEventItem.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionEventType, name: "EventType", traits: {"smithy.api#jsonName" => "EventType"}))
    SubscriptionEventItem.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionEvent, name: "Event", traits: {"smithy.api#jsonName" => "Event"}))
    SubscriptionEventItem.type = Types::SubscriptionEventItem
    SubscriptionEventType.add_member(:live, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIVE", traits: {"smithy.api#enumValue" => "LIVE"}))
    SubscriptionEventType.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULE", traits: {"smithy.api#enumValue" => "SCHEDULE"}))
    SubscriptionEventsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionEventItem, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Task.add_member(:connector_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorOperator, name: "ConnectorOperator"))
    Task.add_member(:destination_field, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationField, name: "DestinationField"))
    Task.add_member(:source_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFields, name: "SourceFields", traits: {"smithy.api#required" => {}}))
    Task.add_member(:task_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskPropertiesMap, name: "TaskProperties"))
    Task.add_member(:task_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskType, name: "TaskType", traits: {"smithy.api#required" => {}}))
    Task.type = Types::Task
    TaskPropertiesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatorPropertiesKeys, name: "key"))
    TaskPropertiesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Property, name: "value"))
    TaskType.add_member(:arithmetic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARITHMETIC", traits: {"smithy.api#enumValue" => "Arithmetic"}))
    TaskType.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILTER", traits: {"smithy.api#enumValue" => "Filter"}))
    TaskType.add_member(:map, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAP", traits: {"smithy.api#enumValue" => "Map"}))
    TaskType.add_member(:mask, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK", traits: {"smithy.api#enumValue" => "Mask"}))
    TaskType.add_member(:merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MERGE", traits: {"smithy.api#enumValue" => "Merge"}))
    TaskType.add_member(:truncate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUNCATE", traits: {"smithy.api#enumValue" => "Truncate"}))
    TaskType.add_member(:validate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE", traits: {"smithy.api#enumValue" => "Validate"}))
    Tasks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Task, name: "member"))
    Threshold.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Value", traits: {"smithy.api#required" => {}}))
    Threshold.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, name: "Operator", traits: {"smithy.api#required" => {}}))
    Threshold.type = Types::Threshold
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TrainingMetricName.add_member(:hit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIT", traits: {"smithy.api#enumValue" => "hit"}))
    TrainingMetricName.add_member(:coverage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COVERAGE", traits: {"smithy.api#enumValue" => "coverage"}))
    TrainingMetricName.add_member(:recall, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECALL", traits: {"smithy.api#enumValue" => "recall"}))
    TrainingMetricName.add_member(:popularity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POPULARITY", traits: {"smithy.api#enumValue" => "popularity"}))
    TrainingMetricName.add_member(:freshness, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FRESHNESS", traits: {"smithy.api#enumValue" => "freshness"}))
    TrainingMetricName.add_member(:similarity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIMILARITY", traits: {"smithy.api#enumValue" => "similarity"}))
    TrainingMetricName.add_member(:mean_reciprocal_rank_at_25, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEAN_RECIPROCAL_RANK_AT_25", traits: {"smithy.api#enumValue" => "mean_reciprocal_rank_at_25"}))
    TrainingMetricName.add_member(:normalized_discounted_cumulative_gain_at_5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NORMALIZED_DISCOUNTED_CUMULATIVE_GAIN_AT_5", traits: {"smithy.api#enumValue" => "normalized_discounted_cumulative_gain_at_5"}))
    TrainingMetricName.add_member(:normalized_discounted_cumulative_gain_at_10, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NORMALIZED_DISCOUNTED_CUMULATIVE_GAIN_AT_10", traits: {"smithy.api#enumValue" => "normalized_discounted_cumulative_gain_at_10"}))
    TrainingMetricName.add_member(:normalized_discounted_cumulative_gain_at_25, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NORMALIZED_DISCOUNTED_CUMULATIVE_GAIN_AT_25", traits: {"smithy.api#enumValue" => "normalized_discounted_cumulative_gain_at_25"}))
    TrainingMetricName.add_member(:precision_at_5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRECISION_AT_5", traits: {"smithy.api#enumValue" => "precision_at_5"}))
    TrainingMetricName.add_member(:precision_at_10, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRECISION_AT_10", traits: {"smithy.api#enumValue" => "precision_at_10"}))
    TrainingMetricName.add_member(:precision_at_25, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRECISION_AT_25", traits: {"smithy.api#enumValue" => "precision_at_25"}))
    TrainingMetrics.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Time"))
    TrainingMetrics.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: Metrics, name: "Metrics"))
    TrainingMetrics.add_member(:recommender_version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderVersionName, name: "RecommenderVersionName"))
    TrainingMetrics.type = Types::TrainingMetrics
    TrainingMetricsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TrainingMetrics, name: "member"))
    TriggerConfig.add_member(:trigger_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerType, name: "TriggerType", traits: {"smithy.api#required" => {}}))
    TriggerConfig.add_member(:trigger_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerProperties, name: "TriggerProperties"))
    TriggerConfig.type = Types::TriggerConfig
    TriggerProperties.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledTriggerProperties, name: "Scheduled"))
    TriggerProperties.type = Types::TriggerProperties
    TriggerType.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "Scheduled"}))
    TriggerType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENT", traits: {"smithy.api#enumValue" => "Event"}))
    TriggerType.add_member(:ondemand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONDEMAND", traits: {"smithy.api#enumValue" => "OnDemand"}))
    Type.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    Type.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    Type.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Unit.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAddress.add_member(:address1, ::Smithy::Schema::Shapes::MemberShape.new(target: String0To255, name: "Address1"))
    UpdateAddress.add_member(:address2, ::Smithy::Schema::Shapes::MemberShape.new(target: String0To255, name: "Address2"))
    UpdateAddress.add_member(:address3, ::Smithy::Schema::Shapes::MemberShape.new(target: String0To255, name: "Address3"))
    UpdateAddress.add_member(:address4, ::Smithy::Schema::Shapes::MemberShape.new(target: String0To255, name: "Address4"))
    UpdateAddress.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: String0To255, name: "City"))
    UpdateAddress.add_member(:county, ::Smithy::Schema::Shapes::MemberShape.new(target: String0To255, name: "County"))
    UpdateAddress.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String0To255, name: "State"))
    UpdateAddress.add_member(:province, ::Smithy::Schema::Shapes::MemberShape.new(target: String0To255, name: "Province"))
    UpdateAddress.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: String0To255, name: "Country"))
    UpdateAddress.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String0To255, name: "PostalCode"))
    UpdateAddress.type = Types::UpdateAddress
    UpdateAttributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "key"))
    UpdateAttributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String0To255, name: "value"))
    UpdateCalculatedAttributeDefinitionRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCalculatedAttributeDefinitionRequest.add_member(:calculated_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "CalculatedAttributeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCalculatedAttributeDefinitionRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    UpdateCalculatedAttributeDefinitionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    UpdateCalculatedAttributeDefinitionRequest.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Conditions, name: "Conditions"))
    UpdateCalculatedAttributeDefinitionRequest.type = Types::UpdateCalculatedAttributeDefinitionRequest
    UpdateCalculatedAttributeDefinitionResponse.add_member(:calculated_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "CalculatedAttributeName"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistic, name: "Statistic"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Conditions, name: "Conditions"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:attribute_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeDetails, name: "AttributeDetails"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:use_historical_data, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBoolean, name: "UseHistoricalData"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadinessStatus, name: "Status"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:readiness, ::Smithy::Schema::Shapes::MemberShape.new(target: Readiness, name: "Readiness"))
    UpdateCalculatedAttributeDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    UpdateCalculatedAttributeDefinitionResponse.type = Types::UpdateCalculatedAttributeDefinitionResponse
    UpdateDomainLayoutRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainLayoutRequest.add_member(:layout_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "LayoutDefinitionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainLayoutRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    UpdateDomainLayoutRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    UpdateDomainLayoutRequest.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDefault", traits: {"smithy.api#default" => false}))
    UpdateDomainLayoutRequest.add_member(:layout_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LayoutType, name: "LayoutType"))
    UpdateDomainLayoutRequest.add_member(:layout, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To2000000, name: "Layout"))
    UpdateDomainLayoutRequest.type = Types::UpdateDomainLayoutRequest
    UpdateDomainLayoutResponse.add_member(:layout_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "LayoutDefinitionName"))
    UpdateDomainLayoutResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    UpdateDomainLayoutResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    UpdateDomainLayoutResponse.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDefault", traits: {"smithy.api#default" => false}))
    UpdateDomainLayoutResponse.add_member(:layout_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LayoutType, name: "LayoutType"))
    UpdateDomainLayoutResponse.add_member(:layout, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString1To2000000, name: "Layout"))
    UpdateDomainLayoutResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "Version"))
    UpdateDomainLayoutResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    UpdateDomainLayoutResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    UpdateDomainLayoutResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    UpdateDomainLayoutResponse.type = Types::UpdateDomainLayoutResponse
    UpdateDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainRequest.add_member(:default_expiration_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDaysInteger, name: "DefaultExpirationDays"))
    UpdateDomainRequest.add_member(:default_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "DefaultEncryptionKey"))
    UpdateDomainRequest.add_member(:dead_letter_queue_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SqsQueueUrl, name: "DeadLetterQueueUrl"))
    UpdateDomainRequest.add_member(:matching, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchingRequest, name: "Matching"))
    UpdateDomainRequest.add_member(:rule_based_matching, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleBasedMatchingRequest, name: "RuleBasedMatching"))
    UpdateDomainRequest.add_member(:data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: DataStoreRequest, name: "DataStore"))
    UpdateDomainRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    UpdateDomainRequest.type = Types::UpdateDomainRequest
    UpdateDomainResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#required" => {}}))
    UpdateDomainResponse.add_member(:default_expiration_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDaysInteger, name: "DefaultExpirationDays"))
    UpdateDomainResponse.add_member(:default_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "DefaultEncryptionKey"))
    UpdateDomainResponse.add_member(:dead_letter_queue_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SqsQueueUrl, name: "DeadLetterQueueUrl"))
    UpdateDomainResponse.add_member(:matching, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchingResponse, name: "Matching"))
    UpdateDomainResponse.add_member(:rule_based_matching, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleBasedMatchingResponse, name: "RuleBasedMatching"))
    UpdateDomainResponse.add_member(:data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: DataStoreResponse, name: "DataStore"))
    UpdateDomainResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    UpdateDomainResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}}))
    UpdateDomainResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    UpdateDomainResponse.type = Types::UpdateDomainResponse
    UpdateEventTriggerRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEventTriggerRequest.add_member(:event_trigger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EventTriggerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEventTriggerRequest.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName"))
    UpdateEventTriggerRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    UpdateEventTriggerRequest.add_member(:event_trigger_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerConditions, name: "EventTriggerConditions"))
    UpdateEventTriggerRequest.add_member(:segment_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentFilter"))
    UpdateEventTriggerRequest.add_member(:event_trigger_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerLimits, name: "EventTriggerLimits"))
    UpdateEventTriggerRequest.type = Types::UpdateEventTriggerRequest
    UpdateEventTriggerResponse.add_member(:event_trigger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EventTriggerName"))
    UpdateEventTriggerResponse.add_member(:object_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "ObjectTypeName"))
    UpdateEventTriggerResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    UpdateEventTriggerResponse.add_member(:event_trigger_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerConditions, name: "EventTriggerConditions"))
    UpdateEventTriggerResponse.add_member(:segment_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SegmentFilter"))
    UpdateEventTriggerResponse.add_member(:event_trigger_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTriggerLimits, name: "EventTriggerLimits"))
    UpdateEventTriggerResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    UpdateEventTriggerResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    UpdateEventTriggerResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    UpdateEventTriggerResponse.type = Types::UpdateEventTriggerResponse
    UpdateProfileRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    UpdateProfileRequest.add_member(:additional_information, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To1000, name: "AdditionalInformation"))
    UpdateProfileRequest.add_member(:account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "AccountNumber"))
    UpdateProfileRequest.add_member(:party_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PartyType, name: "PartyType"))
    UpdateProfileRequest.add_member(:business_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "BusinessName"))
    UpdateProfileRequest.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "FirstName"))
    UpdateProfileRequest.add_member(:middle_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "MiddleName"))
    UpdateProfileRequest.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "LastName"))
    UpdateProfileRequest.add_member(:birth_date, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "BirthDate"))
    UpdateProfileRequest.add_member(:gender, ::Smithy::Schema::Shapes::MemberShape.new(target: Gender, name: "Gender"))
    UpdateProfileRequest.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "PhoneNumber"))
    UpdateProfileRequest.add_member(:mobile_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "MobilePhoneNumber"))
    UpdateProfileRequest.add_member(:home_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "HomePhoneNumber"))
    UpdateProfileRequest.add_member(:business_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "BusinessPhoneNumber"))
    UpdateProfileRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "EmailAddress"))
    UpdateProfileRequest.add_member(:personal_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "PersonalEmailAddress"))
    UpdateProfileRequest.add_member(:business_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "BusinessEmailAddress"))
    UpdateProfileRequest.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateAddress, name: "Address"))
    UpdateProfileRequest.add_member(:shipping_address, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateAddress, name: "ShippingAddress"))
    UpdateProfileRequest.add_member(:mailing_address, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateAddress, name: "MailingAddress"))
    UpdateProfileRequest.add_member(:billing_address, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateAddress, name: "BillingAddress"))
    UpdateProfileRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateAttributes, name: "Attributes"))
    UpdateProfileRequest.add_member(:party_type_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "PartyTypeString"))
    UpdateProfileRequest.add_member(:gender_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString0To255, name: "GenderString"))
    UpdateProfileRequest.add_member(:profile_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileType, name: "ProfileType"))
    UpdateProfileRequest.add_member(:engagement_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementPreferences, name: "EngagementPreferences"))
    UpdateProfileRequest.type = Types::UpdateProfileRequest
    UpdateProfileResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    UpdateProfileResponse.type = Types::UpdateProfileResponse
    UpdateRecommenderRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DomainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecommenderRequest.add_member(:recommender_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecommenderRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "Description"))
    UpdateRecommenderRequest.add_member(:recommender_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderConfig, name: "RecommenderConfig"))
    UpdateRecommenderRequest.add_member(:recommender_version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommenderVersionName, name: "RecommenderVersionName"))
    UpdateRecommenderRequest.type = Types::UpdateRecommenderRequest
    UpdateRecommenderResponse.add_member(:recommender_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "RecommenderName", traits: {"smithy.api#required" => {}}))
    UpdateRecommenderResponse.type = Types::UpdateRecommenderResponse
    UploadJobItem.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "JobId", traits: {"smithy.api#jsonName" => "JobId"}))
    UploadJobItem.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "DisplayName", traits: {"smithy.api#jsonName" => "DisplayName"}))
    UploadJobItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadJobStatus, name: "Status", traits: {"smithy.api#jsonName" => "Status"}))
    UploadJobItem.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "StatusReason", traits: {"smithy.api#jsonName" => "StatusReason"}))
    UploadJobItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "CreatedAt"}))
    UploadJobItem.add_member(:completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompletedAt", traits: {"smithy.api#jsonName" => "CompletedAt"}))
    UploadJobItem.add_member(:data_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDaysInteger, name: "DataExpiry", traits: {"smithy.api#jsonName" => "DataExpiry"}))
    UploadJobItem.type = Types::UploadJobItem
    UploadJobStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    UploadJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    UploadJobStatus.add_member(:partially_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIALLY_SUCCEEDED", traits: {"smithy.api#enumValue" => "PARTIALLY_SUCCEEDED"}))
    UploadJobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    UploadJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    UploadJobStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    UploadJobsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadJobItem, name: "member"))
    ValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "member"))
    ValueRange.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueRangeStart, name: "Start", traits: {"smithy.api#required" => {}}))
    ValueRange.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueRangeEnd, name: "End", traits: {"smithy.api#required" => {}}))
    ValueRange.type = Types::ValueRange
    Values.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "member"))
    WorkflowAttributes.add_member(:appflow_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: AppflowIntegrationWorkflowAttributes, name: "AppflowIntegration"))
    WorkflowAttributes.type = Types::WorkflowAttributes
    WorkflowList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListWorkflowsItem, name: "member"))
    WorkflowMetrics.add_member(:appflow_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: AppflowIntegrationWorkflowMetrics, name: "AppflowIntegration"))
    WorkflowMetrics.type = Types::WorkflowMetrics
    WorkflowStepItem.add_member(:appflow_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: AppflowIntegrationWorkflowStep, name: "AppflowIntegration"))
    WorkflowStepItem.type = Types::WorkflowStepItem
    WorkflowStepsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepItem, name: "member"))
    WorkflowType.add_member(:appflow_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPFLOW_INTEGRATION", traits: {"smithy.api#enumValue" => "APPFLOW_INTEGRATION"}))
    ZendeskConnectorOperator.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROJECTION", traits: {"smithy.api#enumValue" => "PROJECTION"}))
    ZendeskConnectorOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    ZendeskConnectorOperator.add_member(:addition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDITION", traits: {"smithy.api#enumValue" => "ADDITION"}))
    ZendeskConnectorOperator.add_member(:multiplication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTIPLICATION", traits: {"smithy.api#enumValue" => "MULTIPLICATION"}))
    ZendeskConnectorOperator.add_member(:division, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIVISION", traits: {"smithy.api#enumValue" => "DIVISION"}))
    ZendeskConnectorOperator.add_member(:subtraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBTRACTION", traits: {"smithy.api#enumValue" => "SUBTRACTION"}))
    ZendeskConnectorOperator.add_member(:mask_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_ALL", traits: {"smithy.api#enumValue" => "MASK_ALL"}))
    ZendeskConnectorOperator.add_member(:mask_first_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_FIRST_N", traits: {"smithy.api#enumValue" => "MASK_FIRST_N"}))
    ZendeskConnectorOperator.add_member(:mask_last_n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK_LAST_N", traits: {"smithy.api#enumValue" => "MASK_LAST_N"}))
    ZendeskConnectorOperator.add_member(:validate_non_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_NULL", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NULL"}))
    ZendeskConnectorOperator.add_member(:validate_non_zero, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_ZERO", traits: {"smithy.api#enumValue" => "VALIDATE_NON_ZERO"}))
    ZendeskConnectorOperator.add_member(:validate_non_negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NON_NEGATIVE", traits: {"smithy.api#enumValue" => "VALIDATE_NON_NEGATIVE"}))
    ZendeskConnectorOperator.add_member(:validate_numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATE_NUMERIC", traits: {"smithy.api#enumValue" => "VALIDATE_NUMERIC"}))
    ZendeskConnectorOperator.add_member(:no_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_OP", traits: {"smithy.api#enumValue" => "NO_OP"}))
    ZendeskSourceProperties.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, name: "Object", traits: {"smithy.api#required" => {}}))
    ZendeskSourceProperties.type = Types::ZendeskSourceProperties
    AdditionalSearchKeysList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalSearchKey, name: "member"))
    FoundByList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FoundByKeyValue, name: "member"))
    LogicalOperator.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AND", traits: {"smithy.api#enumValue" => "AND"}))
    LogicalOperator.add_member(:or, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OR", traits: {"smithy.api#enumValue" => "OR"}))
    RequestValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To255, name: "member"))

    CustomerProfiles20200815 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.customerprofiles#CustomerProfiles_20200815"
      service.name = "CustomerProfiles20200815"
      service.version = "2020-08-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Customer Profiles", "arnNamespace" => "profile", "cloudFormationName" => "CustomerProfiles", "cloudTrailEventSource" => "profile.amazonaws.com", "endpointPrefix" => "profile"}, "aws.auth#sigv4" => {"name" => "profile"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Connect Customer Profiles", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://profile-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://profile-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://profile.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://profile.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:add_profile_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#AddProfileKey"
        operation.name = "AddProfileKey"
        operation.input = AddProfileKeyRequest
        operation.output = AddProfileKeyResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/profiles/keys", "code" => 200}}
      end)
      service.add_operation(:associate_stream_for_segments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#AssociateStreamForSegments"
        operation.name = "AssociateStreamForSegments"
        operation.input = AssociateStreamForSegmentsRequest
        operation.output = AssociateStreamForSegmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/segment-streams", "code" => 200}}
      end)
      service.add_operation(:batch_get_calculated_attribute_for_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#BatchGetCalculatedAttributeForProfile"
        operation.name = "BatchGetCalculatedAttributeForProfile"
        operation.input = BatchGetCalculatedAttributeForProfileRequest
        operation.output = BatchGetCalculatedAttributeForProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}/batch-get-for-profiles", "code" => 200}}
      end)
      service.add_operation(:batch_get_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#BatchGetProfile"
        operation.name = "BatchGetProfile"
        operation.input = BatchGetProfileRequest
        operation.output = BatchGetProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/batch-get-profiles", "code" => 200}}
      end)
      service.add_operation(:batch_put_profile_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#BatchPutProfileObject"
        operation.name = "BatchPutProfileObject"
        operation.input = BatchPutProfileObjectRequest
        operation.output = BatchPutProfileObjectResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}/profiles/objects/batch-put-profile-object", "code" => 200}}
      end)
      service.add_operation(:create_calculated_attribute_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#CreateCalculatedAttributeDefinition"
        operation.name = "CreateCalculatedAttributeDefinition"
        operation.input = CreateCalculatedAttributeDefinitionRequest
        operation.output = CreateCalculatedAttributeDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}", "code" => 200}}
      end)
      service.add_operation(:create_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#CreateDomain"
        operation.name = "CreateDomain"
        operation.input = CreateDomainRequest
        operation.output = CreateDomainResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:create_domain_layout, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#CreateDomainLayout"
        operation.name = "CreateDomainLayout"
        operation.input = CreateDomainLayoutRequest
        operation.output = CreateDomainLayoutResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/layouts/{LayoutDefinitionName}", "code" => 200}}
      end)
      service.add_operation(:create_event_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#CreateEventStream"
        operation.name = "CreateEventStream"
        operation.input = CreateEventStreamRequest
        operation.output = CreateEventStreamResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/event-streams/{EventStreamName}", "code" => 200}}
      end)
      service.add_operation(:create_event_trigger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#CreateEventTrigger"
        operation.name = "CreateEventTrigger"
        operation.input = CreateEventTriggerRequest
        operation.output = CreateEventTriggerResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/event-triggers/{EventTriggerName}", "code" => 200}}
      end)
      service.add_operation(:create_integration_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#CreateIntegrationWorkflow"
        operation.name = "CreateIntegrationWorkflow"
        operation.input = CreateIntegrationWorkflowRequest
        operation.output = CreateIntegrationWorkflowResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/workflows/integrations", "code" => 200}}
      end)
      service.add_operation(:create_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#CreateProfile"
        operation.name = "CreateProfile"
        operation.input = CreateProfileRequest
        operation.output = CreateProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/profiles", "code" => 200}}
      end)
      service.add_operation(:create_recommender, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#CreateRecommender"
        operation.name = "CreateRecommender"
        operation.input = CreateRecommenderRequest
        operation.output = CreateRecommenderResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/recommenders/{RecommenderName}", "code" => 200}}
      end)
      service.add_operation(:create_recommender_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#CreateRecommenderFilter"
        operation.name = "CreateRecommenderFilter"
        operation.input = CreateRecommenderFilterRequest
        operation.output = CreateRecommenderFilterResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/recommender-filters/{RecommenderFilterName}", "code" => 200}}
      end)
      service.add_operation(:create_recommender_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#CreateRecommenderSchema"
        operation.name = "CreateRecommenderSchema"
        operation.input = CreateRecommenderSchemaRequest
        operation.output = CreateRecommenderSchemaResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/recommender-schemas/{RecommenderSchemaName}", "code" => 200}}
      end)
      service.add_operation(:create_segment_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#CreateSegmentDefinition"
        operation.name = "CreateSegmentDefinition"
        operation.input = CreateSegmentDefinitionRequest
        operation.output = CreateSegmentDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_segment_estimate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#CreateSegmentEstimate"
        operation.name = "CreateSegmentEstimate"
        operation.input = CreateSegmentEstimateRequest
        operation.output = CreateSegmentEstimateResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/segment-estimates", "code" => 200}}
      end)
      service.add_operation(:create_segment_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#CreateSegmentSnapshot"
        operation.name = "CreateSegmentSnapshot"
        operation.input = CreateSegmentSnapshotRequest
        operation.output = CreateSegmentSnapshotResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/segments/{SegmentDefinitionName}/snapshots", "code" => 200}}
      end)
      service.add_operation(:create_upload_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#CreateUploadJob"
        operation.name = "CreateUploadJob"
        operation.input = CreateUploadJobRequest
        operation.output = CreateUploadJobResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/upload-jobs", "code" => 200}}
      end)
      service.add_operation(:delete_calculated_attribute_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteCalculatedAttributeDefinition"
        operation.name = "DeleteCalculatedAttributeDefinition"
        operation.input = DeleteCalculatedAttributeDefinitionRequest
        operation.output = DeleteCalculatedAttributeDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}", "code" => 200}}
      end)
      service.add_operation(:delete_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = DeleteDomainRequest
        operation.output = DeleteDomainResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domains/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:delete_domain_layout, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteDomainLayout"
        operation.name = "DeleteDomainLayout"
        operation.input = DeleteDomainLayoutRequest
        operation.output = DeleteDomainLayoutResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domains/{DomainName}/layouts/{LayoutDefinitionName}", "code" => 200}}
      end)
      service.add_operation(:delete_domain_object_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteDomainObjectType"
        operation.name = "DeleteDomainObjectType"
        operation.input = DeleteDomainObjectTypeRequest
        operation.output = DeleteDomainObjectTypeResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domains/{DomainName}/domain-object-types/{ObjectTypeName}", "code" => 200}}
      end)
      service.add_operation(:delete_event_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteEventStream"
        operation.name = "DeleteEventStream"
        operation.input = DeleteEventStreamRequest
        operation.output = DeleteEventStreamResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domains/{DomainName}/event-streams/{EventStreamName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_event_trigger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteEventTrigger"
        operation.name = "DeleteEventTrigger"
        operation.input = DeleteEventTriggerRequest
        operation.output = DeleteEventTriggerResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domains/{DomainName}/event-triggers/{EventTriggerName}", "code" => 200}}
      end)
      service.add_operation(:delete_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteIntegration"
        operation.name = "DeleteIntegration"
        operation.input = DeleteIntegrationRequest
        operation.output = DeleteIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/integrations/delete", "code" => 200}}
      end)
      service.add_operation(:delete_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteProfile"
        operation.name = "DeleteProfile"
        operation.input = DeleteProfileRequest
        operation.output = DeleteProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/profiles/delete", "code" => 200}}
      end)
      service.add_operation(:delete_profile_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteProfileKey"
        operation.name = "DeleteProfileKey"
        operation.input = DeleteProfileKeyRequest
        operation.output = DeleteProfileKeyResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/profiles/keys/delete", "code" => 200}}
      end)
      service.add_operation(:delete_profile_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteProfileObject"
        operation.name = "DeleteProfileObject"
        operation.input = DeleteProfileObjectRequest
        operation.output = DeleteProfileObjectResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/profiles/objects/delete", "code" => 200}}
      end)
      service.add_operation(:delete_profile_object_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteProfileObjectType"
        operation.name = "DeleteProfileObjectType"
        operation.input = DeleteProfileObjectTypeRequest
        operation.output = DeleteProfileObjectTypeResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domains/{DomainName}/object-types/{ObjectTypeName}", "code" => 200}}
      end)
      service.add_operation(:delete_recommender, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteRecommender"
        operation.name = "DeleteRecommender"
        operation.input = DeleteRecommenderRequest
        operation.output = DeleteRecommenderResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domains/{DomainName}/recommenders/{RecommenderName}", "code" => 200}}
      end)
      service.add_operation(:delete_recommender_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteRecommenderFilter"
        operation.name = "DeleteRecommenderFilter"
        operation.input = DeleteRecommenderFilterRequest
        operation.output = DeleteRecommenderFilterResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domains/{DomainName}/recommender-filters/{RecommenderFilterName}", "code" => 200}}
      end)
      service.add_operation(:delete_recommender_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteRecommenderSchema"
        operation.name = "DeleteRecommenderSchema"
        operation.input = DeleteRecommenderSchemaRequest
        operation.output = DeleteRecommenderSchemaResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domains/{DomainName}/recommender-schemas/{RecommenderSchemaName}", "code" => 200}}
      end)
      service.add_operation(:delete_segment_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteSegmentDefinition"
        operation.name = "DeleteSegmentDefinition"
        operation.input = DeleteSegmentDefinitionRequest
        operation.output = DeleteSegmentDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_segment_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteSegmentSubscription"
        operation.name = "DeleteSegmentSubscription"
        operation.input = DeleteSegmentSubscriptionRequest
        operation.output = DeleteSegmentSubscriptionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}/subscriptions", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DeleteWorkflow"
        operation.name = "DeleteWorkflow"
        operation.input = DeleteWorkflowRequest
        operation.output = DeleteWorkflowResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domains/{DomainName}/workflows/{WorkflowId}", "code" => 200}}
      end)
      service.add_operation(:detect_profile_object_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DetectProfileObjectType"
        operation.name = "DetectProfileObjectType"
        operation.input = DetectProfileObjectTypeRequest
        operation.output = DetectProfileObjectTypeResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/detect/object-types", "code" => 200}}
      end)
      service.add_operation(:disassociate_stream_for_segments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#DisassociateStreamForSegments"
        operation.name = "DisassociateStreamForSegments"
        operation.input = DisassociateStreamForSegmentsRequest
        operation.output = DisassociateStreamForSegmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domains/{DomainName}/segment-streams", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_auto_merging_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetAutoMergingPreview"
        operation.name = "GetAutoMergingPreview"
        operation.input = GetAutoMergingPreviewRequest
        operation.output = GetAutoMergingPreviewResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/identity-resolution-jobs/auto-merging-preview", "code" => 200}}
      end)
      service.add_operation(:get_calculated_attribute_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetCalculatedAttributeDefinition"
        operation.name = "GetCalculatedAttributeDefinition"
        operation.input = GetCalculatedAttributeDefinitionRequest
        operation.output = GetCalculatedAttributeDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}", "code" => 200}}
      end)
      service.add_operation(:get_calculated_attribute_for_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetCalculatedAttributeForProfile"
        operation.name = "GetCalculatedAttributeForProfile"
        operation.input = GetCalculatedAttributeForProfileRequest
        operation.output = GetCalculatedAttributeForProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/profile/{ProfileId}/calculated-attributes/{CalculatedAttributeName}", "code" => 200}}
      end)
      service.add_operation(:get_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetDomain"
        operation.name = "GetDomain"
        operation.input = GetDomainRequest
        operation.output = GetDomainResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:get_domain_layout, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetDomainLayout"
        operation.name = "GetDomainLayout"
        operation.input = GetDomainLayoutRequest
        operation.output = GetDomainLayoutResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/layouts/{LayoutDefinitionName}", "code" => 200}}
      end)
      service.add_operation(:get_domain_object_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetDomainObjectType"
        operation.name = "GetDomainObjectType"
        operation.input = GetDomainObjectTypeRequest
        operation.output = GetDomainObjectTypeResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/domain-object-types/{ObjectTypeName}", "code" => 200}}
      end)
      service.add_operation(:get_event_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetEventStream"
        operation.name = "GetEventStream"
        operation.input = GetEventStreamRequest
        operation.output = GetEventStreamResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/event-streams/{EventStreamName}", "code" => 200}}
      end)
      service.add_operation(:get_event_trigger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetEventTrigger"
        operation.name = "GetEventTrigger"
        operation.input = GetEventTriggerRequest
        operation.output = GetEventTriggerResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/event-triggers/{EventTriggerName}", "code" => 200}}
      end)
      service.add_operation(:get_identity_resolution_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetIdentityResolutionJob"
        operation.name = "GetIdentityResolutionJob"
        operation.input = GetIdentityResolutionJobRequest
        operation.output = GetIdentityResolutionJobResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/identity-resolution-jobs/{JobId}", "code" => 200}}
      end)
      service.add_operation(:get_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetIntegration"
        operation.name = "GetIntegration"
        operation.input = GetIntegrationRequest
        operation.output = GetIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/integrations", "code" => 200}}
      end)
      service.add_operation(:get_matches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetMatches"
        operation.name = "GetMatches"
        operation.input = GetMatchesRequest
        operation.output = GetMatchesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/matches", "code" => 200}}
      end)
      service.add_operation(:get_object_type_attribute_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetObjectTypeAttributeStatistics"
        operation.name = "GetObjectTypeAttributeStatistics"
        operation.input = GetObjectTypeAttributeStatisticsRequest
        operation.output = GetObjectTypeAttributeStatisticsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/object-types/{ObjectTypeName}/attributes/{AttributeName}/statistics", "code" => 200}}
      end)
      service.add_operation(:get_profile_history_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetProfileHistoryRecord"
        operation.name = "GetProfileHistoryRecord"
        operation.input = GetProfileHistoryRecordRequest
        operation.output = GetProfileHistoryRecordResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/profiles/{ProfileId}/history-records/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_profile_object_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetProfileObjectType"
        operation.name = "GetProfileObjectType"
        operation.input = GetProfileObjectTypeRequest
        operation.output = GetProfileObjectTypeResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/object-types/{ObjectTypeName}", "code" => 200}}
      end)
      service.add_operation(:get_profile_object_type_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetProfileObjectTypeTemplate"
        operation.name = "GetProfileObjectTypeTemplate"
        operation.input = GetProfileObjectTypeTemplateRequest
        operation.output = GetProfileObjectTypeTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templates/{TemplateId}", "code" => 200}}
      end)
      service.add_operation(:get_profile_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetProfileRecommendations"
        operation.name = "GetProfileRecommendations"
        operation.input = GetProfileRecommendationsRequest
        operation.output = GetProfileRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/profiles/{ProfileId}/recommendations", "code" => 200}}
      end)
      service.add_operation(:get_recommender, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetRecommender"
        operation.name = "GetRecommender"
        operation.input = GetRecommenderRequest
        operation.output = GetRecommenderResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/recommenders/{RecommenderName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recommender_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetRecommenderFilter"
        operation.name = "GetRecommenderFilter"
        operation.input = GetRecommenderFilterRequest
        operation.output = GetRecommenderFilterResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/recommender-filters/{RecommenderFilterName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recommender_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetRecommenderSchema"
        operation.name = "GetRecommenderSchema"
        operation.input = GetRecommenderSchemaRequest
        operation.output = GetRecommenderSchemaResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/recommender-schemas/{RecommenderSchemaName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_segment_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetSegmentDefinition"
        operation.name = "GetSegmentDefinition"
        operation.input = GetSegmentDefinitionRequest
        operation.output = GetSegmentDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_segment_estimate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetSegmentEstimate"
        operation.name = "GetSegmentEstimate"
        operation.input = GetSegmentEstimateRequest
        operation.output = GetSegmentEstimateResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/segment-estimates/{EstimateId}", "code" => 200}}
      end)
      service.add_operation(:get_segment_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetSegmentMembership"
        operation.name = "GetSegmentMembership"
        operation.input = GetSegmentMembershipRequest
        operation.output = GetSegmentMembershipResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/segments/{SegmentDefinitionName}/membership", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_segment_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetSegmentSnapshot"
        operation.name = "GetSegmentSnapshot"
        operation.input = GetSegmentSnapshotRequest
        operation.output = GetSegmentSnapshotResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/segments/{SegmentDefinitionName}/snapshots/{SnapshotId}", "code" => 200}}
      end)
      service.add_operation(:get_segment_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetSegmentSubscription"
        operation.name = "GetSegmentSubscription"
        operation.input = GetSegmentSubscriptionRequest
        operation.output = GetSegmentSubscriptionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}/subscriptions", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_similar_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetSimilarProfiles"
        operation.name = "GetSimilarProfiles"
        operation.input = GetSimilarProfilesRequest
        operation.output = GetSimilarProfilesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/matches", "code" => 200}}
        operation[:paginator] = Paginators::GetSimilarProfiles.new
      end)
      service.add_operation(:get_stream_for_segments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetStreamForSegments"
        operation.name = "GetStreamForSegments"
        operation.input = GetStreamForSegmentsRequest
        operation.output = GetStreamForSegmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/segment-streams", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_upload_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetUploadJob"
        operation.name = "GetUploadJob"
        operation.input = GetUploadJobRequest
        operation.output = GetUploadJobResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/upload-jobs/{JobId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_upload_job_path, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetUploadJobPath"
        operation.name = "GetUploadJobPath"
        operation.input = GetUploadJobPathRequest
        operation.output = GetUploadJobPathResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/upload-jobs/{JobId}/path", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetWorkflow"
        operation.name = "GetWorkflow"
        operation.input = GetWorkflowRequest
        operation.output = GetWorkflowResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/workflows/{WorkflowId}", "code" => 200}}
      end)
      service.add_operation(:get_workflow_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#GetWorkflowSteps"
        operation.name = "GetWorkflowSteps"
        operation.input = GetWorkflowStepsRequest
        operation.output = GetWorkflowStepsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/workflows/{WorkflowId}/steps", "code" => 200}}
      end)
      service.add_operation(:list_account_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListAccountIntegrations"
        operation.name = "ListAccountIntegrations"
        operation.input = ListAccountIntegrationsRequest
        operation.output = ListAccountIntegrationsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/integrations", "code" => 200}}
      end)
      service.add_operation(:list_calculated_attribute_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListCalculatedAttributeDefinitions"
        operation.name = "ListCalculatedAttributeDefinitions"
        operation.input = ListCalculatedAttributeDefinitionsRequest
        operation.output = ListCalculatedAttributeDefinitionsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/calculated-attributes", "code" => 200}}
      end)
      service.add_operation(:list_calculated_attributes_for_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListCalculatedAttributesForProfile"
        operation.name = "ListCalculatedAttributesForProfile"
        operation.input = ListCalculatedAttributesForProfileRequest
        operation.output = ListCalculatedAttributesForProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/profile/{ProfileId}/calculated-attributes", "code" => 200}}
      end)
      service.add_operation(:list_domain_layouts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListDomainLayouts"
        operation.name = "ListDomainLayouts"
        operation.input = ListDomainLayoutsRequest
        operation.output = ListDomainLayoutsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/layouts", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainLayouts.new
      end)
      service.add_operation(:list_domain_object_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListDomainObjectTypes"
        operation.name = "ListDomainObjectTypes"
        operation.input = ListDomainObjectTypesRequest
        operation.output = ListDomainObjectTypesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/domain-object-types", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainObjectTypes.new
      end)
      service.add_operation(:list_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListDomains"
        operation.name = "ListDomains"
        operation.input = ListDomainsRequest
        operation.output = ListDomainsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains", "code" => 200}}
      end)
      service.add_operation(:list_event_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListEventStreams"
        operation.name = "ListEventStreams"
        operation.input = ListEventStreamsRequest
        operation.output = ListEventStreamsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/event-streams", "code" => 200}}
        operation[:paginator] = Paginators::ListEventStreams.new
      end)
      service.add_operation(:list_event_triggers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListEventTriggers"
        operation.name = "ListEventTriggers"
        operation.input = ListEventTriggersRequest
        operation.output = ListEventTriggersResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/event-triggers", "code" => 200}}
        operation[:paginator] = Paginators::ListEventTriggers.new
      end)
      service.add_operation(:list_identity_resolution_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListIdentityResolutionJobs"
        operation.name = "ListIdentityResolutionJobs"
        operation.input = ListIdentityResolutionJobsRequest
        operation.output = ListIdentityResolutionJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/identity-resolution-jobs", "code" => 200}}
      end)
      service.add_operation(:list_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListIntegrations"
        operation.name = "ListIntegrations"
        operation.input = ListIntegrationsRequest
        operation.output = ListIntegrationsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/integrations", "code" => 200}}
      end)
      service.add_operation(:list_object_type_attribute_values, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListObjectTypeAttributeValues"
        operation.name = "ListObjectTypeAttributeValues"
        operation.input = ListObjectTypeAttributeValuesRequest
        operation.output = ListObjectTypeAttributeValuesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/object-types/{ObjectTypeName}/attributes/{AttributeName}/values", "code" => 200}}
      end)
      service.add_operation(:list_object_type_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListObjectTypeAttributes"
        operation.name = "ListObjectTypeAttributes"
        operation.input = ListObjectTypeAttributesRequest
        operation.output = ListObjectTypeAttributesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/object-types/{ObjectTypeName}/attributes", "code" => 200}}
        operation[:paginator] = Paginators::ListObjectTypeAttributes.new
      end)
      service.add_operation(:list_profile_attribute_values, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListProfileAttributeValues"
        operation.name = "ListProfileAttributeValues"
        operation.input = ProfileAttributeValuesRequest
        operation.output = ProfileAttributeValuesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/profile-attributes/{AttributeName}/values", "code" => 200}}
      end)
      service.add_operation(:list_profile_history_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListProfileHistoryRecords"
        operation.name = "ListProfileHistoryRecords"
        operation.input = ListProfileHistoryRecordsRequest
        operation.output = ListProfileHistoryRecordsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/profiles/history-records", "code" => 200}}
      end)
      service.add_operation(:list_profile_object_type_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListProfileObjectTypeTemplates"
        operation.name = "ListProfileObjectTypeTemplates"
        operation.input = ListProfileObjectTypeTemplatesRequest
        operation.output = ListProfileObjectTypeTemplatesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templates", "code" => 200}}
      end)
      service.add_operation(:list_profile_object_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListProfileObjectTypes"
        operation.name = "ListProfileObjectTypes"
        operation.input = ListProfileObjectTypesRequest
        operation.output = ListProfileObjectTypesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/object-types", "code" => 200}}
      end)
      service.add_operation(:list_profile_objects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListProfileObjects"
        operation.name = "ListProfileObjects"
        operation.input = ListProfileObjectsRequest
        operation.output = ListProfileObjectsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/profiles/objects", "code" => 200}}
      end)
      service.add_operation(:list_recommender_filters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListRecommenderFilters"
        operation.name = "ListRecommenderFilters"
        operation.input = ListRecommenderFiltersRequest
        operation.output = ListRecommenderFiltersResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/recommender-filters", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecommenderFilters.new
      end)
      service.add_operation(:list_recommender_recipes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListRecommenderRecipes"
        operation.name = "ListRecommenderRecipes"
        operation.input = ListRecommenderRecipesRequest
        operation.output = ListRecommenderRecipesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/recommender-recipes", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecommenderRecipes.new
      end)
      service.add_operation(:list_recommender_schemas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListRecommenderSchemas"
        operation.name = "ListRecommenderSchemas"
        operation.input = ListRecommenderSchemasRequest
        operation.output = ListRecommenderSchemasResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/recommender-schemas", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecommenderSchemas.new
      end)
      service.add_operation(:list_recommenders, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListRecommenders"
        operation.name = "ListRecommenders"
        operation.input = ListRecommendersRequest
        operation.output = ListRecommendersResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/recommenders", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecommenders.new
      end)
      service.add_operation(:list_rule_based_matches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListRuleBasedMatches"
        operation.name = "ListRuleBasedMatches"
        operation.input = ListRuleBasedMatchesRequest
        operation.output = ListRuleBasedMatchesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/profiles/ruleBasedMatches", "code" => 200}}
        operation[:paginator] = Paginators::ListRuleBasedMatches.new
      end)
      service.add_operation(:list_segment_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListSegmentDefinitions"
        operation.name = "ListSegmentDefinitions"
        operation.input = ListSegmentDefinitionsRequest
        operation.output = ListSegmentDefinitionsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/segment-definitions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSegmentDefinitions.new
      end)
      service.add_operation(:list_segment_subscription_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListSegmentSubscriptionEvents"
        operation.name = "ListSegmentSubscriptionEvents"
        operation.input = ListSegmentSubscriptionEventsRequest
        operation.output = ListSegmentSubscriptionEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}/subscription-events", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSegmentSubscriptionEvents.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_upload_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListUploadJobs"
        operation.name = "ListUploadJobs"
        operation.input = ListUploadJobsRequest
        operation.output = ListUploadJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{DomainName}/upload-jobs", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListUploadJobs.new
      end)
      service.add_operation(:list_workflows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#ListWorkflows"
        operation.name = "ListWorkflows"
        operation.input = ListWorkflowsRequest
        operation.output = ListWorkflowsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/workflows", "code" => 200}}
      end)
      service.add_operation(:merge_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#MergeProfiles"
        operation.name = "MergeProfiles"
        operation.input = MergeProfilesRequest
        operation.output = MergeProfilesResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/profiles/objects/merge", "code" => 200}}
      end)
      service.add_operation(:put_domain_object_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#PutDomainObjectType"
        operation.name = "PutDomainObjectType"
        operation.input = PutDomainObjectTypeRequest
        operation.output = PutDomainObjectTypeResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}/domain-object-types/{ObjectTypeName}", "code" => 200}}
      end)
      service.add_operation(:put_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#PutIntegration"
        operation.name = "PutIntegration"
        operation.input = PutIntegrationRequest
        operation.output = PutIntegrationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}/integrations", "code" => 200}}
      end)
      service.add_operation(:put_profile_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#PutProfileObject"
        operation.name = "PutProfileObject"
        operation.input = PutProfileObjectRequest
        operation.output = PutProfileObjectResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}/profiles/objects", "code" => 200}}
      end)
      service.add_operation(:put_profile_object_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#PutProfileObjectType"
        operation.name = "PutProfileObjectType"
        operation.input = PutProfileObjectTypeRequest
        operation.output = PutProfileObjectTypeResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}/object-types/{ObjectTypeName}", "code" => 200}}
      end)
      service.add_operation(:put_segment_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#PutSegmentSubscription"
        operation.name = "PutSegmentSubscription"
        operation.input = PutSegmentSubscriptionRequest
        operation.output = PutSegmentSubscriptionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}/subscriptions", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:search_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#SearchProfiles"
        operation.name = "SearchProfiles"
        operation.input = SearchProfilesRequest
        operation.output = SearchProfilesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/profiles/search", "code" => 200}}
      end)
      service.add_operation(:search_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#SearchRecommendations"
        operation.name = "SearchRecommendations"
        operation.input = SearchRecommendationsRequest
        operation.output = SearchRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{DomainName}/recommendations", "code" => 200}}
      end)
      service.add_operation(:start_recommender, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#StartRecommender"
        operation.name = "StartRecommender"
        operation.input = StartRecommenderRequest
        operation.output = StartRecommenderResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}/recommenders/{RecommenderName}/start", "code" => 200}}
      end)
      service.add_operation(:start_upload_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#StartUploadJob"
        operation.name = "StartUploadJob"
        operation.input = StartUploadJobRequest
        operation.output = StartUploadJobResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}/upload-jobs/{JobId}", "code" => 200}}
      end)
      service.add_operation(:stop_recommender, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#StopRecommender"
        operation.name = "StopRecommender"
        operation.input = StopRecommenderRequest
        operation.output = StopRecommenderResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}/recommenders/{RecommenderName}/stop", "code" => 200}}
      end)
      service.add_operation(:stop_upload_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#StopUploadJob"
        operation.name = "StopUploadJob"
        operation.input = StopUploadJobRequest
        operation.output = StopUploadJobResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}/upload-jobs/{JobId}/stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_calculated_attribute_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#UpdateCalculatedAttributeDefinition"
        operation.name = "UpdateCalculatedAttributeDefinition"
        operation.input = UpdateCalculatedAttributeDefinitionRequest
        operation.output = UpdateCalculatedAttributeDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}", "code" => 200}}
      end)
      service.add_operation(:update_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#UpdateDomain"
        operation.name = "UpdateDomain"
        operation.input = UpdateDomainRequest
        operation.output = UpdateDomainResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}", "code" => 200}}
      end)
      service.add_operation(:update_domain_layout, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#UpdateDomainLayout"
        operation.name = "UpdateDomainLayout"
        operation.input = UpdateDomainLayoutRequest
        operation.output = UpdateDomainLayoutResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}/layouts/{LayoutDefinitionName}", "code" => 200}}
      end)
      service.add_operation(:update_event_trigger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#UpdateEventTrigger"
        operation.name = "UpdateEventTrigger"
        operation.input = UpdateEventTriggerRequest
        operation.output = UpdateEventTriggerResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}/event-triggers/{EventTriggerName}", "code" => 200}}
      end)
      service.add_operation(:update_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#UpdateProfile"
        operation.name = "UpdateProfile"
        operation.input = UpdateProfileRequest
        operation.output = UpdateProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/domains/{DomainName}/profiles", "code" => 200}}
      end)
      service.add_operation(:update_recommender, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.customerprofiles#UpdateRecommender"
        operation.name = "UpdateRecommender"
        operation.input = UpdateRecommenderRequest
        operation.output = UpdateRecommenderResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/domains/{DomainName}/recommenders/{RecommenderName}", "code" => 200}}
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
