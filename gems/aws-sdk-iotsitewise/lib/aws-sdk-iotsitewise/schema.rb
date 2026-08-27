# frozen_string_literal: true

# This is generated code!

module Aws::IoTSiteWise
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ARN", name: "ARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-cn|-us-gov)?:[a-zA-Z0-9-:\\/_\\.]+$"})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessPolicySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AccessPolicySummaries", name: "AccessPolicySummaries")
    AccessPolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AccessPolicySummary", name: "AccessPolicySummary")
    ActionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ActionDefinition", name: "ActionDefinition")
    ActionDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#ActionDefinitions", name: "ActionDefinitions")
    ActionPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ActionPayload", name: "ActionPayload")
    ActionPayloadString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ActionPayloadString", name: "ActionPayloadString", traits: {"smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    ActionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#ActionSummaries", name: "ActionSummaries")
    ActionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ActionSummary", name: "ActionSummary")
    AdaptiveIngestion = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotsitewise#AdaptiveIngestion", name: "AdaptiveIngestion")
    AggregateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#AggregateType", name: "AggregateType")
    AggregateTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AggregateTypes", name: "AggregateTypes", traits: {"smithy.api#length" => {"min" => 1}})
    AggregatedDoubleValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotsitewise#AggregatedDoubleValue", name: "AggregatedDoubleValue")
    AggregatedValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AggregatedValue", name: "AggregatedValue")
    AggregatedValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AggregatedValues", name: "AggregatedValues")
    Aggregates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Aggregates", name: "Aggregates")
    Alarms = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Alarms", name: "Alarms")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AssetBindingValueFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetBindingValueFilter", name: "AssetBindingValueFilter")
    AssetCompositeModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetCompositeModel", name: "AssetCompositeModel")
    AssetCompositeModelPath = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetCompositeModelPath", name: "AssetCompositeModelPath")
    AssetCompositeModelPathSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetCompositeModelPathSegment", name: "AssetCompositeModelPathSegment")
    AssetCompositeModelSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetCompositeModelSummaries", name: "AssetCompositeModelSummaries")
    AssetCompositeModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetCompositeModelSummary", name: "AssetCompositeModelSummary")
    AssetCompositeModels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetCompositeModels", name: "AssetCompositeModels")
    AssetErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#AssetErrorCode", name: "AssetErrorCode")
    AssetErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetErrorDetails", name: "AssetErrorDetails")
    AssetErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#AssetErrorMessage", name: "AssetErrorMessage")
    AssetHierarchies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetHierarchies", name: "AssetHierarchies")
    AssetHierarchy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetHierarchy", name: "AssetHierarchy")
    AssetHierarchyInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetHierarchyInfo", name: "AssetHierarchyInfo")
    AssetIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetIDs", name: "AssetIDs")
    AssetModelBindingValueFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelBindingValueFilter", name: "AssetModelBindingValueFilter")
    AssetModelCompositeModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelCompositeModel", name: "AssetModelCompositeModel")
    AssetModelCompositeModelDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelCompositeModelDefinition", name: "AssetModelCompositeModelDefinition")
    AssetModelCompositeModelDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetModelCompositeModelDefinitions", name: "AssetModelCompositeModelDefinitions")
    AssetModelCompositeModelPath = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetModelCompositeModelPath", name: "AssetModelCompositeModelPath")
    AssetModelCompositeModelPathSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelCompositeModelPathSegment", name: "AssetModelCompositeModelPathSegment")
    AssetModelCompositeModelSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetModelCompositeModelSummaries", name: "AssetModelCompositeModelSummaries")
    AssetModelCompositeModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelCompositeModelSummary", name: "AssetModelCompositeModelSummary")
    AssetModelCompositeModels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetModelCompositeModels", name: "AssetModelCompositeModels")
    AssetModelHierarchies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetModelHierarchies", name: "AssetModelHierarchies")
    AssetModelHierarchy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelHierarchy", name: "AssetModelHierarchy")
    AssetModelHierarchyDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelHierarchyDefinition", name: "AssetModelHierarchyDefinition")
    AssetModelHierarchyDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetModelHierarchyDefinitions", name: "AssetModelHierarchyDefinitions")
    AssetModelProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetModelProperties", name: "AssetModelProperties")
    AssetModelProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelProperty", name: "AssetModelProperty")
    AssetModelPropertyBindingValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelPropertyBindingValue", name: "AssetModelPropertyBindingValue")
    AssetModelPropertyBindingValueFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelPropertyBindingValueFilter", name: "AssetModelPropertyBindingValueFilter")
    AssetModelPropertyDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelPropertyDefinition", name: "AssetModelPropertyDefinition")
    AssetModelPropertyDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetModelPropertyDefinitions", name: "AssetModelPropertyDefinitions")
    AssetModelPropertyPath = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetModelPropertyPath", name: "AssetModelPropertyPath")
    AssetModelPropertyPathSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelPropertyPathSegment", name: "AssetModelPropertyPathSegment")
    AssetModelPropertySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetModelPropertySummaries", name: "AssetModelPropertySummaries")
    AssetModelPropertySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelPropertySummary", name: "AssetModelPropertySummary")
    AssetModelState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#AssetModelState", name: "AssetModelState")
    AssetModelStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelStatus", name: "AssetModelStatus")
    AssetModelSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetModelSummaries", name: "AssetModelSummaries")
    AssetModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetModelSummary", name: "AssetModelSummary")
    AssetModelType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#AssetModelType", name: "AssetModelType")
    AssetModelVersionFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#AssetModelVersionFilter", name: "AssetModelVersionFilter", traits: {"smithy.api#pattern" => "^(LATEST|ACTIVE)$"})
    AssetModelVersionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#AssetModelVersionType", name: "AssetModelVersionType")
    AssetProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetProperties", name: "AssetProperties")
    AssetProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetProperty", name: "AssetProperty")
    AssetPropertyAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#AssetPropertyAlias", name: "AssetPropertyAlias", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    AssetPropertyBindingValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetPropertyBindingValue", name: "AssetPropertyBindingValue")
    AssetPropertyBindingValueFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetPropertyBindingValueFilter", name: "AssetPropertyBindingValueFilter")
    AssetPropertyPath = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetPropertyPath", name: "AssetPropertyPath")
    AssetPropertyPathSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetPropertyPathSegment", name: "AssetPropertyPathSegment")
    AssetPropertySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetPropertySummaries", name: "AssetPropertySummaries")
    AssetPropertySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetPropertySummary", name: "AssetPropertySummary")
    AssetPropertyValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetPropertyValue", name: "AssetPropertyValue")
    AssetPropertyValueHistory = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetPropertyValueHistory", name: "AssetPropertyValueHistory")
    AssetPropertyValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetPropertyValues", name: "AssetPropertyValues")
    AssetRelationshipSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetRelationshipSummaries", name: "AssetRelationshipSummaries")
    AssetRelationshipSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetRelationshipSummary", name: "AssetRelationshipSummary")
    AssetRelationshipType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#AssetRelationshipType", name: "AssetRelationshipType")
    AssetState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#AssetState", name: "AssetState")
    AssetStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetStatus", name: "AssetStatus")
    AssetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssetSummaries", name: "AssetSummaries")
    AssetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssetSummary", name: "AssetSummary")
    AssociateAssetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssociateAssetsRequest", name: "AssociateAssetsRequest")
    AssociateTimeSeriesToAssetPropertyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssociateTimeSeriesToAssetPropertyRequest", name: "AssociateTimeSeriesToAssetPropertyRequest")
    AssociatedAssetsSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#AssociatedAssetsSummaries", name: "AssociatedAssetsSummaries")
    AssociatedAssetsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#AssociatedAssetsSummary", name: "AssociatedAssetsSummary")
    Attribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Attribute", name: "Attribute")
    AuthMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#AuthMode", name: "AuthMode")
    BatchAssociateProjectAssetsErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchAssociateProjectAssetsErrors", name: "BatchAssociateProjectAssetsErrors")
    BatchAssociateProjectAssetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchAssociateProjectAssetsRequest", name: "BatchAssociateProjectAssetsRequest")
    BatchAssociateProjectAssetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchAssociateProjectAssetsResponse", name: "BatchAssociateProjectAssetsResponse")
    BatchDisassociateProjectAssetsErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchDisassociateProjectAssetsErrors", name: "BatchDisassociateProjectAssetsErrors")
    BatchDisassociateProjectAssetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchDisassociateProjectAssetsRequest", name: "BatchDisassociateProjectAssetsRequest")
    BatchDisassociateProjectAssetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchDisassociateProjectAssetsResponse", name: "BatchDisassociateProjectAssetsResponse")
    BatchEntryCompletionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#BatchEntryCompletionStatus", name: "BatchEntryCompletionStatus")
    BatchGetAssetPropertyAggregatesEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesEntries", name: "BatchGetAssetPropertyAggregatesEntries")
    BatchGetAssetPropertyAggregatesEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesEntry", name: "BatchGetAssetPropertyAggregatesEntry")
    BatchGetAssetPropertyAggregatesErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesErrorCode", name: "BatchGetAssetPropertyAggregatesErrorCode")
    BatchGetAssetPropertyAggregatesErrorEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesErrorEntries", name: "BatchGetAssetPropertyAggregatesErrorEntries")
    BatchGetAssetPropertyAggregatesErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesErrorEntry", name: "BatchGetAssetPropertyAggregatesErrorEntry")
    BatchGetAssetPropertyAggregatesErrorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesErrorInfo", name: "BatchGetAssetPropertyAggregatesErrorInfo")
    BatchGetAssetPropertyAggregatesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesMaxResults", name: "BatchGetAssetPropertyAggregatesMaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    BatchGetAssetPropertyAggregatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesRequest", name: "BatchGetAssetPropertyAggregatesRequest")
    BatchGetAssetPropertyAggregatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesResponse", name: "BatchGetAssetPropertyAggregatesResponse")
    BatchGetAssetPropertyAggregatesSkippedEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesSkippedEntries", name: "BatchGetAssetPropertyAggregatesSkippedEntries")
    BatchGetAssetPropertyAggregatesSkippedEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesSkippedEntry", name: "BatchGetAssetPropertyAggregatesSkippedEntry")
    BatchGetAssetPropertyAggregatesSuccessEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesSuccessEntries", name: "BatchGetAssetPropertyAggregatesSuccessEntries")
    BatchGetAssetPropertyAggregatesSuccessEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesSuccessEntry", name: "BatchGetAssetPropertyAggregatesSuccessEntry")
    BatchGetAssetPropertyValueEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueEntries", name: "BatchGetAssetPropertyValueEntries")
    BatchGetAssetPropertyValueEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueEntry", name: "BatchGetAssetPropertyValueEntry")
    BatchGetAssetPropertyValueErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueErrorCode", name: "BatchGetAssetPropertyValueErrorCode")
    BatchGetAssetPropertyValueErrorEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueErrorEntries", name: "BatchGetAssetPropertyValueErrorEntries")
    BatchGetAssetPropertyValueErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueErrorEntry", name: "BatchGetAssetPropertyValueErrorEntry")
    BatchGetAssetPropertyValueErrorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueErrorInfo", name: "BatchGetAssetPropertyValueErrorInfo")
    BatchGetAssetPropertyValueHistoryEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryEntries", name: "BatchGetAssetPropertyValueHistoryEntries")
    BatchGetAssetPropertyValueHistoryEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryEntry", name: "BatchGetAssetPropertyValueHistoryEntry")
    BatchGetAssetPropertyValueHistoryErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryErrorCode", name: "BatchGetAssetPropertyValueHistoryErrorCode")
    BatchGetAssetPropertyValueHistoryErrorEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryErrorEntries", name: "BatchGetAssetPropertyValueHistoryErrorEntries")
    BatchGetAssetPropertyValueHistoryErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryErrorEntry", name: "BatchGetAssetPropertyValueHistoryErrorEntry")
    BatchGetAssetPropertyValueHistoryErrorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryErrorInfo", name: "BatchGetAssetPropertyValueHistoryErrorInfo")
    BatchGetAssetPropertyValueHistoryMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryMaxResults", name: "BatchGetAssetPropertyValueHistoryMaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    BatchGetAssetPropertyValueHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryRequest", name: "BatchGetAssetPropertyValueHistoryRequest")
    BatchGetAssetPropertyValueHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryResponse", name: "BatchGetAssetPropertyValueHistoryResponse")
    BatchGetAssetPropertyValueHistorySkippedEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistorySkippedEntries", name: "BatchGetAssetPropertyValueHistorySkippedEntries")
    BatchGetAssetPropertyValueHistorySkippedEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistorySkippedEntry", name: "BatchGetAssetPropertyValueHistorySkippedEntry")
    BatchGetAssetPropertyValueHistorySuccessEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistorySuccessEntries", name: "BatchGetAssetPropertyValueHistorySuccessEntries")
    BatchGetAssetPropertyValueHistorySuccessEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistorySuccessEntry", name: "BatchGetAssetPropertyValueHistorySuccessEntry")
    BatchGetAssetPropertyValueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueRequest", name: "BatchGetAssetPropertyValueRequest")
    BatchGetAssetPropertyValueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueResponse", name: "BatchGetAssetPropertyValueResponse")
    BatchGetAssetPropertyValueSkippedEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueSkippedEntries", name: "BatchGetAssetPropertyValueSkippedEntries")
    BatchGetAssetPropertyValueSkippedEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueSkippedEntry", name: "BatchGetAssetPropertyValueSkippedEntry")
    BatchGetAssetPropertyValueSuccessEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueSuccessEntries", name: "BatchGetAssetPropertyValueSuccessEntries")
    BatchGetAssetPropertyValueSuccessEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueSuccessEntry", name: "BatchGetAssetPropertyValueSuccessEntry")
    BatchPutAssetPropertyError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchPutAssetPropertyError", name: "BatchPutAssetPropertyError")
    BatchPutAssetPropertyErrorEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchPutAssetPropertyErrorEntries", name: "BatchPutAssetPropertyErrorEntries")
    BatchPutAssetPropertyErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchPutAssetPropertyErrorEntry", name: "BatchPutAssetPropertyErrorEntry")
    BatchPutAssetPropertyErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BatchPutAssetPropertyErrors", name: "BatchPutAssetPropertyErrors")
    BatchPutAssetPropertyValueErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#BatchPutAssetPropertyValueErrorCode", name: "BatchPutAssetPropertyValueErrorCode")
    BatchPutAssetPropertyValueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchPutAssetPropertyValueRequest", name: "BatchPutAssetPropertyValueRequest")
    BatchPutAssetPropertyValueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#BatchPutAssetPropertyValueResponse", name: "BatchPutAssetPropertyValueResponse")
    BindingValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#BindingValueList", name: "BindingValueList")
    BooleanValue = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotsitewise#BooleanValue", name: "BooleanValue")
    Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#Bucket", name: "Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    CapabilityConfiguration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#CapabilityConfiguration", name: "CapabilityConfiguration", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000000}})
    CapabilityNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#CapabilityNamespace", name: "CapabilityNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z]+:[a-zA-Z]+:[0-9]+$"})
    CapabilitySyncStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#CapabilitySyncStatus", name: "CapabilitySyncStatus")
    Citation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Citation", name: "Citation")
    Citations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#Citations", name: "Citations")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 36, "max" => 64}, "smithy.api#pattern" => "^\\S{36,64}$"})
    ColumnInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ColumnInfo", name: "ColumnInfo")
    ColumnName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ColumnName", name: "ColumnName")
    ColumnNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#ColumnNames", name: "ColumnNames")
    ColumnType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ColumnType", name: "ColumnType")
    ColumnsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#ColumnsList", name: "ColumnsList")
    CompositeModelProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CompositeModelProperty", name: "CompositeModelProperty")
    CompositionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CompositionDetails", name: "CompositionDetails")
    CompositionRelationship = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#CompositionRelationship", name: "CompositionRelationship")
    CompositionRelationshipItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CompositionRelationshipItem", name: "CompositionRelationshipItem")
    CompositionRelationshipSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#CompositionRelationshipSummaries", name: "CompositionRelationshipSummaries")
    CompositionRelationshipSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CompositionRelationshipSummary", name: "CompositionRelationshipSummary")
    ComputationModelAnomalyDetectionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ComputationModelAnomalyDetectionConfiguration", name: "ComputationModelAnomalyDetectionConfiguration")
    ComputationModelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ComputationModelConfiguration", name: "ComputationModelConfiguration")
    ComputationModelDataBinding = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iotsitewise#ComputationModelDataBinding", name: "ComputationModelDataBinding")
    ComputationModelDataBindingUsageSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#ComputationModelDataBindingUsageSummaries", name: "ComputationModelDataBindingUsageSummaries")
    ComputationModelDataBindingUsageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ComputationModelDataBindingUsageSummary", name: "ComputationModelDataBindingUsageSummary")
    ComputationModelDataBindingValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ComputationModelDataBindingValue", name: "ComputationModelDataBindingValue")
    ComputationModelDataBindingVariable = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ComputationModelDataBindingVariable", name: "ComputationModelDataBindingVariable", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z][a-z0-9_]*$"})
    ComputationModelExecutionSummary = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iotsitewise#ComputationModelExecutionSummary", name: "ComputationModelExecutionSummary")
    ComputationModelExecutionSummaryKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ComputationModelExecutionSummaryKey", name: "ComputationModelExecutionSummaryKey", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    ComputationModelExecutionSummaryValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ComputationModelExecutionSummaryValue", name: "ComputationModelExecutionSummaryValue", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    ComputationModelIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#ComputationModelIdList", name: "ComputationModelIdList")
    ComputationModelResolveToResourceSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#ComputationModelResolveToResourceSummaries", name: "ComputationModelResolveToResourceSummaries")
    ComputationModelResolveToResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ComputationModelResolveToResourceSummary", name: "ComputationModelResolveToResourceSummary")
    ComputationModelState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ComputationModelState", name: "ComputationModelState")
    ComputationModelStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ComputationModelStatus", name: "ComputationModelStatus")
    ComputationModelSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#ComputationModelSummaries", name: "ComputationModelSummaries")
    ComputationModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ComputationModelSummary", name: "ComputationModelSummary")
    ComputationModelType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ComputationModelType", name: "ComputationModelType")
    ComputationModelVersionFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ComputationModelVersionFilter", name: "ComputationModelVersionFilter", traits: {"smithy.api#pattern" => "^(LATEST|ACTIVE|[1-9]{1}\\d{0,9})$"})
    ComputeLocation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ComputeLocation", name: "ComputeLocation")
    ConfigurationErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ConfigurationErrorDetails", name: "ConfigurationErrorDetails")
    ConfigurationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ConfigurationState", name: "ConfigurationState")
    ConfigurationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ConfigurationStatus", name: "ConfigurationStatus")
    ConflictingOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ConflictingOperationException", name: "ConflictingOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Content = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Content", name: "Content")
    ConversationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ConversationId", name: "ConversationId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    CoreDeviceOperatingSystem = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#CoreDeviceOperatingSystem", name: "CoreDeviceOperatingSystem")
    CoreDeviceThingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#CoreDeviceThingName", name: "CoreDeviceThingName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    CreateAccessPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateAccessPolicyRequest", name: "CreateAccessPolicyRequest")
    CreateAccessPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateAccessPolicyResponse", name: "CreateAccessPolicyResponse")
    CreateAssetModelCompositeModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateAssetModelCompositeModelRequest", name: "CreateAssetModelCompositeModelRequest")
    CreateAssetModelCompositeModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateAssetModelCompositeModelResponse", name: "CreateAssetModelCompositeModelResponse")
    CreateAssetModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateAssetModelRequest", name: "CreateAssetModelRequest")
    CreateAssetModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateAssetModelResponse", name: "CreateAssetModelResponse")
    CreateAssetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateAssetRequest", name: "CreateAssetRequest")
    CreateAssetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateAssetResponse", name: "CreateAssetResponse")
    CreateBulkImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateBulkImportJobRequest", name: "CreateBulkImportJobRequest")
    CreateBulkImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateBulkImportJobResponse", name: "CreateBulkImportJobResponse")
    CreateComputationModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateComputationModelRequest", name: "CreateComputationModelRequest")
    CreateComputationModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateComputationModelResponse", name: "CreateComputationModelResponse")
    CreateDashboardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateDashboardRequest", name: "CreateDashboardRequest")
    CreateDashboardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateDashboardResponse", name: "CreateDashboardResponse")
    CreateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateDatasetRequest", name: "CreateDatasetRequest")
    CreateDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateDatasetResponse", name: "CreateDatasetResponse")
    CreateGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateGatewayRequest", name: "CreateGatewayRequest")
    CreateGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateGatewayResponse", name: "CreateGatewayResponse")
    CreateMissingProperty = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotsitewise#CreateMissingProperty", name: "CreateMissingProperty", traits: {"smithy.api#default" => false})
    CreatePortalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreatePortalRequest", name: "CreatePortalRequest")
    CreatePortalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreatePortalResponse", name: "CreatePortalResponse")
    CreateProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateProjectRequest", name: "CreateProjectRequest")
    CreateProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CreateProjectResponse", name: "CreateProjectResponse")
    Csv = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Csv", name: "Csv")
    CustomID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#CustomID", name: "CustomID", traits: {"smithy.api#length" => {"min" => 13, "max" => 139}, "smithy.api#pattern" => "^(?!00000000-0000-0000-0000-000000000000)[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$|^externalId:[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+$"})
    CustomerManagedS3Storage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#CustomerManagedS3Storage", name: "CustomerManagedS3Storage")
    DashboardDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#DashboardDefinition", name: "DashboardDefinition", traits: {"smithy.api#length" => {"min" => 0, "max" => 204800}, "smithy.api#pattern" => "^.+$"})
    DashboardSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#DashboardSummaries", name: "DashboardSummaries")
    DashboardSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DashboardSummary", name: "DashboardSummary")
    DataBindingValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DataBindingValue", name: "DataBindingValue")
    DataBindingValueFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DataBindingValueFilter", name: "DataBindingValueFilter")
    DataSetReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DataSetReference", name: "DataSetReference")
    DatasetSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DatasetSource", name: "DatasetSource")
    DatasetSourceFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#DatasetSourceFormat", name: "DatasetSourceFormat")
    DatasetSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#DatasetSourceType", name: "DatasetSourceType")
    DatasetState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#DatasetState", name: "DatasetState")
    DatasetStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DatasetStatus", name: "DatasetStatus")
    DatasetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#DatasetSummaries", name: "DatasetSummaries")
    DatasetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DatasetSummary", name: "DatasetSummary")
    Datum = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Datum", name: "Datum")
    DatumList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#DatumList", name: "DatumList")
    DefaultValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#DefaultValue", name: "DefaultValue", traits: {"smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    DeleteAccessPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteAccessPolicyRequest", name: "DeleteAccessPolicyRequest")
    DeleteAccessPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteAccessPolicyResponse", name: "DeleteAccessPolicyResponse")
    DeleteAssetModelCompositeModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteAssetModelCompositeModelRequest", name: "DeleteAssetModelCompositeModelRequest")
    DeleteAssetModelCompositeModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteAssetModelCompositeModelResponse", name: "DeleteAssetModelCompositeModelResponse")
    DeleteAssetModelInterfaceRelationshipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteAssetModelInterfaceRelationshipRequest", name: "DeleteAssetModelInterfaceRelationshipRequest")
    DeleteAssetModelInterfaceRelationshipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteAssetModelInterfaceRelationshipResponse", name: "DeleteAssetModelInterfaceRelationshipResponse")
    DeleteAssetModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteAssetModelRequest", name: "DeleteAssetModelRequest")
    DeleteAssetModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteAssetModelResponse", name: "DeleteAssetModelResponse")
    DeleteAssetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteAssetRequest", name: "DeleteAssetRequest")
    DeleteAssetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteAssetResponse", name: "DeleteAssetResponse")
    DeleteComputationModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteComputationModelRequest", name: "DeleteComputationModelRequest")
    DeleteComputationModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteComputationModelResponse", name: "DeleteComputationModelResponse")
    DeleteDashboardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteDashboardRequest", name: "DeleteDashboardRequest")
    DeleteDashboardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteDashboardResponse", name: "DeleteDashboardResponse")
    DeleteDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteDatasetRequest", name: "DeleteDatasetRequest")
    DeleteDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteDatasetResponse", name: "DeleteDatasetResponse")
    DeleteFilesAfterImport = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotsitewise#DeleteFilesAfterImport", name: "DeleteFilesAfterImport")
    DeleteGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteGatewayRequest", name: "DeleteGatewayRequest")
    DeletePortalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeletePortalRequest", name: "DeletePortalRequest")
    DeletePortalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeletePortalResponse", name: "DeletePortalResponse")
    DeleteProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteProjectRequest", name: "DeleteProjectRequest")
    DeleteProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteProjectResponse", name: "DeleteProjectResponse")
    DeleteTimeSeriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DeleteTimeSeriesRequest", name: "DeleteTimeSeriesRequest")
    DescribeAccessPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeAccessPolicyRequest", name: "DescribeAccessPolicyRequest")
    DescribeAccessPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeAccessPolicyResponse", name: "DescribeAccessPolicyResponse")
    DescribeActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeActionRequest", name: "DescribeActionRequest")
    DescribeActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeActionResponse", name: "DescribeActionResponse")
    DescribeAssetCompositeModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeAssetCompositeModelRequest", name: "DescribeAssetCompositeModelRequest")
    DescribeAssetCompositeModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeAssetCompositeModelResponse", name: "DescribeAssetCompositeModelResponse")
    DescribeAssetModelCompositeModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeAssetModelCompositeModelRequest", name: "DescribeAssetModelCompositeModelRequest")
    DescribeAssetModelCompositeModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeAssetModelCompositeModelResponse", name: "DescribeAssetModelCompositeModelResponse")
    DescribeAssetModelInterfaceRelationshipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeAssetModelInterfaceRelationshipRequest", name: "DescribeAssetModelInterfaceRelationshipRequest")
    DescribeAssetModelInterfaceRelationshipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeAssetModelInterfaceRelationshipResponse", name: "DescribeAssetModelInterfaceRelationshipResponse")
    DescribeAssetModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeAssetModelRequest", name: "DescribeAssetModelRequest")
    DescribeAssetModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeAssetModelResponse", name: "DescribeAssetModelResponse")
    DescribeAssetPropertyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeAssetPropertyRequest", name: "DescribeAssetPropertyRequest")
    DescribeAssetPropertyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeAssetPropertyResponse", name: "DescribeAssetPropertyResponse")
    DescribeAssetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeAssetRequest", name: "DescribeAssetRequest")
    DescribeAssetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeAssetResponse", name: "DescribeAssetResponse")
    DescribeBulkImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeBulkImportJobRequest", name: "DescribeBulkImportJobRequest")
    DescribeBulkImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeBulkImportJobResponse", name: "DescribeBulkImportJobResponse")
    DescribeComputationModelExecutionSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeComputationModelExecutionSummaryRequest", name: "DescribeComputationModelExecutionSummaryRequest")
    DescribeComputationModelExecutionSummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeComputationModelExecutionSummaryResponse", name: "DescribeComputationModelExecutionSummaryResponse")
    DescribeComputationModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeComputationModelRequest", name: "DescribeComputationModelRequest")
    DescribeComputationModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeComputationModelResponse", name: "DescribeComputationModelResponse")
    DescribeDashboardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeDashboardRequest", name: "DescribeDashboardRequest")
    DescribeDashboardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeDashboardResponse", name: "DescribeDashboardResponse")
    DescribeDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeDatasetRequest", name: "DescribeDatasetRequest")
    DescribeDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeDatasetResponse", name: "DescribeDatasetResponse")
    DescribeDefaultEncryptionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeDefaultEncryptionConfigurationRequest", name: "DescribeDefaultEncryptionConfigurationRequest")
    DescribeDefaultEncryptionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeDefaultEncryptionConfigurationResponse", name: "DescribeDefaultEncryptionConfigurationResponse")
    DescribeExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeExecutionRequest", name: "DescribeExecutionRequest")
    DescribeExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeExecutionResponse", name: "DescribeExecutionResponse")
    DescribeGatewayCapabilityConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeGatewayCapabilityConfigurationRequest", name: "DescribeGatewayCapabilityConfigurationRequest")
    DescribeGatewayCapabilityConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeGatewayCapabilityConfigurationResponse", name: "DescribeGatewayCapabilityConfigurationResponse")
    DescribeGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeGatewayRequest", name: "DescribeGatewayRequest")
    DescribeGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeGatewayResponse", name: "DescribeGatewayResponse")
    DescribeLoggingOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeLoggingOptionsRequest", name: "DescribeLoggingOptionsRequest")
    DescribeLoggingOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeLoggingOptionsResponse", name: "DescribeLoggingOptionsResponse")
    DescribePortalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribePortalRequest", name: "DescribePortalRequest")
    DescribePortalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribePortalResponse", name: "DescribePortalResponse")
    DescribeProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeProjectRequest", name: "DescribeProjectRequest")
    DescribeProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeProjectResponse", name: "DescribeProjectResponse")
    DescribeStorageConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeStorageConfigurationRequest", name: "DescribeStorageConfigurationRequest")
    DescribeStorageConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeStorageConfigurationResponse", name: "DescribeStorageConfigurationResponse")
    DescribeTimeSeriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeTimeSeriesRequest", name: "DescribeTimeSeriesRequest")
    DescribeTimeSeriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DescribeTimeSeriesResponse", name: "DescribeTimeSeriesResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    DetailedError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DetailedError", name: "DetailedError")
    DetailedErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#DetailedErrorCode", name: "DetailedErrorCode")
    DetailedErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#DetailedErrorMessage", name: "DetailedErrorMessage")
    DetailedErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#DetailedErrors", name: "DetailedErrors")
    DisallowIngestNullNaN = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotsitewise#DisallowIngestNullNaN", name: "DisallowIngestNullNaN")
    DisassociateAssetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DisassociateAssetsRequest", name: "DisassociateAssetsRequest")
    DisassociateTimeSeriesFromAssetPropertyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#DisassociateTimeSeriesFromAssetPropertyRequest", name: "DisassociateTimeSeriesFromAssetPropertyRequest")
    DisassociatedDataStorageState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#DisassociatedDataStorageState", name: "DisassociatedDataStorageState")
    ETag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ETag", name: "ETag", traits: {"smithy.api#pattern" => "^[\\w-]{43}$"})
    Email = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#Email", name: "Email", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\.\\+]+@[a-zA-Z0-9_\\-\\.\\+]+\\.[a-zA-Z]{2,}$", "smithy.api#sensitive" => {}})
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#EncryptionType", name: "EncryptionType")
    EntryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#EntryId", name: "EntryId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ErrorCode", name: "ErrorCode")
    ErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ErrorDetails", name: "ErrorDetails")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ErrorMessage", name: "ErrorMessage")
    ErrorReportLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ErrorReportLocation", name: "ErrorReportLocation")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ExceptionMessage", name: "ExceptionMessage")
    ExcludeProperties = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotsitewise#ExcludeProperties", name: "ExcludeProperties", traits: {"smithy.api#default" => false})
    ExecuteActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ExecuteActionRequest", name: "ExecuteActionRequest")
    ExecuteActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ExecuteActionResponse", name: "ExecuteActionResponse")
    ExecuteQueryMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotsitewise#ExecuteQueryMaxResults", name: "ExecuteQueryMaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    ExecuteQueryNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ExecuteQueryNextToken", name: "ExecuteQueryNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    ExecuteQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ExecuteQueryRequest", name: "ExecuteQueryRequest")
    ExecuteQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ExecuteQueryResponse", name: "ExecuteQueryResponse")
    ExecutionDetails = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iotsitewise#ExecutionDetails", name: "ExecutionDetails")
    ExecutionDetailsKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ExecutionDetailsKey", name: "ExecutionDetailsKey", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    ExecutionDetailsValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ExecutionDetailsValue", name: "ExecutionDetailsValue", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    ExecutionResult = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iotsitewise#ExecutionResult", name: "ExecutionResult")
    ExecutionResultKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ExecutionResultKey", name: "ExecutionResultKey", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    ExecutionResultValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ExecutionResultValue", name: "ExecutionResultValue", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    ExecutionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ExecutionState", name: "ExecutionState")
    ExecutionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ExecutionStatus", name: "ExecutionStatus")
    ExecutionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#ExecutionSummaries", name: "ExecutionSummaries")
    ExecutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ExecutionSummary", name: "ExecutionSummary")
    Expression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#Expression", name: "Expression", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ExpressionVariable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ExpressionVariable", name: "ExpressionVariable")
    ExpressionVariables = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#ExpressionVariables", name: "ExpressionVariables")
    ExternalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ExternalId", name: "ExternalId", traits: {"smithy.api#length" => {"min" => 2, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+$"})
    File = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#File", name: "File")
    FileFormat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#FileFormat", name: "FileFormat")
    Files = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#Files", name: "Files")
    ForwardingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ForwardingConfig", name: "ForwardingConfig")
    ForwardingConfigState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ForwardingConfigState", name: "ForwardingConfigState")
    GatewayCapabilitySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#GatewayCapabilitySummaries", name: "GatewayCapabilitySummaries")
    GatewayCapabilitySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#GatewayCapabilitySummary", name: "GatewayCapabilitySummary")
    GatewayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#GatewayName", name: "GatewayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    GatewayPlatform = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#GatewayPlatform", name: "GatewayPlatform")
    GatewaySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#GatewaySummaries", name: "GatewaySummaries")
    GatewaySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#GatewaySummary", name: "GatewaySummary")
    GatewayVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#GatewayVersion", name: "GatewayVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[0-9]+$"})
    GetAssetPropertyAggregatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#GetAssetPropertyAggregatesRequest", name: "GetAssetPropertyAggregatesRequest")
    GetAssetPropertyAggregatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#GetAssetPropertyAggregatesResponse", name: "GetAssetPropertyAggregatesResponse")
    GetAssetPropertyValueAggregatesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotsitewise#GetAssetPropertyValueAggregatesMaxResults", name: "GetAssetPropertyValueAggregatesMaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    GetAssetPropertyValueHistoryMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotsitewise#GetAssetPropertyValueHistoryMaxResults", name: "GetAssetPropertyValueHistoryMaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    GetAssetPropertyValueHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#GetAssetPropertyValueHistoryRequest", name: "GetAssetPropertyValueHistoryRequest")
    GetAssetPropertyValueHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#GetAssetPropertyValueHistoryResponse", name: "GetAssetPropertyValueHistoryResponse")
    GetAssetPropertyValueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#GetAssetPropertyValueRequest", name: "GetAssetPropertyValueRequest")
    GetAssetPropertyValueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#GetAssetPropertyValueResponse", name: "GetAssetPropertyValueResponse")
    GetInterpolatedAssetPropertyValuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#GetInterpolatedAssetPropertyValuesRequest", name: "GetInterpolatedAssetPropertyValuesRequest")
    GetInterpolatedAssetPropertyValuesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#GetInterpolatedAssetPropertyValuesResponse", name: "GetInterpolatedAssetPropertyValuesResponse")
    Greengrass = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Greengrass", name: "Greengrass")
    GreengrassV2 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#GreengrassV2", name: "GreengrassV2")
    GroupIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#GroupIdentity", name: "GroupIdentity")
    HierarchyMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#HierarchyMapping", name: "HierarchyMapping")
    HierarchyMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#HierarchyMappings", name: "HierarchyMappings")
    IAMRoleIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#IAMRoleIdentity", name: "IAMRoleIdentity")
    IAMUserIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#IAMUserIdentity", name: "IAMUserIdentity")
    ID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ID", name: "ID", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^(?!00000000-0000-0000-0000-000000000000)[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    IDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#IDs", name: "IDs", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    IamArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#IamArn", name: "IamArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-cn|-us-gov)?:[a-zA-Z0-9-:\\/_\\.\\+=,@]+$"})
    Identity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Identity", name: "Identity")
    IdentityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#IdentityId", name: "IdentityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    IdentityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#IdentityType", name: "IdentityType")
    Image = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Image", name: "Image")
    ImageFile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ImageFile", name: "ImageFile")
    ImageFileData = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.iotsitewise#ImageFileData", name: "ImageFileData", traits: {"smithy.api#length" => {"min" => 1, "max" => 1500000}})
    ImageFileType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ImageFileType", name: "ImageFileType")
    ImageLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ImageLocation", name: "ImageLocation")
    InputProperties = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#InputProperties", name: "InputProperties", traits: {"smithy.api#length" => {"min" => 4, "max" => 67}, "smithy.api#pattern" => "^\\$\\{[a-z][a-z0-9_]*\\}$"})
    InterfaceDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#InterfaceDetails", name: "InterfaceDetails")
    InterfaceRelationship = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#InterfaceRelationship", name: "InterfaceRelationship")
    InterfaceRelationshipSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#InterfaceRelationshipSummaries", name: "InterfaceRelationshipSummaries")
    InterfaceRelationshipSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#InterfaceRelationshipSummary", name: "InterfaceRelationshipSummary")
    InterfaceSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#InterfaceSummaries", name: "InterfaceSummaries")
    InterfaceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#InterfaceSummary", name: "InterfaceSummary")
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#InternalFailureException", name: "InternalFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InterpolatedAssetPropertyValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#InterpolatedAssetPropertyValue", name: "InterpolatedAssetPropertyValue")
    InterpolatedAssetPropertyValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#InterpolatedAssetPropertyValues", name: "InterpolatedAssetPropertyValues")
    InterpolationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#InterpolationType", name: "InterpolationType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Interval = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#Interval", name: "Interval", traits: {"smithy.api#length" => {"min" => 2, "max" => 23}})
    IntervalInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotsitewise#IntervalInSeconds", name: "IntervalInSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 320000000}})
    IntervalWindowInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotsitewise#IntervalWindowInSeconds", name: "IntervalWindowInSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 320000000}})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#InvocationOutput", name: "InvocationOutput")
    InvokeAssistantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#InvokeAssistantRequest", name: "InvokeAssistantRequest")
    InvokeAssistantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#InvokeAssistantResponse", name: "InvokeAssistantResponse")
    IotCoreThingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#IotCoreThingName", name: "IotCoreThingName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    JobConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#JobConfiguration", name: "JobConfiguration")
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#JobStatus", name: "JobStatus")
    JobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#JobSummaries", name: "JobSummaries")
    JobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#JobSummary", name: "JobSummary")
    KendraSourceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#KendraSourceDetail", name: "KendraSourceDetail")
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    ListAccessPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAccessPoliciesRequest", name: "ListAccessPoliciesRequest")
    ListAccessPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAccessPoliciesResponse", name: "ListAccessPoliciesResponse")
    ListActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListActionsRequest", name: "ListActionsRequest")
    ListActionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListActionsResponse", name: "ListActionsResponse")
    ListAssetModelCompositeModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAssetModelCompositeModelsRequest", name: "ListAssetModelCompositeModelsRequest")
    ListAssetModelCompositeModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAssetModelCompositeModelsResponse", name: "ListAssetModelCompositeModelsResponse")
    ListAssetModelPropertiesFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ListAssetModelPropertiesFilter", name: "ListAssetModelPropertiesFilter")
    ListAssetModelPropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAssetModelPropertiesRequest", name: "ListAssetModelPropertiesRequest")
    ListAssetModelPropertiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAssetModelPropertiesResponse", name: "ListAssetModelPropertiesResponse")
    ListAssetModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAssetModelsRequest", name: "ListAssetModelsRequest")
    ListAssetModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAssetModelsResponse", name: "ListAssetModelsResponse")
    ListAssetModelsTypeFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#ListAssetModelsTypeFilter", name: "ListAssetModelsTypeFilter")
    ListAssetPropertiesFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ListAssetPropertiesFilter", name: "ListAssetPropertiesFilter")
    ListAssetPropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAssetPropertiesRequest", name: "ListAssetPropertiesRequest")
    ListAssetPropertiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAssetPropertiesResponse", name: "ListAssetPropertiesResponse")
    ListAssetRelationshipsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAssetRelationshipsRequest", name: "ListAssetRelationshipsRequest")
    ListAssetRelationshipsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAssetRelationshipsResponse", name: "ListAssetRelationshipsResponse")
    ListAssetsFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ListAssetsFilter", name: "ListAssetsFilter")
    ListAssetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAssetsRequest", name: "ListAssetsRequest")
    ListAssetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAssetsResponse", name: "ListAssetsResponse")
    ListAssociatedAssetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAssociatedAssetsRequest", name: "ListAssociatedAssetsRequest")
    ListAssociatedAssetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListAssociatedAssetsResponse", name: "ListAssociatedAssetsResponse")
    ListBulkImportJobsFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ListBulkImportJobsFilter", name: "ListBulkImportJobsFilter")
    ListBulkImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListBulkImportJobsRequest", name: "ListBulkImportJobsRequest")
    ListBulkImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListBulkImportJobsResponse", name: "ListBulkImportJobsResponse")
    ListCompositionRelationshipsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListCompositionRelationshipsRequest", name: "ListCompositionRelationshipsRequest")
    ListCompositionRelationshipsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListCompositionRelationshipsResponse", name: "ListCompositionRelationshipsResponse")
    ListComputationModelDataBindingUsagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListComputationModelDataBindingUsagesRequest", name: "ListComputationModelDataBindingUsagesRequest")
    ListComputationModelDataBindingUsagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListComputationModelDataBindingUsagesResponse", name: "ListComputationModelDataBindingUsagesResponse")
    ListComputationModelResolveToResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListComputationModelResolveToResourcesRequest", name: "ListComputationModelResolveToResourcesRequest")
    ListComputationModelResolveToResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListComputationModelResolveToResourcesResponse", name: "ListComputationModelResolveToResourcesResponse")
    ListComputationModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListComputationModelsRequest", name: "ListComputationModelsRequest")
    ListComputationModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListComputationModelsResponse", name: "ListComputationModelsResponse")
    ListDashboardsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListDashboardsRequest", name: "ListDashboardsRequest")
    ListDashboardsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListDashboardsResponse", name: "ListDashboardsResponse")
    ListDatasetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListDatasetsRequest", name: "ListDatasetsRequest")
    ListDatasetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListDatasetsResponse", name: "ListDatasetsResponse")
    ListExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListExecutionsRequest", name: "ListExecutionsRequest")
    ListExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListExecutionsResponse", name: "ListExecutionsResponse")
    ListGatewaysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListGatewaysRequest", name: "ListGatewaysRequest")
    ListGatewaysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListGatewaysResponse", name: "ListGatewaysResponse")
    ListInterfaceRelationshipsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListInterfaceRelationshipsRequest", name: "ListInterfaceRelationshipsRequest")
    ListInterfaceRelationshipsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListInterfaceRelationshipsResponse", name: "ListInterfaceRelationshipsResponse")
    ListPortalsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListPortalsRequest", name: "ListPortalsRequest")
    ListPortalsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListPortalsResponse", name: "ListPortalsResponse")
    ListProjectAssetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListProjectAssetsRequest", name: "ListProjectAssetsRequest")
    ListProjectAssetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListProjectAssetsResponse", name: "ListProjectAssetsResponse")
    ListProjectsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListProjectsRequest", name: "ListProjectsRequest")
    ListProjectsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListProjectsResponse", name: "ListProjectsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTimeSeriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListTimeSeriesRequest", name: "ListTimeSeriesRequest")
    ListTimeSeriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ListTimeSeriesResponse", name: "ListTimeSeriesResponse")
    ListTimeSeriesType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ListTimeSeriesType", name: "ListTimeSeriesType")
    Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Location", name: "Location")
    LoggingLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#LoggingLevel", name: "LoggingLevel")
    LoggingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#LoggingOptions", name: "LoggingOptions")
    Macro = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#Macro", name: "Macro", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    MatchByPropertyName = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotsitewise#MatchByPropertyName", name: "MatchByPropertyName", traits: {"smithy.api#default" => false})
    MatchedDataBinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#MatchedDataBinding", name: "MatchedDataBinding")
    MaxInterpolatedResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotsitewise#MaxInterpolatedResults", name: "MaxInterpolatedResults", traits: {"smithy.api#range" => {"min" => 1}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotsitewise#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 250}})
    Measurement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Measurement", name: "Measurement")
    MeasurementProcessingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#MeasurementProcessingConfig", name: "MeasurementProcessingConfig")
    MessageInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#MessageInput", name: "MessageInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#sensitive" => {}})
    Metric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Metric", name: "Metric")
    MetricProcessingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#MetricProcessingConfig", name: "MetricProcessingConfig")
    MetricWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#MetricWindow", name: "MetricWindow")
    MonitorErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#MonitorErrorCode", name: "MonitorErrorCode")
    MonitorErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#MonitorErrorDetails", name: "MonitorErrorDetails")
    MonitorErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#MonitorErrorMessage", name: "MonitorErrorMessage")
    MultiLayerStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#MultiLayerStorage", name: "MultiLayerStorage")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[A-Za-z0-9+/=]+$"})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotsitewise#NullableBoolean", name: "NullableBoolean")
    NumberOfDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotsitewise#NumberOfDays", name: "NumberOfDays")
    Offset = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#Offset", name: "Offset", traits: {"smithy.api#length" => {"min" => 2, "max" => 25}})
    OffsetInNanos = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotsitewise#OffsetInNanos", name: "OffsetInNanos", traits: {"smithy.api#range" => {"min" => 0, "max" => 999999999}})
    Parquet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Parquet", name: "Parquet")
    Permission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#Permission", name: "Permission")
    PortalClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#PortalClientId", name: "PortalClientId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[!-~]*$"})
    PortalResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PortalResource", name: "PortalResource")
    PortalState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#PortalState", name: "PortalState")
    PortalStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PortalStatus", name: "PortalStatus")
    PortalSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#PortalSummaries", name: "PortalSummaries")
    PortalSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PortalSummary", name: "PortalSummary")
    PortalTools = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#PortalTools", name: "PortalTools")
    PortalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#PortalType", name: "PortalType")
    PortalTypeConfiguration = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iotsitewise#PortalTypeConfiguration", name: "PortalTypeConfiguration")
    PortalTypeEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PortalTypeEntry", name: "PortalTypeEntry")
    PortalTypeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#PortalTypeKey", name: "PortalTypeKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    PreconditionFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PreconditionFailedException", name: "PreconditionFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    ProjectResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ProjectResource", name: "ProjectResource")
    ProjectSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#ProjectSummaries", name: "ProjectSummaries")
    ProjectSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ProjectSummary", name: "ProjectSummary")
    Property = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Property", name: "Property")
    PropertyAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#PropertyAlias", name: "PropertyAlias", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    PropertyDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#PropertyDataType", name: "PropertyDataType")
    PropertyMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PropertyMapping", name: "PropertyMapping")
    PropertyMappingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PropertyMappingConfiguration", name: "PropertyMappingConfiguration")
    PropertyMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#PropertyMappings", name: "PropertyMappings")
    PropertyNotification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PropertyNotification", name: "PropertyNotification")
    PropertyNotificationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#PropertyNotificationState", name: "PropertyNotificationState")
    PropertyNotificationTopic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#PropertyNotificationTopic", name: "PropertyNotificationTopic")
    PropertyType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PropertyType", name: "PropertyType")
    PropertyUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#PropertyUnit", name: "PropertyUnit", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    PropertyValueBooleanValue = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotsitewise#PropertyValueBooleanValue", name: "PropertyValueBooleanValue")
    PropertyValueDoubleValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotsitewise#PropertyValueDoubleValue", name: "PropertyValueDoubleValue")
    PropertyValueIntegerValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotsitewise#PropertyValueIntegerValue", name: "PropertyValueIntegerValue")
    PropertyValueNullValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PropertyValueNullValue", name: "PropertyValueNullValue")
    PropertyValueStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#PropertyValueStringValue", name: "PropertyValueStringValue")
    PutAssetModelInterfaceRelationshipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PutAssetModelInterfaceRelationshipRequest", name: "PutAssetModelInterfaceRelationshipRequest")
    PutAssetModelInterfaceRelationshipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PutAssetModelInterfaceRelationshipResponse", name: "PutAssetModelInterfaceRelationshipResponse")
    PutAssetPropertyValueEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#PutAssetPropertyValueEntries", name: "PutAssetPropertyValueEntries")
    PutAssetPropertyValueEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PutAssetPropertyValueEntry", name: "PutAssetPropertyValueEntry")
    PutDefaultEncryptionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PutDefaultEncryptionConfigurationRequest", name: "PutDefaultEncryptionConfigurationRequest")
    PutDefaultEncryptionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PutDefaultEncryptionConfigurationResponse", name: "PutDefaultEncryptionConfigurationResponse")
    PutLoggingOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PutLoggingOptionsRequest", name: "PutLoggingOptionsRequest")
    PutLoggingOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PutLoggingOptionsResponse", name: "PutLoggingOptionsResponse")
    PutStorageConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PutStorageConfigurationRequest", name: "PutStorageConfigurationRequest")
    PutStorageConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#PutStorageConfigurationResponse", name: "PutStorageConfigurationResponse")
    Qualities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#Qualities", name: "Qualities", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Quality = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#Quality", name: "Quality")
    QueryStatement = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#QueryStatement", name: "QueryStatement", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    QueryTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#QueryTimeoutException", name: "QueryTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RawValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#RawValueType", name: "RawValueType")
    Reference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Reference", name: "Reference")
    Resolution = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#Resolution", name: "Resolution", traits: {"smithy.api#length" => {"min" => 2, "max" => 3}, "smithy.api#pattern" => "^1m|15m|1h|1d$"})
    ResolveTo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ResolveTo", name: "ResolveTo")
    ResolveToResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ResolveToResourceType", name: "ResolveToResourceType")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Resource", name: "Resource")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ResourceArn", name: "ResourceArn")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ResourceId", name: "ResourceId")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ResourceType", name: "ResourceType")
    ResponseStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.iotsitewise#ResponseStream", name: "ResponseStream", traits: {"smithy.api#streaming" => {}})
    RestrictedDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#RestrictedDescription", name: "RestrictedDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    RestrictedName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#RestrictedName", name: "RestrictedName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    ResultProperty = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ResultProperty", name: "ResultProperty", traits: {"smithy.api#length" => {"min" => 4, "max" => 67}, "smithy.api#pattern" => "^\\$\\{[a-z][a-z0-9_]*\\}$"})
    RetentionPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#RetentionPeriod", name: "RetentionPeriod")
    Row = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Row", name: "Row")
    Rows = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#Rows", name: "Rows")
    SSOApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#SSOApplicationId", name: "SSOApplicationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]*$"})
    ScalarType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#ScalarType", name: "ScalarType")
    ScalarValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#ScalarValue", name: "ScalarValue")
    SelectAll = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#SelectAll", name: "SelectAll", traits: {"smithy.api#pattern" => "^\\*$"})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SiemensIE = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#SiemensIE", name: "SiemensIE")
    Source = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Source", name: "Source")
    SourceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#SourceDetail", name: "SourceDetail")
    StorageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#StorageType", name: "StorageType")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#String", name: "String")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iotsitewise#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#TargetResource", name: "TargetResource")
    TargetResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#TargetResourceType", name: "TargetResourceType")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeInNanos = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#TimeInNanos", name: "TimeInNanos")
    TimeInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotsitewise#TimeInSeconds", name: "TimeInSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 9223372036854774}})
    TimeOrdering = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#TimeOrdering", name: "TimeOrdering")
    TimeSeriesId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#TimeSeriesId", name: "TimeSeriesId", traits: {"smithy.api#length" => {"min" => 36, "max" => 73}})
    TimeSeriesSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#TimeSeriesSummaries", name: "TimeSeriesSummaries")
    TimeSeriesSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#TimeSeriesSummary", name: "TimeSeriesSummary")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotsitewise#Timestamp", name: "Timestamp")
    Timestamps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotsitewise#Timestamps", name: "Timestamps")
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Trace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Trace", name: "Trace")
    Transform = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Transform", name: "Transform")
    TransformProcessingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#TransformProcessingConfig", name: "TransformProcessingConfig")
    TraversalDirection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#TraversalDirection", name: "TraversalDirection")
    TraversalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#TraversalType", name: "TraversalType")
    TumblingWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#TumblingWindow", name: "TumblingWindow")
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    Unlimited = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotsitewise#Unlimited", name: "Unlimited")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAccessPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateAccessPolicyRequest", name: "UpdateAccessPolicyRequest")
    UpdateAccessPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateAccessPolicyResponse", name: "UpdateAccessPolicyResponse")
    UpdateAssetModelCompositeModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateAssetModelCompositeModelRequest", name: "UpdateAssetModelCompositeModelRequest")
    UpdateAssetModelCompositeModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateAssetModelCompositeModelResponse", name: "UpdateAssetModelCompositeModelResponse")
    UpdateAssetModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateAssetModelRequest", name: "UpdateAssetModelRequest")
    UpdateAssetModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateAssetModelResponse", name: "UpdateAssetModelResponse")
    UpdateAssetPropertyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateAssetPropertyRequest", name: "UpdateAssetPropertyRequest")
    UpdateAssetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateAssetRequest", name: "UpdateAssetRequest")
    UpdateAssetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateAssetResponse", name: "UpdateAssetResponse")
    UpdateComputationModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateComputationModelRequest", name: "UpdateComputationModelRequest")
    UpdateComputationModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateComputationModelResponse", name: "UpdateComputationModelResponse")
    UpdateDashboardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateDashboardRequest", name: "UpdateDashboardRequest")
    UpdateDashboardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateDashboardResponse", name: "UpdateDashboardResponse")
    UpdateDatasetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateDatasetRequest", name: "UpdateDatasetRequest")
    UpdateDatasetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateDatasetResponse", name: "UpdateDatasetResponse")
    UpdateGatewayCapabilityConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateGatewayCapabilityConfigurationRequest", name: "UpdateGatewayCapabilityConfigurationRequest")
    UpdateGatewayCapabilityConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateGatewayCapabilityConfigurationResponse", name: "UpdateGatewayCapabilityConfigurationResponse")
    UpdateGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateGatewayRequest", name: "UpdateGatewayRequest")
    UpdatePortalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdatePortalRequest", name: "UpdatePortalRequest")
    UpdatePortalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdatePortalResponse", name: "UpdatePortalResponse")
    UpdateProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateProjectRequest", name: "UpdateProjectRequest")
    UpdateProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UpdateProjectResponse", name: "UpdateProjectResponse")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#Url", name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(http|https)\\://\\S+$"})
    UserIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#UserIdentity", name: "UserIdentity")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VariableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#VariableName", name: "VariableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z][a-z0-9_]*$"})
    VariableValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#VariableValue", name: "VariableValue")
    Variant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#Variant", name: "Variant")
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotsitewise#Version", name: "Version", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^(0|([1-9]{1}\\d*))$"})
    WarmTierRetentionPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotsitewise#WarmTierRetentionPeriod", name: "WarmTierRetentionPeriod")
    WarmTierState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotsitewise#WarmTierState", name: "WarmTierState")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessPolicySummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicySummary, name: "member")
    AccessPolicySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    AccessPolicySummary.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "identity", traits: {"smithy.api#required" => {}}))
    AccessPolicySummary.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "resource", traits: {"smithy.api#required" => {}}))
    AccessPolicySummary.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "permission", traits: {"smithy.api#required" => {}}))
    AccessPolicySummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate"))
    AccessPolicySummary.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateDate"))
    AccessPolicySummary.type = Types::AccessPolicySummary
    ActionDefinition.add_member(:action_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "actionDefinitionId", traits: {"smithy.api#required" => {}}))
    ActionDefinition.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "actionName", traits: {"smithy.api#required" => {}}))
    ActionDefinition.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "actionType", traits: {"smithy.api#required" => {}}))
    ActionDefinition.type = Types::ActionDefinition
    ActionDefinitions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDefinition, name: "member")
    ActionPayload.add_member(:string_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPayloadString, name: "stringValue", traits: {"smithy.api#required" => {}}))
    ActionPayload.type = Types::ActionPayload
    ActionSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionSummary, name: "member")
    ActionSummary.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "actionId"))
    ActionSummary.add_member(:action_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "actionDefinitionId"))
    ActionSummary.add_member(:target_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResource, name: "targetResource"))
    ActionSummary.add_member(:resolve_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolveTo, name: "resolveTo"))
    ActionSummary.type = Types::ActionSummary
    AggregateType.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVERAGE", traits: {"smithy.api#enumValue" => "AVERAGE"}))
    AggregateType.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    AggregateType.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAXIMUM", traits: {"smithy.api#enumValue" => "MAXIMUM"}))
    AggregateType.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINIMUM", traits: {"smithy.api#enumValue" => "MINIMUM"}))
    AggregateType.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUM", traits: {"smithy.api#enumValue" => "SUM"}))
    AggregateType.add_member(:standard_deviation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_DEVIATION", traits: {"smithy.api#enumValue" => "STANDARD_DEVIATION"}))
    AggregateTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateType, name: "member")
    AggregatedValue.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    AggregatedValue.add_member(:quality, ::Smithy::Schema::Shapes::MemberShape.new(target: Quality, name: "quality"))
    AggregatedValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Aggregates, name: "value", traits: {"smithy.api#required" => {}}))
    AggregatedValue.type = Types::AggregatedValue
    AggregatedValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedValue, name: "member")
    Aggregates.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedDoubleValue, name: "average"))
    Aggregates.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedDoubleValue, name: "count"))
    Aggregates.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedDoubleValue, name: "maximum"))
    Aggregates.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedDoubleValue, name: "minimum"))
    Aggregates.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedDoubleValue, name: "sum"))
    Aggregates.add_member(:standard_deviation, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedDoubleValue, name: "standardDeviation"))
    Aggregates.type = Types::Aggregates
    Alarms.add_member(:alarm_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamArn, name: "alarmRoleArn", traits: {"smithy.api#required" => {}}))
    Alarms.add_member(:notification_lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "notificationLambdaArn"))
    Alarms.type = Types::Alarms
    AssetBindingValueFilter.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId", traits: {"smithy.api#required" => {}}))
    AssetBindingValueFilter.type = Types::AssetBindingValueFilter
    AssetCompositeModel.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssetCompositeModel.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AssetCompositeModel.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "type", traits: {"smithy.api#required" => {}}))
    AssetCompositeModel.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetProperties, name: "properties", traits: {"smithy.api#required" => {}}))
    AssetCompositeModel.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    AssetCompositeModel.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetCompositeModel.type = Types::AssetCompositeModel
    AssetCompositeModelPath.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetCompositeModelPathSegment, name: "member")
    AssetCompositeModelPathSegment.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    AssetCompositeModelPathSegment.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    AssetCompositeModelPathSegment.type = Types::AssetCompositeModelPathSegment
    AssetCompositeModelSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetCompositeModelSummary, name: "member")
    AssetCompositeModelSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    AssetCompositeModelSummary.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetCompositeModelSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssetCompositeModelSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "type", traits: {"smithy.api#required" => {}}))
    AssetCompositeModelSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#required" => {}}))
    AssetCompositeModelSummary.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetCompositeModelPath, name: "path", traits: {"smithy.api#required" => {}}))
    AssetCompositeModelSummary.type = Types::AssetCompositeModelSummary
    AssetCompositeModels.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetCompositeModel, name: "member")
    AssetErrorCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    AssetErrorDetails.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId", traits: {"smithy.api#required" => {}}))
    AssetErrorDetails.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    AssetErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    AssetErrorDetails.type = Types::AssetErrorDetails
    AssetHierarchies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetHierarchy, name: "member")
    AssetHierarchy.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    AssetHierarchy.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetHierarchy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssetHierarchy.type = Types::AssetHierarchy
    AssetHierarchyInfo.add_member(:parent_asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "parentAssetId"))
    AssetHierarchyInfo.add_member(:child_asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "childAssetId"))
    AssetHierarchyInfo.type = Types::AssetHierarchyInfo
    AssetIDs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "member")
    AssetModelBindingValueFilter.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    AssetModelBindingValueFilter.type = Types::AssetModelBindingValueFilter
    AssetModelCompositeModel.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssetModelCompositeModel.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AssetModelCompositeModel.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "type", traits: {"smithy.api#required" => {}}))
    AssetModelCompositeModel.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelProperties, name: "properties"))
    AssetModelCompositeModel.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "id"))
    AssetModelCompositeModel.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetModelCompositeModel.type = Types::AssetModelCompositeModel
    AssetModelCompositeModelDefinition.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    AssetModelCompositeModelDefinition.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetModelCompositeModelDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssetModelCompositeModelDefinition.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AssetModelCompositeModelDefinition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "type", traits: {"smithy.api#required" => {}}))
    AssetModelCompositeModelDefinition.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelPropertyDefinitions, name: "properties"))
    AssetModelCompositeModelDefinition.type = Types::AssetModelCompositeModelDefinition
    AssetModelCompositeModelDefinitions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelCompositeModelDefinition, name: "member")
    AssetModelCompositeModelPath.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelCompositeModelPathSegment, name: "member")
    AssetModelCompositeModelPathSegment.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    AssetModelCompositeModelPathSegment.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    AssetModelCompositeModelPathSegment.type = Types::AssetModelCompositeModelPathSegment
    AssetModelCompositeModelSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelCompositeModelSummary, name: "member")
    AssetModelCompositeModelSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    AssetModelCompositeModelSummary.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetModelCompositeModelSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssetModelCompositeModelSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "type", traits: {"smithy.api#required" => {}}))
    AssetModelCompositeModelSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AssetModelCompositeModelSummary.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelCompositeModelPath, name: "path"))
    AssetModelCompositeModelSummary.type = Types::AssetModelCompositeModelSummary
    AssetModelCompositeModels.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelCompositeModel, name: "member")
    AssetModelHierarchies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelHierarchy, name: "member")
    AssetModelHierarchy.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "id"))
    AssetModelHierarchy.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetModelHierarchy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssetModelHierarchy.add_member(:child_asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "childAssetModelId", traits: {"smithy.api#required" => {}}))
    AssetModelHierarchy.type = Types::AssetModelHierarchy
    AssetModelHierarchyDefinition.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    AssetModelHierarchyDefinition.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetModelHierarchyDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssetModelHierarchyDefinition.add_member(:child_asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "childAssetModelId", traits: {"smithy.api#required" => {}}))
    AssetModelHierarchyDefinition.type = Types::AssetModelHierarchyDefinition
    AssetModelHierarchyDefinitions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelHierarchyDefinition, name: "member")
    AssetModelProperties.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelProperty, name: "member")
    AssetModelProperty.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "id"))
    AssetModelProperty.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetModelProperty.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssetModelProperty.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDataType, name: "dataType", traits: {"smithy.api#required" => {}}))
    AssetModelProperty.add_member(:data_type_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "dataTypeSpec"))
    AssetModelProperty.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyUnit, name: "unit"))
    AssetModelProperty.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyType, name: "type", traits: {"smithy.api#required" => {}}))
    AssetModelProperty.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelPropertyPath, name: "path"))
    AssetModelProperty.type = Types::AssetModelProperty
    AssetModelPropertyBindingValue.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    AssetModelPropertyBindingValue.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "propertyId", traits: {"smithy.api#required" => {}}))
    AssetModelPropertyBindingValue.type = Types::AssetModelPropertyBindingValue
    AssetModelPropertyBindingValueFilter.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    AssetModelPropertyBindingValueFilter.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "propertyId", traits: {"smithy.api#required" => {}}))
    AssetModelPropertyBindingValueFilter.type = Types::AssetModelPropertyBindingValueFilter
    AssetModelPropertyDefinition.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    AssetModelPropertyDefinition.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetModelPropertyDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssetModelPropertyDefinition.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDataType, name: "dataType", traits: {"smithy.api#required" => {}}))
    AssetModelPropertyDefinition.add_member(:data_type_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "dataTypeSpec"))
    AssetModelPropertyDefinition.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyUnit, name: "unit"))
    AssetModelPropertyDefinition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyType, name: "type", traits: {"smithy.api#required" => {}}))
    AssetModelPropertyDefinition.type = Types::AssetModelPropertyDefinition
    AssetModelPropertyDefinitions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelPropertyDefinition, name: "member")
    AssetModelPropertyPath.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelPropertyPathSegment, name: "member")
    AssetModelPropertyPathSegment.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    AssetModelPropertyPathSegment.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    AssetModelPropertyPathSegment.type = Types::AssetModelPropertyPathSegment
    AssetModelPropertySummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelPropertySummary, name: "member")
    AssetModelPropertySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    AssetModelPropertySummary.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetModelPropertySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssetModelPropertySummary.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDataType, name: "dataType", traits: {"smithy.api#required" => {}}))
    AssetModelPropertySummary.add_member(:data_type_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "dataTypeSpec"))
    AssetModelPropertySummary.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyUnit, name: "unit"))
    AssetModelPropertySummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyType, name: "type", traits: {"smithy.api#required" => {}}))
    AssetModelPropertySummary.add_member(:asset_model_composite_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelCompositeModelId"))
    AssetModelPropertySummary.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelPropertyPath, name: "path"))
    AssetModelPropertySummary.add_member(:interface_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: InterfaceSummaries, name: "interfaceSummaries"))
    AssetModelPropertySummary.type = Types::AssetModelPropertySummary
    AssetModelState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    AssetModelState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AssetModelState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    AssetModelState.add_member(:propagating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROPAGATING", traits: {"smithy.api#enumValue" => "PROPAGATING"}))
    AssetModelState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    AssetModelState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AssetModelStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelState, name: "state", traits: {"smithy.api#required" => {}}))
    AssetModelStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "error"))
    AssetModelStatus.type = Types::AssetModelStatus
    AssetModelSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelSummary, name: "member")
    AssetModelSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    AssetModelSummary.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetModelSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn", traits: {"smithy.api#required" => {}}))
    AssetModelSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssetModelSummary.add_member(:asset_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelType, name: "assetModelType"))
    AssetModelSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#required" => {}}))
    AssetModelSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    AssetModelSummary.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateDate", traits: {"smithy.api#required" => {}}))
    AssetModelSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AssetModelSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version"))
    AssetModelSummary.type = Types::AssetModelSummary
    AssetModelType.add_member(:asset_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSET_MODEL", traits: {"smithy.api#enumValue" => "ASSET_MODEL"}))
    AssetModelType.add_member(:component_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPONENT_MODEL", traits: {"smithy.api#enumValue" => "COMPONENT_MODEL"}))
    AssetModelType.add_member(:interface, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERFACE", traits: {"smithy.api#enumValue" => "INTERFACE"}))
    AssetModelVersionType.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST", traits: {"smithy.api#enumValue" => "LATEST"}))
    AssetModelVersionType.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AssetProperties.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetProperty, name: "member")
    AssetProperty.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    AssetProperty.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetProperty.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssetProperty.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyAlias, name: "alias"))
    AssetProperty.add_member(:notification, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyNotification, name: "notification"))
    AssetProperty.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDataType, name: "dataType", traits: {"smithy.api#required" => {}}))
    AssetProperty.add_member(:data_type_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "dataTypeSpec"))
    AssetProperty.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyUnit, name: "unit"))
    AssetProperty.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyPath, name: "path"))
    AssetProperty.type = Types::AssetProperty
    AssetPropertyBindingValue.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId", traits: {"smithy.api#required" => {}}))
    AssetPropertyBindingValue.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "propertyId", traits: {"smithy.api#required" => {}}))
    AssetPropertyBindingValue.type = Types::AssetPropertyBindingValue
    AssetPropertyBindingValueFilter.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId", traits: {"smithy.api#required" => {}}))
    AssetPropertyBindingValueFilter.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "propertyId", traits: {"smithy.api#required" => {}}))
    AssetPropertyBindingValueFilter.type = Types::AssetPropertyBindingValueFilter
    AssetPropertyPath.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyPathSegment, name: "member")
    AssetPropertyPathSegment.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    AssetPropertyPathSegment.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    AssetPropertyPathSegment.type = Types::AssetPropertyPathSegment
    AssetPropertySummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertySummary, name: "member")
    AssetPropertySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    AssetPropertySummary.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetPropertySummary.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyAlias, name: "alias"))
    AssetPropertySummary.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyUnit, name: "unit"))
    AssetPropertySummary.add_member(:notification, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyNotification, name: "notification"))
    AssetPropertySummary.add_member(:asset_composite_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetCompositeModelId"))
    AssetPropertySummary.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyPath, name: "path"))
    AssetPropertySummary.type = Types::AssetPropertySummary
    AssetPropertyValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Variant, name: "value", traits: {"smithy.api#required" => {}}))
    AssetPropertyValue.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeInNanos, name: "timestamp", traits: {"smithy.api#required" => {}}))
    AssetPropertyValue.add_member(:quality, ::Smithy::Schema::Shapes::MemberShape.new(target: Quality, name: "quality"))
    AssetPropertyValue.type = Types::AssetPropertyValue
    AssetPropertyValueHistory.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyValue, name: "member")
    AssetPropertyValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyValue, name: "member")
    AssetRelationshipSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetRelationshipSummary, name: "member")
    AssetRelationshipSummary.add_member(:hierarchy_info, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetHierarchyInfo, name: "hierarchyInfo"))
    AssetRelationshipSummary.add_member(:relationship_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetRelationshipType, name: "relationshipType", traits: {"smithy.api#required" => {}}))
    AssetRelationshipSummary.type = Types::AssetRelationshipSummary
    AssetRelationshipType.add_member(:hierarchy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIERARCHY", traits: {"smithy.api#enumValue" => "HIERARCHY"}))
    AssetState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    AssetState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AssetState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    AssetState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    AssetState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AssetStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetState, name: "state", traits: {"smithy.api#required" => {}}))
    AssetStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "error"))
    AssetStatus.type = Types::AssetStatus
    AssetSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetSummary, name: "member")
    AssetSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    AssetSummary.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssetSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn", traits: {"smithy.api#required" => {}}))
    AssetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssetSummary.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    AssetSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    AssetSummary.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateDate", traits: {"smithy.api#required" => {}}))
    AssetSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AssetSummary.add_member(:hierarchies, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetHierarchies, name: "hierarchies", traits: {"smithy.api#required" => {}}))
    AssetSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AssetSummary.type = Types::AssetSummary
    AssociateAssetsRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAssetsRequest.add_member(:hierarchy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "hierarchyId", traits: {"smithy.api#required" => {}}))
    AssociateAssetsRequest.add_member(:child_asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "childAssetId", traits: {"smithy.api#required" => {}}))
    AssociateAssetsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateAssetsRequest.type = Types::AssociateAssetsRequest
    AssociateTimeSeriesToAssetPropertyRequest.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyAlias, name: "alias", traits: {"smithy.api#httpQuery" => "alias", "smithy.api#required" => {}}))
    AssociateTimeSeriesToAssetPropertyRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpQuery" => "assetId", "smithy.api#required" => {}}))
    AssociateTimeSeriesToAssetPropertyRequest.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "propertyId", traits: {"smithy.api#httpQuery" => "propertyId", "smithy.api#required" => {}}))
    AssociateTimeSeriesToAssetPropertyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateTimeSeriesToAssetPropertyRequest.type = Types::AssociateTimeSeriesToAssetPropertyRequest
    AssociatedAssetsSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedAssetsSummary, name: "member")
    AssociatedAssetsSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    AssociatedAssetsSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn", traits: {"smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateDate", traits: {"smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:hierarchies, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetHierarchies, name: "hierarchies", traits: {"smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AssociatedAssetsSummary.type = Types::AssociatedAssetsSummary
    Attribute.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultValue, name: "defaultValue"))
    Attribute.type = Types::Attribute
    AuthMode.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM", traits: {"smithy.api#enumValue" => "IAM"}))
    AuthMode.add_member(:sso, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSO", traits: {"smithy.api#enumValue" => "SSO"}))
    BatchAssociateProjectAssetsErrors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetErrorDetails, name: "member")
    BatchAssociateProjectAssetsRequest.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "projectId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchAssociateProjectAssetsRequest.add_member(:asset_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IDs, name: "assetIds", traits: {"smithy.api#required" => {}}))
    BatchAssociateProjectAssetsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    BatchAssociateProjectAssetsRequest.type = Types::BatchAssociateProjectAssetsRequest
    BatchAssociateProjectAssetsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAssociateProjectAssetsErrors, name: "errors"))
    BatchAssociateProjectAssetsResponse.type = Types::BatchAssociateProjectAssetsResponse
    BatchDisassociateProjectAssetsErrors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetErrorDetails, name: "member")
    BatchDisassociateProjectAssetsRequest.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "projectId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDisassociateProjectAssetsRequest.add_member(:asset_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IDs, name: "assetIds", traits: {"smithy.api#required" => {}}))
    BatchDisassociateProjectAssetsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    BatchDisassociateProjectAssetsRequest.type = Types::BatchDisassociateProjectAssetsRequest
    BatchDisassociateProjectAssetsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDisassociateProjectAssetsErrors, name: "errors"))
    BatchDisassociateProjectAssetsResponse.type = Types::BatchDisassociateProjectAssetsResponse
    BatchEntryCompletionStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    BatchEntryCompletionStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    BatchGetAssetPropertyAggregatesEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyAggregatesEntry, name: "member")
    BatchGetAssetPropertyAggregatesEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryId, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesEntry.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId"))
    BatchGetAssetPropertyAggregatesEntry.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "propertyId"))
    BatchGetAssetPropertyAggregatesEntry.add_member(:property_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyAlias, name: "propertyAlias"))
    BatchGetAssetPropertyAggregatesEntry.add_member(:aggregate_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateTypes, name: "aggregateTypes", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesEntry.add_member(:resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: Resolution, name: "resolution", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesEntry.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDate", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesEntry.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endDate", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesEntry.add_member(:qualities, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualities, name: "qualities"))
    BatchGetAssetPropertyAggregatesEntry.add_member(:time_ordering, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOrdering, name: "timeOrdering"))
    BatchGetAssetPropertyAggregatesEntry.type = Types::BatchGetAssetPropertyAggregatesEntry
    BatchGetAssetPropertyAggregatesErrorCode.add_member(:resource_not_found_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceNotFoundException", traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    BatchGetAssetPropertyAggregatesErrorCode.add_member(:invalid_request_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidRequestException", traits: {"smithy.api#enumValue" => "InvalidRequestException"}))
    BatchGetAssetPropertyAggregatesErrorCode.add_member(:access_denied_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessDeniedException", traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    BatchGetAssetPropertyAggregatesErrorEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyAggregatesErrorEntry, name: "member")
    BatchGetAssetPropertyAggregatesErrorEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyAggregatesErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesErrorEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesErrorEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryId, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesErrorEntry.type = Types::BatchGetAssetPropertyAggregatesErrorEntry
    BatchGetAssetPropertyAggregatesErrorInfo.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyAggregatesErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesErrorInfo.add_member(:error_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "errorTimestamp", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesErrorInfo.type = Types::BatchGetAssetPropertyAggregatesErrorInfo
    BatchGetAssetPropertyAggregatesRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyAggregatesEntries, name: "entries", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    BatchGetAssetPropertyAggregatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyAggregatesMaxResults, name: "maxResults"))
    BatchGetAssetPropertyAggregatesRequest.type = Types::BatchGetAssetPropertyAggregatesRequest
    BatchGetAssetPropertyAggregatesResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyAggregatesErrorEntries, name: "errorEntries", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesResponse.add_member(:success_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyAggregatesSuccessEntries, name: "successEntries", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesResponse.add_member(:skipped_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyAggregatesSkippedEntries, name: "skippedEntries", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    BatchGetAssetPropertyAggregatesResponse.type = Types::BatchGetAssetPropertyAggregatesResponse
    BatchGetAssetPropertyAggregatesSkippedEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyAggregatesSkippedEntry, name: "member")
    BatchGetAssetPropertyAggregatesSkippedEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryId, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesSkippedEntry.add_member(:completion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEntryCompletionStatus, name: "completionStatus", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesSkippedEntry.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyAggregatesErrorInfo, name: "errorInfo"))
    BatchGetAssetPropertyAggregatesSkippedEntry.type = Types::BatchGetAssetPropertyAggregatesSkippedEntry
    BatchGetAssetPropertyAggregatesSuccessEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyAggregatesSuccessEntry, name: "member")
    BatchGetAssetPropertyAggregatesSuccessEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryId, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesSuccessEntry.add_member(:aggregated_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedValues, name: "aggregatedValues", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesSuccessEntry.type = Types::BatchGetAssetPropertyAggregatesSuccessEntry
    BatchGetAssetPropertyValueEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueEntry, name: "member")
    BatchGetAssetPropertyValueEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryId, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueEntry.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId"))
    BatchGetAssetPropertyValueEntry.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "propertyId"))
    BatchGetAssetPropertyValueEntry.add_member(:property_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyAlias, name: "propertyAlias"))
    BatchGetAssetPropertyValueEntry.type = Types::BatchGetAssetPropertyValueEntry
    BatchGetAssetPropertyValueErrorCode.add_member(:resource_not_found_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceNotFoundException", traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    BatchGetAssetPropertyValueErrorCode.add_member(:invalid_request_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidRequestException", traits: {"smithy.api#enumValue" => "InvalidRequestException"}))
    BatchGetAssetPropertyValueErrorCode.add_member(:access_denied_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessDeniedException", traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    BatchGetAssetPropertyValueErrorEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueErrorEntry, name: "member")
    BatchGetAssetPropertyValueErrorEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueErrorEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueErrorEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryId, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueErrorEntry.type = Types::BatchGetAssetPropertyValueErrorEntry
    BatchGetAssetPropertyValueErrorInfo.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueErrorInfo.add_member(:error_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "errorTimestamp", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueErrorInfo.type = Types::BatchGetAssetPropertyValueErrorInfo
    BatchGetAssetPropertyValueHistoryEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueHistoryEntry, name: "member")
    BatchGetAssetPropertyValueHistoryEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryId, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId"))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "propertyId"))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:property_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyAlias, name: "propertyAlias"))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDate"))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endDate"))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:qualities, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualities, name: "qualities"))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:time_ordering, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOrdering, name: "timeOrdering"))
    BatchGetAssetPropertyValueHistoryEntry.type = Types::BatchGetAssetPropertyValueHistoryEntry
    BatchGetAssetPropertyValueHistoryErrorCode.add_member(:resource_not_found_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceNotFoundException", traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    BatchGetAssetPropertyValueHistoryErrorCode.add_member(:invalid_request_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidRequestException", traits: {"smithy.api#enumValue" => "InvalidRequestException"}))
    BatchGetAssetPropertyValueHistoryErrorCode.add_member(:access_denied_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessDeniedException", traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    BatchGetAssetPropertyValueHistoryErrorEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueHistoryErrorEntry, name: "member")
    BatchGetAssetPropertyValueHistoryErrorEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueHistoryErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryErrorEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryErrorEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryId, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryErrorEntry.type = Types::BatchGetAssetPropertyValueHistoryErrorEntry
    BatchGetAssetPropertyValueHistoryErrorInfo.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueHistoryErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryErrorInfo.add_member(:error_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "errorTimestamp", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryErrorInfo.type = Types::BatchGetAssetPropertyValueHistoryErrorInfo
    BatchGetAssetPropertyValueHistoryRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueHistoryEntries, name: "entries", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    BatchGetAssetPropertyValueHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueHistoryMaxResults, name: "maxResults"))
    BatchGetAssetPropertyValueHistoryRequest.type = Types::BatchGetAssetPropertyValueHistoryRequest
    BatchGetAssetPropertyValueHistoryResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueHistoryErrorEntries, name: "errorEntries", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryResponse.add_member(:success_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueHistorySuccessEntries, name: "successEntries", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryResponse.add_member(:skipped_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueHistorySkippedEntries, name: "skippedEntries", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    BatchGetAssetPropertyValueHistoryResponse.type = Types::BatchGetAssetPropertyValueHistoryResponse
    BatchGetAssetPropertyValueHistorySkippedEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueHistorySkippedEntry, name: "member")
    BatchGetAssetPropertyValueHistorySkippedEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryId, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistorySkippedEntry.add_member(:completion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEntryCompletionStatus, name: "completionStatus", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistorySkippedEntry.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueHistoryErrorInfo, name: "errorInfo"))
    BatchGetAssetPropertyValueHistorySkippedEntry.type = Types::BatchGetAssetPropertyValueHistorySkippedEntry
    BatchGetAssetPropertyValueHistorySuccessEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueHistorySuccessEntry, name: "member")
    BatchGetAssetPropertyValueHistorySuccessEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryId, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistorySuccessEntry.add_member(:asset_property_value_history, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyValueHistory, name: "assetPropertyValueHistory", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistorySuccessEntry.type = Types::BatchGetAssetPropertyValueHistorySuccessEntry
    BatchGetAssetPropertyValueRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueEntries, name: "entries", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    BatchGetAssetPropertyValueRequest.type = Types::BatchGetAssetPropertyValueRequest
    BatchGetAssetPropertyValueResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueErrorEntries, name: "errorEntries", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueResponse.add_member(:success_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueSuccessEntries, name: "successEntries", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueResponse.add_member(:skipped_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueSkippedEntries, name: "skippedEntries", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    BatchGetAssetPropertyValueResponse.type = Types::BatchGetAssetPropertyValueResponse
    BatchGetAssetPropertyValueSkippedEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueSkippedEntry, name: "member")
    BatchGetAssetPropertyValueSkippedEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryId, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueSkippedEntry.add_member(:completion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEntryCompletionStatus, name: "completionStatus", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueSkippedEntry.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueErrorInfo, name: "errorInfo"))
    BatchGetAssetPropertyValueSkippedEntry.type = Types::BatchGetAssetPropertyValueSkippedEntry
    BatchGetAssetPropertyValueSuccessEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetAssetPropertyValueSuccessEntry, name: "member")
    BatchGetAssetPropertyValueSuccessEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryId, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchGetAssetPropertyValueSuccessEntry.add_member(:asset_property_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyValue, name: "assetPropertyValue"))
    BatchGetAssetPropertyValueSuccessEntry.type = Types::BatchGetAssetPropertyValueSuccessEntry
    BatchPutAssetPropertyError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutAssetPropertyValueErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    BatchPutAssetPropertyError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    BatchPutAssetPropertyError.add_member(:timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamps, name: "timestamps", traits: {"smithy.api#required" => {}}))
    BatchPutAssetPropertyError.type = Types::BatchPutAssetPropertyError
    BatchPutAssetPropertyErrorEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutAssetPropertyErrorEntry, name: "member")
    BatchPutAssetPropertyErrorEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryId, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchPutAssetPropertyErrorEntry.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutAssetPropertyErrors, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchPutAssetPropertyErrorEntry.type = Types::BatchPutAssetPropertyErrorEntry
    BatchPutAssetPropertyErrors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutAssetPropertyError, name: "member")
    BatchPutAssetPropertyValueErrorCode.add_member(:resource_not_found_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceNotFoundException", traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:invalid_request_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidRequestException", traits: {"smithy.api#enumValue" => "InvalidRequestException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:internal_failure_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalFailureException", traits: {"smithy.api#enumValue" => "InternalFailureException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:service_unavailable_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceUnavailableException", traits: {"smithy.api#enumValue" => "ServiceUnavailableException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:throttling_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ThrottlingException", traits: {"smithy.api#enumValue" => "ThrottlingException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:limit_exceeded_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LimitExceededException", traits: {"smithy.api#enumValue" => "LimitExceededException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:conflicting_operation_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConflictingOperationException", traits: {"smithy.api#enumValue" => "ConflictingOperationException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:timestamp_out_of_range_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TimestampOutOfRangeException", traits: {"smithy.api#enumValue" => "TimestampOutOfRangeException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:access_denied_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessDeniedException", traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    BatchPutAssetPropertyValueRequest.add_member(:enable_partial_entry_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanValue, name: "enablePartialEntryProcessing"))
    BatchPutAssetPropertyValueRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: PutAssetPropertyValueEntries, name: "entries", traits: {"smithy.api#required" => {}}))
    BatchPutAssetPropertyValueRequest.type = Types::BatchPutAssetPropertyValueRequest
    BatchPutAssetPropertyValueResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutAssetPropertyErrorEntries, name: "errorEntries", traits: {"smithy.api#required" => {}}))
    BatchPutAssetPropertyValueResponse.type = Types::BatchPutAssetPropertyValueResponse
    BindingValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelDataBindingValue, name: "member")
    CapabilitySyncStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_SYNC", traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    CapabilitySyncStatus.add_member(:out_of_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUT_OF_SYNC", traits: {"smithy.api#enumValue" => "OUT_OF_SYNC"}))
    CapabilitySyncStatus.add_member(:sync_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNC_FAILED", traits: {"smithy.api#enumValue" => "SYNC_FAILED"}))
    CapabilitySyncStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    CapabilitySyncStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    Citation.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: Reference, name: "reference"))
    Citation.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, name: "content"))
    Citation.type = Types::Citation
    Citations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Citation, name: "member")
    ColumnInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    ColumnInfo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnType, name: "type"))
    ColumnInfo.type = Types::ColumnInfo
    ColumnName.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALIAS", traits: {"smithy.api#enumValue" => "ALIAS"}))
    ColumnName.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSET_ID", traits: {"smithy.api#enumValue" => "ASSET_ID"}))
    ColumnName.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROPERTY_ID", traits: {"smithy.api#enumValue" => "PROPERTY_ID"}))
    ColumnName.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_TYPE", traits: {"smithy.api#enumValue" => "DATA_TYPE"}))
    ColumnName.add_member(:timestamp_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMP_SECONDS", traits: {"smithy.api#enumValue" => "TIMESTAMP_SECONDS"}))
    ColumnName.add_member(:timestamp_nano_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMP_NANO_OFFSET", traits: {"smithy.api#enumValue" => "TIMESTAMP_NANO_OFFSET"}))
    ColumnName.add_member(:quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUALITY", traits: {"smithy.api#enumValue" => "QUALITY"}))
    ColumnName.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUE", traits: {"smithy.api#enumValue" => "VALUE"}))
    ColumnNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "member")
    ColumnType.add_member(:scalar_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalarType, name: "scalarType"))
    ColumnType.type = Types::ColumnType
    ColumnsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnInfo, name: "member")
    CompositeModelProperty.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    CompositeModelProperty.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "type", traits: {"smithy.api#required" => {}}))
    CompositeModelProperty.add_member(:asset_property, ::Smithy::Schema::Shapes::MemberShape.new(target: Property, name: "assetProperty", traits: {"smithy.api#required" => {}}))
    CompositeModelProperty.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    CompositeModelProperty.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    CompositeModelProperty.type = Types::CompositeModelProperty
    CompositionDetails.add_member(:composition_relationship, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionRelationship, name: "compositionRelationship"))
    CompositionDetails.type = Types::CompositionDetails
    CompositionRelationship.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionRelationshipItem, name: "member")
    CompositionRelationshipItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    CompositionRelationshipItem.type = Types::CompositionRelationshipItem
    CompositionRelationshipSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionRelationshipSummary, name: "member")
    CompositionRelationshipSummary.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    CompositionRelationshipSummary.add_member(:asset_model_composite_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelCompositeModelId", traits: {"smithy.api#required" => {}}))
    CompositionRelationshipSummary.add_member(:asset_model_composite_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetModelCompositeModelType", traits: {"smithy.api#required" => {}}))
    CompositionRelationshipSummary.type = Types::CompositionRelationshipSummary
    ComputationModelAnomalyDetectionConfiguration.add_member(:input_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: InputProperties, name: "inputProperties", traits: {"smithy.api#required" => {}}))
    ComputationModelAnomalyDetectionConfiguration.add_member(:result_property, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultProperty, name: "resultProperty", traits: {"smithy.api#required" => {}}))
    ComputationModelAnomalyDetectionConfiguration.type = Types::ComputationModelAnomalyDetectionConfiguration
    ComputationModelConfiguration.add_member(:anomaly_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelAnomalyDetectionConfiguration, name: "anomalyDetection"))
    ComputationModelConfiguration.type = Types::ComputationModelConfiguration
    ComputationModelDataBinding.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelDataBindingVariable, name: "key")
    ComputationModelDataBinding.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelDataBindingValue, name: "value")
    ComputationModelDataBindingUsageSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelDataBindingUsageSummary, name: "member")
    ComputationModelDataBindingUsageSummary.add_member(:computation_model_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelIdList, name: "computationModelIds", traits: {"smithy.api#required" => {}}))
    ComputationModelDataBindingUsageSummary.add_member(:matched_data_binding, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchedDataBinding, name: "matchedDataBinding", traits: {"smithy.api#required" => {}}))
    ComputationModelDataBindingUsageSummary.type = Types::ComputationModelDataBindingUsageSummary
    ComputationModelDataBindingValue.add_member(:asset_model_property, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelPropertyBindingValue, name: "assetModelProperty"))
    ComputationModelDataBindingValue.add_member(:asset_property, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyBindingValue, name: "assetProperty"))
    ComputationModelDataBindingValue.add_member(:list, ::Smithy::Schema::Shapes::MemberShape.new(target: BindingValueList, name: "list"))
    ComputationModelDataBindingValue.type = Types::ComputationModelDataBindingValue
    ComputationModelExecutionSummary.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelExecutionSummaryKey, name: "key")
    ComputationModelExecutionSummary.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelExecutionSummaryValue, name: "value")
    ComputationModelIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "member")
    ComputationModelResolveToResourceSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelResolveToResourceSummary, name: "member")
    ComputationModelResolveToResourceSummary.add_member(:resolve_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolveTo, name: "resolveTo"))
    ComputationModelResolveToResourceSummary.type = Types::ComputationModelResolveToResourceSummary
    ComputationModelState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ComputationModelState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ComputationModelState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ComputationModelState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ComputationModelState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ComputationModelStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelState, name: "state", traits: {"smithy.api#required" => {}}))
    ComputationModelStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "error"))
    ComputationModelStatus.type = Types::ComputationModelStatus
    ComputationModelSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelSummary, name: "member")
    ComputationModelSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    ComputationModelSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn", traits: {"smithy.api#required" => {}}))
    ComputationModelSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedName, name: "name", traits: {"smithy.api#required" => {}}))
    ComputationModelSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedDescription, name: "description"))
    ComputationModelSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelType, name: "type", traits: {"smithy.api#required" => {}}))
    ComputationModelSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    ComputationModelSummary.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateDate", traits: {"smithy.api#required" => {}}))
    ComputationModelSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ComputationModelSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version", traits: {"smithy.api#required" => {}}))
    ComputationModelSummary.type = Types::ComputationModelSummary
    ComputationModelType.add_member(:anomaly_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANOMALY_DETECTION", traits: {"smithy.api#enumValue" => "ANOMALY_DETECTION"}))
    ComputeLocation.add_member(:edge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EDGE", traits: {"smithy.api#enumValue" => "EDGE"}))
    ComputeLocation.add_member(:cloud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUD", traits: {"smithy.api#enumValue" => "CLOUD"}))
    ConfigurationErrorDetails.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    ConfigurationErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ConfigurationErrorDetails.type = Types::ConfigurationErrorDetails
    ConfigurationState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ConfigurationState.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    ConfigurationState.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ConfigurationStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationState, name: "state", traits: {"smithy.api#required" => {}}))
    ConfigurationStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationErrorDetails, name: "error"))
    ConfigurationStatus.type = Types::ConfigurationStatus
    ConflictingOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictingOperationException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictingOperationException.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ConflictingOperationException.type = Types::ConflictingOperationException
    Content.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "text"))
    Content.type = Types::Content
    CoreDeviceOperatingSystem.add_member(:linux_aarch64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX_AARCH64", traits: {"smithy.api#enumValue" => "LINUX_AARCH64"}))
    CoreDeviceOperatingSystem.add_member(:linux_amd64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX_AMD64", traits: {"smithy.api#enumValue" => "LINUX_AMD64"}))
    CoreDeviceOperatingSystem.add_member(:windows_amd64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_AMD64", traits: {"smithy.api#enumValue" => "WINDOWS_AMD64"}))
    CreateAccessPolicyRequest.add_member(:access_policy_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "accessPolicyIdentity", traits: {"smithy.api#required" => {}}))
    CreateAccessPolicyRequest.add_member(:access_policy_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "accessPolicyResource", traits: {"smithy.api#required" => {}}))
    CreateAccessPolicyRequest.add_member(:access_policy_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "accessPolicyPermission", traits: {"smithy.api#required" => {}}))
    CreateAccessPolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAccessPolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateAccessPolicyRequest.type = Types::CreateAccessPolicyRequest
    CreateAccessPolicyResponse.add_member(:access_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "accessPolicyId", traits: {"smithy.api#required" => {}}))
    CreateAccessPolicyResponse.add_member(:access_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "accessPolicyArn", traits: {"smithy.api#required" => {}}))
    CreateAccessPolicyResponse.type = Types::CreateAccessPolicyResponse
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "assetModelCompositeModelExternalId"))
    CreateAssetModelCompositeModelRequest.add_member(:parent_asset_model_composite_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "parentAssetModelCompositeModelId"))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelCompositeModelId"))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "assetModelCompositeModelDescription"))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetModelCompositeModelName", traits: {"smithy.api#required" => {}}))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetModelCompositeModelType", traits: {"smithy.api#required" => {}}))
    CreateAssetModelCompositeModelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAssetModelCompositeModelRequest.add_member(:composed_asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "composedAssetModelId"))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelPropertyDefinitions, name: "assetModelCompositeModelProperties"))
    CreateAssetModelCompositeModelRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ifMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    CreateAssetModelCompositeModelRequest.add_member(:if_none_match, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectAll, name: "ifNoneMatch", traits: {"smithy.api#httpHeader" => "If-None-Match"}))
    CreateAssetModelCompositeModelRequest.add_member(:match_for_version_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelVersionType, name: "matchForVersionType", traits: {"smithy.api#httpHeader" => "Match-For-Version-Type"}))
    CreateAssetModelCompositeModelRequest.type = Types::CreateAssetModelCompositeModelRequest
    CreateAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelCompositeModelId", traits: {"smithy.api#required" => {}}))
    CreateAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelCompositeModelPath, name: "assetModelCompositeModelPath", traits: {"smithy.api#required" => {}}))
    CreateAssetModelCompositeModelResponse.add_member(:asset_model_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelStatus, name: "assetModelStatus", traits: {"smithy.api#required" => {}}))
    CreateAssetModelCompositeModelResponse.type = Types::CreateAssetModelCompositeModelResponse
    CreateAssetModelRequest.add_member(:asset_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetModelName", traits: {"smithy.api#required" => {}}))
    CreateAssetModelRequest.add_member(:asset_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelType, name: "assetModelType"))
    CreateAssetModelRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId"))
    CreateAssetModelRequest.add_member(:asset_model_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "assetModelExternalId"))
    CreateAssetModelRequest.add_member(:asset_model_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "assetModelDescription"))
    CreateAssetModelRequest.add_member(:asset_model_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelPropertyDefinitions, name: "assetModelProperties"))
    CreateAssetModelRequest.add_member(:asset_model_hierarchies, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelHierarchyDefinitions, name: "assetModelHierarchies"))
    CreateAssetModelRequest.add_member(:asset_model_composite_models, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelCompositeModelDefinitions, name: "assetModelCompositeModels"))
    CreateAssetModelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAssetModelRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateAssetModelRequest.type = Types::CreateAssetModelRequest
    CreateAssetModelResponse.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    CreateAssetModelResponse.add_member(:asset_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "assetModelArn", traits: {"smithy.api#required" => {}}))
    CreateAssetModelResponse.add_member(:asset_model_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelStatus, name: "assetModelStatus", traits: {"smithy.api#required" => {}}))
    CreateAssetModelResponse.type = Types::CreateAssetModelResponse
    CreateAssetRequest.add_member(:asset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetName", traits: {"smithy.api#required" => {}}))
    CreateAssetRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    CreateAssetRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId"))
    CreateAssetRequest.add_member(:asset_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "assetExternalId"))
    CreateAssetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAssetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateAssetRequest.add_member(:asset_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "assetDescription"))
    CreateAssetRequest.type = Types::CreateAssetRequest
    CreateAssetResponse.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId", traits: {"smithy.api#required" => {}}))
    CreateAssetResponse.add_member(:asset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "assetArn", traits: {"smithy.api#required" => {}}))
    CreateAssetResponse.add_member(:asset_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetStatus, name: "assetStatus", traits: {"smithy.api#required" => {}}))
    CreateAssetResponse.type = Types::CreateAssetResponse
    CreateBulkImportJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "jobName", traits: {"smithy.api#required" => {}}))
    CreateBulkImportJobRequest.add_member(:job_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "jobRoleArn", traits: {"smithy.api#required" => {}}))
    CreateBulkImportJobRequest.add_member(:files, ::Smithy::Schema::Shapes::MemberShape.new(target: Files, name: "files", traits: {"smithy.api#required" => {}}))
    CreateBulkImportJobRequest.add_member(:error_report_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorReportLocation, name: "errorReportLocation", traits: {"smithy.api#required" => {}}))
    CreateBulkImportJobRequest.add_member(:job_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JobConfiguration, name: "jobConfiguration", traits: {"smithy.api#required" => {}}))
    CreateBulkImportJobRequest.add_member(:adaptive_ingestion, ::Smithy::Schema::Shapes::MemberShape.new(target: AdaptiveIngestion, name: "adaptiveIngestion"))
    CreateBulkImportJobRequest.add_member(:delete_files_after_import, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFilesAfterImport, name: "deleteFilesAfterImport"))
    CreateBulkImportJobRequest.type = Types::CreateBulkImportJobRequest
    CreateBulkImportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "jobId", traits: {"smithy.api#required" => {}}))
    CreateBulkImportJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "jobName", traits: {"smithy.api#required" => {}}))
    CreateBulkImportJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "jobStatus", traits: {"smithy.api#required" => {}}))
    CreateBulkImportJobResponse.type = Types::CreateBulkImportJobResponse
    CreateComputationModelRequest.add_member(:computation_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedName, name: "computationModelName", traits: {"smithy.api#required" => {}}))
    CreateComputationModelRequest.add_member(:computation_model_description, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedDescription, name: "computationModelDescription"))
    CreateComputationModelRequest.add_member(:computation_model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelConfiguration, name: "computationModelConfiguration", traits: {"smithy.api#required" => {}}))
    CreateComputationModelRequest.add_member(:computation_model_data_binding, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelDataBinding, name: "computationModelDataBinding", traits: {"smithy.api#required" => {}}))
    CreateComputationModelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateComputationModelRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateComputationModelRequest.type = Types::CreateComputationModelRequest
    CreateComputationModelResponse.add_member(:computation_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "computationModelId", traits: {"smithy.api#required" => {}}))
    CreateComputationModelResponse.add_member(:computation_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "computationModelArn", traits: {"smithy.api#required" => {}}))
    CreateComputationModelResponse.add_member(:computation_model_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelStatus, name: "computationModelStatus", traits: {"smithy.api#required" => {}}))
    CreateComputationModelResponse.type = Types::CreateComputationModelResponse
    CreateDashboardRequest.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "projectId", traits: {"smithy.api#required" => {}}))
    CreateDashboardRequest.add_member(:dashboard_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "dashboardName", traits: {"smithy.api#required" => {}}))
    CreateDashboardRequest.add_member(:dashboard_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "dashboardDescription"))
    CreateDashboardRequest.add_member(:dashboard_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardDefinition, name: "dashboardDefinition", traits: {"smithy.api#required" => {}}))
    CreateDashboardRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDashboardRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateDashboardRequest.type = Types::CreateDashboardRequest
    CreateDashboardResponse.add_member(:dashboard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "dashboardId", traits: {"smithy.api#required" => {}}))
    CreateDashboardResponse.add_member(:dashboard_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "dashboardArn", traits: {"smithy.api#required" => {}}))
    CreateDashboardResponse.type = Types::CreateDashboardResponse
    CreateDatasetRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "datasetId"))
    CreateDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedName, name: "datasetName", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_description, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedDescription, name: "datasetDescription"))
    CreateDatasetRequest.add_member(:dataset_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSource, name: "datasetSource", traits: {"smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDatasetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "datasetId", traits: {"smithy.api#required" => {}}))
    CreateDatasetResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "datasetArn", traits: {"smithy.api#required" => {}}))
    CreateDatasetResponse.add_member(:dataset_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, name: "datasetStatus", traits: {"smithy.api#required" => {}}))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateGatewayRequest.add_member(:gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayName, name: "gatewayName", traits: {"smithy.api#required" => {}}))
    CreateGatewayRequest.add_member(:gateway_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayPlatform, name: "gatewayPlatform", traits: {"smithy.api#required" => {}}))
    CreateGatewayRequest.add_member(:gateway_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayVersion, name: "gatewayVersion"))
    CreateGatewayRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateGatewayRequest.type = Types::CreateGatewayRequest
    CreateGatewayResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    CreateGatewayResponse.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "gatewayArn", traits: {"smithy.api#required" => {}}))
    CreateGatewayResponse.type = Types::CreateGatewayResponse
    CreatePortalRequest.add_member(:portal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "portalName", traits: {"smithy.api#required" => {}}))
    CreatePortalRequest.add_member(:portal_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "portalDescription"))
    CreatePortalRequest.add_member(:portal_contact_email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "portalContactEmail", traits: {"smithy.api#required" => {}}))
    CreatePortalRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePortalRequest.add_member(:portal_logo_image_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFile, name: "portalLogoImageFile"))
    CreatePortalRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreatePortalRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreatePortalRequest.add_member(:portal_auth_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthMode, name: "portalAuthMode"))
    CreatePortalRequest.add_member(:notification_sender_email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "notificationSenderEmail"))
    CreatePortalRequest.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: Alarms, name: "alarms"))
    CreatePortalRequest.add_member(:portal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalType, name: "portalType"))
    CreatePortalRequest.add_member(:portal_type_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalTypeConfiguration, name: "portalTypeConfiguration"))
    CreatePortalRequest.type = Types::CreatePortalRequest
    CreatePortalResponse.add_member(:portal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "portalId", traits: {"smithy.api#required" => {}}))
    CreatePortalResponse.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}}))
    CreatePortalResponse.add_member(:portal_start_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "portalStartUrl", traits: {"smithy.api#required" => {}}))
    CreatePortalResponse.add_member(:portal_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalStatus, name: "portalStatus", traits: {"smithy.api#required" => {}}))
    CreatePortalResponse.add_member(:sso_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSOApplicationId, name: "ssoApplicationId", traits: {"smithy.api#required" => {}}))
    CreatePortalResponse.type = Types::CreatePortalResponse
    CreateProjectRequest.add_member(:portal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "portalId", traits: {"smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "projectName", traits: {"smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:project_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "projectDescription"))
    CreateProjectRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateProjectRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateProjectRequest.type = Types::CreateProjectRequest
    CreateProjectResponse.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "projectId", traits: {"smithy.api#required" => {}}))
    CreateProjectResponse.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "projectArn", traits: {"smithy.api#required" => {}}))
    CreateProjectResponse.type = Types::CreateProjectResponse
    Csv.add_member(:column_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnNames, name: "columnNames", traits: {"smithy.api#required" => {}}))
    Csv.type = Types::Csv
    CustomerManagedS3Storage.add_member(:s3_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "s3ResourceArn", traits: {"smithy.api#required" => {}}))
    CustomerManagedS3Storage.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CustomerManagedS3Storage.type = Types::CustomerManagedS3Storage
    DashboardSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardSummary, name: "member")
    DashboardSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    DashboardSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    DashboardSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DashboardSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate"))
    DashboardSummary.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateDate"))
    DashboardSummary.type = Types::DashboardSummary
    DataBindingValue.add_member(:asset_model_property, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelPropertyBindingValue, name: "assetModelProperty"))
    DataBindingValue.add_member(:asset_property, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyBindingValue, name: "assetProperty"))
    DataBindingValue.type = Types::DataBindingValue
    DataBindingValueFilter.add_member(:asset, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetBindingValueFilter, name: "asset"))
    DataBindingValueFilter.add_member(:asset_model, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelBindingValueFilter, name: "assetModel"))
    DataBindingValueFilter.add_member(:asset_property, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyBindingValueFilter, name: "assetProperty"))
    DataBindingValueFilter.add_member(:asset_model_property, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelPropertyBindingValueFilter, name: "assetModelProperty"))
    DataBindingValueFilter.type = Types::DataBindingValueFilter
    DataSetReference.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "datasetArn"))
    DataSetReference.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "source"))
    DataSetReference.type = Types::DataSetReference
    DatasetSource.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSourceType, name: "sourceType", traits: {"smithy.api#required" => {}}))
    DatasetSource.add_member(:source_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSourceFormat, name: "sourceFormat", traits: {"smithy.api#required" => {}}))
    DatasetSource.add_member(:source_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceDetail, name: "sourceDetail"))
    DatasetSource.type = Types::DatasetSource
    DatasetSourceFormat.add_member(:knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KNOWLEDGE_BASE", traits: {"smithy.api#enumValue" => "KNOWLEDGE_BASE"}))
    DatasetSourceType.add_member(:kendra, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KENDRA", traits: {"smithy.api#enumValue" => "KENDRA"}))
    DatasetState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DatasetState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DatasetState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    DatasetState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DatasetState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DatasetStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetState, name: "state", traits: {"smithy.api#required" => {}}))
    DatasetStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "error"))
    DatasetStatus.type = Types::DatasetStatus
    DatasetSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSummary, name: "member")
    DatasetSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    DatasetSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn", traits: {"smithy.api#required" => {}}))
    DatasetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedName, name: "name", traits: {"smithy.api#required" => {}}))
    DatasetSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedDescription, name: "description", traits: {"smithy.api#required" => {}}))
    DatasetSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    DatasetSummary.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateDate", traits: {"smithy.api#required" => {}}))
    DatasetSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DatasetSummary.type = Types::DatasetSummary
    Datum.add_member(:scalar_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalarValue, name: "scalarValue"))
    Datum.add_member(:array_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DatumList, name: "arrayValue"))
    Datum.add_member(:row_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Row, name: "rowValue"))
    Datum.add_member(:null_value, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "nullValue"))
    Datum.type = Types::Datum
    DatumList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Datum, name: "member")
    DeleteAccessPolicyRequest.add_member(:access_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "accessPolicyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessPolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAccessPolicyRequest.type = Types::DeleteAccessPolicyRequest
    DeleteAccessPolicyResponse.type = Types::DeleteAccessPolicyResponse
    DeleteAssetModelCompositeModelRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelCompositeModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetModelCompositeModelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAssetModelCompositeModelRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ifMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeleteAssetModelCompositeModelRequest.add_member(:if_none_match, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectAll, name: "ifNoneMatch", traits: {"smithy.api#httpHeader" => "If-None-Match"}))
    DeleteAssetModelCompositeModelRequest.add_member(:match_for_version_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelVersionType, name: "matchForVersionType", traits: {"smithy.api#httpHeader" => "Match-For-Version-Type"}))
    DeleteAssetModelCompositeModelRequest.type = Types::DeleteAssetModelCompositeModelRequest
    DeleteAssetModelCompositeModelResponse.add_member(:asset_model_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelStatus, name: "assetModelStatus", traits: {"smithy.api#required" => {}}))
    DeleteAssetModelCompositeModelResponse.type = Types::DeleteAssetModelCompositeModelResponse
    DeleteAssetModelInterfaceRelationshipRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetModelInterfaceRelationshipRequest.add_member(:interface_asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "interfaceAssetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetModelInterfaceRelationshipRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAssetModelInterfaceRelationshipRequest.type = Types::DeleteAssetModelInterfaceRelationshipRequest
    DeleteAssetModelInterfaceRelationshipResponse.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    DeleteAssetModelInterfaceRelationshipResponse.add_member(:interface_asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "interfaceAssetModelId", traits: {"smithy.api#required" => {}}))
    DeleteAssetModelInterfaceRelationshipResponse.add_member(:asset_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "assetModelArn", traits: {"smithy.api#required" => {}}))
    DeleteAssetModelInterfaceRelationshipResponse.add_member(:asset_model_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelStatus, name: "assetModelStatus", traits: {"smithy.api#required" => {}}))
    DeleteAssetModelInterfaceRelationshipResponse.type = Types::DeleteAssetModelInterfaceRelationshipResponse
    DeleteAssetModelRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetModelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAssetModelRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ifMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeleteAssetModelRequest.add_member(:if_none_match, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectAll, name: "ifNoneMatch", traits: {"smithy.api#httpHeader" => "If-None-Match"}))
    DeleteAssetModelRequest.add_member(:match_for_version_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelVersionType, name: "matchForVersionType", traits: {"smithy.api#httpHeader" => "Match-For-Version-Type"}))
    DeleteAssetModelRequest.type = Types::DeleteAssetModelRequest
    DeleteAssetModelResponse.add_member(:asset_model_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelStatus, name: "assetModelStatus", traits: {"smithy.api#required" => {}}))
    DeleteAssetModelResponse.type = Types::DeleteAssetModelResponse
    DeleteAssetRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAssetRequest.type = Types::DeleteAssetRequest
    DeleteAssetResponse.add_member(:asset_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetStatus, name: "assetStatus", traits: {"smithy.api#required" => {}}))
    DeleteAssetResponse.type = Types::DeleteAssetResponse
    DeleteComputationModelRequest.add_member(:computation_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "computationModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComputationModelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteComputationModelRequest.type = Types::DeleteComputationModelRequest
    DeleteComputationModelResponse.add_member(:computation_model_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelStatus, name: "computationModelStatus", traits: {"smithy.api#required" => {}}))
    DeleteComputationModelResponse.type = Types::DeleteComputationModelResponse
    DeleteDashboardRequest.add_member(:dashboard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "dashboardId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDashboardRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteDashboardRequest.type = Types::DeleteDashboardRequest
    DeleteDashboardResponse.type = Types::DeleteDashboardResponse
    DeleteDatasetRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "datasetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteDatasetResponse.add_member(:dataset_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, name: "datasetStatus", traits: {"smithy.api#required" => {}}))
    DeleteDatasetResponse.type = Types::DeleteDatasetResponse
    DeleteGatewayRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGatewayRequest.type = Types::DeleteGatewayRequest
    DeletePortalRequest.add_member(:portal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "portalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePortalRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeletePortalRequest.type = Types::DeletePortalRequest
    DeletePortalResponse.add_member(:portal_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalStatus, name: "portalStatus", traits: {"smithy.api#required" => {}}))
    DeletePortalResponse.type = Types::DeletePortalResponse
    DeleteProjectRequest.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "projectId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProjectRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteProjectRequest.type = Types::DeleteProjectRequest
    DeleteProjectResponse.type = Types::DeleteProjectResponse
    DeleteTimeSeriesRequest.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyAlias, name: "alias", traits: {"smithy.api#httpQuery" => "alias"}))
    DeleteTimeSeriesRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpQuery" => "assetId"}))
    DeleteTimeSeriesRequest.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "propertyId", traits: {"smithy.api#httpQuery" => "propertyId"}))
    DeleteTimeSeriesRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteTimeSeriesRequest.type = Types::DeleteTimeSeriesRequest
    DescribeAccessPolicyRequest.add_member(:access_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "accessPolicyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAccessPolicyRequest.type = Types::DescribeAccessPolicyRequest
    DescribeAccessPolicyResponse.add_member(:access_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "accessPolicyId", traits: {"smithy.api#required" => {}}))
    DescribeAccessPolicyResponse.add_member(:access_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "accessPolicyArn", traits: {"smithy.api#required" => {}}))
    DescribeAccessPolicyResponse.add_member(:access_policy_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "accessPolicyIdentity", traits: {"smithy.api#required" => {}}))
    DescribeAccessPolicyResponse.add_member(:access_policy_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "accessPolicyResource", traits: {"smithy.api#required" => {}}))
    DescribeAccessPolicyResponse.add_member(:access_policy_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "accessPolicyPermission", traits: {"smithy.api#required" => {}}))
    DescribeAccessPolicyResponse.add_member(:access_policy_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "accessPolicyCreationDate", traits: {"smithy.api#required" => {}}))
    DescribeAccessPolicyResponse.add_member(:access_policy_last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "accessPolicyLastUpdateDate", traits: {"smithy.api#required" => {}}))
    DescribeAccessPolicyResponse.type = Types::DescribeAccessPolicyResponse
    DescribeActionRequest.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "actionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeActionRequest.type = Types::DescribeActionRequest
    DescribeActionResponse.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "actionId", traits: {"smithy.api#required" => {}}))
    DescribeActionResponse.add_member(:target_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResource, name: "targetResource", traits: {"smithy.api#required" => {}}))
    DescribeActionResponse.add_member(:action_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "actionDefinitionId", traits: {"smithy.api#required" => {}}))
    DescribeActionResponse.add_member(:action_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPayload, name: "actionPayload", traits: {"smithy.api#required" => {}}))
    DescribeActionResponse.add_member(:execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "executionTime", traits: {"smithy.api#required" => {}}))
    DescribeActionResponse.add_member(:resolve_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolveTo, name: "resolveTo"))
    DescribeActionResponse.type = Types::DescribeActionResponse
    DescribeAssetCompositeModelRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetCompositeModelRequest.add_member(:asset_composite_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetCompositeModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetCompositeModelRequest.type = Types::DescribeAssetCompositeModelRequest
    DescribeAssetCompositeModelResponse.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId", traits: {"smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetCompositeModelId", traits: {"smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "assetCompositeModelExternalId"))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetCompositeModelPath, name: "assetCompositeModelPath", traits: {"smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetCompositeModelName", traits: {"smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "assetCompositeModelDescription", traits: {"smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetCompositeModelType", traits: {"smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetProperties, name: "assetCompositeModelProperties", traits: {"smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetCompositeModelSummaries, name: "assetCompositeModelSummaries", traits: {"smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:action_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDefinitions, name: "actionDefinitions"))
    DescribeAssetCompositeModelResponse.type = Types::DescribeAssetCompositeModelResponse
    DescribeAssetModelCompositeModelRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelCompositeModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelRequest.add_member(:asset_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelVersionFilter, name: "assetModelVersion", traits: {"smithy.api#httpQuery" => "assetModelVersion"}))
    DescribeAssetModelCompositeModelRequest.type = Types::DescribeAssetModelCompositeModelRequest
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelCompositeModelId", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "assetModelCompositeModelExternalId"))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelCompositeModelPath, name: "assetModelCompositeModelPath", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetModelCompositeModelName", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "assetModelCompositeModelDescription", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetModelCompositeModelType", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelProperties, name: "assetModelCompositeModelProperties", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:composition_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionDetails, name: "compositionDetails"))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelCompositeModelSummaries, name: "assetModelCompositeModelSummaries", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:action_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDefinitions, name: "actionDefinitions"))
    DescribeAssetModelCompositeModelResponse.type = Types::DescribeAssetModelCompositeModelResponse
    DescribeAssetModelInterfaceRelationshipRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetModelInterfaceRelationshipRequest.add_member(:interface_asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "interfaceAssetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetModelInterfaceRelationshipRequest.type = Types::DescribeAssetModelInterfaceRelationshipRequest
    DescribeAssetModelInterfaceRelationshipResponse.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelInterfaceRelationshipResponse.add_member(:interface_asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "interfaceAssetModelId", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelInterfaceRelationshipResponse.add_member(:property_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyMappings, name: "propertyMappings", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelInterfaceRelationshipResponse.add_member(:hierarchy_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: HierarchyMappings, name: "hierarchyMappings", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelInterfaceRelationshipResponse.type = Types::DescribeAssetModelInterfaceRelationshipResponse
    DescribeAssetModelRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetModelRequest.add_member(:exclude_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeProperties, name: "excludeProperties", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "excludeProperties"}))
    DescribeAssetModelRequest.add_member(:asset_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelVersionFilter, name: "assetModelVersion", traits: {"smithy.api#httpQuery" => "assetModelVersion"}))
    DescribeAssetModelRequest.type = Types::DescribeAssetModelRequest
    DescribeAssetModelResponse.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "assetModelExternalId"))
    DescribeAssetModelResponse.add_member(:asset_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "assetModelArn", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetModelName", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelType, name: "assetModelType"))
    DescribeAssetModelResponse.add_member(:asset_model_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "assetModelDescription", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelProperties, name: "assetModelProperties", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_hierarchies, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelHierarchies, name: "assetModelHierarchies", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_composite_models, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelCompositeModels, name: "assetModelCompositeModels"))
    DescribeAssetModelResponse.add_member(:asset_model_composite_model_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelCompositeModelSummaries, name: "assetModelCompositeModelSummaries"))
    DescribeAssetModelResponse.add_member(:asset_model_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "assetModelCreationDate", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "assetModelLastUpdateDate", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelStatus, name: "assetModelStatus", traits: {"smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "assetModelVersion"))
    DescribeAssetModelResponse.add_member(:interface_details, ::Smithy::Schema::Shapes::MemberShape.new(target: InterfaceDetails, name: "interfaceDetails"))
    DescribeAssetModelResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "eTag", traits: {"smithy.api#httpHeader" => "ETag"}))
    DescribeAssetModelResponse.type = Types::DescribeAssetModelResponse
    DescribeAssetPropertyRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetPropertyRequest.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "propertyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetPropertyRequest.type = Types::DescribeAssetPropertyRequest
    DescribeAssetPropertyResponse.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId", traits: {"smithy.api#required" => {}}))
    DescribeAssetPropertyResponse.add_member(:asset_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "assetExternalId"))
    DescribeAssetPropertyResponse.add_member(:asset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetName", traits: {"smithy.api#required" => {}}))
    DescribeAssetPropertyResponse.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    DescribeAssetPropertyResponse.add_member(:asset_property, ::Smithy::Schema::Shapes::MemberShape.new(target: Property, name: "assetProperty"))
    DescribeAssetPropertyResponse.add_member(:composite_model, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeModelProperty, name: "compositeModel"))
    DescribeAssetPropertyResponse.type = Types::DescribeAssetPropertyResponse
    DescribeAssetRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetRequest.add_member(:exclude_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeProperties, name: "excludeProperties", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "excludeProperties"}))
    DescribeAssetRequest.type = Types::DescribeAssetRequest
    DescribeAssetResponse.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId", traits: {"smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "assetExternalId"))
    DescribeAssetResponse.add_member(:asset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "assetArn", traits: {"smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetName", traits: {"smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetProperties, name: "assetProperties", traits: {"smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_hierarchies, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetHierarchies, name: "assetHierarchies", traits: {"smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_composite_models, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetCompositeModels, name: "assetCompositeModels"))
    DescribeAssetResponse.add_member(:asset_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "assetCreationDate", traits: {"smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "assetLastUpdateDate", traits: {"smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetStatus, name: "assetStatus", traits: {"smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "assetDescription"))
    DescribeAssetResponse.add_member(:asset_composite_model_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetCompositeModelSummaries, name: "assetCompositeModelSummaries"))
    DescribeAssetResponse.type = Types::DescribeAssetResponse
    DescribeBulkImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBulkImportJobRequest.type = Types::DescribeBulkImportJobRequest
    DescribeBulkImportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "jobId", traits: {"smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "jobName", traits: {"smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "jobStatus", traits: {"smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:job_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "jobRoleArn", traits: {"smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:files, ::Smithy::Schema::Shapes::MemberShape.new(target: Files, name: "files", traits: {"smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:error_report_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorReportLocation, name: "errorReportLocation", traits: {"smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:job_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JobConfiguration, name: "jobConfiguration", traits: {"smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:job_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "jobCreationDate", traits: {"smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:job_last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "jobLastUpdateDate", traits: {"smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:adaptive_ingestion, ::Smithy::Schema::Shapes::MemberShape.new(target: AdaptiveIngestion, name: "adaptiveIngestion"))
    DescribeBulkImportJobResponse.add_member(:delete_files_after_import, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFilesAfterImport, name: "deleteFilesAfterImport"))
    DescribeBulkImportJobResponse.type = Types::DescribeBulkImportJobResponse
    DescribeComputationModelExecutionSummaryRequest.add_member(:computation_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "computationModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeComputationModelExecutionSummaryRequest.add_member(:resolve_to_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolveToResourceType, name: "resolveToResourceType", traits: {"smithy.api#httpQuery" => "resolveToResourceType"}))
    DescribeComputationModelExecutionSummaryRequest.add_member(:resolve_to_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "resolveToResourceId", traits: {"smithy.api#httpQuery" => "resolveToResourceId"}))
    DescribeComputationModelExecutionSummaryRequest.type = Types::DescribeComputationModelExecutionSummaryRequest
    DescribeComputationModelExecutionSummaryResponse.add_member(:computation_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "computationModelId", traits: {"smithy.api#required" => {}}))
    DescribeComputationModelExecutionSummaryResponse.add_member(:resolve_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolveTo, name: "resolveTo"))
    DescribeComputationModelExecutionSummaryResponse.add_member(:computation_model_execution_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelExecutionSummary, name: "computationModelExecutionSummary", traits: {"smithy.api#required" => {}}))
    DescribeComputationModelExecutionSummaryResponse.type = Types::DescribeComputationModelExecutionSummaryResponse
    DescribeComputationModelRequest.add_member(:computation_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "computationModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeComputationModelRequest.add_member(:computation_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelVersionFilter, name: "computationModelVersion", traits: {"smithy.api#httpQuery" => "computationModelVersion"}))
    DescribeComputationModelRequest.type = Types::DescribeComputationModelRequest
    DescribeComputationModelResponse.add_member(:computation_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "computationModelId", traits: {"smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "computationModelArn", traits: {"smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedName, name: "computationModelName", traits: {"smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_description, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedDescription, name: "computationModelDescription"))
    DescribeComputationModelResponse.add_member(:computation_model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelConfiguration, name: "computationModelConfiguration", traits: {"smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_data_binding, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelDataBinding, name: "computationModelDataBinding", traits: {"smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "computationModelCreationDate", traits: {"smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "computationModelLastUpdateDate", traits: {"smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelStatus, name: "computationModelStatus", traits: {"smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "computationModelVersion", traits: {"smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:action_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDefinitions, name: "actionDefinitions", traits: {"smithy.api#required" => {}}))
    DescribeComputationModelResponse.type = Types::DescribeComputationModelResponse
    DescribeDashboardRequest.add_member(:dashboard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "dashboardId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDashboardRequest.type = Types::DescribeDashboardRequest
    DescribeDashboardResponse.add_member(:dashboard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "dashboardId", traits: {"smithy.api#required" => {}}))
    DescribeDashboardResponse.add_member(:dashboard_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "dashboardArn", traits: {"smithy.api#required" => {}}))
    DescribeDashboardResponse.add_member(:dashboard_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "dashboardName", traits: {"smithy.api#required" => {}}))
    DescribeDashboardResponse.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "projectId", traits: {"smithy.api#required" => {}}))
    DescribeDashboardResponse.add_member(:dashboard_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "dashboardDescription"))
    DescribeDashboardResponse.add_member(:dashboard_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardDefinition, name: "dashboardDefinition", traits: {"smithy.api#required" => {}}))
    DescribeDashboardResponse.add_member(:dashboard_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "dashboardCreationDate", traits: {"smithy.api#required" => {}}))
    DescribeDashboardResponse.add_member(:dashboard_last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "dashboardLastUpdateDate", traits: {"smithy.api#required" => {}}))
    DescribeDashboardResponse.type = Types::DescribeDashboardResponse
    DescribeDatasetRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "datasetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "datasetId", traits: {"smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "datasetArn", traits: {"smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedName, name: "datasetName", traits: {"smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_description, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedDescription, name: "datasetDescription", traits: {"smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSource, name: "datasetSource", traits: {"smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, name: "datasetStatus", traits: {"smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "datasetCreationDate", traits: {"smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "datasetLastUpdateDate", traits: {"smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "datasetVersion"))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeDefaultEncryptionConfigurationRequest.type = Types::DescribeDefaultEncryptionConfigurationRequest
    DescribeDefaultEncryptionConfigurationResponse.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "encryptionType", traits: {"smithy.api#required" => {}}))
    DescribeDefaultEncryptionConfigurationResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "kmsKeyArn"))
    DescribeDefaultEncryptionConfigurationResponse.add_member(:configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationStatus, name: "configurationStatus", traits: {"smithy.api#required" => {}}))
    DescribeDefaultEncryptionConfigurationResponse.type = Types::DescribeDefaultEncryptionConfigurationResponse
    DescribeExecutionRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "executionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeExecutionRequest.type = Types::DescribeExecutionRequest
    DescribeExecutionResponse.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "executionId", traits: {"smithy.api#required" => {}}))
    DescribeExecutionResponse.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "actionType"))
    DescribeExecutionResponse.add_member(:target_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResource, name: "targetResource", traits: {"smithy.api#required" => {}}))
    DescribeExecutionResponse.add_member(:target_resource_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "targetResourceVersion", traits: {"smithy.api#required" => {}}))
    DescribeExecutionResponse.add_member(:resolve_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolveTo, name: "resolveTo"))
    DescribeExecutionResponse.add_member(:execution_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "executionStartTime", traits: {"smithy.api#required" => {}}))
    DescribeExecutionResponse.add_member(:execution_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "executionEndTime"))
    DescribeExecutionResponse.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "executionStatus", traits: {"smithy.api#required" => {}}))
    DescribeExecutionResponse.add_member(:execution_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionResult, name: "executionResult"))
    DescribeExecutionResponse.add_member(:execution_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionDetails, name: "executionDetails"))
    DescribeExecutionResponse.add_member(:execution_entity_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "executionEntityVersion"))
    DescribeExecutionResponse.type = Types::DescribeExecutionResponse
    DescribeGatewayCapabilityConfigurationRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeGatewayCapabilityConfigurationRequest.add_member(:capability_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityNamespace, name: "capabilityNamespace", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeGatewayCapabilityConfigurationRequest.type = Types::DescribeGatewayCapabilityConfigurationRequest
    DescribeGatewayCapabilityConfigurationResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    DescribeGatewayCapabilityConfigurationResponse.add_member(:capability_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityNamespace, name: "capabilityNamespace", traits: {"smithy.api#required" => {}}))
    DescribeGatewayCapabilityConfigurationResponse.add_member(:capability_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityConfiguration, name: "capabilityConfiguration", traits: {"smithy.api#required" => {}}))
    DescribeGatewayCapabilityConfigurationResponse.add_member(:capability_sync_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilitySyncStatus, name: "capabilitySyncStatus", traits: {"smithy.api#required" => {}}))
    DescribeGatewayCapabilityConfigurationResponse.type = Types::DescribeGatewayCapabilityConfigurationResponse
    DescribeGatewayRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeGatewayRequest.type = Types::DescribeGatewayRequest
    DescribeGatewayResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    DescribeGatewayResponse.add_member(:gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayName, name: "gatewayName", traits: {"smithy.api#required" => {}}))
    DescribeGatewayResponse.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "gatewayArn", traits: {"smithy.api#required" => {}}))
    DescribeGatewayResponse.add_member(:gateway_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayPlatform, name: "gatewayPlatform"))
    DescribeGatewayResponse.add_member(:gateway_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayVersion, name: "gatewayVersion"))
    DescribeGatewayResponse.add_member(:gateway_capability_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayCapabilitySummaries, name: "gatewayCapabilitySummaries", traits: {"smithy.api#required" => {}}))
    DescribeGatewayResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    DescribeGatewayResponse.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateDate", traits: {"smithy.api#required" => {}}))
    DescribeGatewayResponse.type = Types::DescribeGatewayResponse
    DescribeLoggingOptionsRequest.type = Types::DescribeLoggingOptionsRequest
    DescribeLoggingOptionsResponse.add_member(:logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingOptions, name: "loggingOptions", traits: {"smithy.api#required" => {}}))
    DescribeLoggingOptionsResponse.type = Types::DescribeLoggingOptionsResponse
    DescribePortalRequest.add_member(:portal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "portalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePortalRequest.type = Types::DescribePortalRequest
    DescribePortalResponse.add_member(:portal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "portalId", traits: {"smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "portalArn", traits: {"smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "portalName", traits: {"smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "portalDescription"))
    DescribePortalResponse.add_member(:portal_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalClientId, name: "portalClientId", traits: {"smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_start_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "portalStartUrl", traits: {"smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_contact_email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "portalContactEmail", traits: {"smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalStatus, name: "portalStatus", traits: {"smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "portalCreationDate", traits: {"smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "portalLastUpdateDate", traits: {"smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_logo_image_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLocation, name: "portalLogoImageLocation"))
    DescribePortalResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamArn, name: "roleArn"))
    DescribePortalResponse.add_member(:portal_auth_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthMode, name: "portalAuthMode"))
    DescribePortalResponse.add_member(:notification_sender_email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "notificationSenderEmail"))
    DescribePortalResponse.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: Alarms, name: "alarms"))
    DescribePortalResponse.add_member(:portal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalType, name: "portalType"))
    DescribePortalResponse.add_member(:portal_type_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalTypeConfiguration, name: "portalTypeConfiguration"))
    DescribePortalResponse.type = Types::DescribePortalResponse
    DescribeProjectRequest.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "projectId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeProjectRequest.type = Types::DescribeProjectRequest
    DescribeProjectResponse.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "projectId", traits: {"smithy.api#required" => {}}))
    DescribeProjectResponse.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "projectArn", traits: {"smithy.api#required" => {}}))
    DescribeProjectResponse.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "projectName", traits: {"smithy.api#required" => {}}))
    DescribeProjectResponse.add_member(:portal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "portalId", traits: {"smithy.api#required" => {}}))
    DescribeProjectResponse.add_member(:project_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "projectDescription"))
    DescribeProjectResponse.add_member(:project_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "projectCreationDate", traits: {"smithy.api#required" => {}}))
    DescribeProjectResponse.add_member(:project_last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "projectLastUpdateDate", traits: {"smithy.api#required" => {}}))
    DescribeProjectResponse.type = Types::DescribeProjectResponse
    DescribeStorageConfigurationRequest.type = Types::DescribeStorageConfigurationRequest
    DescribeStorageConfigurationResponse.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, name: "storageType", traits: {"smithy.api#required" => {}}))
    DescribeStorageConfigurationResponse.add_member(:multi_layer_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiLayerStorage, name: "multiLayerStorage"))
    DescribeStorageConfigurationResponse.add_member(:disassociated_data_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociatedDataStorageState, name: "disassociatedDataStorage"))
    DescribeStorageConfigurationResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    DescribeStorageConfigurationResponse.add_member(:configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationStatus, name: "configurationStatus", traits: {"smithy.api#required" => {}}))
    DescribeStorageConfigurationResponse.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateDate"))
    DescribeStorageConfigurationResponse.add_member(:warm_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmTierState, name: "warmTier"))
    DescribeStorageConfigurationResponse.add_member(:warm_tier_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmTierRetentionPeriod, name: "warmTierRetentionPeriod"))
    DescribeStorageConfigurationResponse.add_member(:disallow_ingest_null_na_n, ::Smithy::Schema::Shapes::MemberShape.new(target: DisallowIngestNullNaN, name: "disallowIngestNullNaN"))
    DescribeStorageConfigurationResponse.type = Types::DescribeStorageConfigurationResponse
    DescribeTimeSeriesRequest.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyAlias, name: "alias", traits: {"smithy.api#httpQuery" => "alias"}))
    DescribeTimeSeriesRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpQuery" => "assetId"}))
    DescribeTimeSeriesRequest.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "propertyId", traits: {"smithy.api#httpQuery" => "propertyId"}))
    DescribeTimeSeriesRequest.type = Types::DescribeTimeSeriesRequest
    DescribeTimeSeriesResponse.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId"))
    DescribeTimeSeriesResponse.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "propertyId"))
    DescribeTimeSeriesResponse.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyAlias, name: "alias"))
    DescribeTimeSeriesResponse.add_member(:time_series_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesId, name: "timeSeriesId", traits: {"smithy.api#required" => {}}))
    DescribeTimeSeriesResponse.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDataType, name: "dataType", traits: {"smithy.api#required" => {}}))
    DescribeTimeSeriesResponse.add_member(:data_type_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "dataTypeSpec"))
    DescribeTimeSeriesResponse.add_member(:time_series_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "timeSeriesCreationDate", traits: {"smithy.api#required" => {}}))
    DescribeTimeSeriesResponse.add_member(:time_series_last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "timeSeriesLastUpdateDate", traits: {"smithy.api#required" => {}}))
    DescribeTimeSeriesResponse.add_member(:time_series_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "timeSeriesArn", traits: {"smithy.api#required" => {}}))
    DescribeTimeSeriesResponse.type = Types::DescribeTimeSeriesResponse
    DetailedError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailedErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    DetailedError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailedErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    DetailedError.type = Types::DetailedError
    DetailedErrorCode.add_member(:incompatible_compute_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_COMPUTE_LOCATION", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_COMPUTE_LOCATION"}))
    DetailedErrorCode.add_member(:incompatible_forwarding_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_FORWARDING_CONFIGURATION", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_FORWARDING_CONFIGURATION"}))
    DetailedErrors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DetailedError, name: "member")
    DisassociateAssetsRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAssetsRequest.add_member(:hierarchy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "hierarchyId", traits: {"smithy.api#required" => {}}))
    DisassociateAssetsRequest.add_member(:child_asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "childAssetId", traits: {"smithy.api#required" => {}}))
    DisassociateAssetsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DisassociateAssetsRequest.type = Types::DisassociateAssetsRequest
    DisassociateTimeSeriesFromAssetPropertyRequest.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyAlias, name: "alias", traits: {"smithy.api#httpQuery" => "alias", "smithy.api#required" => {}}))
    DisassociateTimeSeriesFromAssetPropertyRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpQuery" => "assetId", "smithy.api#required" => {}}))
    DisassociateTimeSeriesFromAssetPropertyRequest.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "propertyId", traits: {"smithy.api#httpQuery" => "propertyId", "smithy.api#required" => {}}))
    DisassociateTimeSeriesFromAssetPropertyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DisassociateTimeSeriesFromAssetPropertyRequest.type = Types::DisassociateTimeSeriesFromAssetPropertyRequest
    DisassociatedDataStorageState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DisassociatedDataStorageState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    EncryptionType.add_member(:sitewise_default_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SITEWISE_DEFAULT_ENCRYPTION", traits: {"smithy.api#enumValue" => "SITEWISE_DEFAULT_ENCRYPTION"}))
    EncryptionType.add_member(:kms_based_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_BASED_ENCRYPTION", traits: {"smithy.api#enumValue" => "KMS_BASED_ENCRYPTION"}))
    ErrorCode.add_member(:validation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_ERROR", traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    ErrorCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    ErrorDetails.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    ErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ErrorDetails.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailedErrors, name: "details"))
    ErrorDetails.type = Types::ErrorDetails
    ErrorReportLocation.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: Bucket, name: "bucket", traits: {"smithy.api#required" => {}}))
    ErrorReportLocation.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "prefix", traits: {"smithy.api#required" => {}}))
    ErrorReportLocation.type = Types::ErrorReportLocation
    ExecuteActionRequest.add_member(:target_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResource, name: "targetResource", traits: {"smithy.api#required" => {}}))
    ExecuteActionRequest.add_member(:action_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "actionDefinitionId", traits: {"smithy.api#required" => {}}))
    ExecuteActionRequest.add_member(:action_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPayload, name: "actionPayload", traits: {"smithy.api#required" => {}}))
    ExecuteActionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    ExecuteActionRequest.add_member(:resolve_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolveTo, name: "resolveTo"))
    ExecuteActionRequest.type = Types::ExecuteActionRequest
    ExecuteActionResponse.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "actionId", traits: {"smithy.api#required" => {}}))
    ExecuteActionResponse.type = Types::ExecuteActionResponse
    ExecuteQueryRequest.add_member(:query_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatement, name: "queryStatement", traits: {"smithy.api#required" => {}}))
    ExecuteQueryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecuteQueryNextToken, name: "nextToken"))
    ExecuteQueryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecuteQueryMaxResults, name: "maxResults"))
    ExecuteQueryRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ExecuteQueryRequest.type = Types::ExecuteQueryRequest
    ExecuteQueryResponse.add_member(:columns, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnsList, name: "columns"))
    ExecuteQueryResponse.add_member(:rows, ::Smithy::Schema::Shapes::MemberShape.new(target: Rows, name: "rows"))
    ExecuteQueryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecuteQueryNextToken, name: "nextToken"))
    ExecuteQueryResponse.type = Types::ExecuteQueryResponse
    ExecutionDetails.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionDetailsKey, name: "key")
    ExecutionDetails.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionDetailsValue, name: "value")
    ExecutionResult.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionResultKey, name: "key")
    ExecutionResult.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionResultValue, name: "value")
    ExecutionState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ExecutionState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExecutionState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExecutionStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionState, name: "state", traits: {"smithy.api#required" => {}}))
    ExecutionStatus.type = Types::ExecutionStatus
    ExecutionSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSummary, name: "member")
    ExecutionSummary.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "executionId", traits: {"smithy.api#required" => {}}))
    ExecutionSummary.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "actionType"))
    ExecutionSummary.add_member(:target_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResource, name: "targetResource", traits: {"smithy.api#required" => {}}))
    ExecutionSummary.add_member(:target_resource_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "targetResourceVersion", traits: {"smithy.api#required" => {}}))
    ExecutionSummary.add_member(:resolve_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolveTo, name: "resolveTo"))
    ExecutionSummary.add_member(:execution_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "executionStartTime", traits: {"smithy.api#required" => {}}))
    ExecutionSummary.add_member(:execution_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "executionEndTime"))
    ExecutionSummary.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "executionStatus", traits: {"smithy.api#required" => {}}))
    ExecutionSummary.add_member(:execution_entity_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "executionEntityVersion"))
    ExecutionSummary.type = Types::ExecutionSummary
    ExpressionVariable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableName, name: "name", traits: {"smithy.api#required" => {}}))
    ExpressionVariable.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableValue, name: "value", traits: {"smithy.api#required" => {}}))
    ExpressionVariable.type = Types::ExpressionVariable
    ExpressionVariables.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionVariable, name: "member")
    File.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: Bucket, name: "bucket", traits: {"smithy.api#required" => {}}))
    File.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key", traits: {"smithy.api#required" => {}}))
    File.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "versionId"))
    File.type = Types::File
    FileFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: Csv, name: "csv"))
    FileFormat.add_member(:parquet, ::Smithy::Schema::Shapes::MemberShape.new(target: Parquet, name: "parquet"))
    FileFormat.type = Types::FileFormat
    Files.member = ::Smithy::Schema::Shapes::MemberShape.new(target: File, name: "member")
    ForwardingConfig.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardingConfigState, name: "state", traits: {"smithy.api#required" => {}}))
    ForwardingConfig.type = Types::ForwardingConfig
    ForwardingConfigState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ForwardingConfigState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    GatewayCapabilitySummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayCapabilitySummary, name: "member")
    GatewayCapabilitySummary.add_member(:capability_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityNamespace, name: "capabilityNamespace", traits: {"smithy.api#required" => {}}))
    GatewayCapabilitySummary.add_member(:capability_sync_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilitySyncStatus, name: "capabilitySyncStatus", traits: {"smithy.api#required" => {}}))
    GatewayCapabilitySummary.type = Types::GatewayCapabilitySummary
    GatewayPlatform.add_member(:greengrass, ::Smithy::Schema::Shapes::MemberShape.new(target: Greengrass, name: "greengrass"))
    GatewayPlatform.add_member(:greengrass_v2, ::Smithy::Schema::Shapes::MemberShape.new(target: GreengrassV2, name: "greengrassV2"))
    GatewayPlatform.add_member(:siemens_ie, ::Smithy::Schema::Shapes::MemberShape.new(target: SiemensIE, name: "siemensIE"))
    GatewayPlatform.type = Types::GatewayPlatform
    GatewaySummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GatewaySummary, name: "member")
    GatewaySummary.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    GatewaySummary.add_member(:gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayName, name: "gatewayName", traits: {"smithy.api#required" => {}}))
    GatewaySummary.add_member(:gateway_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayPlatform, name: "gatewayPlatform"))
    GatewaySummary.add_member(:gateway_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayVersion, name: "gatewayVersion"))
    GatewaySummary.add_member(:gateway_capability_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayCapabilitySummaries, name: "gatewayCapabilitySummaries"))
    GatewaySummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate", traits: {"smithy.api#required" => {}}))
    GatewaySummary.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateDate", traits: {"smithy.api#required" => {}}))
    GatewaySummary.type = Types::GatewaySummary
    GetAssetPropertyAggregatesRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId", traits: {"smithy.api#httpQuery" => "assetId"}))
    GetAssetPropertyAggregatesRequest.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "propertyId", traits: {"smithy.api#httpQuery" => "propertyId"}))
    GetAssetPropertyAggregatesRequest.add_member(:property_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyAlias, name: "propertyAlias", traits: {"smithy.api#httpQuery" => "propertyAlias"}))
    GetAssetPropertyAggregatesRequest.add_member(:aggregate_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateTypes, name: "aggregateTypes", traits: {"smithy.api#httpQuery" => "aggregateTypes", "smithy.api#required" => {}}))
    GetAssetPropertyAggregatesRequest.add_member(:resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: Resolution, name: "resolution", traits: {"smithy.api#httpQuery" => "resolution", "smithy.api#required" => {}}))
    GetAssetPropertyAggregatesRequest.add_member(:qualities, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualities, name: "qualities", traits: {"smithy.api#httpQuery" => "qualities"}))
    GetAssetPropertyAggregatesRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDate", traits: {"smithy.api#httpQuery" => "startDate", "smithy.api#required" => {}}))
    GetAssetPropertyAggregatesRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endDate", traits: {"smithy.api#httpQuery" => "endDate", "smithy.api#required" => {}}))
    GetAssetPropertyAggregatesRequest.add_member(:time_ordering, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOrdering, name: "timeOrdering", traits: {"smithy.api#httpQuery" => "timeOrdering"}))
    GetAssetPropertyAggregatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetAssetPropertyAggregatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: GetAssetPropertyValueAggregatesMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetAssetPropertyAggregatesRequest.type = Types::GetAssetPropertyAggregatesRequest
    GetAssetPropertyAggregatesResponse.add_member(:aggregated_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedValues, name: "aggregatedValues", traits: {"smithy.api#required" => {}}))
    GetAssetPropertyAggregatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetAssetPropertyAggregatesResponse.type = Types::GetAssetPropertyAggregatesResponse
    GetAssetPropertyValueHistoryRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId", traits: {"smithy.api#httpQuery" => "assetId"}))
    GetAssetPropertyValueHistoryRequest.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "propertyId", traits: {"smithy.api#httpQuery" => "propertyId"}))
    GetAssetPropertyValueHistoryRequest.add_member(:property_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyAlias, name: "propertyAlias", traits: {"smithy.api#httpQuery" => "propertyAlias"}))
    GetAssetPropertyValueHistoryRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDate", traits: {"smithy.api#httpQuery" => "startDate"}))
    GetAssetPropertyValueHistoryRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endDate", traits: {"smithy.api#httpQuery" => "endDate"}))
    GetAssetPropertyValueHistoryRequest.add_member(:qualities, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualities, name: "qualities", traits: {"smithy.api#httpQuery" => "qualities"}))
    GetAssetPropertyValueHistoryRequest.add_member(:time_ordering, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOrdering, name: "timeOrdering", traits: {"smithy.api#httpQuery" => "timeOrdering"}))
    GetAssetPropertyValueHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetAssetPropertyValueHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: GetAssetPropertyValueHistoryMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetAssetPropertyValueHistoryRequest.type = Types::GetAssetPropertyValueHistoryRequest
    GetAssetPropertyValueHistoryResponse.add_member(:asset_property_value_history, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyValueHistory, name: "assetPropertyValueHistory", traits: {"smithy.api#required" => {}}))
    GetAssetPropertyValueHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetAssetPropertyValueHistoryResponse.type = Types::GetAssetPropertyValueHistoryResponse
    GetAssetPropertyValueRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId", traits: {"smithy.api#httpQuery" => "assetId"}))
    GetAssetPropertyValueRequest.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "propertyId", traits: {"smithy.api#httpQuery" => "propertyId"}))
    GetAssetPropertyValueRequest.add_member(:property_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyAlias, name: "propertyAlias", traits: {"smithy.api#httpQuery" => "propertyAlias"}))
    GetAssetPropertyValueRequest.type = Types::GetAssetPropertyValueRequest
    GetAssetPropertyValueResponse.add_member(:property_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyValue, name: "propertyValue"))
    GetAssetPropertyValueResponse.type = Types::GetAssetPropertyValueResponse
    GetInterpolatedAssetPropertyValuesRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId", traits: {"smithy.api#httpQuery" => "assetId"}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "propertyId", traits: {"smithy.api#httpQuery" => "propertyId"}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:property_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyAlias, name: "propertyAlias", traits: {"smithy.api#httpQuery" => "propertyAlias"}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:start_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeInSeconds, name: "startTimeInSeconds", traits: {"smithy.api#httpQuery" => "startTimeInSeconds", "smithy.api#required" => {}}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:start_time_offset_in_nanos, ::Smithy::Schema::Shapes::MemberShape.new(target: OffsetInNanos, name: "startTimeOffsetInNanos", traits: {"smithy.api#httpQuery" => "startTimeOffsetInNanos"}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:end_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeInSeconds, name: "endTimeInSeconds", traits: {"smithy.api#httpQuery" => "endTimeInSeconds", "smithy.api#required" => {}}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:end_time_offset_in_nanos, ::Smithy::Schema::Shapes::MemberShape.new(target: OffsetInNanos, name: "endTimeOffsetInNanos", traits: {"smithy.api#httpQuery" => "endTimeOffsetInNanos"}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:quality, ::Smithy::Schema::Shapes::MemberShape.new(target: Quality, name: "quality", traits: {"smithy.api#httpQuery" => "quality", "smithy.api#required" => {}}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:interval_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: IntervalInSeconds, name: "intervalInSeconds", traits: {"smithy.api#httpQuery" => "intervalInSeconds", "smithy.api#required" => {}}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxInterpolatedResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InterpolationType, name: "type", traits: {"smithy.api#httpQuery" => "type", "smithy.api#required" => {}}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:interval_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: IntervalWindowInSeconds, name: "intervalWindowInSeconds", traits: {"smithy.api#httpQuery" => "intervalWindowInSeconds"}))
    GetInterpolatedAssetPropertyValuesRequest.type = Types::GetInterpolatedAssetPropertyValuesRequest
    GetInterpolatedAssetPropertyValuesResponse.add_member(:interpolated_asset_property_values, ::Smithy::Schema::Shapes::MemberShape.new(target: InterpolatedAssetPropertyValues, name: "interpolatedAssetPropertyValues", traits: {"smithy.api#required" => {}}))
    GetInterpolatedAssetPropertyValuesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetInterpolatedAssetPropertyValuesResponse.type = Types::GetInterpolatedAssetPropertyValuesResponse
    Greengrass.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "groupArn", traits: {"smithy.api#required" => {}}))
    Greengrass.type = Types::Greengrass
    GreengrassV2.add_member(:core_device_thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceThingName, name: "coreDeviceThingName", traits: {"smithy.api#required" => {}}))
    GreengrassV2.add_member(:core_device_operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreDeviceOperatingSystem, name: "coreDeviceOperatingSystem"))
    GreengrassV2.type = Types::GreengrassV2
    GroupIdentity.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityId, name: "id", traits: {"smithy.api#required" => {}}))
    GroupIdentity.type = Types::GroupIdentity
    HierarchyMapping.add_member(:asset_model_hierarchy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelHierarchyId", traits: {"smithy.api#required" => {}}))
    HierarchyMapping.add_member(:interface_asset_model_hierarchy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "interfaceAssetModelHierarchyId", traits: {"smithy.api#required" => {}}))
    HierarchyMapping.type = Types::HierarchyMapping
    HierarchyMappings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HierarchyMapping, name: "member")
    IAMRoleIdentity.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamArn, name: "arn", traits: {"smithy.api#required" => {}}))
    IAMRoleIdentity.type = Types::IAMRoleIdentity
    IAMUserIdentity.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamArn, name: "arn", traits: {"smithy.api#required" => {}}))
    IAMUserIdentity.type = Types::IAMUserIdentity
    IDs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "member")
    Identity.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdentity, name: "user"))
    Identity.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupIdentity, name: "group"))
    Identity.add_member(:iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMUserIdentity, name: "iamUser"))
    Identity.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleIdentity, name: "iamRole"))
    Identity.type = Types::Identity
    IdentityType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    IdentityType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    IdentityType.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM", traits: {"smithy.api#enumValue" => "IAM"}))
    Image.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id"))
    Image.add_member(:file, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFile, name: "file"))
    Image.type = Types::Image
    ImageFile.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFileData, name: "data", traits: {"smithy.api#required" => {}}))
    ImageFile.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFileType, name: "type", traits: {"smithy.api#required" => {}}))
    ImageFile.type = Types::ImageFile
    ImageFileType.add_member(:png, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PNG", traits: {"smithy.api#enumValue" => "PNG"}))
    ImageLocation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    ImageLocation.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "url", traits: {"smithy.api#required" => {}}))
    ImageLocation.type = Types::ImageLocation
    InterfaceDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InterfaceRelationship, name: "member")
    InterfaceRelationship.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    InterfaceRelationship.type = Types::InterfaceRelationship
    InterfaceRelationshipSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InterfaceRelationshipSummary, name: "member")
    InterfaceRelationshipSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    InterfaceRelationshipSummary.type = Types::InterfaceRelationshipSummary
    InterfaceSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InterfaceSummary, name: "member")
    InterfaceSummary.add_member(:interface_asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "interfaceAssetModelId", traits: {"smithy.api#required" => {}}))
    InterfaceSummary.add_member(:interface_asset_model_property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "interfaceAssetModelPropertyId", traits: {"smithy.api#required" => {}}))
    InterfaceSummary.type = Types::InterfaceSummary
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    InternalFailureException.type = Types::InternalFailureException
    InterpolatedAssetPropertyValue.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeInNanos, name: "timestamp", traits: {"smithy.api#required" => {}}))
    InterpolatedAssetPropertyValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Variant, name: "value", traits: {"smithy.api#required" => {}}))
    InterpolatedAssetPropertyValue.type = Types::InterpolatedAssetPropertyValue
    InterpolatedAssetPropertyValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InterpolatedAssetPropertyValue, name: "member")
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    InvalidRequestException.type = Types::InvalidRequestException
    InvocationOutput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvocationOutput.add_member(:citations, ::Smithy::Schema::Shapes::MemberShape.new(target: Citations, name: "citations"))
    InvocationOutput.type = Types::InvocationOutput
    InvokeAssistantRequest.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, name: "conversationId"))
    InvokeAssistantRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageInput, name: "message", traits: {"smithy.api#required" => {}}))
    InvokeAssistantRequest.add_member(:enable_trace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "enableTrace", traits: {"smithy.api#default" => false}))
    InvokeAssistantRequest.type = Types::InvokeAssistantRequest
    InvokeAssistantResponse.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseStream, name: "body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeAssistantResponse.add_member(:conversation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationId, name: "conversationId", traits: {"smithy.api#httpHeader" => "x-amz-iotsitewise-assistant-conversation-id", "smithy.api#required" => {}}))
    InvokeAssistantResponse[:http_payload] = :body
    InvokeAssistantResponse[:http_payload_member] = InvokeAssistantResponse.member(:body)
    InvokeAssistantResponse.type = Types::InvokeAssistantResponse
    JobConfiguration.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, name: "fileFormat", traits: {"smithy.api#required" => {}}))
    JobConfiguration.type = Types::JobConfiguration
    JobStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    JobStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    JobStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:completed_with_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_FAILURES", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_FAILURES"}))
    JobSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummary, name: "member")
    JobSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    JobSummary.type = Types::JobSummary
    KendraSourceDetail.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "knowledgeBaseArn", traits: {"smithy.api#required" => {}}))
    KendraSourceDetail.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "roleArn", traits: {"smithy.api#required" => {}}))
    KendraSourceDetail.type = Types::KendraSourceDetail
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    LimitExceededException.type = Types::LimitExceededException
    ListAccessPoliciesRequest.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, name: "identityType", traits: {"smithy.api#httpQuery" => "identityType"}))
    ListAccessPoliciesRequest.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityId, name: "identityId", traits: {"smithy.api#httpQuery" => "identityId"}))
    ListAccessPoliciesRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListAccessPoliciesRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "resourceId", traits: {"smithy.api#httpQuery" => "resourceId"}))
    ListAccessPoliciesRequest.add_member(:iam_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamArn, name: "iamArn", traits: {"smithy.api#httpQuery" => "iamArn"}))
    ListAccessPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAccessPoliciesRequest.type = Types::ListAccessPoliciesRequest
    ListAccessPoliciesResponse.add_member(:access_policy_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicySummaries, name: "accessPolicySummaries", traits: {"smithy.api#required" => {}}))
    ListAccessPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAccessPoliciesResponse.type = Types::ListAccessPoliciesResponse
    ListActionsRequest.add_member(:target_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceType, name: "targetResourceType", traits: {"smithy.api#httpQuery" => "targetResourceType", "smithy.api#required" => {}}))
    ListActionsRequest.add_member(:target_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "targetResourceId", traits: {"smithy.api#httpQuery" => "targetResourceId", "smithy.api#required" => {}}))
    ListActionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListActionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListActionsRequest.add_member(:resolve_to_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolveToResourceType, name: "resolveToResourceType", traits: {"smithy.api#httpQuery" => "resolveToResourceType"}))
    ListActionsRequest.add_member(:resolve_to_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "resolveToResourceId", traits: {"smithy.api#httpQuery" => "resolveToResourceId"}))
    ListActionsRequest.type = Types::ListActionsRequest
    ListActionsResponse.add_member(:action_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionSummaries, name: "actionSummaries", traits: {"smithy.api#required" => {}}))
    ListActionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#required" => {}}))
    ListActionsResponse.type = Types::ListActionsResponse
    ListAssetModelCompositeModelsRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetModelCompositeModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssetModelCompositeModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssetModelCompositeModelsRequest.add_member(:asset_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelVersionFilter, name: "assetModelVersion", traits: {"smithy.api#httpQuery" => "assetModelVersion"}))
    ListAssetModelCompositeModelsRequest.type = Types::ListAssetModelCompositeModelsRequest
    ListAssetModelCompositeModelsResponse.add_member(:asset_model_composite_model_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelCompositeModelSummaries, name: "assetModelCompositeModelSummaries", traits: {"smithy.api#required" => {}}))
    ListAssetModelCompositeModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssetModelCompositeModelsResponse.type = Types::ListAssetModelCompositeModelsResponse
    ListAssetModelPropertiesFilter.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    ListAssetModelPropertiesFilter.add_member(:base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASE", traits: {"smithy.api#enumValue" => "BASE"}))
    ListAssetModelPropertiesRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetModelPropertiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssetModelPropertiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssetModelPropertiesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAssetModelPropertiesFilter, name: "filter", traits: {"smithy.api#httpQuery" => "filter"}))
    ListAssetModelPropertiesRequest.add_member(:asset_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelVersionFilter, name: "assetModelVersion", traits: {"smithy.api#httpQuery" => "assetModelVersion"}))
    ListAssetModelPropertiesRequest.type = Types::ListAssetModelPropertiesRequest
    ListAssetModelPropertiesResponse.add_member(:asset_model_property_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelPropertySummaries, name: "assetModelPropertySummaries", traits: {"smithy.api#required" => {}}))
    ListAssetModelPropertiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssetModelPropertiesResponse.type = Types::ListAssetModelPropertiesResponse
    ListAssetModelsRequest.add_member(:asset_model_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAssetModelsTypeFilter, name: "assetModelTypes", traits: {"smithy.api#httpQuery" => "assetModelTypes"}))
    ListAssetModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssetModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssetModelsRequest.add_member(:asset_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelVersionFilter, name: "assetModelVersion", traits: {"smithy.api#httpQuery" => "assetModelVersion"}))
    ListAssetModelsRequest.type = Types::ListAssetModelsRequest
    ListAssetModelsResponse.add_member(:asset_model_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelSummaries, name: "assetModelSummaries", traits: {"smithy.api#required" => {}}))
    ListAssetModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssetModelsResponse.type = Types::ListAssetModelsResponse
    ListAssetModelsTypeFilter.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelType, name: "member")
    ListAssetPropertiesFilter.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    ListAssetPropertiesFilter.add_member(:base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASE", traits: {"smithy.api#enumValue" => "BASE"}))
    ListAssetPropertiesRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetPropertiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssetPropertiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssetPropertiesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAssetPropertiesFilter, name: "filter", traits: {"smithy.api#httpQuery" => "filter"}))
    ListAssetPropertiesRequest.type = Types::ListAssetPropertiesRequest
    ListAssetPropertiesResponse.add_member(:asset_property_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertySummaries, name: "assetPropertySummaries", traits: {"smithy.api#required" => {}}))
    ListAssetPropertiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssetPropertiesResponse.type = Types::ListAssetPropertiesResponse
    ListAssetRelationshipsRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetRelationshipsRequest.add_member(:traversal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TraversalType, name: "traversalType", traits: {"smithy.api#httpQuery" => "traversalType", "smithy.api#required" => {}}))
    ListAssetRelationshipsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssetRelationshipsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssetRelationshipsRequest.type = Types::ListAssetRelationshipsRequest
    ListAssetRelationshipsResponse.add_member(:asset_relationship_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetRelationshipSummaries, name: "assetRelationshipSummaries", traits: {"smithy.api#required" => {}}))
    ListAssetRelationshipsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssetRelationshipsResponse.type = Types::ListAssetRelationshipsResponse
    ListAssetsFilter.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    ListAssetsFilter.add_member(:top_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOP_LEVEL", traits: {"smithy.api#enumValue" => "TOP_LEVEL"}))
    ListAssetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssetsRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelId", traits: {"smithy.api#httpQuery" => "assetModelId"}))
    ListAssetsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAssetsFilter, name: "filter", traits: {"smithy.api#httpQuery" => "filter"}))
    ListAssetsRequest.type = Types::ListAssetsRequest
    ListAssetsResponse.add_member(:asset_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetSummaries, name: "assetSummaries", traits: {"smithy.api#required" => {}}))
    ListAssetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssetsResponse.type = Types::ListAssetsResponse
    ListAssociatedAssetsRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociatedAssetsRequest.add_member(:hierarchy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "hierarchyId", traits: {"smithy.api#httpQuery" => "hierarchyId"}))
    ListAssociatedAssetsRequest.add_member(:traversal_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: TraversalDirection, name: "traversalDirection", traits: {"smithy.api#httpQuery" => "traversalDirection"}))
    ListAssociatedAssetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssociatedAssetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssociatedAssetsRequest.type = Types::ListAssociatedAssetsRequest
    ListAssociatedAssetsResponse.add_member(:asset_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedAssetsSummaries, name: "assetSummaries", traits: {"smithy.api#required" => {}}))
    ListAssociatedAssetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssociatedAssetsResponse.type = Types::ListAssociatedAssetsResponse
    ListBulkImportJobsFilter.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    ListBulkImportJobsFilter.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ListBulkImportJobsFilter.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ListBulkImportJobsFilter.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ListBulkImportJobsFilter.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ListBulkImportJobsFilter.add_member(:completed_with_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_FAILURES", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_FAILURES"}))
    ListBulkImportJobsFilter.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ListBulkImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBulkImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBulkImportJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListBulkImportJobsFilter, name: "filter", traits: {"smithy.api#httpQuery" => "filter"}))
    ListBulkImportJobsRequest.type = Types::ListBulkImportJobsRequest
    ListBulkImportJobsResponse.add_member(:job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummaries, name: "jobSummaries", traits: {"smithy.api#required" => {}}))
    ListBulkImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBulkImportJobsResponse.type = Types::ListBulkImportJobsResponse
    ListCompositionRelationshipsRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCompositionRelationshipsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCompositionRelationshipsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCompositionRelationshipsRequest.type = Types::ListCompositionRelationshipsRequest
    ListCompositionRelationshipsResponse.add_member(:composition_relationship_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositionRelationshipSummaries, name: "compositionRelationshipSummaries", traits: {"smithy.api#required" => {}}))
    ListCompositionRelationshipsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCompositionRelationshipsResponse.type = Types::ListCompositionRelationshipsResponse
    ListComputationModelDataBindingUsagesRequest.add_member(:data_binding_value_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataBindingValueFilter, name: "dataBindingValueFilter", traits: {"smithy.api#required" => {}}))
    ListComputationModelDataBindingUsagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListComputationModelDataBindingUsagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListComputationModelDataBindingUsagesRequest.type = Types::ListComputationModelDataBindingUsagesRequest
    ListComputationModelDataBindingUsagesResponse.add_member(:data_binding_usage_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelDataBindingUsageSummaries, name: "dataBindingUsageSummaries", traits: {"smithy.api#required" => {}}))
    ListComputationModelDataBindingUsagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListComputationModelDataBindingUsagesResponse.type = Types::ListComputationModelDataBindingUsagesResponse
    ListComputationModelResolveToResourcesRequest.add_member(:computation_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "computationModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComputationModelResolveToResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListComputationModelResolveToResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListComputationModelResolveToResourcesRequest.type = Types::ListComputationModelResolveToResourcesRequest
    ListComputationModelResolveToResourcesResponse.add_member(:computation_model_resolve_to_resource_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelResolveToResourceSummaries, name: "computationModelResolveToResourceSummaries", traits: {"smithy.api#required" => {}}))
    ListComputationModelResolveToResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListComputationModelResolveToResourcesResponse.type = Types::ListComputationModelResolveToResourcesResponse
    ListComputationModelsRequest.add_member(:computation_model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelType, name: "computationModelType", traits: {"smithy.api#httpQuery" => "computationModelType"}))
    ListComputationModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListComputationModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListComputationModelsRequest.type = Types::ListComputationModelsRequest
    ListComputationModelsResponse.add_member(:computation_model_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelSummaries, name: "computationModelSummaries", traits: {"smithy.api#required" => {}}))
    ListComputationModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListComputationModelsResponse.type = Types::ListComputationModelsResponse
    ListDashboardsRequest.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "projectId", traits: {"smithy.api#httpQuery" => "projectId", "smithy.api#required" => {}}))
    ListDashboardsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDashboardsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDashboardsRequest.type = Types::ListDashboardsRequest
    ListDashboardsResponse.add_member(:dashboard_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardSummaries, name: "dashboardSummaries", traits: {"smithy.api#required" => {}}))
    ListDashboardsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDashboardsResponse.type = Types::ListDashboardsResponse
    ListDatasetsRequest.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSourceType, name: "sourceType", traits: {"smithy.api#httpQuery" => "sourceType", "smithy.api#required" => {}}))
    ListDatasetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDatasetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:dataset_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSummaries, name: "datasetSummaries", traits: {"smithy.api#required" => {}}))
    ListDatasetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListExecutionsRequest.add_member(:target_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceType, name: "targetResourceType", traits: {"smithy.api#httpQuery" => "targetResourceType", "smithy.api#required" => {}}))
    ListExecutionsRequest.add_member(:target_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "targetResourceId", traits: {"smithy.api#httpQuery" => "targetResourceId", "smithy.api#required" => {}}))
    ListExecutionsRequest.add_member(:resolve_to_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolveToResourceType, name: "resolveToResourceType", traits: {"smithy.api#httpQuery" => "resolveToResourceType"}))
    ListExecutionsRequest.add_member(:resolve_to_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "resolveToResourceId", traits: {"smithy.api#httpQuery" => "resolveToResourceId"}))
    ListExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListExecutionsRequest.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "actionType", traits: {"smithy.api#httpQuery" => "actionType"}))
    ListExecutionsRequest.type = Types::ListExecutionsRequest
    ListExecutionsResponse.add_member(:execution_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSummaries, name: "executionSummaries", traits: {"smithy.api#required" => {}}))
    ListExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListExecutionsResponse.type = Types::ListExecutionsResponse
    ListGatewaysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGatewaysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGatewaysRequest.type = Types::ListGatewaysRequest
    ListGatewaysResponse.add_member(:gateway_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewaySummaries, name: "gatewaySummaries", traits: {"smithy.api#required" => {}}))
    ListGatewaysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListGatewaysResponse.type = Types::ListGatewaysResponse
    ListInterfaceRelationshipsRequest.add_member(:interface_asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "interfaceAssetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInterfaceRelationshipsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListInterfaceRelationshipsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListInterfaceRelationshipsRequest.type = Types::ListInterfaceRelationshipsRequest
    ListInterfaceRelationshipsResponse.add_member(:interface_relationship_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: InterfaceRelationshipSummaries, name: "interfaceRelationshipSummaries", traits: {"smithy.api#required" => {}}))
    ListInterfaceRelationshipsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListInterfaceRelationshipsResponse.type = Types::ListInterfaceRelationshipsResponse
    ListPortalsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPortalsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPortalsRequest.type = Types::ListPortalsRequest
    ListPortalsResponse.add_member(:portal_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalSummaries, name: "portalSummaries"))
    ListPortalsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPortalsResponse.type = Types::ListPortalsResponse
    ListProjectAssetsRequest.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "projectId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProjectAssetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProjectAssetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProjectAssetsRequest.type = Types::ListProjectAssetsRequest
    ListProjectAssetsResponse.add_member(:asset_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetIDs, name: "assetIds", traits: {"smithy.api#required" => {}}))
    ListProjectAssetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListProjectAssetsResponse.type = Types::ListProjectAssetsResponse
    ListProjectsRequest.add_member(:portal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "portalId", traits: {"smithy.api#httpQuery" => "portalId", "smithy.api#required" => {}}))
    ListProjectsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProjectsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProjectsRequest.type = Types::ListProjectsRequest
    ListProjectsResponse.add_member(:project_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSummaries, name: "projectSummaries", traits: {"smithy.api#required" => {}}))
    ListProjectsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListProjectsResponse.type = Types::ListProjectsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTimeSeriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTimeSeriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTimeSeriesRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpQuery" => "assetId"}))
    ListTimeSeriesRequest.add_member(:alias_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyAlias, name: "aliasPrefix", traits: {"smithy.api#httpQuery" => "aliasPrefix"}))
    ListTimeSeriesRequest.add_member(:time_series_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTimeSeriesType, name: "timeSeriesType", traits: {"smithy.api#httpQuery" => "timeSeriesType"}))
    ListTimeSeriesRequest.type = Types::ListTimeSeriesRequest
    ListTimeSeriesResponse.add_member(:time_series_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesSummaries, name: "TimeSeriesSummaries", traits: {"smithy.api#required" => {}}))
    ListTimeSeriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTimeSeriesResponse.type = Types::ListTimeSeriesResponse
    ListTimeSeriesType.add_member(:associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATED", traits: {"smithy.api#enumValue" => "ASSOCIATED"}))
    ListTimeSeriesType.add_member(:disassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISASSOCIATED", traits: {"smithy.api#enumValue" => "DISASSOCIATED"}))
    Location.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "uri"))
    Location.type = Types::Location
    LoggingLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    LoggingLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    LoggingLevel.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFF", traits: {"smithy.api#enumValue" => "OFF"}))
    LoggingOptions.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingLevel, name: "level", traits: {"smithy.api#required" => {}}))
    LoggingOptions.type = Types::LoggingOptions
    MatchedDataBinding.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataBindingValue, name: "value", traits: {"smithy.api#required" => {}}))
    MatchedDataBinding.type = Types::MatchedDataBinding
    Measurement.add_member(:processing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MeasurementProcessingConfig, name: "processingConfig"))
    Measurement.type = Types::Measurement
    MeasurementProcessingConfig.add_member(:forwarding_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardingConfig, name: "forwardingConfig", traits: {"smithy.api#required" => {}}))
    MeasurementProcessingConfig.type = Types::MeasurementProcessingConfig
    Metric.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "expression", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    Metric.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionVariables, name: "variables", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => []}))
    Metric.add_member(:window, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricWindow, name: "window", traits: {"smithy.api#required" => {}}))
    Metric.add_member(:processing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricProcessingConfig, name: "processingConfig"))
    Metric.type = Types::Metric
    MetricProcessingConfig.add_member(:compute_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeLocation, name: "computeLocation", traits: {"smithy.api#required" => {}}))
    MetricProcessingConfig.type = Types::MetricProcessingConfig
    MetricWindow.add_member(:tumbling, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindow, name: "tumbling"))
    MetricWindow.type = Types::MetricWindow
    MonitorErrorCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    MonitorErrorCode.add_member(:validation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_ERROR", traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    MonitorErrorCode.add_member(:limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED"}))
    MonitorErrorDetails.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorErrorCode, name: "code"))
    MonitorErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorErrorMessage, name: "message"))
    MonitorErrorDetails.type = Types::MonitorErrorDetails
    MultiLayerStorage.add_member(:customer_managed_s3_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedS3Storage, name: "customerManagedS3Storage", traits: {"smithy.api#required" => {}}))
    MultiLayerStorage.type = Types::MultiLayerStorage
    Parquet.type = Types::Parquet
    Permission.add_member(:administrator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADMINISTRATOR", traits: {"smithy.api#enumValue" => "ADMINISTRATOR"}))
    Permission.add_member(:viewer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIEWER", traits: {"smithy.api#enumValue" => "VIEWER"}))
    PortalResource.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    PortalResource.type = Types::PortalResource
    PortalState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    PortalState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    PortalState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    PortalState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    PortalState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    PortalState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    PortalStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalState, name: "state", traits: {"smithy.api#required" => {}}))
    PortalStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorErrorDetails, name: "error"))
    PortalStatus.type = Types::PortalStatus
    PortalSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PortalSummary, name: "member")
    PortalSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    PortalSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    PortalSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    PortalSummary.add_member(:start_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "startUrl", traits: {"smithy.api#required" => {}}))
    PortalSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate"))
    PortalSummary.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateDate"))
    PortalSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamArn, name: "roleArn"))
    PortalSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalStatus, name: "status", traits: {"smithy.api#required" => {}}))
    PortalSummary.add_member(:portal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalType, name: "portalType"))
    PortalSummary.type = Types::PortalSummary
    PortalTools.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "member")
    PortalType.add_member(:sitewise_portal_v1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SITEWISE_PORTAL_V1", traits: {"smithy.api#enumValue" => "SITEWISE_PORTAL_V1"}))
    PortalType.add_member(:sitewise_portal_v2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SITEWISE_PORTAL_V2", traits: {"smithy.api#enumValue" => "SITEWISE_PORTAL_V2"}))
    PortalTypeConfiguration.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PortalTypeKey, name: "key")
    PortalTypeConfiguration.value = ::Smithy::Schema::Shapes::MemberShape.new(target: PortalTypeEntry, name: "value")
    PortalTypeEntry.add_member(:portal_tools, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalTools, name: "portalTools"))
    PortalTypeEntry.type = Types::PortalTypeEntry
    PreconditionFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    PreconditionFailedException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    PreconditionFailedException.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    PreconditionFailedException.type = Types::PreconditionFailedException
    ProjectResource.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    ProjectResource.type = Types::ProjectResource
    ProjectSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSummary, name: "member")
    ProjectSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    ProjectSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    ProjectSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    ProjectSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDate"))
    ProjectSummary.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateDate"))
    ProjectSummary.type = Types::ProjectSummary
    Property.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "id", traits: {"smithy.api#required" => {}}))
    Property.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    Property.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    Property.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyAlias, name: "alias"))
    Property.add_member(:notification, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyNotification, name: "notification"))
    Property.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDataType, name: "dataType", traits: {"smithy.api#required" => {}}))
    Property.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyUnit, name: "unit"))
    Property.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyType, name: "type"))
    Property.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyPath, name: "path"))
    Property.type = Types::Property
    PropertyDataType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    PropertyDataType.add_member(:integer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGER", traits: {"smithy.api#enumValue" => "INTEGER"}))
    PropertyDataType.add_member(:double, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOUBLE", traits: {"smithy.api#enumValue" => "DOUBLE"}))
    PropertyDataType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    PropertyDataType.add_member(:struct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRUCT", traits: {"smithy.api#enumValue" => "STRUCT"}))
    PropertyMapping.add_member(:asset_model_property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelPropertyId", traits: {"smithy.api#required" => {}}))
    PropertyMapping.add_member(:interface_asset_model_property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "interfaceAssetModelPropertyId", traits: {"smithy.api#required" => {}}))
    PropertyMapping.type = Types::PropertyMapping
    PropertyMappingConfiguration.add_member(:match_by_property_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchByPropertyName, name: "matchByPropertyName", traits: {"smithy.api#default" => false}))
    PropertyMappingConfiguration.add_member(:create_missing_property, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateMissingProperty, name: "createMissingProperty", traits: {"smithy.api#default" => false}))
    PropertyMappingConfiguration.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyMappings, name: "overrides"))
    PropertyMappingConfiguration.type = Types::PropertyMappingConfiguration
    PropertyMappings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyMapping, name: "member")
    PropertyNotification.add_member(:topic, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyNotificationTopic, name: "topic", traits: {"smithy.api#required" => {}}))
    PropertyNotification.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyNotificationState, name: "state", traits: {"smithy.api#required" => {}}))
    PropertyNotification.type = Types::PropertyNotification
    PropertyNotificationState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    PropertyNotificationState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PropertyType.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: Attribute, name: "attribute"))
    PropertyType.add_member(:measurement, ::Smithy::Schema::Shapes::MemberShape.new(target: Measurement, name: "measurement"))
    PropertyType.add_member(:transform, ::Smithy::Schema::Shapes::MemberShape.new(target: Transform, name: "transform"))
    PropertyType.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: Metric, name: "metric"))
    PropertyType.type = Types::PropertyType
    PropertyValueNullValue.add_member(:value_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RawValueType, name: "valueType", traits: {"smithy.api#required" => {}}))
    PropertyValueNullValue.type = Types::PropertyValueNullValue
    PutAssetModelInterfaceRelationshipRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAssetModelInterfaceRelationshipRequest.add_member(:interface_asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "interfaceAssetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAssetModelInterfaceRelationshipRequest.add_member(:property_mapping_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyMappingConfiguration, name: "propertyMappingConfiguration", traits: {"smithy.api#required" => {}}))
    PutAssetModelInterfaceRelationshipRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    PutAssetModelInterfaceRelationshipRequest.type = Types::PutAssetModelInterfaceRelationshipRequest
    PutAssetModelInterfaceRelationshipResponse.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetModelId", traits: {"smithy.api#required" => {}}))
    PutAssetModelInterfaceRelationshipResponse.add_member(:interface_asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "interfaceAssetModelId", traits: {"smithy.api#required" => {}}))
    PutAssetModelInterfaceRelationshipResponse.add_member(:asset_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "assetModelArn", traits: {"smithy.api#required" => {}}))
    PutAssetModelInterfaceRelationshipResponse.add_member(:asset_model_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelStatus, name: "assetModelStatus", traits: {"smithy.api#required" => {}}))
    PutAssetModelInterfaceRelationshipResponse.type = Types::PutAssetModelInterfaceRelationshipResponse
    PutAssetPropertyValueEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PutAssetPropertyValueEntry, name: "member")
    PutAssetPropertyValueEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryId, name: "entryId", traits: {"smithy.api#required" => {}}))
    PutAssetPropertyValueEntry.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId"))
    PutAssetPropertyValueEntry.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "propertyId"))
    PutAssetPropertyValueEntry.add_member(:property_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyAlias, name: "propertyAlias"))
    PutAssetPropertyValueEntry.add_member(:property_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetPropertyValues, name: "propertyValues", traits: {"smithy.api#required" => {}}))
    PutAssetPropertyValueEntry.type = Types::PutAssetPropertyValueEntry
    PutDefaultEncryptionConfigurationRequest.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "encryptionType", traits: {"smithy.api#required" => {}}))
    PutDefaultEncryptionConfigurationRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    PutDefaultEncryptionConfigurationRequest.type = Types::PutDefaultEncryptionConfigurationRequest
    PutDefaultEncryptionConfigurationResponse.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "encryptionType", traits: {"smithy.api#required" => {}}))
    PutDefaultEncryptionConfigurationResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "kmsKeyArn"))
    PutDefaultEncryptionConfigurationResponse.add_member(:configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationStatus, name: "configurationStatus", traits: {"smithy.api#required" => {}}))
    PutDefaultEncryptionConfigurationResponse.type = Types::PutDefaultEncryptionConfigurationResponse
    PutLoggingOptionsRequest.add_member(:logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingOptions, name: "loggingOptions", traits: {"smithy.api#required" => {}}))
    PutLoggingOptionsRequest.type = Types::PutLoggingOptionsRequest
    PutLoggingOptionsResponse.type = Types::PutLoggingOptionsResponse
    PutStorageConfigurationRequest.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, name: "storageType", traits: {"smithy.api#required" => {}}))
    PutStorageConfigurationRequest.add_member(:multi_layer_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiLayerStorage, name: "multiLayerStorage"))
    PutStorageConfigurationRequest.add_member(:disassociated_data_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociatedDataStorageState, name: "disassociatedDataStorage"))
    PutStorageConfigurationRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    PutStorageConfigurationRequest.add_member(:warm_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmTierState, name: "warmTier"))
    PutStorageConfigurationRequest.add_member(:warm_tier_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmTierRetentionPeriod, name: "warmTierRetentionPeriod"))
    PutStorageConfigurationRequest.add_member(:disallow_ingest_null_na_n, ::Smithy::Schema::Shapes::MemberShape.new(target: DisallowIngestNullNaN, name: "disallowIngestNullNaN"))
    PutStorageConfigurationRequest.type = Types::PutStorageConfigurationRequest
    PutStorageConfigurationResponse.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, name: "storageType", traits: {"smithy.api#required" => {}}))
    PutStorageConfigurationResponse.add_member(:multi_layer_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiLayerStorage, name: "multiLayerStorage"))
    PutStorageConfigurationResponse.add_member(:disassociated_data_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociatedDataStorageState, name: "disassociatedDataStorage"))
    PutStorageConfigurationResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "retentionPeriod"))
    PutStorageConfigurationResponse.add_member(:configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationStatus, name: "configurationStatus", traits: {"smithy.api#required" => {}}))
    PutStorageConfigurationResponse.add_member(:warm_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmTierState, name: "warmTier"))
    PutStorageConfigurationResponse.add_member(:warm_tier_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmTierRetentionPeriod, name: "warmTierRetentionPeriod"))
    PutStorageConfigurationResponse.add_member(:disallow_ingest_null_na_n, ::Smithy::Schema::Shapes::MemberShape.new(target: DisallowIngestNullNaN, name: "disallowIngestNullNaN"))
    PutStorageConfigurationResponse.type = Types::PutStorageConfigurationResponse
    Qualities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Quality, name: "member")
    Quality.add_member(:good, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOOD", traits: {"smithy.api#enumValue" => "GOOD"}))
    Quality.add_member(:bad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BAD", traits: {"smithy.api#enumValue" => "BAD"}))
    Quality.add_member(:uncertain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNCERTAIN", traits: {"smithy.api#enumValue" => "UNCERTAIN"}))
    QueryTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    QueryTimeoutException.type = Types::QueryTimeoutException
    RawValueType.add_member(:double, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOUBLE", traits: {"smithy.api#enumValue" => "D"}))
    RawValueType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "B"}))
    RawValueType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "S"}))
    RawValueType.add_member(:integer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGER", traits: {"smithy.api#enumValue" => "I"}))
    RawValueType.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "U"}))
    Reference.add_member(:dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSetReference, name: "dataset"))
    Reference.type = Types::Reference
    ResolveTo.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId", traits: {"smithy.api#required" => {}}))
    ResolveTo.type = Types::ResolveTo
    ResolveToResourceType.add_member(:asset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSET", traits: {"smithy.api#enumValue" => "ASSET"}))
    Resource.add_member(:portal, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalResource, name: "portal"))
    Resource.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectResource, name: "project"))
    Resource.type = Types::Resource
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceAlreadyExistsException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceAlreadyExistsException.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:portal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PORTAL", traits: {"smithy.api#enumValue" => "PORTAL"}))
    ResourceType.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROJECT", traits: {"smithy.api#enumValue" => "PROJECT"}))
    ResponseStream.add_member(:trace, Types::ResponseStream::Trace, ::Smithy::Schema::Shapes::MemberShape.new(target: Trace, name: "trace"))
    ResponseStream.add_member(:output, Types::ResponseStream::Output, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationOutput, name: "output"))
    ResponseStream.add_member(:access_denied_exception, Types::ResponseStream::AccessDeniedException, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedException, name: "accessDeniedException"))
    ResponseStream.add_member(:conflicting_operation_exception, Types::ResponseStream::ConflictingOperationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictingOperationException, name: "conflictingOperationException"))
    ResponseStream.add_member(:internal_failure_exception, Types::ResponseStream::InternalFailureException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalFailureException, name: "internalFailureException"))
    ResponseStream.add_member(:invalid_request_exception, Types::ResponseStream::InvalidRequestException, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidRequestException, name: "invalidRequestException"))
    ResponseStream.add_member(:limit_exceeded_exception, Types::ResponseStream::LimitExceededException, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitExceededException, name: "limitExceededException"))
    ResponseStream.add_member(:resource_not_found_exception, Types::ResponseStream::ResourceNotFoundException, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundException, name: "resourceNotFoundException"))
    ResponseStream.add_member(:throttling_exception, Types::ResponseStream::ThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingException, name: "throttlingException"))
    ResponseStream.add_member(:unknown, Types::ResponseStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResponseStream.type = Types::ResponseStream
    RetentionPeriod.add_member(:number_of_days, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfDays, name: "numberOfDays"))
    RetentionPeriod.add_member(:unlimited, ::Smithy::Schema::Shapes::MemberShape.new(target: Unlimited, name: "unlimited"))
    RetentionPeriod.type = Types::RetentionPeriod
    Row.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DatumList, name: "data", traits: {"smithy.api#required" => {}}))
    Row.type = Types::Row
    Rows.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Row, name: "member")
    ScalarType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    ScalarType.add_member(:int, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INT", traits: {"smithy.api#enumValue" => "INT"}))
    ScalarType.add_member(:double, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOUBLE", traits: {"smithy.api#enumValue" => "DOUBLE"}))
    ScalarType.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    ScalarType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SiemensIE.add_member(:iot_core_thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IotCoreThingName, name: "iotCoreThingName", traits: {"smithy.api#required" => {}}))
    SiemensIE.type = Types::SiemensIE
    Source.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    Source.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "location"))
    Source.type = Types::Source
    SourceDetail.add_member(:kendra, ::Smithy::Schema::Shapes::MemberShape.new(target: KendraSourceDetail, name: "kendra"))
    SourceDetail.type = Types::SourceDetail
    StorageType.add_member(:sitewise_default_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SITEWISE_DEFAULT_STORAGE", traits: {"smithy.api#enumValue" => "SITEWISE_DEFAULT_STORAGE"}))
    StorageType.add_member(:multi_layer_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_LAYER_STORAGE", traits: {"smithy.api#enumValue" => "MULTI_LAYER_STORAGE"}))
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key")
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetResource.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId"))
    TargetResource.add_member(:computation_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "computationModelId"))
    TargetResource.type = Types::TargetResource
    TargetResourceType.add_member(:asset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSET", traits: {"smithy.api#enumValue" => "ASSET"}))
    TargetResourceType.add_member(:computation_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTATION_MODEL", traits: {"smithy.api#enumValue" => "COMPUTATION_MODEL"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TimeInNanos.add_member(:time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeInSeconds, name: "timeInSeconds", traits: {"smithy.api#required" => {}}))
    TimeInNanos.add_member(:offset_in_nanos, ::Smithy::Schema::Shapes::MemberShape.new(target: OffsetInNanos, name: "offsetInNanos"))
    TimeInNanos.type = Types::TimeInNanos
    TimeOrdering.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    TimeOrdering.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    TimeSeriesSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesSummary, name: "member")
    TimeSeriesSummary.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "assetId"))
    TimeSeriesSummary.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "propertyId"))
    TimeSeriesSummary.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyAlias, name: "alias"))
    TimeSeriesSummary.add_member(:time_series_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeriesId, name: "timeSeriesId", traits: {"smithy.api#required" => {}}))
    TimeSeriesSummary.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDataType, name: "dataType", traits: {"smithy.api#required" => {}}))
    TimeSeriesSummary.add_member(:data_type_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "dataTypeSpec"))
    TimeSeriesSummary.add_member(:time_series_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "timeSeriesCreationDate", traits: {"smithy.api#required" => {}}))
    TimeSeriesSummary.add_member(:time_series_last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "timeSeriesLastUpdateDate", traits: {"smithy.api#required" => {}}))
    TimeSeriesSummary.add_member(:time_series_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "timeSeriesArn", traits: {"smithy.api#required" => {}}))
    TimeSeriesSummary.type = Types::TimeSeriesSummary
    Timestamps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TimeInNanos, name: "member")
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceName"))
    TooManyTagsException.type = Types::TooManyTagsException
    Trace.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "text"))
    Trace.type = Types::Trace
    Transform.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "expression", traits: {"smithy.api#required" => {}}))
    Transform.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionVariables, name: "variables", traits: {"smithy.api#required" => {}}))
    Transform.add_member(:processing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformProcessingConfig, name: "processingConfig"))
    Transform.type = Types::Transform
    TransformProcessingConfig.add_member(:compute_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeLocation, name: "computeLocation", traits: {"smithy.api#required" => {}}))
    TransformProcessingConfig.add_member(:forwarding_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardingConfig, name: "forwardingConfig"))
    TransformProcessingConfig.type = Types::TransformProcessingConfig
    TraversalDirection.add_member(:parent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARENT", traits: {"smithy.api#enumValue" => "PARENT"}))
    TraversalDirection.add_member(:child, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHILD", traits: {"smithy.api#enumValue" => "CHILD"}))
    TraversalType.add_member(:path_to_root, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PATH_TO_ROOT", traits: {"smithy.api#enumValue" => "PATH_TO_ROOT"}))
    TumblingWindow.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Interval, name: "interval", traits: {"smithy.api#required" => {}}))
    TumblingWindow.add_member(:offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Offset, name: "offset"))
    TumblingWindow.type = Types::TumblingWindow
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAccessPolicyRequest.add_member(:access_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "accessPolicyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccessPolicyRequest.add_member(:access_policy_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "accessPolicyIdentity", traits: {"smithy.api#required" => {}}))
    UpdateAccessPolicyRequest.add_member(:access_policy_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "accessPolicyResource", traits: {"smithy.api#required" => {}}))
    UpdateAccessPolicyRequest.add_member(:access_policy_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "accessPolicyPermission", traits: {"smithy.api#required" => {}}))
    UpdateAccessPolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAccessPolicyRequest.type = Types::UpdateAccessPolicyRequest
    UpdateAccessPolicyResponse.type = Types::UpdateAccessPolicyResponse
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelCompositeModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "assetModelCompositeModelExternalId"))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "assetModelCompositeModelDescription"))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetModelCompositeModelName", traits: {"smithy.api#required" => {}}))
    UpdateAssetModelCompositeModelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelProperties, name: "assetModelCompositeModelProperties"))
    UpdateAssetModelCompositeModelRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ifMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateAssetModelCompositeModelRequest.add_member(:if_none_match, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectAll, name: "ifNoneMatch", traits: {"smithy.api#httpHeader" => "If-None-Match"}))
    UpdateAssetModelCompositeModelRequest.add_member(:match_for_version_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelVersionType, name: "matchForVersionType", traits: {"smithy.api#httpHeader" => "Match-For-Version-Type"}))
    UpdateAssetModelCompositeModelRequest.type = Types::UpdateAssetModelCompositeModelRequest
    UpdateAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelCompositeModelPath, name: "assetModelCompositeModelPath", traits: {"smithy.api#required" => {}}))
    UpdateAssetModelCompositeModelResponse.add_member(:asset_model_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelStatus, name: "assetModelStatus", traits: {"smithy.api#required" => {}}))
    UpdateAssetModelCompositeModelResponse.type = Types::UpdateAssetModelCompositeModelResponse
    UpdateAssetModelRequest.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetModelRequest.add_member(:asset_model_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "assetModelExternalId"))
    UpdateAssetModelRequest.add_member(:asset_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetModelName", traits: {"smithy.api#required" => {}}))
    UpdateAssetModelRequest.add_member(:asset_model_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "assetModelDescription"))
    UpdateAssetModelRequest.add_member(:asset_model_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelProperties, name: "assetModelProperties"))
    UpdateAssetModelRequest.add_member(:asset_model_hierarchies, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelHierarchies, name: "assetModelHierarchies"))
    UpdateAssetModelRequest.add_member(:asset_model_composite_models, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelCompositeModels, name: "assetModelCompositeModels"))
    UpdateAssetModelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAssetModelRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ifMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateAssetModelRequest.add_member(:if_none_match, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectAll, name: "ifNoneMatch", traits: {"smithy.api#httpHeader" => "If-None-Match"}))
    UpdateAssetModelRequest.add_member(:match_for_version_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelVersionType, name: "matchForVersionType", traits: {"smithy.api#httpHeader" => "Match-For-Version-Type"}))
    UpdateAssetModelRequest.type = Types::UpdateAssetModelRequest
    UpdateAssetModelResponse.add_member(:asset_model_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelStatus, name: "assetModelStatus", traits: {"smithy.api#required" => {}}))
    UpdateAssetModelResponse.type = Types::UpdateAssetModelResponse
    UpdateAssetPropertyRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetPropertyRequest.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "propertyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetPropertyRequest.add_member(:property_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyAlias, name: "propertyAlias"))
    UpdateAssetPropertyRequest.add_member(:property_notification_state, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyNotificationState, name: "propertyNotificationState"))
    UpdateAssetPropertyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAssetPropertyRequest.add_member(:property_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyUnit, name: "propertyUnit"))
    UpdateAssetPropertyRequest.type = Types::UpdateAssetPropertyRequest
    UpdateAssetRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomID, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetRequest.add_member(:asset_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "assetExternalId"))
    UpdateAssetRequest.add_member(:asset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "assetName", traits: {"smithy.api#required" => {}}))
    UpdateAssetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAssetRequest.add_member(:asset_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "assetDescription"))
    UpdateAssetRequest.type = Types::UpdateAssetRequest
    UpdateAssetResponse.add_member(:asset_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetStatus, name: "assetStatus", traits: {"smithy.api#required" => {}}))
    UpdateAssetResponse.type = Types::UpdateAssetResponse
    UpdateComputationModelRequest.add_member(:computation_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "computationModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateComputationModelRequest.add_member(:computation_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedName, name: "computationModelName", traits: {"smithy.api#required" => {}}))
    UpdateComputationModelRequest.add_member(:computation_model_description, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedDescription, name: "computationModelDescription"))
    UpdateComputationModelRequest.add_member(:computation_model_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelConfiguration, name: "computationModelConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateComputationModelRequest.add_member(:computation_model_data_binding, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelDataBinding, name: "computationModelDataBinding", traits: {"smithy.api#required" => {}}))
    UpdateComputationModelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateComputationModelRequest.type = Types::UpdateComputationModelRequest
    UpdateComputationModelResponse.add_member(:computation_model_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputationModelStatus, name: "computationModelStatus", traits: {"smithy.api#required" => {}}))
    UpdateComputationModelResponse.type = Types::UpdateComputationModelResponse
    UpdateDashboardRequest.add_member(:dashboard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "dashboardId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDashboardRequest.add_member(:dashboard_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "dashboardName", traits: {"smithy.api#required" => {}}))
    UpdateDashboardRequest.add_member(:dashboard_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "dashboardDescription"))
    UpdateDashboardRequest.add_member(:dashboard_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardDefinition, name: "dashboardDefinition", traits: {"smithy.api#required" => {}}))
    UpdateDashboardRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateDashboardRequest.type = Types::UpdateDashboardRequest
    UpdateDashboardResponse.type = Types::UpdateDashboardResponse
    UpdateDatasetRequest.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "datasetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:dataset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedName, name: "datasetName", traits: {"smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:dataset_description, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedDescription, name: "datasetDescription"))
    UpdateDatasetRequest.add_member(:dataset_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetSource, name: "datasetSource", traits: {"smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateDatasetRequest.type = Types::UpdateDatasetRequest
    UpdateDatasetResponse.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "datasetId"))
    UpdateDatasetResponse.add_member(:dataset_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "datasetArn"))
    UpdateDatasetResponse.add_member(:dataset_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetStatus, name: "datasetStatus"))
    UpdateDatasetResponse.type = Types::UpdateDatasetResponse
    UpdateGatewayCapabilityConfigurationRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGatewayCapabilityConfigurationRequest.add_member(:capability_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityNamespace, name: "capabilityNamespace", traits: {"smithy.api#required" => {}}))
    UpdateGatewayCapabilityConfigurationRequest.add_member(:capability_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityConfiguration, name: "capabilityConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateGatewayCapabilityConfigurationRequest.type = Types::UpdateGatewayCapabilityConfigurationRequest
    UpdateGatewayCapabilityConfigurationResponse.add_member(:capability_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityNamespace, name: "capabilityNamespace", traits: {"smithy.api#required" => {}}))
    UpdateGatewayCapabilityConfigurationResponse.add_member(:capability_sync_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilitySyncStatus, name: "capabilitySyncStatus", traits: {"smithy.api#required" => {}}))
    UpdateGatewayCapabilityConfigurationResponse.type = Types::UpdateGatewayCapabilityConfigurationResponse
    UpdateGatewayRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGatewayRequest.add_member(:gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayName, name: "gatewayName", traits: {"smithy.api#required" => {}}))
    UpdateGatewayRequest.type = Types::UpdateGatewayRequest
    UpdatePortalRequest.add_member(:portal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "portalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePortalRequest.add_member(:portal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "portalName", traits: {"smithy.api#required" => {}}))
    UpdatePortalRequest.add_member(:portal_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "portalDescription"))
    UpdatePortalRequest.add_member(:portal_contact_email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "portalContactEmail", traits: {"smithy.api#required" => {}}))
    UpdatePortalRequest.add_member(:portal_logo_image, ::Smithy::Schema::Shapes::MemberShape.new(target: Image, name: "portalLogoImage"))
    UpdatePortalRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    UpdatePortalRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdatePortalRequest.add_member(:notification_sender_email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "notificationSenderEmail"))
    UpdatePortalRequest.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: Alarms, name: "alarms"))
    UpdatePortalRequest.add_member(:portal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalType, name: "portalType"))
    UpdatePortalRequest.add_member(:portal_type_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalTypeConfiguration, name: "portalTypeConfiguration"))
    UpdatePortalRequest.type = Types::UpdatePortalRequest
    UpdatePortalResponse.add_member(:portal_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalStatus, name: "portalStatus", traits: {"smithy.api#required" => {}}))
    UpdatePortalResponse.type = Types::UpdatePortalResponse
    UpdateProjectRequest.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "projectId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProjectRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "projectName", traits: {"smithy.api#required" => {}}))
    UpdateProjectRequest.add_member(:project_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "projectDescription"))
    UpdateProjectRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateProjectRequest.type = Types::UpdateProjectRequest
    UpdateProjectResponse.type = Types::UpdateProjectResponse
    UserIdentity.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityId, name: "id", traits: {"smithy.api#required" => {}}))
    UserIdentity.type = Types::UserIdentity
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ValidationException.type = Types::ValidationException
    VariableValue.add_member(:property_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Macro, name: "propertyId"))
    VariableValue.add_member(:hierarchy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Macro, name: "hierarchyId"))
    VariableValue.add_member(:property_path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetModelPropertyPath, name: "propertyPath"))
    VariableValue.type = Types::VariableValue
    Variant.add_member(:string_value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValueStringValue, name: "stringValue"))
    Variant.add_member(:integer_value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValueIntegerValue, name: "integerValue"))
    Variant.add_member(:double_value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValueDoubleValue, name: "doubleValue"))
    Variant.add_member(:boolean_value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValueBooleanValue, name: "booleanValue"))
    Variant.add_member(:null_value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValueNullValue, name: "nullValue"))
    Variant.type = Types::Variant
    WarmTierRetentionPeriod.add_member(:number_of_days, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfDays, name: "numberOfDays"))
    WarmTierRetentionPeriod.add_member(:unlimited, ::Smithy::Schema::Shapes::MemberShape.new(target: Unlimited, name: "unlimited"))
    WarmTierRetentionPeriod.type = Types::WarmTierRetentionPeriod
    WarmTierState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    WarmTierState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))

    AWSIoTSiteWise = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotsitewise#AWSIoTSiteWise"
      service.name = "AWSIoTSiteWise"
      service.version = "2019-12-02"
      service.traits = {"aws.api#service" => {"sdkId" => "IoTSiteWise", "arnNamespace" => "iotsitewise", "cloudFormationName" => "IoTSiteWise", "cloudTrailEventSource" => "iotsitewise.amazonaws.com", "endpointPrefix" => "iotsitewise"}, "aws.auth#sigv4" => {"name" => "iotsitewise"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT SiteWise"}
      service.add_operation(:associate_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#AssociateAssets"
        operation.name = "AssociateAssets"
        operation.input = AssociateAssetsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/assets/{assetId}/associate", "code" => 200}}
      end)
      service.add_operation(:associate_time_series_to_asset_property, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#AssociateTimeSeriesToAssetProperty"
        operation.name = "AssociateTimeSeriesToAssetProperty"
        operation.input = AssociateTimeSeriesToAssetPropertyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/timeseries/associate", "code" => 200}}
      end)
      service.add_operation(:batch_associate_project_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#BatchAssociateProjectAssets"
        operation.name = "BatchAssociateProjectAssets"
        operation.input = BatchAssociateProjectAssetsRequest
        operation.output = BatchAssociateProjectAssetsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "POST", "uri" => "/projects/{projectId}/assets/associate", "code" => 200}}
      end)
      service.add_operation(:batch_disassociate_project_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#BatchDisassociateProjectAssets"
        operation.name = "BatchDisassociateProjectAssets"
        operation.input = BatchDisassociateProjectAssetsRequest
        operation.output = BatchDisassociateProjectAssetsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "POST", "uri" => "/projects/{projectId}/assets/disassociate", "code" => 200}}
      end)
      service.add_operation(:batch_get_asset_property_aggregates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregates"
        operation.name = "BatchGetAssetPropertyAggregates"
        operation.input = BatchGetAssetPropertyAggregatesRequest
        operation.output = BatchGetAssetPropertyAggregatesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/properties/batch/aggregates", "code" => 200}}
        operation[:paginator] = Paginators::BatchGetAssetPropertyAggregates.new
      end)
      service.add_operation(:batch_get_asset_property_value, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#BatchGetAssetPropertyValue"
        operation.name = "BatchGetAssetPropertyValue"
        operation.input = BatchGetAssetPropertyValueRequest
        operation.output = BatchGetAssetPropertyValueResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/properties/batch/latest", "code" => 200}}
        operation[:paginator] = Paginators::BatchGetAssetPropertyValue.new
      end)
      service.add_operation(:batch_get_asset_property_value_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistory"
        operation.name = "BatchGetAssetPropertyValueHistory"
        operation.input = BatchGetAssetPropertyValueHistoryRequest
        operation.output = BatchGetAssetPropertyValueHistoryResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/properties/batch/history", "code" => 200}}
        operation[:paginator] = Paginators::BatchGetAssetPropertyValueHistory.new
      end)
      service.add_operation(:batch_put_asset_property_value, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#BatchPutAssetPropertyValue"
        operation.name = "BatchPutAssetPropertyValue"
        operation.input = BatchPutAssetPropertyValueRequest
        operation.output = BatchPutAssetPropertyValueResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/properties", "code" => 200}}
      end)
      service.add_operation(:create_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateAccessPolicy"
        operation.name = "CreateAccessPolicy"
        operation.input = CreateAccessPolicyRequest
        operation.output = CreateAccessPolicyResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "POST", "uri" => "/access-policies", "code" => 201}}
      end)
      service.add_operation(:create_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateAsset"
        operation.name = "CreateAsset"
        operation.input = CreateAssetRequest
        operation.output = CreateAssetResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/assets", "code" => 202}}
      end)
      service.add_operation(:create_asset_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateAssetModel"
        operation.name = "CreateAssetModel"
        operation.input = CreateAssetModelRequest
        operation.output = CreateAssetModelResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/asset-models", "code" => 202}}
      end)
      service.add_operation(:create_asset_model_composite_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateAssetModelCompositeModel"
        operation.name = "CreateAssetModelCompositeModel"
        operation.input = CreateAssetModelCompositeModelRequest
        operation.output = CreateAssetModelCompositeModelResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/asset-models/{assetModelId}/composite-models", "code" => 202}}
      end)
      service.add_operation(:create_bulk_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateBulkImportJob"
        operation.name = "CreateBulkImportJob"
        operation.input = CreateBulkImportJobRequest
        operation.output = CreateBulkImportJobResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/jobs", "code" => 202}}
      end)
      service.add_operation(:create_computation_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateComputationModel"
        operation.name = "CreateComputationModel"
        operation.input = CreateComputationModelRequest
        operation.output = CreateComputationModelResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/computation-models", "code" => 202}}
      end)
      service.add_operation(:create_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateDashboard"
        operation.name = "CreateDashboard"
        operation.input = CreateDashboardRequest
        operation.output = CreateDashboardResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "POST", "uri" => "/dashboards", "code" => 201}}
      end)
      service.add_operation(:create_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = CreateDatasetRequest
        operation.output = CreateDatasetResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/datasets", "code" => 202}}
      end)
      service.add_operation(:create_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateGateway"
        operation.name = "CreateGateway"
        operation.input = CreateGatewayRequest
        operation.output = CreateGatewayResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/20200301/gateways", "code" => 201}}
      end)
      service.add_operation(:create_portal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreatePortal"
        operation.name = "CreatePortal"
        operation.input = CreatePortalRequest
        operation.output = CreatePortalResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "POST", "uri" => "/portals", "code" => 202}}
      end)
      service.add_operation(:create_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateProject"
        operation.name = "CreateProject"
        operation.input = CreateProjectRequest
        operation.output = CreateProjectResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "POST", "uri" => "/projects", "code" => 201}}
      end)
      service.add_operation(:delete_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteAccessPolicy"
        operation.name = "DeleteAccessPolicy"
        operation.input = DeleteAccessPolicyRequest
        operation.output = DeleteAccessPolicyResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/access-policies/{accessPolicyId}", "code" => 204}}
      end)
      service.add_operation(:delete_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteAsset"
        operation.name = "DeleteAsset"
        operation.input = DeleteAssetRequest
        operation.output = DeleteAssetResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/assets/{assetId}", "code" => 202}}
      end)
      service.add_operation(:delete_asset_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteAssetModel"
        operation.name = "DeleteAssetModel"
        operation.input = DeleteAssetModelRequest
        operation.output = DeleteAssetModelResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/asset-models/{assetModelId}", "code" => 202}}
      end)
      service.add_operation(:delete_asset_model_composite_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteAssetModelCompositeModel"
        operation.name = "DeleteAssetModelCompositeModel"
        operation.input = DeleteAssetModelCompositeModelRequest
        operation.output = DeleteAssetModelCompositeModelResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}", "code" => 202}}
      end)
      service.add_operation(:delete_asset_model_interface_relationship, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteAssetModelInterfaceRelationship"
        operation.name = "DeleteAssetModelInterfaceRelationship"
        operation.input = DeleteAssetModelInterfaceRelationshipRequest
        operation.output = DeleteAssetModelInterfaceRelationshipResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship", "code" => 202}}
      end)
      service.add_operation(:delete_computation_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteComputationModel"
        operation.name = "DeleteComputationModel"
        operation.input = DeleteComputationModelRequest
        operation.output = DeleteComputationModelResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/computation-models/{computationModelId}", "code" => 202}}
      end)
      service.add_operation(:delete_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteDashboard"
        operation.name = "DeleteDashboard"
        operation.input = DeleteDashboardRequest
        operation.output = DeleteDashboardResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/dashboards/{dashboardId}", "code" => 204}}
      end)
      service.add_operation(:delete_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = DeleteDatasetRequest
        operation.output = DeleteDatasetResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/datasets/{datasetId}", "code" => 202}}
      end)
      service.add_operation(:delete_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteGateway"
        operation.name = "DeleteGateway"
        operation.input = DeleteGatewayRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/20200301/gateways/{gatewayId}", "code" => 200}}
      end)
      service.add_operation(:delete_portal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeletePortal"
        operation.name = "DeletePortal"
        operation.input = DeletePortalRequest
        operation.output = DeletePortalResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalId}", "code" => 202}}
      end)
      service.add_operation(:delete_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = DeleteProjectRequest
        operation.output = DeleteProjectResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/projects/{projectId}", "code" => 204}}
      end)
      service.add_operation(:delete_time_series, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteTimeSeries"
        operation.name = "DeleteTimeSeries"
        operation.input = DeleteTimeSeriesRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/timeseries/delete", "code" => 200}}
      end)
      service.add_operation(:describe_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAccessPolicy"
        operation.name = "DescribeAccessPolicy"
        operation.input = DescribeAccessPolicyRequest
        operation.output = DescribeAccessPolicyResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/access-policies/{accessPolicyId}", "code" => 200}}
      end)
      service.add_operation(:describe_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAction"
        operation.name = "DescribeAction"
        operation.input = DescribeActionRequest
        operation.output = DescribeActionResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/actions/{actionId}", "code" => 200}}
      end)
      service.add_operation(:describe_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAsset"
        operation.name = "DescribeAsset"
        operation.input = DescribeAssetRequest
        operation.output = DescribeAssetResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/assets/{assetId}", "code" => 200}}
      end)
      service.add_operation(:describe_asset_composite_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAssetCompositeModel"
        operation.name = "DescribeAssetCompositeModel"
        operation.input = DescribeAssetCompositeModelRequest
        operation.output = DescribeAssetCompositeModelResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/assets/{assetId}/composite-models/{assetCompositeModelId}", "code" => 200}}
      end)
      service.add_operation(:describe_asset_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAssetModel"
        operation.name = "DescribeAssetModel"
        operation.input = DescribeAssetModelRequest
        operation.output = DescribeAssetModelResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/asset-models/{assetModelId}", "code" => 200}}
      end)
      service.add_operation(:describe_asset_model_composite_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAssetModelCompositeModel"
        operation.name = "DescribeAssetModelCompositeModel"
        operation.input = DescribeAssetModelCompositeModelRequest
        operation.output = DescribeAssetModelCompositeModelResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}", "code" => 200}}
      end)
      service.add_operation(:describe_asset_model_interface_relationship, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAssetModelInterfaceRelationship"
        operation.name = "DescribeAssetModelInterfaceRelationship"
        operation.input = DescribeAssetModelInterfaceRelationshipRequest
        operation.output = DescribeAssetModelInterfaceRelationshipResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship", "code" => 200}}
      end)
      service.add_operation(:describe_asset_property, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAssetProperty"
        operation.name = "DescribeAssetProperty"
        operation.input = DescribeAssetPropertyRequest
        operation.output = DescribeAssetPropertyResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/assets/{assetId}/properties/{propertyId}", "code" => 200}}
      end)
      service.add_operation(:describe_bulk_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeBulkImportJob"
        operation.name = "DescribeBulkImportJob"
        operation.input = DescribeBulkImportJobRequest
        operation.output = DescribeBulkImportJobResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "GET", "uri" => "/jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:describe_computation_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeComputationModel"
        operation.name = "DescribeComputationModel"
        operation.input = DescribeComputationModelRequest
        operation.output = DescribeComputationModelResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/computation-models/{computationModelId}", "code" => 200}}
      end)
      service.add_operation(:describe_computation_model_execution_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeComputationModelExecutionSummary"
        operation.name = "DescribeComputationModelExecutionSummary"
        operation.input = DescribeComputationModelExecutionSummaryRequest
        operation.output = DescribeComputationModelExecutionSummaryResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/computation-models/{computationModelId}/execution-summary", "code" => 200}}
      end)
      service.add_operation(:describe_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeDashboard"
        operation.name = "DescribeDashboard"
        operation.input = DescribeDashboardRequest
        operation.output = DescribeDashboardResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/dashboards/{dashboardId}", "code" => 200}}
      end)
      service.add_operation(:describe_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = DescribeDatasetRequest
        operation.output = DescribeDatasetResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetId}", "code" => 200}}
      end)
      service.add_operation(:describe_default_encryption_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeDefaultEncryptionConfiguration"
        operation.name = "DescribeDefaultEncryptionConfiguration"
        operation.input = DescribeDefaultEncryptionConfigurationRequest
        operation.output = DescribeDefaultEncryptionConfigurationResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/configuration/account/encryption", "code" => 200}}
      end)
      service.add_operation(:describe_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeExecution"
        operation.name = "DescribeExecution"
        operation.input = DescribeExecutionRequest
        operation.output = DescribeExecutionResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/executions/{executionId}", "code" => 200}}
      end)
      service.add_operation(:describe_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeGateway"
        operation.name = "DescribeGateway"
        operation.input = DescribeGatewayRequest
        operation.output = DescribeGatewayResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/20200301/gateways/{gatewayId}", "code" => 200}}
      end)
      service.add_operation(:describe_gateway_capability_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeGatewayCapabilityConfiguration"
        operation.name = "DescribeGatewayCapabilityConfiguration"
        operation.input = DescribeGatewayCapabilityConfigurationRequest
        operation.output = DescribeGatewayCapabilityConfigurationResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/20200301/gateways/{gatewayId}/capability/{capabilityNamespace}", "code" => 200}}
      end)
      service.add_operation(:describe_logging_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeLoggingOptions"
        operation.name = "DescribeLoggingOptions"
        operation.input = DescribeLoggingOptionsRequest
        operation.output = DescribeLoggingOptionsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/logging", "code" => 200}}
      end)
      service.add_operation(:describe_portal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribePortal"
        operation.name = "DescribePortal"
        operation.input = DescribePortalRequest
        operation.output = DescribePortalResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/portals/{portalId}", "code" => 200}}
      end)
      service.add_operation(:describe_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeProject"
        operation.name = "DescribeProject"
        operation.input = DescribeProjectRequest
        operation.output = DescribeProjectResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/projects/{projectId}", "code" => 200}}
      end)
      service.add_operation(:describe_storage_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeStorageConfiguration"
        operation.name = "DescribeStorageConfiguration"
        operation.input = DescribeStorageConfigurationRequest
        operation.output = DescribeStorageConfigurationResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/configuration/account/storage", "code" => 200}}
      end)
      service.add_operation(:describe_time_series, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeTimeSeries"
        operation.name = "DescribeTimeSeries"
        operation.input = DescribeTimeSeriesRequest
        operation.output = DescribeTimeSeriesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/timeseries/describe", "code" => 200}}
      end)
      service.add_operation(:disassociate_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DisassociateAssets"
        operation.name = "DisassociateAssets"
        operation.input = DisassociateAssetsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/assets/{assetId}/disassociate", "code" => 200}}
      end)
      service.add_operation(:disassociate_time_series_from_asset_property, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DisassociateTimeSeriesFromAssetProperty"
        operation.name = "DisassociateTimeSeriesFromAssetProperty"
        operation.input = DisassociateTimeSeriesFromAssetPropertyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/timeseries/disassociate", "code" => 200}}
      end)
      service.add_operation(:execute_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ExecuteAction"
        operation.name = "ExecuteAction"
        operation.input = ExecuteActionRequest
        operation.output = ExecuteActionResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/actions", "code" => 202}}
      end)
      service.add_operation(:execute_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ExecuteQuery"
        operation.name = "ExecuteQuery"
        operation.input = ExecuteQueryRequest
        operation.output = ExecuteQueryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << QueryTimeoutException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/queries/execution", "code" => 200}}
        operation[:paginator] = Paginators::ExecuteQuery.new
      end)
      service.add_operation(:get_asset_property_aggregates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#GetAssetPropertyAggregates"
        operation.name = "GetAssetPropertyAggregates"
        operation.input = GetAssetPropertyAggregatesRequest
        operation.output = GetAssetPropertyAggregatesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "GET", "uri" => "/properties/aggregates", "code" => 200}}
        operation[:paginator] = Paginators::GetAssetPropertyAggregates.new
      end)
      service.add_operation(:get_asset_property_value, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#GetAssetPropertyValue"
        operation.name = "GetAssetPropertyValue"
        operation.input = GetAssetPropertyValueRequest
        operation.output = GetAssetPropertyValueResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "GET", "uri" => "/properties/latest", "code" => 200}}
      end)
      service.add_operation(:get_asset_property_value_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#GetAssetPropertyValueHistory"
        operation.name = "GetAssetPropertyValueHistory"
        operation.input = GetAssetPropertyValueHistoryRequest
        operation.output = GetAssetPropertyValueHistoryResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "GET", "uri" => "/properties/history", "code" => 200}}
        operation[:paginator] = Paginators::GetAssetPropertyValueHistory.new
      end)
      service.add_operation(:get_interpolated_asset_property_values, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#GetInterpolatedAssetPropertyValues"
        operation.name = "GetInterpolatedAssetPropertyValues"
        operation.input = GetInterpolatedAssetPropertyValuesRequest
        operation.output = GetInterpolatedAssetPropertyValuesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "GET", "uri" => "/properties/interpolated", "code" => 200}}
        operation[:paginator] = Paginators::GetInterpolatedAssetPropertyValues.new
      end)
      service.add_operation(:invoke_assistant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#InvokeAssistant"
        operation.name = "InvokeAssistant"
        operation.input = InvokeAssistantRequest
        operation.output = InvokeAssistantResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/assistant/invocation", "code" => 200}}
      end)
      service.add_operation(:list_access_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAccessPolicies"
        operation.name = "ListAccessPolicies"
        operation.input = ListAccessPoliciesRequest
        operation.output = ListAccessPoliciesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/access-policies", "code" => 200}}
        operation[:paginator] = Paginators::ListAccessPolicies.new
      end)
      service.add_operation(:list_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListActions"
        operation.name = "ListActions"
        operation.input = ListActionsRequest
        operation.output = ListActionsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/actions", "code" => 200}}
      end)
      service.add_operation(:list_asset_model_composite_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAssetModelCompositeModels"
        operation.name = "ListAssetModelCompositeModels"
        operation.input = ListAssetModelCompositeModelsRequest
        operation.output = ListAssetModelCompositeModelsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/asset-models/{assetModelId}/composite-models", "code" => 200}}
        operation[:paginator] = Paginators::ListAssetModelCompositeModels.new
      end)
      service.add_operation(:list_asset_model_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAssetModelProperties"
        operation.name = "ListAssetModelProperties"
        operation.input = ListAssetModelPropertiesRequest
        operation.output = ListAssetModelPropertiesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/asset-models/{assetModelId}/properties", "code" => 200}}
        operation[:paginator] = Paginators::ListAssetModelProperties.new
      end)
      service.add_operation(:list_asset_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAssetModels"
        operation.name = "ListAssetModels"
        operation.input = ListAssetModelsRequest
        operation.output = ListAssetModelsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/asset-models", "code" => 200}}
        operation[:paginator] = Paginators::ListAssetModels.new
      end)
      service.add_operation(:list_asset_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAssetProperties"
        operation.name = "ListAssetProperties"
        operation.input = ListAssetPropertiesRequest
        operation.output = ListAssetPropertiesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/assets/{assetId}/properties", "code" => 200}}
        operation[:paginator] = Paginators::ListAssetProperties.new
      end)
      service.add_operation(:list_asset_relationships, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAssetRelationships"
        operation.name = "ListAssetRelationships"
        operation.input = ListAssetRelationshipsRequest
        operation.output = ListAssetRelationshipsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/assets/{assetId}/assetRelationships", "code" => 200}}
        operation[:paginator] = Paginators::ListAssetRelationships.new
      end)
      service.add_operation(:list_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAssets"
        operation.name = "ListAssets"
        operation.input = ListAssetsRequest
        operation.output = ListAssetsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/assets", "code" => 200}}
        operation[:paginator] = Paginators::ListAssets.new
      end)
      service.add_operation(:list_associated_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAssociatedAssets"
        operation.name = "ListAssociatedAssets"
        operation.input = ListAssociatedAssetsRequest
        operation.output = ListAssociatedAssetsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/assets/{assetId}/hierarchies", "code" => 200}}
        operation[:paginator] = Paginators::ListAssociatedAssets.new
      end)
      service.add_operation(:list_bulk_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListBulkImportJobs"
        operation.name = "ListBulkImportJobs"
        operation.input = ListBulkImportJobsRequest
        operation.output = ListBulkImportJobsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "GET", "uri" => "/jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListBulkImportJobs.new
      end)
      service.add_operation(:list_composition_relationships, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListCompositionRelationships"
        operation.name = "ListCompositionRelationships"
        operation.input = ListCompositionRelationshipsRequest
        operation.output = ListCompositionRelationshipsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/asset-models/{assetModelId}/composition-relationships", "code" => 200}}
        operation[:paginator] = Paginators::ListCompositionRelationships.new
      end)
      service.add_operation(:list_computation_model_data_binding_usages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListComputationModelDataBindingUsages"
        operation.name = "ListComputationModelDataBindingUsages"
        operation.input = ListComputationModelDataBindingUsagesRequest
        operation.output = ListComputationModelDataBindingUsagesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/computation-models/data-binding-usages", "code" => 200}}
        operation[:paginator] = Paginators::ListComputationModelDataBindingUsages.new
      end)
      service.add_operation(:list_computation_model_resolve_to_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListComputationModelResolveToResources"
        operation.name = "ListComputationModelResolveToResources"
        operation.input = ListComputationModelResolveToResourcesRequest
        operation.output = ListComputationModelResolveToResourcesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/computation-models/{computationModelId}/resolve-to-resources", "code" => 200}}
        operation[:paginator] = Paginators::ListComputationModelResolveToResources.new
      end)
      service.add_operation(:list_computation_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListComputationModels"
        operation.name = "ListComputationModels"
        operation.input = ListComputationModelsRequest
        operation.output = ListComputationModelsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/computation-models", "code" => 200}}
        operation[:paginator] = Paginators::ListComputationModels.new
      end)
      service.add_operation(:list_dashboards, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListDashboards"
        operation.name = "ListDashboards"
        operation.input = ListDashboardsRequest
        operation.output = ListDashboardsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/dashboards", "code" => 200}}
        operation[:paginator] = Paginators::ListDashboards.new
      end)
      service.add_operation(:list_datasets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = ListDatasetsRequest
        operation.output = ListDatasetsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasets", "code" => 200}}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListExecutions"
        operation.name = "ListExecutions"
        operation.input = ListExecutionsRequest
        operation.output = ListExecutionsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/executions", "code" => 200}}
        operation[:paginator] = Paginators::ListExecutions.new
      end)
      service.add_operation(:list_gateways, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListGateways"
        operation.name = "ListGateways"
        operation.input = ListGatewaysRequest
        operation.output = ListGatewaysResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/20200301/gateways", "code" => 200}}
        operation[:paginator] = Paginators::ListGateways.new
      end)
      service.add_operation(:list_interface_relationships, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListInterfaceRelationships"
        operation.name = "ListInterfaceRelationships"
        operation.input = ListInterfaceRelationshipsRequest
        operation.output = ListInterfaceRelationshipsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/interface/{interfaceAssetModelId}/asset-models", "code" => 200}}
        operation[:paginator] = Paginators::ListInterfaceRelationships.new
      end)
      service.add_operation(:list_portals, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListPortals"
        operation.name = "ListPortals"
        operation.input = ListPortalsRequest
        operation.output = ListPortalsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/portals", "code" => 200}}
        operation[:paginator] = Paginators::ListPortals.new
      end)
      service.add_operation(:list_project_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListProjectAssets"
        operation.name = "ListProjectAssets"
        operation.input = ListProjectAssetsRequest
        operation.output = ListProjectAssetsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/projects/{projectId}/assets", "code" => 200}}
        operation[:paginator] = Paginators::ListProjectAssets.new
      end)
      service.add_operation(:list_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListProjects"
        operation.name = "ListProjects"
        operation.input = ListProjectsRequest
        operation.output = ListProjectsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/projects", "code" => 200}}
        operation[:paginator] = Paginators::ListProjects.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:list_time_series, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListTimeSeries"
        operation.name = "ListTimeSeries"
        operation.input = ListTimeSeriesRequest
        operation.output = ListTimeSeriesResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/timeseries", "code" => 200}}
        operation[:paginator] = Paginators::ListTimeSeries.new
      end)
      service.add_operation(:put_asset_model_interface_relationship, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#PutAssetModelInterfaceRelationship"
        operation.name = "PutAssetModelInterfaceRelationship"
        operation.input = PutAssetModelInterfaceRelationshipRequest
        operation.output = PutAssetModelInterfaceRelationshipResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship", "code" => 202}}
      end)
      service.add_operation(:put_default_encryption_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#PutDefaultEncryptionConfiguration"
        operation.name = "PutDefaultEncryptionConfiguration"
        operation.input = PutDefaultEncryptionConfigurationRequest
        operation.output = PutDefaultEncryptionConfigurationResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/configuration/account/encryption", "code" => 200}}
      end)
      service.add_operation(:put_logging_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#PutLoggingOptions"
        operation.name = "PutLoggingOptions"
        operation.input = PutLoggingOptionsRequest
        operation.output = PutLoggingOptionsResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/logging", "code" => 200}}
      end)
      service.add_operation(:put_storage_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#PutStorageConfiguration"
        operation.name = "PutStorageConfiguration"
        operation.input = PutStorageConfigurationRequest
        operation.output = PutStorageConfigurationResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/configuration/account/storage", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << TooManyTagsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:update_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateAccessPolicy"
        operation.name = "UpdateAccessPolicy"
        operation.input = UpdateAccessPolicyRequest
        operation.output = UpdateAccessPolicyResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/access-policies/{accessPolicyId}", "code" => 200}}
      end)
      service.add_operation(:update_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateAsset"
        operation.name = "UpdateAsset"
        operation.input = UpdateAssetRequest
        operation.output = UpdateAssetResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/assets/{assetId}", "code" => 202}}
      end)
      service.add_operation(:update_asset_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateAssetModel"
        operation.name = "UpdateAssetModel"
        operation.input = UpdateAssetModelRequest
        operation.output = UpdateAssetModelResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/asset-models/{assetModelId}", "code" => 202}}
      end)
      service.add_operation(:update_asset_model_composite_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateAssetModelCompositeModel"
        operation.name = "UpdateAssetModelCompositeModel"
        operation.input = UpdateAssetModelCompositeModelRequest
        operation.output = UpdateAssetModelCompositeModelResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}", "code" => 202}}
      end)
      service.add_operation(:update_asset_property, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateAssetProperty"
        operation.name = "UpdateAssetProperty"
        operation.input = UpdateAssetPropertyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/assets/{assetId}/properties/{propertyId}", "code" => 200}}
      end)
      service.add_operation(:update_computation_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateComputationModel"
        operation.name = "UpdateComputationModel"
        operation.input = UpdateComputationModelRequest
        operation.output = UpdateComputationModelResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/computation-models/{computationModelId}", "code" => 202}}
      end)
      service.add_operation(:update_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateDashboard"
        operation.name = "UpdateDashboard"
        operation.input = UpdateDashboardRequest
        operation.output = UpdateDashboardResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/dashboards/{dashboardId}", "code" => 200}}
      end)
      service.add_operation(:update_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateDataset"
        operation.name = "UpdateDataset"
        operation.input = UpdateDatasetRequest
        operation.output = UpdateDatasetResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/datasets/{datasetId}", "code" => 202}}
      end)
      service.add_operation(:update_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateGateway"
        operation.name = "UpdateGateway"
        operation.input = UpdateGatewayRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/20200301/gateways/{gatewayId}", "code" => 200}}
      end)
      service.add_operation(:update_gateway_capability_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateGatewayCapabilityConfiguration"
        operation.name = "UpdateGatewayCapabilityConfiguration"
        operation.input = UpdateGatewayCapabilityConfigurationRequest
        operation.output = UpdateGatewayCapabilityConfigurationResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/20200301/gateways/{gatewayId}/capability", "code" => 201}}
      end)
      service.add_operation(:update_portal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdatePortal"
        operation.name = "UpdatePortal"
        operation.input = UpdatePortalRequest
        operation.output = UpdatePortalResponse
        operation.errors << ConflictingOperationException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalId}", "code" => 202}}
      end)
      service.add_operation(:update_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateProject"
        operation.name = "UpdateProject"
        operation.input = UpdateProjectRequest
        operation.output = UpdateProjectResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/projects/{projectId}", "code" => 200}}
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
