# frozen_string_literal: true

# This is generated code!

module Aws::IoTSiteWise
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ARN', name: 'ARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-cn|-us-gov)?:[a-zA-Z0-9-:\\/_\\.]+$"})
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessPolicySummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AccessPolicySummaries', name: 'AccessPolicySummaries')
    AccessPolicySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AccessPolicySummary', name: 'AccessPolicySummary')
    ActionDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ActionDefinition', name: 'ActionDefinition')
    ActionDefinitions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#ActionDefinitions', name: 'ActionDefinitions')
    ActionPayload = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ActionPayload', name: 'ActionPayload')
    ActionPayloadString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ActionPayloadString', name: 'ActionPayloadString', traits: {"smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    ActionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#ActionSummaries', name: 'ActionSummaries')
    ActionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ActionSummary', name: 'ActionSummary')
    AdaptiveIngestion = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotsitewise#AdaptiveIngestion', name: 'AdaptiveIngestion')
    AggregateType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#AggregateType', name: 'AggregateType')
    AggregateTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AggregateTypes', name: 'AggregateTypes', traits: {"smithy.api#length" => {"min" => 1}})
    AggregatedDoubleValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.iotsitewise#AggregatedDoubleValue', name: 'AggregatedDoubleValue')
    AggregatedValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AggregatedValue', name: 'AggregatedValue')
    AggregatedValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AggregatedValues', name: 'AggregatedValues')
    Aggregates = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Aggregates', name: 'Aggregates')
    Alarms = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Alarms', name: 'Alarms')
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AssetBindingValueFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetBindingValueFilter', name: 'AssetBindingValueFilter')
    AssetCompositeModel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetCompositeModel', name: 'AssetCompositeModel')
    AssetCompositeModelPath = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetCompositeModelPath', name: 'AssetCompositeModelPath')
    AssetCompositeModelPathSegment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetCompositeModelPathSegment', name: 'AssetCompositeModelPathSegment')
    AssetCompositeModelSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetCompositeModelSummaries', name: 'AssetCompositeModelSummaries')
    AssetCompositeModelSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetCompositeModelSummary', name: 'AssetCompositeModelSummary')
    AssetCompositeModels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetCompositeModels', name: 'AssetCompositeModels')
    AssetErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#AssetErrorCode', name: 'AssetErrorCode')
    AssetErrorDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetErrorDetails', name: 'AssetErrorDetails')
    AssetErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#AssetErrorMessage', name: 'AssetErrorMessage')
    AssetHierarchies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetHierarchies', name: 'AssetHierarchies')
    AssetHierarchy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetHierarchy', name: 'AssetHierarchy')
    AssetHierarchyInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetHierarchyInfo', name: 'AssetHierarchyInfo')
    AssetIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetIDs', name: 'AssetIDs')
    AssetModelBindingValueFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelBindingValueFilter', name: 'AssetModelBindingValueFilter')
    AssetModelCompositeModel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelCompositeModel', name: 'AssetModelCompositeModel')
    AssetModelCompositeModelDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelCompositeModelDefinition', name: 'AssetModelCompositeModelDefinition')
    AssetModelCompositeModelDefinitions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetModelCompositeModelDefinitions', name: 'AssetModelCompositeModelDefinitions')
    AssetModelCompositeModelPath = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetModelCompositeModelPath', name: 'AssetModelCompositeModelPath')
    AssetModelCompositeModelPathSegment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelCompositeModelPathSegment', name: 'AssetModelCompositeModelPathSegment')
    AssetModelCompositeModelSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetModelCompositeModelSummaries', name: 'AssetModelCompositeModelSummaries')
    AssetModelCompositeModelSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelCompositeModelSummary', name: 'AssetModelCompositeModelSummary')
    AssetModelCompositeModels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetModelCompositeModels', name: 'AssetModelCompositeModels')
    AssetModelHierarchies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetModelHierarchies', name: 'AssetModelHierarchies')
    AssetModelHierarchy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelHierarchy', name: 'AssetModelHierarchy')
    AssetModelHierarchyDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelHierarchyDefinition', name: 'AssetModelHierarchyDefinition')
    AssetModelHierarchyDefinitions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetModelHierarchyDefinitions', name: 'AssetModelHierarchyDefinitions')
    AssetModelProperties = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetModelProperties', name: 'AssetModelProperties')
    AssetModelProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelProperty', name: 'AssetModelProperty')
    AssetModelPropertyBindingValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelPropertyBindingValue', name: 'AssetModelPropertyBindingValue')
    AssetModelPropertyBindingValueFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelPropertyBindingValueFilter', name: 'AssetModelPropertyBindingValueFilter')
    AssetModelPropertyDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelPropertyDefinition', name: 'AssetModelPropertyDefinition')
    AssetModelPropertyDefinitions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetModelPropertyDefinitions', name: 'AssetModelPropertyDefinitions')
    AssetModelPropertyPath = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetModelPropertyPath', name: 'AssetModelPropertyPath')
    AssetModelPropertyPathSegment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelPropertyPathSegment', name: 'AssetModelPropertyPathSegment')
    AssetModelPropertySummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetModelPropertySummaries', name: 'AssetModelPropertySummaries')
    AssetModelPropertySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelPropertySummary', name: 'AssetModelPropertySummary')
    AssetModelState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#AssetModelState', name: 'AssetModelState')
    AssetModelStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelStatus', name: 'AssetModelStatus')
    AssetModelSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetModelSummaries', name: 'AssetModelSummaries')
    AssetModelSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetModelSummary', name: 'AssetModelSummary')
    AssetModelType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#AssetModelType', name: 'AssetModelType')
    AssetModelVersionFilter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#AssetModelVersionFilter', name: 'AssetModelVersionFilter', traits: {"smithy.api#pattern" => "^(LATEST|ACTIVE)$"})
    AssetModelVersionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#AssetModelVersionType', name: 'AssetModelVersionType')
    AssetProperties = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetProperties', name: 'AssetProperties')
    AssetProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetProperty', name: 'AssetProperty')
    AssetPropertyAlias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#AssetPropertyAlias', name: 'AssetPropertyAlias', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    AssetPropertyBindingValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetPropertyBindingValue', name: 'AssetPropertyBindingValue')
    AssetPropertyBindingValueFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetPropertyBindingValueFilter', name: 'AssetPropertyBindingValueFilter')
    AssetPropertyPath = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetPropertyPath', name: 'AssetPropertyPath')
    AssetPropertyPathSegment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetPropertyPathSegment', name: 'AssetPropertyPathSegment')
    AssetPropertySummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetPropertySummaries', name: 'AssetPropertySummaries')
    AssetPropertySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetPropertySummary', name: 'AssetPropertySummary')
    AssetPropertyValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetPropertyValue', name: 'AssetPropertyValue')
    AssetPropertyValueHistory = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetPropertyValueHistory', name: 'AssetPropertyValueHistory')
    AssetPropertyValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetPropertyValues', name: 'AssetPropertyValues')
    AssetRelationshipSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetRelationshipSummaries', name: 'AssetRelationshipSummaries')
    AssetRelationshipSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetRelationshipSummary', name: 'AssetRelationshipSummary')
    AssetRelationshipType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#AssetRelationshipType', name: 'AssetRelationshipType')
    AssetState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#AssetState', name: 'AssetState')
    AssetStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetStatus', name: 'AssetStatus')
    AssetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssetSummaries', name: 'AssetSummaries')
    AssetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssetSummary', name: 'AssetSummary')
    AssociateAssetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssociateAssetsRequest', name: 'AssociateAssetsRequest')
    AssociateTimeSeriesToAssetPropertyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssociateTimeSeriesToAssetPropertyRequest', name: 'AssociateTimeSeriesToAssetPropertyRequest')
    AssociatedAssetsSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#AssociatedAssetsSummaries', name: 'AssociatedAssetsSummaries')
    AssociatedAssetsSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#AssociatedAssetsSummary', name: 'AssociatedAssetsSummary')
    Attribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Attribute', name: 'Attribute')
    AuthMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#AuthMode', name: 'AuthMode')
    BatchAssociateProjectAssetsErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchAssociateProjectAssetsErrors', name: 'BatchAssociateProjectAssetsErrors')
    BatchAssociateProjectAssetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchAssociateProjectAssetsRequest', name: 'BatchAssociateProjectAssetsRequest')
    BatchAssociateProjectAssetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchAssociateProjectAssetsResponse', name: 'BatchAssociateProjectAssetsResponse')
    BatchDisassociateProjectAssetsErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchDisassociateProjectAssetsErrors', name: 'BatchDisassociateProjectAssetsErrors')
    BatchDisassociateProjectAssetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchDisassociateProjectAssetsRequest', name: 'BatchDisassociateProjectAssetsRequest')
    BatchDisassociateProjectAssetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchDisassociateProjectAssetsResponse', name: 'BatchDisassociateProjectAssetsResponse')
    BatchEntryCompletionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#BatchEntryCompletionStatus', name: 'BatchEntryCompletionStatus')
    BatchGetAssetPropertyAggregatesEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesEntries', name: 'BatchGetAssetPropertyAggregatesEntries')
    BatchGetAssetPropertyAggregatesEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesEntry', name: 'BatchGetAssetPropertyAggregatesEntry')
    BatchGetAssetPropertyAggregatesErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesErrorCode', name: 'BatchGetAssetPropertyAggregatesErrorCode')
    BatchGetAssetPropertyAggregatesErrorEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesErrorEntries', name: 'BatchGetAssetPropertyAggregatesErrorEntries')
    BatchGetAssetPropertyAggregatesErrorEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesErrorEntry', name: 'BatchGetAssetPropertyAggregatesErrorEntry')
    BatchGetAssetPropertyAggregatesErrorInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesErrorInfo', name: 'BatchGetAssetPropertyAggregatesErrorInfo')
    BatchGetAssetPropertyAggregatesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesMaxResults', name: 'BatchGetAssetPropertyAggregatesMaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    BatchGetAssetPropertyAggregatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesRequest', name: 'BatchGetAssetPropertyAggregatesRequest')
    BatchGetAssetPropertyAggregatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesResponse', name: 'BatchGetAssetPropertyAggregatesResponse')
    BatchGetAssetPropertyAggregatesSkippedEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesSkippedEntries', name: 'BatchGetAssetPropertyAggregatesSkippedEntries')
    BatchGetAssetPropertyAggregatesSkippedEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesSkippedEntry', name: 'BatchGetAssetPropertyAggregatesSkippedEntry')
    BatchGetAssetPropertyAggregatesSuccessEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesSuccessEntries', name: 'BatchGetAssetPropertyAggregatesSuccessEntries')
    BatchGetAssetPropertyAggregatesSuccessEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregatesSuccessEntry', name: 'BatchGetAssetPropertyAggregatesSuccessEntry')
    BatchGetAssetPropertyValueEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueEntries', name: 'BatchGetAssetPropertyValueEntries')
    BatchGetAssetPropertyValueEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueEntry', name: 'BatchGetAssetPropertyValueEntry')
    BatchGetAssetPropertyValueErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueErrorCode', name: 'BatchGetAssetPropertyValueErrorCode')
    BatchGetAssetPropertyValueErrorEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueErrorEntries', name: 'BatchGetAssetPropertyValueErrorEntries')
    BatchGetAssetPropertyValueErrorEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueErrorEntry', name: 'BatchGetAssetPropertyValueErrorEntry')
    BatchGetAssetPropertyValueErrorInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueErrorInfo', name: 'BatchGetAssetPropertyValueErrorInfo')
    BatchGetAssetPropertyValueHistoryEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryEntries', name: 'BatchGetAssetPropertyValueHistoryEntries')
    BatchGetAssetPropertyValueHistoryEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryEntry', name: 'BatchGetAssetPropertyValueHistoryEntry')
    BatchGetAssetPropertyValueHistoryErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryErrorCode', name: 'BatchGetAssetPropertyValueHistoryErrorCode')
    BatchGetAssetPropertyValueHistoryErrorEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryErrorEntries', name: 'BatchGetAssetPropertyValueHistoryErrorEntries')
    BatchGetAssetPropertyValueHistoryErrorEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryErrorEntry', name: 'BatchGetAssetPropertyValueHistoryErrorEntry')
    BatchGetAssetPropertyValueHistoryErrorInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryErrorInfo', name: 'BatchGetAssetPropertyValueHistoryErrorInfo')
    BatchGetAssetPropertyValueHistoryMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryMaxResults', name: 'BatchGetAssetPropertyValueHistoryMaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    BatchGetAssetPropertyValueHistoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryRequest', name: 'BatchGetAssetPropertyValueHistoryRequest')
    BatchGetAssetPropertyValueHistoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistoryResponse', name: 'BatchGetAssetPropertyValueHistoryResponse')
    BatchGetAssetPropertyValueHistorySkippedEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistorySkippedEntries', name: 'BatchGetAssetPropertyValueHistorySkippedEntries')
    BatchGetAssetPropertyValueHistorySkippedEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistorySkippedEntry', name: 'BatchGetAssetPropertyValueHistorySkippedEntry')
    BatchGetAssetPropertyValueHistorySuccessEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistorySuccessEntries', name: 'BatchGetAssetPropertyValueHistorySuccessEntries')
    BatchGetAssetPropertyValueHistorySuccessEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistorySuccessEntry', name: 'BatchGetAssetPropertyValueHistorySuccessEntry')
    BatchGetAssetPropertyValueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueRequest', name: 'BatchGetAssetPropertyValueRequest')
    BatchGetAssetPropertyValueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueResponse', name: 'BatchGetAssetPropertyValueResponse')
    BatchGetAssetPropertyValueSkippedEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueSkippedEntries', name: 'BatchGetAssetPropertyValueSkippedEntries')
    BatchGetAssetPropertyValueSkippedEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueSkippedEntry', name: 'BatchGetAssetPropertyValueSkippedEntry')
    BatchGetAssetPropertyValueSuccessEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueSuccessEntries', name: 'BatchGetAssetPropertyValueSuccessEntries')
    BatchGetAssetPropertyValueSuccessEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchGetAssetPropertyValueSuccessEntry', name: 'BatchGetAssetPropertyValueSuccessEntry')
    BatchPutAssetPropertyError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchPutAssetPropertyError', name: 'BatchPutAssetPropertyError')
    BatchPutAssetPropertyErrorEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchPutAssetPropertyErrorEntries', name: 'BatchPutAssetPropertyErrorEntries')
    BatchPutAssetPropertyErrorEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchPutAssetPropertyErrorEntry', name: 'BatchPutAssetPropertyErrorEntry')
    BatchPutAssetPropertyErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BatchPutAssetPropertyErrors', name: 'BatchPutAssetPropertyErrors')
    BatchPutAssetPropertyValueErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#BatchPutAssetPropertyValueErrorCode', name: 'BatchPutAssetPropertyValueErrorCode')
    BatchPutAssetPropertyValueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchPutAssetPropertyValueRequest', name: 'BatchPutAssetPropertyValueRequest')
    BatchPutAssetPropertyValueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#BatchPutAssetPropertyValueResponse', name: 'BatchPutAssetPropertyValueResponse')
    BindingValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#BindingValueList', name: 'BindingValueList')
    BooleanValue = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotsitewise#BooleanValue', name: 'BooleanValue')
    Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#Bucket', name: 'Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    CapabilityConfiguration = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#CapabilityConfiguration', name: 'CapabilityConfiguration', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000000}})
    CapabilityNamespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#CapabilityNamespace', name: 'CapabilityNamespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z]+:[a-zA-Z]+:[0-9]+$"})
    CapabilitySyncStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#CapabilitySyncStatus', name: 'CapabilitySyncStatus')
    Citation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Citation', name: 'Citation')
    Citations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#Citations', name: 'Citations')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 36, "max" => 64}, "smithy.api#pattern" => "^\\S{36,64}$"})
    ColumnInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ColumnInfo', name: 'ColumnInfo')
    ColumnName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ColumnName', name: 'ColumnName')
    ColumnNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#ColumnNames', name: 'ColumnNames')
    ColumnType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ColumnType', name: 'ColumnType')
    ColumnsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#ColumnsList', name: 'ColumnsList')
    CompositeModelProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CompositeModelProperty', name: 'CompositeModelProperty')
    CompositionDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CompositionDetails', name: 'CompositionDetails')
    CompositionRelationship = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#CompositionRelationship', name: 'CompositionRelationship')
    CompositionRelationshipItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CompositionRelationshipItem', name: 'CompositionRelationshipItem')
    CompositionRelationshipSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#CompositionRelationshipSummaries', name: 'CompositionRelationshipSummaries')
    CompositionRelationshipSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CompositionRelationshipSummary', name: 'CompositionRelationshipSummary')
    ComputationModelAnomalyDetectionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelAnomalyDetectionConfiguration', name: 'ComputationModelAnomalyDetectionConfiguration')
    ComputationModelConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelConfiguration', name: 'ComputationModelConfiguration')
    ComputationModelDataBinding = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelDataBinding', name: 'ComputationModelDataBinding')
    ComputationModelDataBindingUsageSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelDataBindingUsageSummaries', name: 'ComputationModelDataBindingUsageSummaries')
    ComputationModelDataBindingUsageSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelDataBindingUsageSummary', name: 'ComputationModelDataBindingUsageSummary')
    ComputationModelDataBindingValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelDataBindingValue', name: 'ComputationModelDataBindingValue')
    ComputationModelDataBindingVariable = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelDataBindingVariable', name: 'ComputationModelDataBindingVariable', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z][a-z0-9_]*$"})
    ComputationModelExecutionSummary = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelExecutionSummary', name: 'ComputationModelExecutionSummary')
    ComputationModelExecutionSummaryKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelExecutionSummaryKey', name: 'ComputationModelExecutionSummaryKey', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    ComputationModelExecutionSummaryValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelExecutionSummaryValue', name: 'ComputationModelExecutionSummaryValue', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    ComputationModelIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelIdList', name: 'ComputationModelIdList')
    ComputationModelResolveToResourceSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelResolveToResourceSummaries', name: 'ComputationModelResolveToResourceSummaries')
    ComputationModelResolveToResourceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelResolveToResourceSummary', name: 'ComputationModelResolveToResourceSummary')
    ComputationModelState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelState', name: 'ComputationModelState')
    ComputationModelStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelStatus', name: 'ComputationModelStatus')
    ComputationModelSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelSummaries', name: 'ComputationModelSummaries')
    ComputationModelSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelSummary', name: 'ComputationModelSummary')
    ComputationModelType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ComputationModelType', name: 'ComputationModelType')
    ComputeLocation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ComputeLocation', name: 'ComputeLocation')
    ConfigurationErrorDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ConfigurationErrorDetails', name: 'ConfigurationErrorDetails')
    ConfigurationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ConfigurationState', name: 'ConfigurationState')
    ConfigurationStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ConfigurationStatus', name: 'ConfigurationStatus')
    ConflictingOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ConflictingOperationException', name: 'ConflictingOperationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Content = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Content', name: 'Content')
    ConversationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ConversationId', name: 'ConversationId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    CoreDeviceOperatingSystem = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#CoreDeviceOperatingSystem', name: 'CoreDeviceOperatingSystem')
    CoreDeviceThingName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#CoreDeviceThingName', name: 'CoreDeviceThingName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    CreateAccessPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateAccessPolicyRequest', name: 'CreateAccessPolicyRequest')
    CreateAccessPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateAccessPolicyResponse', name: 'CreateAccessPolicyResponse')
    CreateAssetModelCompositeModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateAssetModelCompositeModelRequest', name: 'CreateAssetModelCompositeModelRequest')
    CreateAssetModelCompositeModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateAssetModelCompositeModelResponse', name: 'CreateAssetModelCompositeModelResponse')
    CreateAssetModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateAssetModelRequest', name: 'CreateAssetModelRequest')
    CreateAssetModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateAssetModelResponse', name: 'CreateAssetModelResponse')
    CreateAssetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateAssetRequest', name: 'CreateAssetRequest')
    CreateAssetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateAssetResponse', name: 'CreateAssetResponse')
    CreateBulkImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateBulkImportJobRequest', name: 'CreateBulkImportJobRequest')
    CreateBulkImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateBulkImportJobResponse', name: 'CreateBulkImportJobResponse')
    CreateComputationModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateComputationModelRequest', name: 'CreateComputationModelRequest')
    CreateComputationModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateComputationModelResponse', name: 'CreateComputationModelResponse')
    CreateDashboardRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateDashboardRequest', name: 'CreateDashboardRequest')
    CreateDashboardResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateDashboardResponse', name: 'CreateDashboardResponse')
    CreateDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateDatasetRequest', name: 'CreateDatasetRequest')
    CreateDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateDatasetResponse', name: 'CreateDatasetResponse')
    CreateGatewayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateGatewayRequest', name: 'CreateGatewayRequest')
    CreateGatewayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateGatewayResponse', name: 'CreateGatewayResponse')
    CreateMissingProperty = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotsitewise#CreateMissingProperty', name: 'CreateMissingProperty', traits: {"smithy.api#default" => false})
    CreatePortalRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreatePortalRequest', name: 'CreatePortalRequest')
    CreatePortalResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreatePortalResponse', name: 'CreatePortalResponse')
    CreateProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateProjectRequest', name: 'CreateProjectRequest')
    CreateProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CreateProjectResponse', name: 'CreateProjectResponse')
    Csv = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Csv', name: 'Csv')
    CustomID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#CustomID', name: 'CustomID', traits: {"smithy.api#length" => {"min" => 13, "max" => 139}, "smithy.api#pattern" => "^(?!00000000-0000-0000-0000-000000000000)[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$|^externalId:[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+$"})
    CustomerManagedS3Storage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#CustomerManagedS3Storage', name: 'CustomerManagedS3Storage')
    DashboardDefinition = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#DashboardDefinition', name: 'DashboardDefinition', traits: {"smithy.api#length" => {"min" => 0, "max" => 204800}, "smithy.api#pattern" => "^.+$"})
    DashboardSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#DashboardSummaries', name: 'DashboardSummaries')
    DashboardSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DashboardSummary', name: 'DashboardSummary')
    DataBindingValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DataBindingValue', name: 'DataBindingValue')
    DataBindingValueFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DataBindingValueFilter', name: 'DataBindingValueFilter')
    DataSetReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DataSetReference', name: 'DataSetReference')
    DatasetSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DatasetSource', name: 'DatasetSource')
    DatasetSourceFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#DatasetSourceFormat', name: 'DatasetSourceFormat')
    DatasetSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#DatasetSourceType', name: 'DatasetSourceType')
    DatasetState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#DatasetState', name: 'DatasetState')
    DatasetStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DatasetStatus', name: 'DatasetStatus')
    DatasetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#DatasetSummaries', name: 'DatasetSummaries')
    DatasetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DatasetSummary', name: 'DatasetSummary')
    Datum = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Datum', name: 'Datum')
    DatumList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#DatumList', name: 'DatumList')
    DefaultValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#DefaultValue', name: 'DefaultValue', traits: {"smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    DeleteAccessPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteAccessPolicyRequest', name: 'DeleteAccessPolicyRequest')
    DeleteAccessPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteAccessPolicyResponse', name: 'DeleteAccessPolicyResponse')
    DeleteAssetModelCompositeModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteAssetModelCompositeModelRequest', name: 'DeleteAssetModelCompositeModelRequest')
    DeleteAssetModelCompositeModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteAssetModelCompositeModelResponse', name: 'DeleteAssetModelCompositeModelResponse')
    DeleteAssetModelInterfaceRelationshipRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteAssetModelInterfaceRelationshipRequest', name: 'DeleteAssetModelInterfaceRelationshipRequest')
    DeleteAssetModelInterfaceRelationshipResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteAssetModelInterfaceRelationshipResponse', name: 'DeleteAssetModelInterfaceRelationshipResponse')
    DeleteAssetModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteAssetModelRequest', name: 'DeleteAssetModelRequest')
    DeleteAssetModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteAssetModelResponse', name: 'DeleteAssetModelResponse')
    DeleteAssetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteAssetRequest', name: 'DeleteAssetRequest')
    DeleteAssetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteAssetResponse', name: 'DeleteAssetResponse')
    DeleteComputationModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteComputationModelRequest', name: 'DeleteComputationModelRequest')
    DeleteComputationModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteComputationModelResponse', name: 'DeleteComputationModelResponse')
    DeleteDashboardRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteDashboardRequest', name: 'DeleteDashboardRequest')
    DeleteDashboardResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteDashboardResponse', name: 'DeleteDashboardResponse')
    DeleteDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteDatasetRequest', name: 'DeleteDatasetRequest')
    DeleteDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteDatasetResponse', name: 'DeleteDatasetResponse')
    DeleteFilesAfterImport = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotsitewise#DeleteFilesAfterImport', name: 'DeleteFilesAfterImport')
    DeleteGatewayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteGatewayRequest', name: 'DeleteGatewayRequest')
    DeletePortalRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeletePortalRequest', name: 'DeletePortalRequest')
    DeletePortalResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeletePortalResponse', name: 'DeletePortalResponse')
    DeleteProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteProjectRequest', name: 'DeleteProjectRequest')
    DeleteProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteProjectResponse', name: 'DeleteProjectResponse')
    DeleteTimeSeriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DeleteTimeSeriesRequest', name: 'DeleteTimeSeriesRequest')
    DescribeAccessPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeAccessPolicyRequest', name: 'DescribeAccessPolicyRequest')
    DescribeAccessPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeAccessPolicyResponse', name: 'DescribeAccessPolicyResponse')
    DescribeActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeActionRequest', name: 'DescribeActionRequest')
    DescribeActionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeActionResponse', name: 'DescribeActionResponse')
    DescribeAssetCompositeModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeAssetCompositeModelRequest', name: 'DescribeAssetCompositeModelRequest')
    DescribeAssetCompositeModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeAssetCompositeModelResponse', name: 'DescribeAssetCompositeModelResponse')
    DescribeAssetModelCompositeModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeAssetModelCompositeModelRequest', name: 'DescribeAssetModelCompositeModelRequest')
    DescribeAssetModelCompositeModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeAssetModelCompositeModelResponse', name: 'DescribeAssetModelCompositeModelResponse')
    DescribeAssetModelInterfaceRelationshipRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeAssetModelInterfaceRelationshipRequest', name: 'DescribeAssetModelInterfaceRelationshipRequest')
    DescribeAssetModelInterfaceRelationshipResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeAssetModelInterfaceRelationshipResponse', name: 'DescribeAssetModelInterfaceRelationshipResponse')
    DescribeAssetModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeAssetModelRequest', name: 'DescribeAssetModelRequest')
    DescribeAssetModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeAssetModelResponse', name: 'DescribeAssetModelResponse')
    DescribeAssetPropertyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeAssetPropertyRequest', name: 'DescribeAssetPropertyRequest')
    DescribeAssetPropertyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeAssetPropertyResponse', name: 'DescribeAssetPropertyResponse')
    DescribeAssetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeAssetRequest', name: 'DescribeAssetRequest')
    DescribeAssetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeAssetResponse', name: 'DescribeAssetResponse')
    DescribeBulkImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeBulkImportJobRequest', name: 'DescribeBulkImportJobRequest')
    DescribeBulkImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeBulkImportJobResponse', name: 'DescribeBulkImportJobResponse')
    DescribeComputationModelExecutionSummaryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeComputationModelExecutionSummaryRequest', name: 'DescribeComputationModelExecutionSummaryRequest')
    DescribeComputationModelExecutionSummaryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeComputationModelExecutionSummaryResponse', name: 'DescribeComputationModelExecutionSummaryResponse')
    DescribeComputationModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeComputationModelRequest', name: 'DescribeComputationModelRequest')
    DescribeComputationModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeComputationModelResponse', name: 'DescribeComputationModelResponse')
    DescribeDashboardRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeDashboardRequest', name: 'DescribeDashboardRequest')
    DescribeDashboardResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeDashboardResponse', name: 'DescribeDashboardResponse')
    DescribeDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeDatasetRequest', name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeDatasetResponse', name: 'DescribeDatasetResponse')
    DescribeDefaultEncryptionConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeDefaultEncryptionConfigurationRequest', name: 'DescribeDefaultEncryptionConfigurationRequest')
    DescribeDefaultEncryptionConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeDefaultEncryptionConfigurationResponse', name: 'DescribeDefaultEncryptionConfigurationResponse')
    DescribeExecutionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeExecutionRequest', name: 'DescribeExecutionRequest')
    DescribeExecutionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeExecutionResponse', name: 'DescribeExecutionResponse')
    DescribeGatewayCapabilityConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeGatewayCapabilityConfigurationRequest', name: 'DescribeGatewayCapabilityConfigurationRequest')
    DescribeGatewayCapabilityConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeGatewayCapabilityConfigurationResponse', name: 'DescribeGatewayCapabilityConfigurationResponse')
    DescribeGatewayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeGatewayRequest', name: 'DescribeGatewayRequest')
    DescribeGatewayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeGatewayResponse', name: 'DescribeGatewayResponse')
    DescribeLoggingOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeLoggingOptionsRequest', name: 'DescribeLoggingOptionsRequest')
    DescribeLoggingOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeLoggingOptionsResponse', name: 'DescribeLoggingOptionsResponse')
    DescribePortalRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribePortalRequest', name: 'DescribePortalRequest')
    DescribePortalResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribePortalResponse', name: 'DescribePortalResponse')
    DescribeProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeProjectRequest', name: 'DescribeProjectRequest')
    DescribeProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeProjectResponse', name: 'DescribeProjectResponse')
    DescribeStorageConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeStorageConfigurationRequest', name: 'DescribeStorageConfigurationRequest')
    DescribeStorageConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeStorageConfigurationResponse', name: 'DescribeStorageConfigurationResponse')
    DescribeTimeSeriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeTimeSeriesRequest', name: 'DescribeTimeSeriesRequest')
    DescribeTimeSeriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DescribeTimeSeriesResponse', name: 'DescribeTimeSeriesResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    DetailedError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DetailedError', name: 'DetailedError')
    DetailedErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#DetailedErrorCode', name: 'DetailedErrorCode')
    DetailedErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#DetailedErrorMessage', name: 'DetailedErrorMessage')
    DetailedErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#DetailedErrors', name: 'DetailedErrors')
    DisallowIngestNullNaN = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotsitewise#DisallowIngestNullNaN', name: 'DisallowIngestNullNaN')
    DisassociateAssetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DisassociateAssetsRequest', name: 'DisassociateAssetsRequest')
    DisassociateTimeSeriesFromAssetPropertyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#DisassociateTimeSeriesFromAssetPropertyRequest', name: 'DisassociateTimeSeriesFromAssetPropertyRequest')
    DisassociatedDataStorageState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#DisassociatedDataStorageState', name: 'DisassociatedDataStorageState')
    ETag = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ETag', name: 'ETag', traits: {"smithy.api#pattern" => "^[\\w-]{43}$"})
    Email = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#Email', name: 'Email', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\.\\+]+@[a-zA-Z0-9_\\-\\.\\+]+\\.[a-zA-Z]{2,}$", "smithy.api#sensitive" => {}})
    EncryptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#EncryptionType', name: 'EncryptionType')
    EntryId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#EntryId', name: 'EntryId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ErrorCode', name: 'ErrorCode')
    ErrorDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ErrorDetails', name: 'ErrorDetails')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ErrorMessage', name: 'ErrorMessage')
    ErrorReportLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ErrorReportLocation', name: 'ErrorReportLocation')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ExceptionMessage', name: 'ExceptionMessage')
    ExcludeProperties = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotsitewise#ExcludeProperties', name: 'ExcludeProperties', traits: {"smithy.api#default" => false})
    ExecuteActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ExecuteActionRequest', name: 'ExecuteActionRequest')
    ExecuteActionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ExecuteActionResponse', name: 'ExecuteActionResponse')
    ExecuteQueryMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsitewise#ExecuteQueryMaxResults', name: 'ExecuteQueryMaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    ExecuteQueryNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ExecuteQueryNextToken', name: 'ExecuteQueryNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    ExecuteQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ExecuteQueryRequest', name: 'ExecuteQueryRequest')
    ExecuteQueryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ExecuteQueryResponse', name: 'ExecuteQueryResponse')
    ExecutionDetails = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.iotsitewise#ExecutionDetails', name: 'ExecutionDetails')
    ExecutionDetailsKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ExecutionDetailsKey', name: 'ExecutionDetailsKey', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    ExecutionDetailsValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ExecutionDetailsValue', name: 'ExecutionDetailsValue', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    ExecutionResult = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.iotsitewise#ExecutionResult', name: 'ExecutionResult')
    ExecutionResultKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ExecutionResultKey', name: 'ExecutionResultKey', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    ExecutionResultValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ExecutionResultValue', name: 'ExecutionResultValue', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    ExecutionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ExecutionState', name: 'ExecutionState')
    ExecutionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ExecutionStatus', name: 'ExecutionStatus')
    ExecutionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#ExecutionSummaries', name: 'ExecutionSummaries')
    ExecutionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ExecutionSummary', name: 'ExecutionSummary')
    Expression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#Expression', name: 'Expression', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ExpressionVariable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ExpressionVariable', name: 'ExpressionVariable')
    ExpressionVariables = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#ExpressionVariables', name: 'ExpressionVariables')
    ExternalId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ExternalId', name: 'ExternalId', traits: {"smithy.api#length" => {"min" => 2, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+$"})
    File = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#File', name: 'File')
    FileFormat = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#FileFormat', name: 'FileFormat')
    Files = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#Files', name: 'Files')
    ForwardingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ForwardingConfig', name: 'ForwardingConfig')
    ForwardingConfigState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ForwardingConfigState', name: 'ForwardingConfigState')
    GatewayCapabilitySummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#GatewayCapabilitySummaries', name: 'GatewayCapabilitySummaries')
    GatewayCapabilitySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#GatewayCapabilitySummary', name: 'GatewayCapabilitySummary')
    GatewayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#GatewayName', name: 'GatewayName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    GatewayPlatform = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#GatewayPlatform', name: 'GatewayPlatform')
    GatewaySummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#GatewaySummaries', name: 'GatewaySummaries')
    GatewaySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#GatewaySummary', name: 'GatewaySummary')
    GatewayVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#GatewayVersion', name: 'GatewayVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[0-9]+$"})
    GetAssetPropertyAggregatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#GetAssetPropertyAggregatesRequest', name: 'GetAssetPropertyAggregatesRequest')
    GetAssetPropertyAggregatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#GetAssetPropertyAggregatesResponse', name: 'GetAssetPropertyAggregatesResponse')
    GetAssetPropertyValueAggregatesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsitewise#GetAssetPropertyValueAggregatesMaxResults', name: 'GetAssetPropertyValueAggregatesMaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    GetAssetPropertyValueHistoryMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsitewise#GetAssetPropertyValueHistoryMaxResults', name: 'GetAssetPropertyValueHistoryMaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    GetAssetPropertyValueHistoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#GetAssetPropertyValueHistoryRequest', name: 'GetAssetPropertyValueHistoryRequest')
    GetAssetPropertyValueHistoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#GetAssetPropertyValueHistoryResponse', name: 'GetAssetPropertyValueHistoryResponse')
    GetAssetPropertyValueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#GetAssetPropertyValueRequest', name: 'GetAssetPropertyValueRequest')
    GetAssetPropertyValueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#GetAssetPropertyValueResponse', name: 'GetAssetPropertyValueResponse')
    GetInterpolatedAssetPropertyValuesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#GetInterpolatedAssetPropertyValuesRequest', name: 'GetInterpolatedAssetPropertyValuesRequest')
    GetInterpolatedAssetPropertyValuesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#GetInterpolatedAssetPropertyValuesResponse', name: 'GetInterpolatedAssetPropertyValuesResponse')
    Greengrass = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Greengrass', name: 'Greengrass')
    GreengrassV2 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#GreengrassV2', name: 'GreengrassV2')
    GroupIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#GroupIdentity', name: 'GroupIdentity')
    HierarchyMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#HierarchyMapping', name: 'HierarchyMapping')
    HierarchyMappings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#HierarchyMappings', name: 'HierarchyMappings')
    IAMRoleIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#IAMRoleIdentity', name: 'IAMRoleIdentity')
    IAMUserIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#IAMUserIdentity', name: 'IAMUserIdentity')
    ID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ID', name: 'ID', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^(?!00000000-0000-0000-0000-000000000000)[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    IDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#IDs', name: 'IDs', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    IamArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#IamArn', name: 'IamArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-cn|-us-gov)?:[a-zA-Z0-9-:\\/_\\.\\+=,@]+$"})
    Identity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Identity', name: 'Identity')
    IdentityId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#IdentityId', name: 'IdentityId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    IdentityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#IdentityType', name: 'IdentityType')
    Image = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Image', name: 'Image')
    ImageFile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ImageFile', name: 'ImageFile')
    ImageFileData = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.iotsitewise#ImageFileData', name: 'ImageFileData', traits: {"smithy.api#length" => {"min" => 1, "max" => 1500000}})
    ImageFileType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ImageFileType', name: 'ImageFileType')
    ImageLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ImageLocation', name: 'ImageLocation')
    InputProperties = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#InputProperties', name: 'InputProperties', traits: {"smithy.api#length" => {"min" => 4, "max" => 67}, "smithy.api#pattern" => "^\\$\\{[a-z][a-z0-9_]*\\}$"})
    InterfaceDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#InterfaceDetails', name: 'InterfaceDetails')
    InterfaceRelationship = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#InterfaceRelationship', name: 'InterfaceRelationship')
    InterfaceRelationshipSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#InterfaceRelationshipSummaries', name: 'InterfaceRelationshipSummaries')
    InterfaceRelationshipSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#InterfaceRelationshipSummary', name: 'InterfaceRelationshipSummary')
    InterfaceSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#InterfaceSummaries', name: 'InterfaceSummaries')
    InterfaceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#InterfaceSummary', name: 'InterfaceSummary')
    InternalFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#InternalFailureException', name: 'InternalFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InterpolatedAssetPropertyValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#InterpolatedAssetPropertyValue', name: 'InterpolatedAssetPropertyValue')
    InterpolatedAssetPropertyValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#InterpolatedAssetPropertyValues', name: 'InterpolatedAssetPropertyValues')
    InterpolationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#InterpolationType', name: 'InterpolationType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Interval = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#Interval', name: 'Interval', traits: {"smithy.api#length" => {"min" => 2, "max" => 23}})
    IntervalInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsitewise#IntervalInSeconds', name: 'IntervalInSeconds', traits: {"smithy.api#range" => {"min" => 1, "max" => 320000000}})
    IntervalWindowInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsitewise#IntervalWindowInSeconds', name: 'IntervalWindowInSeconds', traits: {"smithy.api#range" => {"min" => 1, "max" => 320000000}})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvocationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#InvocationOutput', name: 'InvocationOutput')
    InvokeAssistantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#InvokeAssistantRequest', name: 'InvokeAssistantRequest')
    InvokeAssistantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#InvokeAssistantResponse', name: 'InvokeAssistantResponse')
    IotCoreThingName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#IotCoreThingName', name: 'IotCoreThingName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    JobConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#JobConfiguration', name: 'JobConfiguration')
    JobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#JobStatus', name: 'JobStatus')
    JobSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#JobSummaries', name: 'JobSummaries')
    JobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#JobSummary', name: 'JobSummary')
    KendraSourceDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#KendraSourceDetail', name: 'KendraSourceDetail')
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    ListAccessPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAccessPoliciesRequest', name: 'ListAccessPoliciesRequest')
    ListAccessPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAccessPoliciesResponse', name: 'ListAccessPoliciesResponse')
    ListActionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListActionsRequest', name: 'ListActionsRequest')
    ListActionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListActionsResponse', name: 'ListActionsResponse')
    ListAssetModelCompositeModelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAssetModelCompositeModelsRequest', name: 'ListAssetModelCompositeModelsRequest')
    ListAssetModelCompositeModelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAssetModelCompositeModelsResponse', name: 'ListAssetModelCompositeModelsResponse')
    ListAssetModelPropertiesFilter = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ListAssetModelPropertiesFilter', name: 'ListAssetModelPropertiesFilter')
    ListAssetModelPropertiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAssetModelPropertiesRequest', name: 'ListAssetModelPropertiesRequest')
    ListAssetModelPropertiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAssetModelPropertiesResponse', name: 'ListAssetModelPropertiesResponse')
    ListAssetModelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAssetModelsRequest', name: 'ListAssetModelsRequest')
    ListAssetModelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAssetModelsResponse', name: 'ListAssetModelsResponse')
    ListAssetModelsTypeFilter = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#ListAssetModelsTypeFilter', name: 'ListAssetModelsTypeFilter')
    ListAssetPropertiesFilter = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ListAssetPropertiesFilter', name: 'ListAssetPropertiesFilter')
    ListAssetPropertiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAssetPropertiesRequest', name: 'ListAssetPropertiesRequest')
    ListAssetPropertiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAssetPropertiesResponse', name: 'ListAssetPropertiesResponse')
    ListAssetRelationshipsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAssetRelationshipsRequest', name: 'ListAssetRelationshipsRequest')
    ListAssetRelationshipsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAssetRelationshipsResponse', name: 'ListAssetRelationshipsResponse')
    ListAssetsFilter = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ListAssetsFilter', name: 'ListAssetsFilter')
    ListAssetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAssetsRequest', name: 'ListAssetsRequest')
    ListAssetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAssetsResponse', name: 'ListAssetsResponse')
    ListAssociatedAssetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAssociatedAssetsRequest', name: 'ListAssociatedAssetsRequest')
    ListAssociatedAssetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListAssociatedAssetsResponse', name: 'ListAssociatedAssetsResponse')
    ListBulkImportJobsFilter = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ListBulkImportJobsFilter', name: 'ListBulkImportJobsFilter')
    ListBulkImportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListBulkImportJobsRequest', name: 'ListBulkImportJobsRequest')
    ListBulkImportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListBulkImportJobsResponse', name: 'ListBulkImportJobsResponse')
    ListCompositionRelationshipsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListCompositionRelationshipsRequest', name: 'ListCompositionRelationshipsRequest')
    ListCompositionRelationshipsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListCompositionRelationshipsResponse', name: 'ListCompositionRelationshipsResponse')
    ListComputationModelDataBindingUsagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListComputationModelDataBindingUsagesRequest', name: 'ListComputationModelDataBindingUsagesRequest')
    ListComputationModelDataBindingUsagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListComputationModelDataBindingUsagesResponse', name: 'ListComputationModelDataBindingUsagesResponse')
    ListComputationModelResolveToResourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListComputationModelResolveToResourcesRequest', name: 'ListComputationModelResolveToResourcesRequest')
    ListComputationModelResolveToResourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListComputationModelResolveToResourcesResponse', name: 'ListComputationModelResolveToResourcesResponse')
    ListComputationModelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListComputationModelsRequest', name: 'ListComputationModelsRequest')
    ListComputationModelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListComputationModelsResponse', name: 'ListComputationModelsResponse')
    ListDashboardsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListDashboardsRequest', name: 'ListDashboardsRequest')
    ListDashboardsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListDashboardsResponse', name: 'ListDashboardsResponse')
    ListDatasetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListDatasetsRequest', name: 'ListDatasetsRequest')
    ListDatasetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListDatasetsResponse', name: 'ListDatasetsResponse')
    ListExecutionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListExecutionsRequest', name: 'ListExecutionsRequest')
    ListExecutionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListExecutionsResponse', name: 'ListExecutionsResponse')
    ListGatewaysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListGatewaysRequest', name: 'ListGatewaysRequest')
    ListGatewaysResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListGatewaysResponse', name: 'ListGatewaysResponse')
    ListInterfaceRelationshipsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListInterfaceRelationshipsRequest', name: 'ListInterfaceRelationshipsRequest')
    ListInterfaceRelationshipsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListInterfaceRelationshipsResponse', name: 'ListInterfaceRelationshipsResponse')
    ListPortalsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListPortalsRequest', name: 'ListPortalsRequest')
    ListPortalsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListPortalsResponse', name: 'ListPortalsResponse')
    ListProjectAssetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListProjectAssetsRequest', name: 'ListProjectAssetsRequest')
    ListProjectAssetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListProjectAssetsResponse', name: 'ListProjectAssetsResponse')
    ListProjectsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListProjectsRequest', name: 'ListProjectsRequest')
    ListProjectsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListProjectsResponse', name: 'ListProjectsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTimeSeriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListTimeSeriesRequest', name: 'ListTimeSeriesRequest')
    ListTimeSeriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ListTimeSeriesResponse', name: 'ListTimeSeriesResponse')
    ListTimeSeriesType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ListTimeSeriesType', name: 'ListTimeSeriesType')
    Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Location', name: 'Location')
    LoggingLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#LoggingLevel', name: 'LoggingLevel')
    LoggingOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#LoggingOptions', name: 'LoggingOptions')
    Macro = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#Macro', name: 'Macro', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    MatchByPropertyName = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotsitewise#MatchByPropertyName', name: 'MatchByPropertyName', traits: {"smithy.api#default" => false})
    MatchedDataBinding = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#MatchedDataBinding', name: 'MatchedDataBinding')
    MaxInterpolatedResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsitewise#MaxInterpolatedResults', name: 'MaxInterpolatedResults', traits: {"smithy.api#range" => {"min" => 1}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsitewise#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 250}})
    Measurement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Measurement', name: 'Measurement')
    MeasurementProcessingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#MeasurementProcessingConfig', name: 'MeasurementProcessingConfig')
    MessageInput = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#MessageInput', name: 'MessageInput', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#sensitive" => {}})
    Metric = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Metric', name: 'Metric')
    MetricProcessingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#MetricProcessingConfig', name: 'MetricProcessingConfig')
    MetricWindow = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#MetricWindow', name: 'MetricWindow')
    MonitorErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#MonitorErrorCode', name: 'MonitorErrorCode')
    MonitorErrorDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#MonitorErrorDetails', name: 'MonitorErrorDetails')
    MonitorErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#MonitorErrorMessage', name: 'MonitorErrorMessage')
    MultiLayerStorage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#MultiLayerStorage', name: 'MultiLayerStorage')
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[A-Za-z0-9+/=]+$"})
    NullableBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotsitewise#NullableBoolean', name: 'NullableBoolean')
    NumberOfDays = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsitewise#NumberOfDays', name: 'NumberOfDays')
    Offset = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#Offset', name: 'Offset', traits: {"smithy.api#length" => {"min" => 2, "max" => 25}})
    OffsetInNanos = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsitewise#OffsetInNanos', name: 'OffsetInNanos', traits: {"smithy.api#range" => {"min" => 0, "max" => 999999999}})
    Parquet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Parquet', name: 'Parquet')
    Permission = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#Permission', name: 'Permission')
    PortalClientId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#PortalClientId', name: 'PortalClientId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[!-~]*$"})
    PortalResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PortalResource', name: 'PortalResource')
    PortalState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#PortalState', name: 'PortalState')
    PortalStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PortalStatus', name: 'PortalStatus')
    PortalSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#PortalSummaries', name: 'PortalSummaries')
    PortalSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PortalSummary', name: 'PortalSummary')
    PortalTools = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#PortalTools', name: 'PortalTools')
    PortalType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#PortalType', name: 'PortalType')
    PortalTypeConfiguration = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.iotsitewise#PortalTypeConfiguration', name: 'PortalTypeConfiguration')
    PortalTypeEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PortalTypeEntry', name: 'PortalTypeEntry')
    PortalTypeKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#PortalTypeKey', name: 'PortalTypeKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    PreconditionFailedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PreconditionFailedException', name: 'PreconditionFailedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    ProjectResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ProjectResource', name: 'ProjectResource')
    ProjectSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#ProjectSummaries', name: 'ProjectSummaries')
    ProjectSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ProjectSummary', name: 'ProjectSummary')
    Property = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Property', name: 'Property')
    PropertyAlias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#PropertyAlias', name: 'PropertyAlias', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    PropertyDataType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#PropertyDataType', name: 'PropertyDataType')
    PropertyMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PropertyMapping', name: 'PropertyMapping')
    PropertyMappingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PropertyMappingConfiguration', name: 'PropertyMappingConfiguration')
    PropertyMappings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#PropertyMappings', name: 'PropertyMappings')
    PropertyNotification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PropertyNotification', name: 'PropertyNotification')
    PropertyNotificationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#PropertyNotificationState', name: 'PropertyNotificationState')
    PropertyNotificationTopic = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#PropertyNotificationTopic', name: 'PropertyNotificationTopic')
    PropertyType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PropertyType', name: 'PropertyType')
    PropertyUnit = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#PropertyUnit', name: 'PropertyUnit', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    PropertyValueBooleanValue = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotsitewise#PropertyValueBooleanValue', name: 'PropertyValueBooleanValue')
    PropertyValueDoubleValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.iotsitewise#PropertyValueDoubleValue', name: 'PropertyValueDoubleValue')
    PropertyValueIntegerValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsitewise#PropertyValueIntegerValue', name: 'PropertyValueIntegerValue')
    PropertyValueNullValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PropertyValueNullValue', name: 'PropertyValueNullValue')
    PropertyValueStringValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#PropertyValueStringValue', name: 'PropertyValueStringValue')
    PutAssetModelInterfaceRelationshipRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PutAssetModelInterfaceRelationshipRequest', name: 'PutAssetModelInterfaceRelationshipRequest')
    PutAssetModelInterfaceRelationshipResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PutAssetModelInterfaceRelationshipResponse', name: 'PutAssetModelInterfaceRelationshipResponse')
    PutAssetPropertyValueEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#PutAssetPropertyValueEntries', name: 'PutAssetPropertyValueEntries')
    PutAssetPropertyValueEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PutAssetPropertyValueEntry', name: 'PutAssetPropertyValueEntry')
    PutDefaultEncryptionConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PutDefaultEncryptionConfigurationRequest', name: 'PutDefaultEncryptionConfigurationRequest')
    PutDefaultEncryptionConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PutDefaultEncryptionConfigurationResponse', name: 'PutDefaultEncryptionConfigurationResponse')
    PutLoggingOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PutLoggingOptionsRequest', name: 'PutLoggingOptionsRequest')
    PutLoggingOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PutLoggingOptionsResponse', name: 'PutLoggingOptionsResponse')
    PutStorageConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PutStorageConfigurationRequest', name: 'PutStorageConfigurationRequest')
    PutStorageConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#PutStorageConfigurationResponse', name: 'PutStorageConfigurationResponse')
    Qualities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#Qualities', name: 'Qualities', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Quality = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#Quality', name: 'Quality')
    QueryStatement = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#QueryStatement', name: 'QueryStatement', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    QueryTimeoutException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#QueryTimeoutException', name: 'QueryTimeoutException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RawValueType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#RawValueType', name: 'RawValueType')
    Reference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Reference', name: 'Reference')
    Resolution = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#Resolution', name: 'Resolution', traits: {"smithy.api#length" => {"min" => 2, "max" => 3}, "smithy.api#pattern" => "^1m|15m|1h|1d$"})
    ResolveTo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ResolveTo', name: 'ResolveTo')
    ResolveToResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ResolveToResourceType', name: 'ResolveToResourceType')
    Resource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Resource', name: 'Resource')
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ResourceArn', name: 'ResourceArn')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ResourceId', name: 'ResourceId')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ResourceType', name: 'ResourceType')
    ResponseStream = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.iotsitewise#ResponseStream', name: 'ResponseStream', traits: {"smithy.api#streaming" => {}})
    RestrictedDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#RestrictedDescription', name: 'RestrictedDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    RestrictedName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#RestrictedName', name: 'RestrictedName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _\\-\#$*!@]+$"})
    ResultProperty = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ResultProperty', name: 'ResultProperty', traits: {"smithy.api#length" => {"min" => 4, "max" => 67}, "smithy.api#pattern" => "^\\$\\{[a-z][a-z0-9_]*\\}$"})
    RetentionPeriod = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#RetentionPeriod', name: 'RetentionPeriod')
    Row = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Row', name: 'Row')
    Rows = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#Rows', name: 'Rows')
    SSOApplicationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#SSOApplicationId', name: 'SSOApplicationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]*$"})
    ScalarType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#ScalarType', name: 'ScalarType')
    ScalarValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#ScalarValue', name: 'ScalarValue')
    SelectAll = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#SelectAll', name: 'SelectAll', traits: {"smithy.api#pattern" => "^\\*$"})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SiemensIE = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#SiemensIE', name: 'SiemensIE')
    Source = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Source', name: 'Source')
    SourceDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#SourceDetail', name: 'SourceDetail')
    StorageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#StorageType', name: 'StorageType')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#String', name: 'String')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.iotsitewise#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#TargetResource', name: 'TargetResource')
    TargetResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#TargetResourceType', name: 'TargetResourceType')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeInNanos = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#TimeInNanos', name: 'TimeInNanos')
    TimeInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsitewise#TimeInSeconds', name: 'TimeInSeconds', traits: {"smithy.api#range" => {"min" => 1, "max" => 9223372036854774}})
    TimeOrdering = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#TimeOrdering', name: 'TimeOrdering')
    TimeSeriesId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#TimeSeriesId', name: 'TimeSeriesId', traits: {"smithy.api#length" => {"min" => 36, "max" => 73}})
    TimeSeriesSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#TimeSeriesSummaries', name: 'TimeSeriesSummaries')
    TimeSeriesSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#TimeSeriesSummary', name: 'TimeSeriesSummary')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.iotsitewise#Timestamp', name: 'Timestamp')
    Timestamps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsitewise#Timestamps', name: 'Timestamps')
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Trace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Trace', name: 'Trace')
    Transform = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Transform', name: 'Transform')
    TransformProcessingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#TransformProcessingConfig', name: 'TransformProcessingConfig')
    TraversalDirection = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#TraversalDirection', name: 'TraversalDirection')
    TraversalType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#TraversalType', name: 'TraversalType')
    TumblingWindow = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#TumblingWindow', name: 'TumblingWindow')
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    Unlimited = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotsitewise#Unlimited', name: 'Unlimited')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAccessPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateAccessPolicyRequest', name: 'UpdateAccessPolicyRequest')
    UpdateAccessPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateAccessPolicyResponse', name: 'UpdateAccessPolicyResponse')
    UpdateAssetModelCompositeModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateAssetModelCompositeModelRequest', name: 'UpdateAssetModelCompositeModelRequest')
    UpdateAssetModelCompositeModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateAssetModelCompositeModelResponse', name: 'UpdateAssetModelCompositeModelResponse')
    UpdateAssetModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateAssetModelRequest', name: 'UpdateAssetModelRequest')
    UpdateAssetModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateAssetModelResponse', name: 'UpdateAssetModelResponse')
    UpdateAssetPropertyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateAssetPropertyRequest', name: 'UpdateAssetPropertyRequest')
    UpdateAssetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateAssetRequest', name: 'UpdateAssetRequest')
    UpdateAssetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateAssetResponse', name: 'UpdateAssetResponse')
    UpdateComputationModelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateComputationModelRequest', name: 'UpdateComputationModelRequest')
    UpdateComputationModelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateComputationModelResponse', name: 'UpdateComputationModelResponse')
    UpdateDashboardRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateDashboardRequest', name: 'UpdateDashboardRequest')
    UpdateDashboardResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateDashboardResponse', name: 'UpdateDashboardResponse')
    UpdateDatasetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateDatasetRequest', name: 'UpdateDatasetRequest')
    UpdateDatasetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateDatasetResponse', name: 'UpdateDatasetResponse')
    UpdateGatewayCapabilityConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateGatewayCapabilityConfigurationRequest', name: 'UpdateGatewayCapabilityConfigurationRequest')
    UpdateGatewayCapabilityConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateGatewayCapabilityConfigurationResponse', name: 'UpdateGatewayCapabilityConfigurationResponse')
    UpdateGatewayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateGatewayRequest', name: 'UpdateGatewayRequest')
    UpdatePortalRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdatePortalRequest', name: 'UpdatePortalRequest')
    UpdatePortalResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdatePortalResponse', name: 'UpdatePortalResponse')
    UpdateProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateProjectRequest', name: 'UpdateProjectRequest')
    UpdateProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UpdateProjectResponse', name: 'UpdateProjectResponse')
    Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(http|https)\\://\\S+$"})
    UserIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#UserIdentity', name: 'UserIdentity')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VariableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#VariableName', name: 'VariableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z][a-z0-9_]*$"})
    VariableValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#VariableValue', name: 'VariableValue')
    Variant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#Variant', name: 'Variant')
    Version = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsitewise#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^(0|([1-9]{1}\\d*))$"})
    WarmTierRetentionPeriod = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsitewise#WarmTierRetentionPeriod', name: 'WarmTierRetentionPeriod')
    WarmTierState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsitewise#WarmTierState', name: 'WarmTierState')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessPolicySummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicySummary)
    AccessPolicySummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the access policy.</p>", "smithy.api#required" => {}}))
    AccessPolicySummary.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'identity', traits: {"smithy.api#documentation" => "<p>The identity (an IAM Identity Center user, an IAM Identity Center group, or an IAM user).</p>", "smithy.api#required" => {}}))
    AccessPolicySummary.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The IoT SiteWise Monitor resource (a portal or project).</p>", "smithy.api#required" => {}}))
    AccessPolicySummary.add_member(:permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: 'permission', traits: {"smithy.api#documentation" => "<p>The permissions for the access policy. Note that a project <code>ADMINISTRATOR</code> is\n      also known as a project owner.</p>", "smithy.api#required" => {}}))
    AccessPolicySummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the access policy was created, in Unix epoch time.</p>"}))
    AccessPolicySummary.add_member(:last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the access policy was last updated, in Unix epoch time.</p>"}))
    AccessPolicySummary.type = Types::AccessPolicySummary
    ActionDefinition.add_member(:action_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'actionDefinitionId', traits: {"smithy.api#documentation" => "<p>The ID of the action definition.</p>", "smithy.api#required" => {}}))
    ActionDefinition.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>The name of the action definition.</p>", "smithy.api#required" => {}}))
    ActionDefinition.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'actionType', traits: {"smithy.api#documentation" => "<p>The type of the action definition.</p>", "smithy.api#required" => {}}))
    ActionDefinition.type = Types::ActionDefinition
    ActionDefinitions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionDefinition)
    ActionPayload.add_member(:string_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPayloadString, location_name: 'stringValue', traits: {"smithy.api#documentation" => "<p>The payload of the action in a JSON string.</p>", "smithy.api#required" => {}}))
    ActionPayload.type = Types::ActionPayload
    ActionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionSummary)
    ActionSummary.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'actionId', traits: {"smithy.api#documentation" => "<p>The ID of the action.</p>"}))
    ActionSummary.add_member(:action_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'actionDefinitionId', traits: {"smithy.api#documentation" => "<p>The ID of the action definition.</p>"}))
    ActionSummary.add_member(:target_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResource, location_name: 'targetResource', traits: {"smithy.api#documentation" => "<p>The resource the action will be taken on.</p>"}))
    ActionSummary.add_member(:resolve_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveTo, location_name: 'resolveTo', traits: {"smithy.api#documentation" => "<p>The detailed resource this action resolves to.</p>"}))
    ActionSummary.type = Types::ActionSummary
    AggregateType.add_member(:average, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVERAGE', traits: {"smithy.api#enumValue" => "AVERAGE"}))
    AggregateType.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COUNT', traits: {"smithy.api#enumValue" => "COUNT"}))
    AggregateType.add_member(:maximum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAXIMUM', traits: {"smithy.api#enumValue" => "MAXIMUM"}))
    AggregateType.add_member(:minimum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MINIMUM', traits: {"smithy.api#enumValue" => "MINIMUM"}))
    AggregateType.add_member(:sum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUM', traits: {"smithy.api#enumValue" => "SUM"}))
    AggregateType.add_member(:standard_deviation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD_DEVIATION', traits: {"smithy.api#enumValue" => "STANDARD_DEVIATION"}))
    AggregateTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AggregateType)
    AggregatedValue.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The date the aggregating computations occurred, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    AggregatedValue.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: Quality, location_name: 'quality', traits: {"smithy.api#documentation" => "<p>The quality of the aggregated data.</p>"}))
    AggregatedValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Aggregates, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the aggregates.</p>", "smithy.api#required" => {}}))
    AggregatedValue.type = Types::AggregatedValue
    AggregatedValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AggregatedValue)
    Aggregates.add_member(:average, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: 'average', traits: {"smithy.api#documentation" => "<p>The average (mean) value of the time series over a time interval window.</p>"}))
    Aggregates.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The count of data points in the time series over a time interval window.</p>"}))
    Aggregates.add_member(:maximum, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: 'maximum', traits: {"smithy.api#documentation" => "<p>The maximum value of the time series over a time interval window.</p>"}))
    Aggregates.add_member(:minimum, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: 'minimum', traits: {"smithy.api#documentation" => "<p>The minimum value of the time series over a time interval window.</p>"}))
    Aggregates.add_member(:sum, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: 'sum', traits: {"smithy.api#documentation" => "<p>The sum of the time series over a time interval window.</p>"}))
    Aggregates.add_member(:standard_deviation, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: 'standardDeviation', traits: {"smithy.api#documentation" => "<p>The standard deviation of the time series over a time interval window.</p>"}))
    Aggregates.type = Types::Aggregates
    Alarms.add_member(:alarm_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'alarmRoleArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the IAM role that allows the alarm to perform actions and access Amazon Web Services\n      resources and services, such as IoT Events.</p>", "smithy.api#required" => {}}))
    Alarms.add_member(:notification_lambda_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'notificationLambdaArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the Lambda function that manages alarm notifications. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html\">Managing alarm\n        notifications</a> in the <i>IoT Events Developer Guide</i>.</p>"}))
    Alarms.type = Types::Alarms
    AssetBindingValueFilter.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset to filter data bindings by. Only data bindings referencing this\n      specific asset are matched.</p>", "smithy.api#required" => {}}))
    AssetBindingValueFilter.type = Types::AssetBindingValueFilter
    AssetCompositeModel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the composite model.</p>", "smithy.api#required" => {}}))
    AssetCompositeModel.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the composite model.</p>"}))
    AssetCompositeModel.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the composite model. For alarm composite models, this type is\n        <code>AWS/ALARM</code>.</p>", "smithy.api#required" => {}}))
    AssetCompositeModel.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetProperties, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>The asset properties that this composite model defines.</p>", "smithy.api#required" => {}}))
    AssetCompositeModel.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The ID of the asset composite model. </p>"}))
    AssetCompositeModel.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID of the asset composite model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetCompositeModel.type = Types::AssetCompositeModel
    AssetCompositeModelPath.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetCompositeModelPathSegment)
    AssetCompositeModelPathSegment.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the path segment.</p>"}))
    AssetCompositeModelPathSegment.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the path segment.</p>"}))
    AssetCompositeModelPathSegment.type = Types::AssetCompositeModelPathSegment
    AssetCompositeModelSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetCompositeModelSummary)
    AssetCompositeModelSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the composite model that this summary describes.</p>", "smithy.api#required" => {}}))
    AssetCompositeModelSummary.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>An external ID to assign to the asset model.</p>\n         <p>If the composite model is a derived composite model, or one nested inside a component\n      model, you can only set the external ID using <code>UpdateAssetModelCompositeModel</code> and\n      specifying the derived ID of the model or property from the created model it's a part\n      of.</p>"}))
    AssetCompositeModelSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the composite model that this summary describes.</p>", "smithy.api#required" => {}}))
    AssetCompositeModelSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of asset model.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>ASSET_MODEL</b> – (default) An asset model that you can use to create assets.\n   Can't be included as a component in another asset model.</p>\n            </li>\n            <li>\n               <p>\n                  <b>COMPONENT_MODEL</b> – A reusable component that you can include in the composite\n   models of other asset models. You can't create assets directly from this type of asset model. </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    AssetCompositeModelSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the composite model that this summary describes.</p>", "smithy.api#required" => {}}))
    AssetCompositeModelSummary.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetCompositeModelPath, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The path that includes all the components of the asset model for the asset.</p>", "smithy.api#required" => {}}))
    AssetCompositeModelSummary.type = Types::AssetCompositeModelSummary
    AssetCompositeModels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetCompositeModel)
    AssetErrorCode.add_member(:internal_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    AssetErrorDetails.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset, in UUID format.</p>", "smithy.api#required" => {}}))
    AssetErrorDetails.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    AssetErrorDetails.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message.</p>", "smithy.api#required" => {}}))
    AssetErrorDetails.type = Types::AssetErrorDetails
    AssetHierarchies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetHierarchy)
    AssetHierarchy.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the hierarchy. This ID is a <code>hierarchyId</code>.</p>"}))
    AssetHierarchy.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID of the hierarchy, if it has one. When you update an asset hierarchy, you\n      may assign an external ID if it doesn't already have one. You can't change the external ID of\n      an asset hierarchy that already has one. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetHierarchy.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The hierarchy name provided in the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html\">CreateAssetModel</a> or <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a>\n      API operation.</p>", "smithy.api#required" => {}}))
    AssetHierarchy.type = Types::AssetHierarchy
    AssetHierarchyInfo.add_member(:parent_asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'parentAssetId', traits: {"smithy.api#documentation" => "<p>The ID of the parent asset in this asset relationship.</p>"}))
    AssetHierarchyInfo.add_member(:child_asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'childAssetId', traits: {"smithy.api#documentation" => "<p>The ID of the child asset in this asset relationship.</p>"}))
    AssetHierarchyInfo.type = Types::AssetHierarchyInfo
    AssetIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ID)
    AssetModelBindingValueFilter.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model to filter data bindings by. Only data bindings referemncing this\n      specific asset model are matched.</p>", "smithy.api#required" => {}}))
    AssetModelBindingValueFilter.type = Types::AssetModelBindingValueFilter
    AssetModelCompositeModel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the composite model.</p>", "smithy.api#required" => {}}))
    AssetModelCompositeModel.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the composite model.</p>"}))
    AssetModelCompositeModel.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the composite model. For alarm composite models, this type is\n        <code>AWS/ALARM</code>.</p>", "smithy.api#required" => {}}))
    AssetModelCompositeModel.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelProperties, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>The asset property definitions for this composite model.</p>"}))
    AssetModelCompositeModel.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The ID of the asset model composite model. </p>"}))
    AssetModelCompositeModel.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID of the asset model composite model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetModelCompositeModel.type = Types::AssetModelCompositeModel
    AssetModelCompositeModelDefinition.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID to assign to the composite model, if desired. IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.\n    However, if you prefer to supply your own ID instead, you can specify it here in UUID format.\n    If you specify your own ID, it must be globally unique.</p>"}))
    AssetModelCompositeModelDefinition.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>An external ID to assign to the composite model. The external ID must be unique among\n      composite models within this asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetModelCompositeModelDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the composite model.</p>", "smithy.api#required" => {}}))
    AssetModelCompositeModelDefinition.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the composite model.</p>"}))
    AssetModelCompositeModelDefinition.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the composite model. For alarm composite models, this type is\n        <code>AWS/ALARM</code>.</p>", "smithy.api#required" => {}}))
    AssetModelCompositeModelDefinition.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelPropertyDefinitions, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>The asset property definitions for this composite model.</p>"}))
    AssetModelCompositeModelDefinition.type = Types::AssetModelCompositeModelDefinition
    AssetModelCompositeModelDefinitions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelCompositeModelDefinition)
    AssetModelCompositeModelPath.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelCompositeModelPathSegment)
    AssetModelCompositeModelPathSegment.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the path segment.</p>"}))
    AssetModelCompositeModelPathSegment.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the path segment.</p>"}))
    AssetModelCompositeModelPathSegment.type = Types::AssetModelCompositeModelPathSegment
    AssetModelCompositeModelSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelCompositeModelSummary)
    AssetModelCompositeModelSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the composite model that this summary describes..</p>", "smithy.api#required" => {}}))
    AssetModelCompositeModelSummary.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID of a composite model on this asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetModelCompositeModelSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the composite model that this summary describes..</p>", "smithy.api#required" => {}}))
    AssetModelCompositeModelSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The composite model type. Valid values are <code>AWS/ALARM</code>, <code>CUSTOM</code>, or <code> AWS/L4E_ANOMALY</code>.</p>", "smithy.api#required" => {}}))
    AssetModelCompositeModelSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the composite model that this summary describes..</p>"}))
    AssetModelCompositeModelSummary.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelCompositeModelPath, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The path that includes all the pieces that make up the composite model.</p>"}))
    AssetModelCompositeModelSummary.type = Types::AssetModelCompositeModelSummary
    AssetModelCompositeModels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelCompositeModel)
    AssetModelHierarchies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelHierarchy)
    AssetModelHierarchy.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the asset model hierarchy. This ID is a <code>hierarchyId</code>.</p>\n         <ul>\n            <li>\n               <p>If you are callling <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a> to create a\n            <i>new</i> hierarchy: You can specify its ID here, if desired.\n          IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.\n    However, if you prefer to supply your own ID instead, you can specify it here in UUID format.\n    If you specify your own ID, it must be globally unique.</p>\n            </li>\n            <li>\n               <p>If you are calling UpdateAssetModel to modify an <i>existing</i>\n          hierarchy: This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>\n            </li>\n         </ul>"}))
    AssetModelHierarchy.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID (if any) provided in the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html\">CreateAssetModel</a> or <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a>\n      operation. You can assign an external ID by specifying\n      this value as part of a call to <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a>. However, you can't change the external ID if one is already assigned. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetModelHierarchy.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the asset model hierarchy that you specify by using the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html\">CreateAssetModel</a> or\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a> API operation.</p>", "smithy.api#required" => {}}))
    AssetModelHierarchy.add_member(:child_asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'childAssetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model, in UUID format. All assets in this hierarchy must be instances of the\n        <code>childAssetModelId</code> asset model. IoT SiteWise will always return the actual\n      asset model ID for this value. However, when you are specifying this value as part of a call to\n      <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a>, you may provide either the asset model ID or else <code>externalId:</code>\n      followed by the asset model's external ID. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.\n    </p>", "smithy.api#required" => {}}))
    AssetModelHierarchy.type = Types::AssetModelHierarchy
    AssetModelHierarchyDefinition.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID to assign to the asset model hierarchy, if desired. IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.\n    However, if you prefer to supply your own ID instead, you can specify it here in UUID format.\n    If you specify your own ID, it must be globally unique.</p>"}))
    AssetModelHierarchyDefinition.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>An external ID to assign to the asset model hierarchy. The external ID must be unique\n      among asset model hierarchies within this asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetModelHierarchyDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the asset model hierarchy definition (as specified in the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html\">CreateAssetModel</a> or\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a> API operation).</p>", "smithy.api#required" => {}}))
    AssetModelHierarchyDefinition.add_member(:child_asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'childAssetModelId', traits: {"smithy.api#documentation" => "<p>The ID of an asset model for this hierarchy. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#required" => {}}))
    AssetModelHierarchyDefinition.type = Types::AssetModelHierarchyDefinition
    AssetModelHierarchyDefinitions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelHierarchyDefinition)
    AssetModelProperties.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelProperty)
    AssetModelProperty.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the asset model property.</p>\n         <ul>\n            <li>\n               <p>If you are callling <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a> to create a\n            <i>new</i> property: You can specify its ID here, if desired.\n          IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.\n    However, if you prefer to supply your own ID instead, you can specify it here in UUID format.\n    If you specify your own ID, it must be globally unique.</p>\n            </li>\n            <li>\n               <p>If you are calling UpdateAssetModel to modify an <i>existing</i>\n          property: This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>\n            </li>\n         </ul>"}))
    AssetModelProperty.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID (if any) provided in the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html\">CreateAssetModel</a> or <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a>\n      operation. You can assign an external ID by specifying\n      this value as part of a call to <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a>. However, you can't change the external ID if one is already assigned. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetModelProperty.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the asset model property.</p>", "smithy.api#required" => {}}))
    AssetModelProperty.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The data type of the asset model property.</p>\n         <p>If you specify <code>STRUCT</code>, you must also specify <code>dataTypeSpec</code> to\n      identify the type of the structure for this property.</p>", "smithy.api#required" => {}}))
    AssetModelProperty.add_member(:data_type_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'dataTypeSpec', traits: {"smithy.api#documentation" => "<p>The data type of the structure for this property. This parameter exists on properties that\n      have the <code>STRUCT</code> data type.</p>"}))
    AssetModelProperty.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyUnit, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>The unit of the asset model property, such as <code>Newtons</code> or\n      <code>RPM</code>.</p>"}))
    AssetModelProperty.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The property type (see <code>PropertyType</code>).</p>", "smithy.api#required" => {}}))
    AssetModelProperty.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelPropertyPath, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The structured path to the property from the root of the asset model.</p>"}))
    AssetModelProperty.type = Types::AssetModelProperty
    AssetModelPropertyBindingValue.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model, in UUID format.</p>", "smithy.api#required" => {}}))
    AssetModelPropertyBindingValue.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model property used in data binding value.</p>", "smithy.api#required" => {}}))
    AssetModelPropertyBindingValue.type = Types::AssetModelPropertyBindingValue
    AssetModelPropertyBindingValueFilter.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model containing the filter property. This identifies the specific\n      asset model that contains the property of interest.</p>", "smithy.api#required" => {}}))
    AssetModelPropertyBindingValueFilter.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the property within the asset model to filter by. Only data bindings referencing\n      this specific property of the specified asset model are matched.</p>", "smithy.api#required" => {}}))
    AssetModelPropertyBindingValueFilter.type = Types::AssetModelPropertyBindingValueFilter
    AssetModelPropertyDefinition.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID to assign to the asset model property, if desired. IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.\n    However, if you prefer to supply your own ID instead, you can specify it here in UUID format.\n    If you specify your own ID, it must be globally unique.</p>"}))
    AssetModelPropertyDefinition.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>An external ID to assign to the property definition. The external ID must be unique among\n      property definitions within this asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetModelPropertyDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the property definition.</p>", "smithy.api#required" => {}}))
    AssetModelPropertyDefinition.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The data type of the property definition.</p>\n         <p>If you specify <code>STRUCT</code>, you must also specify <code>dataTypeSpec</code> to\n      identify the type of the structure for this property.</p>", "smithy.api#required" => {}}))
    AssetModelPropertyDefinition.add_member(:data_type_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'dataTypeSpec', traits: {"smithy.api#documentation" => "<p>The data type of the structure for this property. This parameter is required on properties\n      that have the <code>STRUCT</code> data type.</p>\n         <p>The options for this parameter depend on the type of the composite model in which you\n      define this property. Use <code>AWS/ALARM_STATE</code> for alarm state in alarm composite\n      models.</p>"}))
    AssetModelPropertyDefinition.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyUnit, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>The unit of the property definition, such as <code>Newtons</code> or\n      <code>RPM</code>.</p>"}))
    AssetModelPropertyDefinition.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The property definition type (see <code>PropertyType</code>). You can only specify one\n      type in a property definition.</p>", "smithy.api#required" => {}}))
    AssetModelPropertyDefinition.type = Types::AssetModelPropertyDefinition
    AssetModelPropertyDefinitions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelPropertyDefinition)
    AssetModelPropertyPath.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelPropertyPathSegment)
    AssetModelPropertyPathSegment.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the path segment.</p>"}))
    AssetModelPropertyPathSegment.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the path segment.</p>"}))
    AssetModelPropertyPathSegment.type = Types::AssetModelPropertyPathSegment
    AssetModelPropertySummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelPropertySummary)
    AssetModelPropertySummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the property.</p>"}))
    AssetModelPropertySummary.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID of the property. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetModelPropertySummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the property.</p>", "smithy.api#required" => {}}))
    AssetModelPropertySummary.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The data type of the property.</p>", "smithy.api#required" => {}}))
    AssetModelPropertySummary.add_member(:data_type_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'dataTypeSpec', traits: {"smithy.api#documentation" => "<p>The data type of the structure for this property. This parameter exists on properties that\n      have the <code>STRUCT</code> data type.</p>"}))
    AssetModelPropertySummary.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyUnit, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>The unit (such as <code>Newtons</code> or <code>RPM</code>) of the property.</p>"}))
    AssetModelPropertySummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    AssetModelPropertySummary.add_member(:asset_model_composite_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelCompositeModelId', traits: {"smithy.api#documentation" => "<p> The ID of the composite model that contains the asset model property. </p>"}))
    AssetModelPropertySummary.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelPropertyPath, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The structured path to the property from the root of the asset model.</p>"}))
    AssetModelPropertySummary.add_member(:interface_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: InterfaceSummaries, location_name: 'interfaceSummaries', traits: {"smithy.api#documentation" => "<p>A list of interface summaries that describe which interfaces this property belongs to,\n      including the interface asset model ID and the corresponding property ID in the\n      interface.</p>"}))
    AssetModelPropertySummary.type = Types::AssetModelPropertySummary
    AssetModelState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    AssetModelState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AssetModelState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    AssetModelState.add_member(:propagating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROPAGATING', traits: {"smithy.api#enumValue" => "PROPAGATING"}))
    AssetModelState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    AssetModelState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AssetModelStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The current state of the asset model.</p>", "smithy.api#required" => {}}))
    AssetModelStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Contains associated error information, if any.</p>"}))
    AssetModelStatus.type = Types::AssetModelStatus
    AssetModelSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelSummary)
    AssetModelSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the asset model (used with IoT SiteWise API operations).</p>", "smithy.api#required" => {}}))
    AssetModelSummary.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID of the asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetModelSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset model, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>\n         </p>", "smithy.api#required" => {}}))
    AssetModelSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the asset model.</p>", "smithy.api#required" => {}}))
    AssetModelSummary.add_member(:asset_model_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelType, location_name: 'assetModelType', traits: {"smithy.api#documentation" => "<p>The type of asset model.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>ASSET_MODEL</b> – (default) An asset model that you can use to create assets.\n   Can't be included as a component in another asset model.</p>\n            </li>\n            <li>\n               <p>\n                  <b>COMPONENT_MODEL</b> – A reusable component that you can include in the composite\n   models of other asset models. You can't create assets directly from this type of asset model. </p>\n            </li>\n         </ul>"}))
    AssetModelSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The asset model description.</p>", "smithy.api#required" => {}}))
    AssetModelSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the asset model was created, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    AssetModelSummary.add_member(:last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the asset model was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    AssetModelSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the asset model.</p>", "smithy.api#required" => {}}))
    AssetModelSummary.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version number of the asset model.</p>"}))
    AssetModelSummary.type = Types::AssetModelSummary
    AssetModelType.add_member(:asset_model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSET_MODEL', traits: {"smithy.api#enumValue" => "ASSET_MODEL"}))
    AssetModelType.add_member(:component_model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPONENT_MODEL', traits: {"smithy.api#enumValue" => "COMPONENT_MODEL"}))
    AssetModelType.add_member(:interface, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERFACE', traits: {"smithy.api#enumValue" => "INTERFACE"}))
    AssetModelVersionType.add_member(:latest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LATEST', traits: {"smithy.api#enumValue" => "LATEST"}))
    AssetModelVersionType.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AssetProperties.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetProperty)
    AssetProperty.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the asset property.</p>", "smithy.api#required" => {}}))
    AssetProperty.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID of the asset property. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetProperty.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the property.</p>", "smithy.api#required" => {}}))
    AssetProperty.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the property, such as an OPC-UA server data stream path\n        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetProperty.add_member(:notification, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyNotification, location_name: 'notification', traits: {"smithy.api#documentation" => "<p>The asset property's notification topic and state. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html\">UpdateAssetProperty</a>.</p>"}))
    AssetProperty.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The data type of the asset property.</p>", "smithy.api#required" => {}}))
    AssetProperty.add_member(:data_type_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'dataTypeSpec', traits: {"smithy.api#documentation" => "<p>The data type of the structure for this property. This parameter exists on properties that\n      have the <code>STRUCT</code> data type.</p>"}))
    AssetProperty.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyUnit, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>The unit (such as <code>Newtons</code> or <code>RPM</code>) of the asset property.</p>"}))
    AssetProperty.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyPath, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The structured path to the property from the root of the asset.</p>"}))
    AssetProperty.type = Types::AssetProperty
    AssetPropertyBindingValue.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset containing the property. This identifies the specific asset instance's\n      property value used in the computation model.</p>", "smithy.api#required" => {}}))
    AssetPropertyBindingValue.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the property within the asset. This identifies the specific property's value\n      used in the computation model.</p>", "smithy.api#required" => {}}))
    AssetPropertyBindingValue.type = Types::AssetPropertyBindingValue
    AssetPropertyBindingValueFilter.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset containing the property to filter by. This identifies the specific\n      asset instance containing the property of interest.</p>", "smithy.api#required" => {}}))
    AssetPropertyBindingValueFilter.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the property within the asset to filter by. Only data bindings referencing this\n      specific property of the specified asset are matched.</p>", "smithy.api#required" => {}}))
    AssetPropertyBindingValueFilter.type = Types::AssetPropertyBindingValueFilter
    AssetPropertyPath.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyPathSegment)
    AssetPropertyPathSegment.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the path segment.</p>"}))
    AssetPropertyPathSegment.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the path segment.</p>"}))
    AssetPropertyPathSegment.type = Types::AssetPropertyPathSegment
    AssetPropertySummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertySummary)
    AssetPropertySummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the property.</p>", "smithy.api#required" => {}}))
    AssetPropertySummary.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID of the property. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetPropertySummary.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the property, such as an OPC-UA server data stream path\n        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetPropertySummary.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyUnit, location_name: 'unit', traits: {"smithy.api#documentation" => "<p> The unit of measure (such as Newtons or RPM) of the asset property. </p>"}))
    AssetPropertySummary.add_member(:notification, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyNotification, location_name: 'notification'))
    AssetPropertySummary.add_member(:asset_composite_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetCompositeModelId', traits: {"smithy.api#documentation" => "<p> The ID of the composite model that contains the asset property. </p>"}))
    AssetPropertySummary.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyPath, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The structured path to the property from the root of the asset.</p>"}))
    AssetPropertySummary.type = Types::AssetPropertySummary
    AssetPropertyValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Variant, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the asset property (see <code>Variant</code>).</p>", "smithy.api#required" => {}}))
    AssetPropertyValue.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeInNanos, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of the asset property value.</p>", "smithy.api#required" => {}}))
    AssetPropertyValue.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: Quality, location_name: 'quality', traits: {"smithy.api#documentation" => "<p>The quality of the asset property value.</p>"}))
    AssetPropertyValue.type = Types::AssetPropertyValue
    AssetPropertyValueHistory.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyValue)
    AssetPropertyValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyValue)
    AssetRelationshipSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetRelationshipSummary)
    AssetRelationshipSummary.add_member(:hierarchy_info, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetHierarchyInfo, location_name: 'hierarchyInfo', traits: {"smithy.api#documentation" => "<p>The assets that are related through an asset hierarchy.</p>\n         <p>This object is present if the <code>relationshipType</code> is\n      <code>HIERARCHY</code>.</p>"}))
    AssetRelationshipSummary.add_member(:relationship_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetRelationshipType, location_name: 'relationshipType', traits: {"smithy.api#documentation" => "<p>The relationship type of the assets in this relationship. This value is one of the\n      following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>HIERARCHY</code> – The assets are related through an asset hierarchy. If\n          you specify this relationship type, this asset relationship includes the\n            <code>hierarchyInfo</code> object.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    AssetRelationshipSummary.type = Types::AssetRelationshipSummary
    AssetRelationshipType.add_member(:hierarchy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIERARCHY', traits: {"smithy.api#enumValue" => "HIERARCHY"}))
    AssetState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    AssetState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AssetState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    AssetState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    AssetState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AssetStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The current status of the asset.</p>", "smithy.api#required" => {}}))
    AssetStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Contains associated error information, if any.</p>"}))
    AssetStatus.type = Types::AssetStatus
    AssetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetSummary)
    AssetSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the asset, in UUID format.</p>", "smithy.api#required" => {}}))
    AssetSummary.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID of the asset. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssetSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>\n         </p>", "smithy.api#required" => {}}))
    AssetSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the asset.</p>", "smithy.api#required" => {}}))
    AssetSummary.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model used to create this asset.</p>", "smithy.api#required" => {}}))
    AssetSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the asset was created, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    AssetSummary.add_member(:last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the asset was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    AssetSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the asset.</p>", "smithy.api#required" => {}}))
    AssetSummary.add_member(:hierarchies, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetHierarchies, location_name: 'hierarchies', traits: {"smithy.api#documentation" => "<p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>", "smithy.api#required" => {}}))
    AssetSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the asset.</p>"}))
    AssetSummary.type = Types::AssetSummary
    AssociateAssetsRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the parent asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAssetsRequest.add_member(:hierarchy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'hierarchyId', traits: {"smithy.api#documentation" => "<p>The ID of a hierarchy in the parent asset's model. (This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.) Hierarchies allow\n      different groupings of assets to be formed that all come from the same asset model. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#required" => {}}))
    AssociateAssetsRequest.add_member(:child_asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'childAssetId', traits: {"smithy.api#documentation" => "<p>The ID of the child asset to be associated. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#required" => {}}))
    AssociateAssetsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    AssociateAssetsRequest.type = Types::AssociateAssetsRequest
    AssociateTimeSeriesToAssetPropertyRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the time series.</p>", "smithy.api#httpQuery" => "alias", "smithy.api#required" => {}}))
    AssociateTimeSeriesToAssetPropertyRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "assetId", "smithy.api#required" => {}}))
    AssociateTimeSeriesToAssetPropertyRequest.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "propertyId", "smithy.api#required" => {}}))
    AssociateTimeSeriesToAssetPropertyRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    AssociateTimeSeriesToAssetPropertyRequest.type = Types::AssociateTimeSeriesToAssetPropertyRequest
    AssociatedAssetsSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedAssetsSummary)
    AssociatedAssetsSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the asset, in UUID format.</p>", "smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID of the asset. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    AssociatedAssetsSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>\n         </p>", "smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the asset.</p>", "smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model used to create the asset.</p>", "smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the asset was created, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the asset was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the asset.</p>", "smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:hierarchies, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetHierarchies, location_name: 'hierarchies', traits: {"smithy.api#documentation" => "<p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>", "smithy.api#required" => {}}))
    AssociatedAssetsSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the asset.</p>"}))
    AssociatedAssetsSummary.type = Types::AssociatedAssetsSummary
    Attribute.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultValue, location_name: 'defaultValue', traits: {"smithy.api#documentation" => "<p>The default value of the asset model property attribute. All assets that you create from\n      the asset model contain this attribute value. You can update an attribute's value after you\n      create an asset. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-attribute-values.html\">Updating attribute values</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>"}))
    Attribute.type = Types::Attribute
    AuthMode.add_member(:iam, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM', traits: {"smithy.api#enumValue" => "IAM"}))
    AuthMode.add_member(:sso, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSO', traits: {"smithy.api#enumValue" => "SSO"}))
    BatchAssociateProjectAssetsErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetErrorDetails)
    BatchAssociateProjectAssetsRequest.add_member(:project_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'projectId', traits: {"smithy.api#documentation" => "<p>The ID of the project to which to associate the assets.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchAssociateProjectAssetsRequest.add_member(:asset_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IDs, location_name: 'assetIds', traits: {"smithy.api#documentation" => "<p>The IDs of the assets to be associated to the project.</p>", "smithy.api#required" => {}}))
    BatchAssociateProjectAssetsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    BatchAssociateProjectAssetsRequest.type = Types::BatchAssociateProjectAssetsRequest
    BatchAssociateProjectAssetsResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateProjectAssetsErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>A list of associated error information, if any.</p>"}))
    BatchAssociateProjectAssetsResponse.type = Types::BatchAssociateProjectAssetsResponse
    BatchDisassociateProjectAssetsErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetErrorDetails)
    BatchDisassociateProjectAssetsRequest.add_member(:project_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'projectId', traits: {"smithy.api#documentation" => "<p>The ID of the project from which to disassociate the assets.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDisassociateProjectAssetsRequest.add_member(:asset_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IDs, location_name: 'assetIds', traits: {"smithy.api#documentation" => "<p>The IDs of the assets to be disassociated from the project.</p>", "smithy.api#required" => {}}))
    BatchDisassociateProjectAssetsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    BatchDisassociateProjectAssetsRequest.type = Types::BatchDisassociateProjectAssetsRequest
    BatchDisassociateProjectAssetsResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateProjectAssetsErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>A list of associated error information, if any.</p>"}))
    BatchDisassociateProjectAssetsResponse.type = Types::BatchDisassociateProjectAssetsResponse
    BatchEntryCompletionStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    BatchEntryCompletionStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    BatchGetAssetPropertyAggregatesEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesEntry)
    BatchGetAssetPropertyAggregatesEntry.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>The ID of the entry.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesEntry.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset in which the asset property was created.</p>"}))
    BatchGetAssetPropertyAggregatesEntry.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property, in UUID format.</p>"}))
    BatchGetAssetPropertyAggregatesEntry.add_member(:property_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: 'propertyAlias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the property, such as an OPC-UA server data stream path\n        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>"}))
    BatchGetAssetPropertyAggregatesEntry.add_member(:aggregate_types, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregateTypes, location_name: 'aggregateTypes', traits: {"smithy.api#documentation" => "<p>The data aggregating function.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesEntry.add_member(:resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: Resolution, location_name: 'resolution', traits: {"smithy.api#documentation" => "<p>The time interval over which to aggregate data.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesEntry.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesEntry.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endDate', traits: {"smithy.api#documentation" => "<p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesEntry.add_member(:qualities, Smithy::Schema::Shapes::ShapeRef.new(shape: Qualities, location_name: 'qualities', traits: {"smithy.api#documentation" => "<p>The quality by which to filter asset data.</p>"}))
    BatchGetAssetPropertyAggregatesEntry.add_member(:time_ordering, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOrdering, location_name: 'timeOrdering', traits: {"smithy.api#documentation" => "<p>The chronological sorting order of the requested information.</p>\n         <p>Default: <code>ASCENDING</code>\n         </p>"}))
    BatchGetAssetPropertyAggregatesEntry.type = Types::BatchGetAssetPropertyAggregatesEntry
    BatchGetAssetPropertyAggregatesErrorCode.add_member(:resource_not_found_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFoundException', traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    BatchGetAssetPropertyAggregatesErrorCode.add_member(:invalid_request_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidRequestException', traits: {"smithy.api#enumValue" => "InvalidRequestException"}))
    BatchGetAssetPropertyAggregatesErrorCode.add_member(:access_denied_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccessDeniedException', traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    BatchGetAssetPropertyAggregatesErrorEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesErrorEntry)
    BatchGetAssetPropertyAggregatesErrorEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesErrorEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The associated error message.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesErrorEntry.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>The ID of the entry.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesErrorEntry.type = Types::BatchGetAssetPropertyAggregatesErrorEntry
    BatchGetAssetPropertyAggregatesErrorInfo.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesErrorInfo.add_member(:error_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'errorTimestamp', traits: {"smithy.api#documentation" => "<p>The date the error occurred, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesErrorInfo.type = Types::BatchGetAssetPropertyAggregatesErrorInfo
    BatchGetAssetPropertyAggregatesRequest.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesEntries, location_name: 'entries', traits: {"smithy.api#documentation" => "<p>The list of asset property aggregate entries for the batch get request. You can specify up\n      to 16 entries per request.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>"}))
    BatchGetAssetPropertyAggregatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs\n      first.</p>\n         <ul>\n            <li>\n               <p>The size of the result set is equal to 1 MB.</p>\n            </li>\n            <li>\n               <p>The number of data points in the result set is equal to the value of\n            <code>maxResults</code>. The maximum value of <code>maxResults</code> is 4000.</p>\n            </li>\n         </ul>"}))
    BatchGetAssetPropertyAggregatesRequest.type = Types::BatchGetAssetPropertyAggregatesRequest
    BatchGetAssetPropertyAggregatesResponse.add_member(:error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesErrorEntries, location_name: 'errorEntries', traits: {"smithy.api#documentation" => "<p>A list of the errors (if any) associated with the batch request. Each error entry\n      contains the <code>entryId</code> of the entry that failed.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesResponse.add_member(:success_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesSuccessEntries, location_name: 'successEntries', traits: {"smithy.api#documentation" => "<p>A list of entries that were processed successfully by this batch request. Each success entry\n      contains the <code>entryId</code> of the entry that succeeded and the latest query result.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesResponse.add_member(:skipped_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesSkippedEntries, location_name: 'skippedEntries', traits: {"smithy.api#documentation" => "<p>A list of entries that were not processed by this batch request.\n      because these entries had been completely processed by previous paginated requests.\n      Each skipped entry contains the <code>entryId</code> of the entry that skipped.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    BatchGetAssetPropertyAggregatesResponse.type = Types::BatchGetAssetPropertyAggregatesResponse
    BatchGetAssetPropertyAggregatesSkippedEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesSkippedEntry)
    BatchGetAssetPropertyAggregatesSkippedEntry.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>The ID of the entry.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesSkippedEntry.add_member(:completion_status, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEntryCompletionStatus, location_name: 'completionStatus', traits: {"smithy.api#documentation" => "<p>The completion status of each entry that is associated with the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html\">BatchGetAssetPropertyAggregates</a> API.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesSkippedEntry.add_member(:error_info, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesErrorInfo, location_name: 'errorInfo', traits: {"smithy.api#documentation" => "<p>The error information, such as the error code and the timestamp.</p>"}))
    BatchGetAssetPropertyAggregatesSkippedEntry.type = Types::BatchGetAssetPropertyAggregatesSkippedEntry
    BatchGetAssetPropertyAggregatesSuccessEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesSuccessEntry)
    BatchGetAssetPropertyAggregatesSuccessEntry.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>The ID of the entry.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesSuccessEntry.add_member(:aggregated_values, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregatedValues, location_name: 'aggregatedValues', traits: {"smithy.api#documentation" => "<p>The requested aggregated asset property values (for example, average, minimum, and\n      maximum).</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyAggregatesSuccessEntry.type = Types::BatchGetAssetPropertyAggregatesSuccessEntry
    BatchGetAssetPropertyValueEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueEntry)
    BatchGetAssetPropertyValueEntry.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>The ID of the entry.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueEntry.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset in which the asset property was created.</p>"}))
    BatchGetAssetPropertyValueEntry.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property, in UUID format.</p>"}))
    BatchGetAssetPropertyValueEntry.add_member(:property_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: 'propertyAlias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the property, such as an OPC-UA server data stream path\n        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>"}))
    BatchGetAssetPropertyValueEntry.type = Types::BatchGetAssetPropertyValueEntry
    BatchGetAssetPropertyValueErrorCode.add_member(:resource_not_found_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFoundException', traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    BatchGetAssetPropertyValueErrorCode.add_member(:invalid_request_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidRequestException', traits: {"smithy.api#enumValue" => "InvalidRequestException"}))
    BatchGetAssetPropertyValueErrorCode.add_member(:access_denied_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccessDeniedException', traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    BatchGetAssetPropertyValueErrorEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueErrorEntry)
    BatchGetAssetPropertyValueErrorEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueErrorEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The associated error message.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueErrorEntry.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>The ID of the entry.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueErrorEntry.type = Types::BatchGetAssetPropertyValueErrorEntry
    BatchGetAssetPropertyValueErrorInfo.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueErrorInfo.add_member(:error_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'errorTimestamp', traits: {"smithy.api#documentation" => "<p>The date the error occurred, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueErrorInfo.type = Types::BatchGetAssetPropertyValueErrorInfo
    BatchGetAssetPropertyValueHistoryEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryEntry)
    BatchGetAssetPropertyValueHistoryEntry.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>The ID of the entry.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset in which the asset property was created.</p>"}))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property, in UUID format.</p>"}))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:property_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: 'propertyAlias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the property, such as an OPC-UA server data stream path\n        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>"}))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>"}))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endDate', traits: {"smithy.api#documentation" => "<p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>"}))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:qualities, Smithy::Schema::Shapes::ShapeRef.new(shape: Qualities, location_name: 'qualities', traits: {"smithy.api#documentation" => "<p>The quality by which to filter asset data.</p>"}))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:time_ordering, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOrdering, location_name: 'timeOrdering', traits: {"smithy.api#documentation" => "<p>The chronological sorting order of the requested information.</p>\n         <p>Default: <code>ASCENDING</code>\n         </p>"}))
    BatchGetAssetPropertyValueHistoryEntry.type = Types::BatchGetAssetPropertyValueHistoryEntry
    BatchGetAssetPropertyValueHistoryErrorCode.add_member(:resource_not_found_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFoundException', traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    BatchGetAssetPropertyValueHistoryErrorCode.add_member(:invalid_request_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidRequestException', traits: {"smithy.api#enumValue" => "InvalidRequestException"}))
    BatchGetAssetPropertyValueHistoryErrorCode.add_member(:access_denied_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccessDeniedException', traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    BatchGetAssetPropertyValueHistoryErrorEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryErrorEntry)
    BatchGetAssetPropertyValueHistoryErrorEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryErrorEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The associated error message.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryErrorEntry.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>The ID of the entry.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryErrorEntry.type = Types::BatchGetAssetPropertyValueHistoryErrorEntry
    BatchGetAssetPropertyValueHistoryErrorInfo.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryErrorInfo.add_member(:error_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'errorTimestamp', traits: {"smithy.api#documentation" => "<p>The date the error occurred, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryErrorInfo.type = Types::BatchGetAssetPropertyValueHistoryErrorInfo
    BatchGetAssetPropertyValueHistoryRequest.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryEntries, location_name: 'entries', traits: {"smithy.api#documentation" => "<p>The list of asset property historical value entries for the batch get request. You can\n      specify up to 16 entries per request.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>"}))
    BatchGetAssetPropertyValueHistoryRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs\n      first.</p>\n         <ul>\n            <li>\n               <p>The size of the result set is equal to 4 MB.</p>\n            </li>\n            <li>\n               <p>The number of data points in the result set is equal to the value of\n            <code>maxResults</code>. The maximum value of <code>maxResults</code> is 20000.</p>\n            </li>\n         </ul>"}))
    BatchGetAssetPropertyValueHistoryRequest.type = Types::BatchGetAssetPropertyValueHistoryRequest
    BatchGetAssetPropertyValueHistoryResponse.add_member(:error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryErrorEntries, location_name: 'errorEntries', traits: {"smithy.api#documentation" => "<p>A list of the errors (if any) associated with the batch request. Each error entry\n      contains the <code>entryId</code> of the entry that failed.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryResponse.add_member(:success_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistorySuccessEntries, location_name: 'successEntries', traits: {"smithy.api#documentation" => "<p>A list of entries that were processed successfully by this batch request. Each success entry\n      contains the <code>entryId</code> of the entry that succeeded and the latest query result.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryResponse.add_member(:skipped_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistorySkippedEntries, location_name: 'skippedEntries', traits: {"smithy.api#documentation" => "<p>A list of entries that were not processed by this batch request.\n      because these entries had been completely processed by previous paginated requests.\n      Each skipped entry contains the <code>entryId</code> of the entry that skipped.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistoryResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    BatchGetAssetPropertyValueHistoryResponse.type = Types::BatchGetAssetPropertyValueHistoryResponse
    BatchGetAssetPropertyValueHistorySkippedEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistorySkippedEntry)
    BatchGetAssetPropertyValueHistorySkippedEntry.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>The ID of the entry.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistorySkippedEntry.add_member(:completion_status, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEntryCompletionStatus, location_name: 'completionStatus', traits: {"smithy.api#documentation" => "<p>The completion status of each entry that is associated with the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValueHistory.html\">BatchGetAssetPropertyValueHistory</a> API.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistorySkippedEntry.add_member(:error_info, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryErrorInfo, location_name: 'errorInfo', traits: {"smithy.api#documentation" => "<p>The error information, such as the error code and the timestamp.</p>"}))
    BatchGetAssetPropertyValueHistorySkippedEntry.type = Types::BatchGetAssetPropertyValueHistorySkippedEntry
    BatchGetAssetPropertyValueHistorySuccessEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistorySuccessEntry)
    BatchGetAssetPropertyValueHistorySuccessEntry.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>The ID of the entry.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistorySuccessEntry.add_member(:asset_property_value_history, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyValueHistory, location_name: 'assetPropertyValueHistory', traits: {"smithy.api#documentation" => "<p>The requested historical values for the specified asset property.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueHistorySuccessEntry.type = Types::BatchGetAssetPropertyValueHistorySuccessEntry
    BatchGetAssetPropertyValueRequest.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueEntries, location_name: 'entries', traits: {"smithy.api#documentation" => "<p>The list of asset property value entries for the batch get request. You can specify up to\n      128 entries per request.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>"}))
    BatchGetAssetPropertyValueRequest.type = Types::BatchGetAssetPropertyValueRequest
    BatchGetAssetPropertyValueResponse.add_member(:error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueErrorEntries, location_name: 'errorEntries', traits: {"smithy.api#documentation" => "<p>A list of the errors (if any) associated with the batch request. Each error entry\n      contains the <code>entryId</code> of the entry that failed.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueResponse.add_member(:success_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueSuccessEntries, location_name: 'successEntries', traits: {"smithy.api#documentation" => "<p>A list of entries that were processed successfully by this batch request. Each success entry\n      contains the <code>entryId</code> of the entry that succeeded and the latest query result.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueResponse.add_member(:skipped_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueSkippedEntries, location_name: 'skippedEntries', traits: {"smithy.api#documentation" => "<p>A list of entries that were not processed by this batch request.\n      because these entries had been completely processed by previous paginated requests.\n      Each skipped entry contains the <code>entryId</code> of the entry that skipped.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    BatchGetAssetPropertyValueResponse.type = Types::BatchGetAssetPropertyValueResponse
    BatchGetAssetPropertyValueSkippedEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueSkippedEntry)
    BatchGetAssetPropertyValueSkippedEntry.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>The ID of the entry.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueSkippedEntry.add_member(:completion_status, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEntryCompletionStatus, location_name: 'completionStatus', traits: {"smithy.api#documentation" => "<p>The completion status of each entry that is associated with the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html\">BatchGetAssetPropertyValue</a> request.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueSkippedEntry.add_member(:error_info, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueErrorInfo, location_name: 'errorInfo', traits: {"smithy.api#documentation" => "<p>The error information, such as the error code and the timestamp.</p>"}))
    BatchGetAssetPropertyValueSkippedEntry.type = Types::BatchGetAssetPropertyValueSkippedEntry
    BatchGetAssetPropertyValueSuccessEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueSuccessEntry)
    BatchGetAssetPropertyValueSuccessEntry.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>The ID of the entry.</p>", "smithy.api#required" => {}}))
    BatchGetAssetPropertyValueSuccessEntry.add_member(:asset_property_value, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyValue, location_name: 'assetPropertyValue'))
    BatchGetAssetPropertyValueSuccessEntry.type = Types::BatchGetAssetPropertyValueSuccessEntry
    BatchPutAssetPropertyError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutAssetPropertyValueErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    BatchPutAssetPropertyError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The associated error message.</p>", "smithy.api#required" => {}}))
    BatchPutAssetPropertyError.add_member(:timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamps, location_name: 'timestamps', traits: {"smithy.api#documentation" => "<p>A list of timestamps for each  error, if any.</p>", "smithy.api#required" => {}}))
    BatchPutAssetPropertyError.type = Types::BatchPutAssetPropertyError
    BatchPutAssetPropertyErrorEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutAssetPropertyErrorEntry)
    BatchPutAssetPropertyErrorEntry.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>The ID of the failed entry.</p>", "smithy.api#required" => {}}))
    BatchPutAssetPropertyErrorEntry.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutAssetPropertyErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>The list of update property value errors.</p>", "smithy.api#required" => {}}))
    BatchPutAssetPropertyErrorEntry.type = Types::BatchPutAssetPropertyErrorEntry
    BatchPutAssetPropertyErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutAssetPropertyError)
    BatchPutAssetPropertyValueErrorCode.add_member(:resource_not_found_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFoundException', traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:invalid_request_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidRequestException', traits: {"smithy.api#enumValue" => "InvalidRequestException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:internal_failure_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalFailureException', traits: {"smithy.api#enumValue" => "InternalFailureException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:service_unavailable_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ServiceUnavailableException', traits: {"smithy.api#enumValue" => "ServiceUnavailableException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:throttling_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ThrottlingException', traits: {"smithy.api#enumValue" => "ThrottlingException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:limit_exceeded_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LimitExceededException', traits: {"smithy.api#enumValue" => "LimitExceededException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:conflicting_operation_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConflictingOperationException', traits: {"smithy.api#enumValue" => "ConflictingOperationException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:timestamp_out_of_range_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TimestampOutOfRangeException', traits: {"smithy.api#enumValue" => "TimestampOutOfRangeException"}))
    BatchPutAssetPropertyValueErrorCode.add_member(:access_denied_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccessDeniedException', traits: {"smithy.api#enumValue" => "AccessDeniedException"}))
    BatchPutAssetPropertyValueRequest.add_member(:enable_partial_entry_processing, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'enablePartialEntryProcessing', traits: {"smithy.api#documentation" => "<p>This setting enables partial ingestion at entry-level. If set to <code>true</code>, we\n      ingest all TQVs not resulting in an error. If set to <code>false</code>, an invalid TQV fails\n      ingestion of the entire entry that contains it.</p>"}))
    BatchPutAssetPropertyValueRequest.add_member(:entries, Smithy::Schema::Shapes::ShapeRef.new(shape: PutAssetPropertyValueEntries, location_name: 'entries', traits: {"smithy.api#documentation" => "<p>The list of asset property value entries for the batch put request. You can specify up to\n      10 entries per request.</p>", "smithy.api#required" => {}}))
    BatchPutAssetPropertyValueRequest.type = Types::BatchPutAssetPropertyValueRequest
    BatchPutAssetPropertyValueResponse.add_member(:error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutAssetPropertyErrorEntries, location_name: 'errorEntries', traits: {"smithy.api#documentation" => "<p>A list of the errors (if any) associated with the batch put request. Each error entry\n      contains the <code>entryId</code> of the entry that failed.</p>", "smithy.api#required" => {}}))
    BatchPutAssetPropertyValueResponse.type = Types::BatchPutAssetPropertyValueResponse
    BindingValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelDataBindingValue)
    CapabilitySyncStatus.add_member(:in_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_SYNC', traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    CapabilitySyncStatus.add_member(:out_of_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUT_OF_SYNC', traits: {"smithy.api#enumValue" => "OUT_OF_SYNC"}))
    CapabilitySyncStatus.add_member(:sync_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNC_FAILED', traits: {"smithy.api#enumValue" => "SYNC_FAILED"}))
    CapabilitySyncStatus.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    CapabilitySyncStatus.add_member(:not_applicable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_APPLICABLE', traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    Citation.add_member(:reference, Smithy::Schema::Shapes::ShapeRef.new(shape: Reference, location_name: 'reference', traits: {"smithy.api#documentation" => "<p>Contains information about the data source.</p>"}))
    Citation.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'content', traits: {"smithy.api#documentation" => "<p>Contains the cited text from the data source.</p>"}))
    Citation.type = Types::Citation
    Citations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Citation)
    ColumnInfo.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the column description.</p>"}))
    ColumnInfo.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the column description.</p>"}))
    ColumnInfo.type = Types::ColumnInfo
    ColumnName.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALIAS', traits: {"smithy.api#enumValue" => "ALIAS"}))
    ColumnName.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSET_ID', traits: {"smithy.api#enumValue" => "ASSET_ID"}))
    ColumnName.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROPERTY_ID', traits: {"smithy.api#enumValue" => "PROPERTY_ID"}))
    ColumnName.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_TYPE', traits: {"smithy.api#enumValue" => "DATA_TYPE"}))
    ColumnName.add_member(:timestamp_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP_SECONDS', traits: {"smithy.api#enumValue" => "TIMESTAMP_SECONDS"}))
    ColumnName.add_member(:timestamp_nano_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP_NANO_OFFSET', traits: {"smithy.api#enumValue" => "TIMESTAMP_NANO_OFFSET"}))
    ColumnName.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUALITY', traits: {"smithy.api#enumValue" => "QUALITY"}))
    ColumnName.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALUE', traits: {"smithy.api#enumValue" => "VALUE"}))
    ColumnNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName)
    ColumnType.add_member(:scalar_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalarType, location_name: 'scalarType', traits: {"smithy.api#documentation" => "<p>The allowed data types that the column has as it's value.</p>"}))
    ColumnType.type = Types::ColumnType
    ColumnsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfo)
    CompositeModelProperty.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the property.</p>", "smithy.api#required" => {}}))
    CompositeModelProperty.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the composite model that defines this property.</p>", "smithy.api#required" => {}}))
    CompositeModelProperty.add_member(:asset_property, Smithy::Schema::Shapes::ShapeRef.new(shape: Property, location_name: 'assetProperty', traits: {"smithy.api#required" => {}}))
    CompositeModelProperty.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The ID of the composite model that contains the property. </p>"}))
    CompositeModelProperty.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID of the composite model that contains the property. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CompositeModelProperty.type = Types::CompositeModelProperty
    CompositionDetails.add_member(:composition_relationship, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionRelationship, location_name: 'compositionRelationship', traits: {"smithy.api#documentation" => "<p>An array detailing the composition relationship for this composite model.</p>"}))
    CompositionDetails.type = Types::CompositionDetails
    CompositionRelationship.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionRelationshipItem)
    CompositionRelationshipItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the component.</p>"}))
    CompositionRelationshipItem.type = Types::CompositionRelationshipItem
    CompositionRelationshipSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionRelationshipSummary)
    CompositionRelationshipSummary.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model, in UUID format.</p>", "smithy.api#required" => {}}))
    CompositionRelationshipSummary.add_member(:asset_model_composite_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelCompositeModelId', traits: {"smithy.api#documentation" => "<p>The ID of a composite model on this asset model.</p>", "smithy.api#required" => {}}))
    CompositionRelationshipSummary.add_member(:asset_model_composite_model_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetModelCompositeModelType', traits: {"smithy.api#documentation" => "<p>The composite model type. Valid values are <code>AWS/ALARM</code>, <code>CUSTOM</code>, or\n        <code> AWS/L4E_ANOMALY</code>.</p>", "smithy.api#required" => {}}))
    CompositionRelationshipSummary.type = Types::CompositionRelationshipSummary
    ComputationModelAnomalyDetectionConfiguration.add_member(:input_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: InputProperties, location_name: 'inputProperties', traits: {"smithy.api#documentation" => "<p>Define the variable name associated with input properties, with the following format\n        <code>${VariableName}</code>.</p>", "smithy.api#required" => {}}))
    ComputationModelAnomalyDetectionConfiguration.add_member(:result_property, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultProperty, location_name: 'resultProperty', traits: {"smithy.api#documentation" => "<p>Define the variable name associated with the result property, and the following format\n        <code>${VariableName}</code>.</p>", "smithy.api#required" => {}}))
    ComputationModelAnomalyDetectionConfiguration.type = Types::ComputationModelAnomalyDetectionConfiguration
    ComputationModelConfiguration.add_member(:anomaly_detection, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelAnomalyDetectionConfiguration, location_name: 'anomalyDetection', traits: {"smithy.api#documentation" => "<p>The configuration for the anomaly detection type of computation model.</p>"}))
    ComputationModelConfiguration.type = Types::ComputationModelConfiguration
    ComputationModelDataBinding.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelDataBindingVariable)
    ComputationModelDataBinding.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelDataBindingValue)
    ComputationModelDataBindingUsageSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelDataBindingUsageSummary)
    ComputationModelDataBindingUsageSummary.add_member(:computation_model_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelIdList, location_name: 'computationModelIds', traits: {"smithy.api#documentation" => "<p>The list of computation model IDs that use this data binding. This allows identification\n      of all computation models affected by changes to the referenced data source.</p>", "smithy.api#required" => {}}))
    ComputationModelDataBindingUsageSummary.add_member(:matched_data_binding, Smithy::Schema::Shapes::ShapeRef.new(shape: MatchedDataBinding, location_name: 'matchedDataBinding', traits: {"smithy.api#documentation" => "<p>The data binding matched by the filter criteria. Contains details about specific data\n      binding values used by the computation models.</p>", "smithy.api#required" => {}}))
    ComputationModelDataBindingUsageSummary.type = Types::ComputationModelDataBindingUsageSummary
    ComputationModelDataBindingValue.add_member(:asset_model_property, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelPropertyBindingValue, location_name: 'assetModelProperty', traits: {"smithy.api#documentation" => "<p>Specifies an asset model property data binding value.</p>"}))
    ComputationModelDataBindingValue.add_member(:asset_property, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyBindingValue, location_name: 'assetProperty', traits: {"smithy.api#documentation" => "<p>The asset property value used for computation model data binding.</p>"}))
    ComputationModelDataBindingValue.add_member(:list, Smithy::Schema::Shapes::ShapeRef.new(shape: BindingValueList, location_name: 'list', traits: {"smithy.api#documentation" => "<p>Specifies a list of data binding value.</p>"}))
    ComputationModelDataBindingValue.type = Types::ComputationModelDataBindingValue
    ComputationModelExecutionSummary.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelExecutionSummaryKey)
    ComputationModelExecutionSummary.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelExecutionSummaryValue)
    ComputationModelIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ID)
    ComputationModelResolveToResourceSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelResolveToResourceSummary)
    ComputationModelResolveToResourceSummary.add_member(:resolve_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveTo, location_name: 'resolveTo'))
    ComputationModelResolveToResourceSummary.type = Types::ComputationModelResolveToResourceSummary
    ComputationModelState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ComputationModelState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ComputationModelState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ComputationModelState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ComputationModelState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ComputationModelStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The current state of the computation model.</p>", "smithy.api#required" => {}}))
    ComputationModelStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'error'))
    ComputationModelStatus.type = Types::ComputationModelStatus
    ComputationModelSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelSummary)
    ComputationModelSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the computation model.</p>", "smithy.api#required" => {}}))
    ComputationModelSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the computation model, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:computation-model/${ComputationModelId}</code>\n         </p>", "smithy.api#required" => {}}))
    ComputationModelSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the computation model.</p>", "smithy.api#required" => {}}))
    ComputationModelSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the computation model.</p>"}))
    ComputationModelSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the computation model.</p>", "smithy.api#required" => {}}))
    ComputationModelSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The model creation date, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    ComputationModelSummary.add_member(:last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateDate', traits: {"smithy.api#documentation" => "<p>The time the model was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    ComputationModelSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the computation model.</p>", "smithy.api#required" => {}}))
    ComputationModelSummary.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the computation model.</p>", "smithy.api#required" => {}}))
    ComputationModelSummary.type = Types::ComputationModelSummary
    ComputationModelType.add_member(:anomaly_detection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANOMALY_DETECTION', traits: {"smithy.api#enumValue" => "ANOMALY_DETECTION"}))
    ComputeLocation.add_member(:edge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EDGE', traits: {"smithy.api#enumValue" => "EDGE"}))
    ComputeLocation.add_member(:cloud, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUD', traits: {"smithy.api#enumValue" => "CLOUD"}))
    ConfigurationErrorDetails.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    ConfigurationErrorDetails.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message.</p>", "smithy.api#required" => {}}))
    ConfigurationErrorDetails.type = Types::ConfigurationErrorDetails
    ConfigurationState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ConfigurationState.add_member(:update_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    ConfigurationState.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ConfigurationStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The current state of the configuration.</p>", "smithy.api#required" => {}}))
    ConfigurationStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationErrorDetails, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Contains associated error information, if any.</p>"}))
    ConfigurationStatus.type = Types::ConfigurationStatus
    ConflictingOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictingOperationException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that conflicts with this operation.</p>", "smithy.api#required" => {}}))
    ConflictingOperationException.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that conflicts with this operation.</p>", "smithy.api#required" => {}}))
    ConflictingOperationException.type = Types::ConflictingOperationException
    Content.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The cited text from the data source.</p>"}))
    Content.type = Types::Content
    CoreDeviceOperatingSystem.add_member(:linux_aarch64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINUX_AARCH64', traits: {"smithy.api#enumValue" => "LINUX_AARCH64"}))
    CoreDeviceOperatingSystem.add_member(:linux_amd64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINUX_AMD64', traits: {"smithy.api#enumValue" => "LINUX_AMD64"}))
    CoreDeviceOperatingSystem.add_member(:windows_amd64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_AMD64', traits: {"smithy.api#enumValue" => "WINDOWS_AMD64"}))
    CreateAccessPolicyRequest.add_member(:access_policy_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'accessPolicyIdentity', traits: {"smithy.api#documentation" => "<p>The identity for this access policy. Choose an IAM Identity Center user, an IAM Identity Center group, or an IAM user.</p>", "smithy.api#required" => {}}))
    CreateAccessPolicyRequest.add_member(:access_policy_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'accessPolicyResource', traits: {"smithy.api#documentation" => "<p>The IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.</p>", "smithy.api#required" => {}}))
    CreateAccessPolicyRequest.add_member(:access_policy_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: 'accessPolicyPermission', traits: {"smithy.api#documentation" => "<p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>", "smithy.api#required" => {}}))
    CreateAccessPolicyRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAccessPolicyRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the access policy. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your\n        IoT SiteWise resources</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CreateAccessPolicyRequest.type = Types::CreateAccessPolicyRequest
    CreateAccessPolicyResponse.add_member(:access_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'accessPolicyId', traits: {"smithy.api#documentation" => "<p>The ID of the access policy.</p>", "smithy.api#required" => {}}))
    CreateAccessPolicyResponse.add_member(:access_policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'accessPolicyArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the access policy, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy/${AccessPolicyId}</code>\n         </p>", "smithy.api#required" => {}}))
    CreateAccessPolicyResponse.type = Types::CreateAccessPolicyResponse
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model this composite model is a part of.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'assetModelCompositeModelExternalId', traits: {"smithy.api#documentation" => "<p>An external ID to assign to the composite model.</p>\n         <p>If the composite model is a derived composite model, or one nested inside a component\n      model, you can only set the external ID using <code>UpdateAssetModelCompositeModel</code> and\n      specifying the derived ID of the model or property from the created model it's a part\n      of.</p>"}))
    CreateAssetModelCompositeModelRequest.add_member(:parent_asset_model_composite_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'parentAssetModelCompositeModelId', traits: {"smithy.api#documentation" => "<p>The ID of the parent composite model in this asset model relationship.</p>"}))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelCompositeModelId', traits: {"smithy.api#documentation" => "<p>The ID of the composite model. IoT SiteWise automatically generates a unique ID for you, so this\n      parameter is never required. However, if you prefer to supply your own ID instead, you can\n      specify it here in UUID format. If you specify your own ID, it must be globally unique.</p>"}))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'assetModelCompositeModelDescription', traits: {"smithy.api#documentation" => "<p>A description for the composite model.</p>"}))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetModelCompositeModelName', traits: {"smithy.api#documentation" => "<p>A unique name for the composite model.</p>", "smithy.api#required" => {}}))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetModelCompositeModelType', traits: {"smithy.api#documentation" => "<p>The composite model type. Valid values are <code>AWS/ALARM</code>, <code>CUSTOM</code>, or <code> AWS/L4E_ANOMALY</code>.</p>", "smithy.api#required" => {}}))
    CreateAssetModelCompositeModelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAssetModelCompositeModelRequest.add_member(:composed_asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'composedAssetModelId', traits: {"smithy.api#documentation" => "<p>The ID of a component model which is reused to create this composite model.</p>"}))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelPropertyDefinitions, location_name: 'assetModelCompositeModelProperties', traits: {"smithy.api#documentation" => "<p>The property definitions of the composite model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html#inline-composite-models\">\n        Inline custom composite models</a> in the <i>IoT SiteWise User Guide</i>.</p>\n         <p>You can specify up to 200 properties per composite model. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CreateAssetModelCompositeModelRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: ETag, location_name: 'ifMatch', traits: {"smithy.api#documentation" => "<p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   \n    The create request is rejected if the tag does not match the latest or active version's current entity tag.\n    See <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html\">Optimistic locking for asset model writes</a>\n    in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    CreateAssetModelCompositeModelRequest.add_member(:if_none_match, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectAll, location_name: 'ifNoneMatch', traits: {"smithy.api#documentation" => "<p>Accepts <b>*</b> to reject the create request if an active version \n    (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>", "smithy.api#httpHeader" => "If-None-Match"}))
    CreateAssetModelCompositeModelRequest.add_member(:match_for_version_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelVersionType, location_name: 'matchForVersionType', traits: {"smithy.api#documentation" => "<p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in \n  conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the create operation.</p>", "smithy.api#httpHeader" => "Match-For-Version-Type"}))
    CreateAssetModelCompositeModelRequest.type = Types::CreateAssetModelCompositeModelRequest
    CreateAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelCompositeModelId', traits: {"smithy.api#documentation" => "<p>The ID of the composed asset model. You can use this ID when you call other IoT SiteWise\n      APIs.</p>", "smithy.api#required" => {}}))
    CreateAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_path, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelCompositeModelPath, location_name: 'assetModelCompositeModelPath', traits: {"smithy.api#documentation" => "<p>The path to the composite model listing the parent composite models.</p>", "smithy.api#required" => {}}))
    CreateAssetModelCompositeModelResponse.add_member(:asset_model_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelStatus, location_name: 'assetModelStatus', traits: {"smithy.api#required" => {}}))
    CreateAssetModelCompositeModelResponse.type = Types::CreateAssetModelCompositeModelResponse
    CreateAssetModelRequest.add_member(:asset_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetModelName', traits: {"smithy.api#documentation" => "<p>A unique name for the asset model.</p>", "smithy.api#required" => {}}))
    CreateAssetModelRequest.add_member(:asset_model_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelType, location_name: 'assetModelType', traits: {"smithy.api#documentation" => "<p>The type of asset model.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>ASSET_MODEL</b> – (default) An asset model that you can use to create assets.\n   Can't be included as a component in another asset model.</p>\n            </li>\n            <li>\n               <p>\n                  <b>COMPONENT_MODEL</b> – A reusable component that you can include in the composite\n   models of other asset models. You can't create assets directly from this type of asset model. </p>\n            </li>\n         </ul>"}))
    CreateAssetModelRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID to assign to the asset model, if desired. IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.\n    However, if you prefer to supply your own ID instead, you can specify it here in UUID format.\n    If you specify your own ID, it must be globally unique.</p>"}))
    CreateAssetModelRequest.add_member(:asset_model_external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'assetModelExternalId', traits: {"smithy.api#documentation" => "<p>An external ID to assign to the asset model. The external ID must be unique within your Amazon Web Services account. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CreateAssetModelRequest.add_member(:asset_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'assetModelDescription', traits: {"smithy.api#documentation" => "<p>A description for the asset model.</p>"}))
    CreateAssetModelRequest.add_member(:asset_model_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelPropertyDefinitions, location_name: 'assetModelProperties', traits: {"smithy.api#documentation" => "<p>The property definitions of the asset model. For more information, see\n      <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html\">Asset properties</a> in the <i>IoT SiteWise User Guide</i>.</p>\n         <p>You can specify up to 200 properties per asset model. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CreateAssetModelRequest.add_member(:asset_model_hierarchies, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelHierarchyDefinitions, location_name: 'assetModelHierarchies', traits: {"smithy.api#documentation" => "<p>The hierarchy definitions of the asset model. Each hierarchy specifies an asset model\n      whose assets can be children of any other assets created from this asset model. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>\n         <p>You can specify up to 10 hierarchies per asset model. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CreateAssetModelRequest.add_member(:asset_model_composite_models, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelCompositeModelDefinitions, location_name: 'assetModelCompositeModels', traits: {"smithy.api#documentation" => "<p>The composite models that are part of this asset model. It groups properties\n  (such as attributes, measurements, transforms, and metrics) and child composite models that\n      model parts of your industrial equipment. Each composite model has a type that defines the\n      properties that the composite model supports. Use composite models to define alarms on this asset model.</p>\n         <note>\n            <p>When creating custom composite models, you need to use <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html\">CreateAssetModelCompositeModel</a>. For more information,\n      see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-custom-composite-models.html\">Creating custom composite models (Components)</a> in the\n      <i>IoT SiteWise User Guide</i>.</p>\n         </note>"}))
    CreateAssetModelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAssetModelRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the asset model. For more information,\n      see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your IoT SiteWise\n        resources</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CreateAssetModelRequest.type = Types::CreateAssetModelRequest
    CreateAssetModelResponse.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model, in UUID format. You can use this ID when you call other IoT SiteWise API operations.</p>", "smithy.api#required" => {}}))
    CreateAssetModelResponse.add_member(:asset_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'assetModelArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset model, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>\n         </p>", "smithy.api#required" => {}}))
    CreateAssetModelResponse.add_member(:asset_model_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelStatus, location_name: 'assetModelStatus', traits: {"smithy.api#documentation" => "<p>The status of the asset model, which contains a state (<code>CREATING</code> after\n      successfully calling this operation) and any error message.</p>", "smithy.api#required" => {}}))
    CreateAssetModelResponse.type = Types::CreateAssetModelResponse
    CreateAssetRequest.add_member(:asset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetName', traits: {"smithy.api#documentation" => "<p>A friendly name for the asset.</p>", "smithy.api#required" => {}}))
    CreateAssetRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model from which to create the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateAssetRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID to assign to the asset, if desired. IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.\n    However, if you prefer to supply your own ID instead, you can specify it here in UUID format.\n    If you specify your own ID, it must be globally unique.</p>"}))
    CreateAssetRequest.add_member(:asset_external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'assetExternalId', traits: {"smithy.api#documentation" => "<p>An external ID to assign to the asset. The external ID must be unique within your Amazon Web Services account. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CreateAssetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAssetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the asset. For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your IoT SiteWise\n        resources</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CreateAssetRequest.add_member(:asset_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'assetDescription', traits: {"smithy.api#documentation" => "<p>A description for the asset.</p>"}))
    CreateAssetRequest.type = Types::CreateAssetRequest
    CreateAssetResponse.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset, in UUID format. This ID uniquely identifies the asset within IoT SiteWise and can be used with other\n      IoT SiteWise API operations.</p>", "smithy.api#required" => {}}))
    CreateAssetResponse.add_member(:asset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'assetArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>\n         </p>", "smithy.api#required" => {}}))
    CreateAssetResponse.add_member(:asset_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetStatus, location_name: 'assetStatus', traits: {"smithy.api#documentation" => "<p>The status of the asset, which contains a state (<code>CREATING</code> after successfully\n      calling this operation) and any error message.</p>", "smithy.api#required" => {}}))
    CreateAssetResponse.type = Types::CreateAssetResponse
    CreateBulkImportJobRequest.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The unique name that helps identify the job request.</p>", "smithy.api#required" => {}}))
    CreateBulkImportJobRequest.add_member(:job_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'jobRoleArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the IAM role that allows IoT SiteWise to read Amazon S3 data.</p>", "smithy.api#required" => {}}))
    CreateBulkImportJobRequest.add_member(:files, Smithy::Schema::Shapes::ShapeRef.new(shape: Files, location_name: 'files', traits: {"smithy.api#documentation" => "<p>The files in the specified Amazon S3 bucket that contain your data.</p>", "smithy.api#required" => {}}))
    CreateBulkImportJobRequest.add_member(:error_report_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReportLocation, location_name: 'errorReportLocation', traits: {"smithy.api#documentation" => "<p>The Amazon S3 destination where errors associated with the job creation request are saved.</p>", "smithy.api#required" => {}}))
    CreateBulkImportJobRequest.add_member(:job_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: JobConfiguration, location_name: 'jobConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of a job, such as the file format used to save data in Amazon S3.</p>", "smithy.api#required" => {}}))
    CreateBulkImportJobRequest.add_member(:adaptive_ingestion, Smithy::Schema::Shapes::ShapeRef.new(shape: AdaptiveIngestion, location_name: 'adaptiveIngestion', traits: {"smithy.api#documentation" => "<p>If set to true, ingest new data into IoT SiteWise storage. Measurements with notifications, metrics and transforms are \n   computed. If set to false, historical data is ingested into IoT SiteWise as is.</p>"}))
    CreateBulkImportJobRequest.add_member(:delete_files_after_import, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFilesAfterImport, location_name: 'deleteFilesAfterImport', traits: {"smithy.api#documentation" => "<p>If set to true, your data files is deleted from S3, after ingestion into IoT SiteWise storage.</p>"}))
    CreateBulkImportJobRequest.type = Types::CreateBulkImportJobRequest
    CreateBulkImportJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The ID of the job.</p>", "smithy.api#required" => {}}))
    CreateBulkImportJobResponse.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The unique name that helps identify the job request.</p>", "smithy.api#required" => {}}))
    CreateBulkImportJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus', traits: {"smithy.api#documentation" => "<p>The status of the bulk import job can be one of following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code> – IoT SiteWise is waiting for the current bulk import job to finish.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CANCELLED</code> – The bulk import job has been canceled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RUNNING</code> – IoT SiteWise is processing your request to import your data from Amazon S3.</p>\n            </li>\n            <li>\n               <p>\n                  <code>COMPLETED</code> – IoT SiteWise successfully completed your request to import data from Amazon S3.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – IoT SiteWise couldn't process your request to import data from Amazon S3.\n        You can use logs saved in the specified error report location in Amazon S3 to troubleshoot issues.</p>\n            </li>\n            <li>\n               <p>\n                  <code>COMPLETED_WITH_FAILURES</code> – IoT SiteWise completed your request to import data from Amazon S3 with errors.\n        You can use logs saved in the specified error report location in Amazon S3 to troubleshoot issues.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateBulkImportJobResponse.type = Types::CreateBulkImportJobResponse
    CreateComputationModelRequest.add_member(:computation_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedName, location_name: 'computationModelName', traits: {"smithy.api#documentation" => "<p>The name of the computation model.</p>", "smithy.api#required" => {}}))
    CreateComputationModelRequest.add_member(:computation_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedDescription, location_name: 'computationModelDescription', traits: {"smithy.api#documentation" => "<p>The description of the computation model.</p>"}))
    CreateComputationModelRequest.add_member(:computation_model_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelConfiguration, location_name: 'computationModelConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for the computation model.</p>", "smithy.api#required" => {}}))
    CreateComputationModelRequest.add_member(:computation_model_data_binding, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelDataBinding, location_name: 'computationModelDataBinding', traits: {"smithy.api#documentation" => "<p>The data binding for the computation model. Key is a variable name defined in configuration. \n  Value is a <code>ComputationModelDataBindingValue</code> referenced by the variable.</p>", "smithy.api#required" => {}}))
    CreateComputationModelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateComputationModelRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the asset. For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your IoT SiteWise\n        resources</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CreateComputationModelRequest.type = Types::CreateComputationModelRequest
    CreateComputationModelResponse.add_member(:computation_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'computationModelId', traits: {"smithy.api#documentation" => "<p>The ID of the computation model.</p>", "smithy.api#required" => {}}))
    CreateComputationModelResponse.add_member(:computation_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'computationModelArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the computation model, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:computation-model/${ComputationModelId}</code>\n         </p>", "smithy.api#required" => {}}))
    CreateComputationModelResponse.add_member(:computation_model_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelStatus, location_name: 'computationModelStatus', traits: {"smithy.api#documentation" => "<p>The status of the computation model, containing a state (CREATING after successfully\n      calling this operation) and any error messages.</p>", "smithy.api#required" => {}}))
    CreateComputationModelResponse.type = Types::CreateComputationModelResponse
    CreateDashboardRequest.add_member(:project_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'projectId', traits: {"smithy.api#documentation" => "<p>The ID of the project in which to create the dashboard.</p>", "smithy.api#required" => {}}))
    CreateDashboardRequest.add_member(:dashboard_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'dashboardName', traits: {"smithy.api#documentation" => "<p>A friendly name for the dashboard.</p>", "smithy.api#required" => {}}))
    CreateDashboardRequest.add_member(:dashboard_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'dashboardDescription', traits: {"smithy.api#documentation" => "<p>A description for the dashboard.</p>"}))
    CreateDashboardRequest.add_member(:dashboard_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardDefinition, location_name: 'dashboardDefinition', traits: {"smithy.api#documentation" => "<p>The dashboard definition specified in a JSON literal.</p>\n         <ul>\n            <li>\n               <p>IoT SiteWise Monitor (Classic) see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html\">Create dashboards (CLI)</a>\n               </p>\n            </li>\n            <li>\n               <p>IoT SiteWise Monitor (AI-aware) see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-ai-dashboard-cli.html\">Create dashboards (CLI)</a>\n               </p>\n            </li>\n         </ul>\n         <p>in the <i>IoT SiteWise User Guide</i>\n         </p>", "smithy.api#required" => {}}))
    CreateDashboardRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateDashboardRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the dashboard. For more information,\n      see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your IoT SiteWise\n        resources</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CreateDashboardRequest.type = Types::CreateDashboardRequest
    CreateDashboardResponse.add_member(:dashboard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'dashboardId', traits: {"smithy.api#documentation" => "<p>The ID of the dashboard.</p>", "smithy.api#required" => {}}))
    CreateDashboardResponse.add_member(:dashboard_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'dashboardArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the dashboard, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard/${DashboardId}</code>\n         </p>", "smithy.api#required" => {}}))
    CreateDashboardResponse.type = Types::CreateDashboardResponse
    CreateDatasetRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The ID of the dataset.</p>"}))
    CreateDatasetRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedName, location_name: 'datasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:dataset_description, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedDescription, location_name: 'datasetDescription', traits: {"smithy.api#documentation" => "<p>A description about the dataset, and its functionality.</p>"}))
    CreateDatasetRequest.add_member(:dataset_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSource, location_name: 'datasetSource', traits: {"smithy.api#documentation" => "<p>The data source for the dataset.</p>", "smithy.api#required" => {}}))
    CreateDatasetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateDatasetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the access policy. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your\n        IoT SiteWise resources</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CreateDatasetRequest.type = Types::CreateDatasetRequest
    CreateDatasetResponse.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The ID of the dataset.</p>", "smithy.api#required" => {}}))
    CreateDatasetResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html\">ARN</a> of the dataset. \n  The format is <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}</code>.</p>", "smithy.api#required" => {}}))
    CreateDatasetResponse.add_member(:dataset_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'datasetStatus', traits: {"smithy.api#documentation" => "<p>The status of the dataset. This contains the state and any error messages. \n  State is <code>CREATING</code> after a successfull call to this API, and any associated error message. The state is \n  <code>ACTIVE</code> when ready to use.</p>", "smithy.api#required" => {}}))
    CreateDatasetResponse.type = Types::CreateDatasetResponse
    CreateGatewayRequest.add_member(:gateway_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayName, location_name: 'gatewayName', traits: {"smithy.api#documentation" => "<p>A unique name for the gateway.</p>", "smithy.api#required" => {}}))
    CreateGatewayRequest.add_member(:gateway_platform, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayPlatform, location_name: 'gatewayPlatform', traits: {"smithy.api#documentation" => "<p>The gateway's platform. You can only specify one platform in a gateway.</p>", "smithy.api#required" => {}}))
    CreateGatewayRequest.add_member(:gateway_version, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayVersion, location_name: 'gatewayVersion', traits: {"smithy.api#documentation" => "<p>The version of the gateway to create. Specify <code>3</code> to create an MQTT-enabled, V3\n      gateway and <code>2</code> to create a Classic streams, V2 gateway. If not specified, the\n      default is <code>2</code> (Classic streams, V2 gateway).</p>\n         <note>\n            <p>When creating a V3 gateway (<code>gatewayVersion=3</code>) with the\n          <code>GreengrassV2</code> platform, you must also specify the\n          <code>coreDeviceOperatingSystem</code> parameter.</p>\n         </note>\n         <p> We recommend creating an MQTT-enabled gateway for self-hosted gateways and Siemens\n      Industrial Edge gateways. For more information on gateway versions, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateways.html\">Use Amazon Web Services IoT SiteWise Edge Edge\n        gateways</a>.</p>"}))
    CreateGatewayRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the gateway. For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your IoT SiteWise\n        resources</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CreateGatewayRequest.type = Types::CreateGatewayRequest
    CreateGatewayResponse.add_member(:gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'gatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the gateway device. You can use this ID when you call other IoT SiteWise API operations.</p>", "smithy.api#required" => {}}))
    CreateGatewayResponse.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'gatewayArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the gateway, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:gateway/${GatewayId}</code>\n         </p>", "smithy.api#required" => {}}))
    CreateGatewayResponse.type = Types::CreateGatewayResponse
    CreatePortalRequest.add_member(:portal_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'portalName', traits: {"smithy.api#documentation" => "<p>A friendly name for the portal.</p>", "smithy.api#required" => {}}))
    CreatePortalRequest.add_member(:portal_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'portalDescription', traits: {"smithy.api#documentation" => "<p>A description for the portal.</p>"}))
    CreatePortalRequest.add_member(:portal_contact_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'portalContactEmail', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services administrator's contact email address.</p>", "smithy.api#required" => {}}))
    CreatePortalRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    CreatePortalRequest.add_member(:portal_logo_image_file, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFile, location_name: 'portalLogoImageFile', traits: {"smithy.api#documentation" => "<p>A logo image to display in the portal. Upload a square, high-resolution image. The\n      image is displayed on a dark background.</p>"}))
    CreatePortalRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of a service role that allows the portal's users to access your IoT SiteWise\n      resources on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html\">Using service roles for IoT SiteWise Monitor</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#required" => {}}))
    CreatePortalRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the portal. For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your IoT SiteWise\n        resources</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CreatePortalRequest.add_member(:portal_auth_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthMode, location_name: 'portalAuthMode', traits: {"smithy.api#documentation" => "<p>The service to use to authenticate users to the portal. Choose from the following\n      options:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SSO</code> – The portal uses IAM Identity Center to authenticate users and manage\n          user permissions. Before you can create a portal that uses IAM Identity Center, you must enable IAM Identity Center.\n          For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-get-started.html#mon-gs-sso\">Enabling IAM Identity Center</a> in the\n            <i>IoT SiteWise User Guide</i>. This option is only available in Amazon Web Services Regions other than\n          the China Regions.</p>\n            </li>\n            <li>\n               <p>\n                  <code>IAM</code> – The portal uses Identity and Access Management to authenticate users and manage\n          user permissions.</p>\n            </li>\n         </ul>\n         <p>You can't change this value after you create a portal.</p>\n         <p>Default: <code>SSO</code>\n         </p>"}))
    CreatePortalRequest.add_member(:notification_sender_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'notificationSenderEmail', traits: {"smithy.api#documentation" => "<p>The email address that sends alarm notifications.</p>\n         <important>\n            <p>If you use the <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html\">IoT Events managed Lambda\n          function</a> to manage your emails, you must <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html\">verify the sender email\n          address in Amazon SES</a>.</p>\n         </important>"}))
    CreatePortalRequest.add_member(:alarms, Smithy::Schema::Shapes::ShapeRef.new(shape: Alarms, location_name: 'alarms', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.\n  You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range.\n  For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html\">Monitoring with alarms</a> in the <i>IoT SiteWise Application Guide</i>.</p>"}))
    CreatePortalRequest.add_member(:portal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalType, location_name: 'portalType', traits: {"smithy.api#documentation" => "<p>Define the type of portal. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>"}))
    CreatePortalRequest.add_member(:portal_type_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalTypeConfiguration, location_name: 'portalTypeConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration entry associated with the specific portal type. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>"}))
    CreatePortalRequest.type = Types::CreatePortalRequest
    CreatePortalResponse.add_member(:portal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'portalId', traits: {"smithy.api#documentation" => "<p>The ID of the created portal.</p>", "smithy.api#required" => {}}))
    CreatePortalResponse.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the portal, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:portal/${PortalId}</code>\n         </p>", "smithy.api#required" => {}}))
    CreatePortalResponse.add_member(:portal_start_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'portalStartUrl', traits: {"smithy.api#documentation" => "<p>The URL for the IoT SiteWise Monitor portal. You can use this URL to access portals that\n      use IAM Identity Center for authentication. For portals that use IAM for authentication, you must use the\n      IoT SiteWise console to get a URL that you can use to access the portal.</p>", "smithy.api#required" => {}}))
    CreatePortalResponse.add_member(:portal_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalStatus, location_name: 'portalStatus', traits: {"smithy.api#documentation" => "<p>The status of the portal, which contains a state (<code>CREATING</code> after successfully\n      calling this operation) and any error message.</p>", "smithy.api#required" => {}}))
    CreatePortalResponse.add_member(:sso_application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SSOApplicationId, location_name: 'ssoApplicationId', traits: {"smithy.api#documentation" => "<p>The associated IAM Identity Center application ID, if the portal uses IAM Identity Center.</p>", "smithy.api#required" => {}}))
    CreatePortalResponse.type = Types::CreatePortalResponse
    CreateProjectRequest.add_member(:portal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'portalId', traits: {"smithy.api#documentation" => "<p>The ID of the portal in which to create the project.</p>", "smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>A friendly name for the project.</p>", "smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:project_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'projectDescription', traits: {"smithy.api#documentation" => "<p>A description for the project.</p>"}))
    CreateProjectRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateProjectRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the project. For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your IoT SiteWise\n        resources</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    CreateProjectRequest.type = Types::CreateProjectRequest
    CreateProjectResponse.add_member(:project_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'projectId', traits: {"smithy.api#documentation" => "<p>The ID of the project.</p>", "smithy.api#required" => {}}))
    CreateProjectResponse.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'projectArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the project, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:project/${ProjectId}</code>\n         </p>", "smithy.api#required" => {}}))
    CreateProjectResponse.type = Types::CreateProjectResponse
    Csv.add_member(:column_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnNames, location_name: 'columnNames', traits: {"smithy.api#documentation" => "<p>The column names specified in the .csv file.</p>", "smithy.api#required" => {}}))
    Csv.type = Types::Csv
    CustomerManagedS3Storage.add_member(:s3_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 's3ResourceArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the Amazon S3 object. For more information about how to find the ARN for an\n      Amazon S3 object, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-arn-format.html\">Amazon S3 resources</a> in the\n        <i>Amazon Simple Storage Service User Guide</i>.</p>", "smithy.api#required" => {}}))
    CustomerManagedS3Storage.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the Identity and Access Management role that allows IoT SiteWise to send data to Amazon S3.</p>", "smithy.api#required" => {}}))
    CustomerManagedS3Storage.type = Types::CustomerManagedS3Storage
    DashboardSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardSummary)
    DashboardSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the dashboard.</p>", "smithy.api#required" => {}}))
    DashboardSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the dashboard</p>", "smithy.api#required" => {}}))
    DashboardSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The dashboard's description.</p>"}))
    DashboardSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the dashboard was created, in Unix epoch time.</p>"}))
    DashboardSummary.add_member(:last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the dashboard was last updated, in Unix epoch time.</p>"}))
    DashboardSummary.type = Types::DashboardSummary
    DataBindingValue.add_member(:asset_model_property, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelPropertyBindingValue, location_name: 'assetModelProperty'))
    DataBindingValue.add_member(:asset_property, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyBindingValue, location_name: 'assetProperty', traits: {"smithy.api#documentation" => "<p>The asset property value used in the data binding.</p>"}))
    DataBindingValue.type = Types::DataBindingValue
    DataBindingValueFilter.add_member(:asset, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetBindingValueFilter, location_name: 'asset', traits: {"smithy.api#documentation" => "<p>Filter criteria for matching data bindings based on a specific asset. Used to list all\n      data bindings referencing a particular asset or its properties.</p>"}))
    DataBindingValueFilter.add_member(:asset_model, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelBindingValueFilter, location_name: 'assetModel', traits: {"smithy.api#documentation" => "<p>Filter criteria for matching data bindings based on a specific asset model. Used to list\n      all data bindings referencing a particular asset model or its properties.</p>"}))
    DataBindingValueFilter.add_member(:asset_property, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyBindingValueFilter, location_name: 'assetProperty', traits: {"smithy.api#documentation" => "<p>Filter criteria for matching data bindings based on a specific asset property. Used to\n      list all data bindings referencing a particular property of an asset.</p>"}))
    DataBindingValueFilter.add_member(:asset_model_property, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelPropertyBindingValueFilter, location_name: 'assetModelProperty', traits: {"smithy.api#documentation" => "<p>Filter criteria for matching data bindings based on a specific asset model property. Used\n      to list all data bindings referencing a particular property of an asset model.</p>"}))
    DataBindingValueFilter.type = Types::DataBindingValueFilter
    DataSetReference.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html\">ARN</a> of the dataset. \n  The format is <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}</code>.</p>"}))
    DataSetReference.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The data source for the dataset.</p>"}))
    DataSetReference.type = Types::DataSetReference
    DatasetSource.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSourceType, location_name: 'sourceType', traits: {"smithy.api#documentation" => "<p>The type of data source for the dataset.</p>", "smithy.api#required" => {}}))
    DatasetSource.add_member(:source_format, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSourceFormat, location_name: 'sourceFormat', traits: {"smithy.api#documentation" => "<p>The format of the dataset source associated with the dataset.</p>", "smithy.api#required" => {}}))
    DatasetSource.add_member(:source_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDetail, location_name: 'sourceDetail', traits: {"smithy.api#documentation" => "<p>The details of the dataset source associated with the dataset.</p>"}))
    DatasetSource.type = Types::DatasetSource
    DatasetSourceFormat.add_member(:knowledge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KNOWLEDGE_BASE', traits: {"smithy.api#enumValue" => "KNOWLEDGE_BASE"}))
    DatasetSourceType.add_member(:kendra, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KENDRA', traits: {"smithy.api#enumValue" => "KENDRA"}))
    DatasetState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    DatasetState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DatasetState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    DatasetState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    DatasetState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DatasetStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The current status of the dataset.</p>", "smithy.api#required" => {}}))
    DatasetStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'error'))
    DatasetStatus.type = Types::DatasetStatus
    DatasetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSummary)
    DatasetSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the dataset.</p>", "smithy.api#required" => {}}))
    DatasetSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html\">ARN</a> of the dataset. \n  The format is <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}</code>.</p>", "smithy.api#required" => {}}))
    DatasetSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>", "smithy.api#required" => {}}))
    DatasetSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description about the dataset, and its functionality.</p>", "smithy.api#required" => {}}))
    DatasetSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The dataset creation date, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DatasetSummary.add_member(:last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the dataset was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DatasetSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the dataset. This contains the state and any error messages. The state is \n  <code>ACTIVE</code> when ready to use.</p>", "smithy.api#required" => {}}))
    DatasetSummary.type = Types::DatasetSummary
    Datum.add_member(:scalar_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalarValue, location_name: 'scalarValue', traits: {"smithy.api#documentation" => "<p>Indicates if the data point is a scalar value such as integer, string, double, or Boolean.\n    </p>"}))
    Datum.add_member(:array_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DatumList, location_name: 'arrayValue', traits: {"smithy.api#documentation" => "<p>Indicates if the data point is an array. </p>"}))
    Datum.add_member(:row_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Row, location_name: 'rowValue', traits: {"smithy.api#documentation" => "<p>Indicates if the data point is a row.</p>"}))
    Datum.add_member(:null_value, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'nullValue', traits: {"smithy.api#documentation" => "<p>Indicates if the data point is null.</p>"}))
    Datum.type = Types::Datum
    DatumList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Datum)
    DeleteAccessPolicyRequest.add_member(:access_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'accessPolicyId', traits: {"smithy.api#documentation" => "<p>The ID of the access policy to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessPolicyRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAccessPolicyRequest.type = Types::DeleteAccessPolicyRequest
    DeleteAccessPolicyResponse.type = Types::DeleteAccessPolicyResponse
    DeleteAssetModelCompositeModelRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model, in UUID format.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelCompositeModelId', traits: {"smithy.api#documentation" => "<p>The ID of a composite model on this asset model.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetModelCompositeModelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAssetModelCompositeModelRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: ETag, location_name: 'ifMatch', traits: {"smithy.api#documentation" => "<p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   \n    The delete request is rejected if the tag does not match the latest or active version's current entity tag.\n    See <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html\">Optimistic locking for asset model writes</a>\n    in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DeleteAssetModelCompositeModelRequest.add_member(:if_none_match, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectAll, location_name: 'ifNoneMatch', traits: {"smithy.api#documentation" => "<p>Accepts <b>*</b> to reject the delete request if an active version \n    (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>", "smithy.api#httpHeader" => "If-None-Match"}))
    DeleteAssetModelCompositeModelRequest.add_member(:match_for_version_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelVersionType, location_name: 'matchForVersionType', traits: {"smithy.api#documentation" => "<p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in \n  conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the delete operation.</p>", "smithy.api#httpHeader" => "Match-For-Version-Type"}))
    DeleteAssetModelCompositeModelRequest.type = Types::DeleteAssetModelCompositeModelRequest
    DeleteAssetModelCompositeModelResponse.add_member(:asset_model_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelStatus, location_name: 'assetModelStatus', traits: {"smithy.api#required" => {}}))
    DeleteAssetModelCompositeModelResponse.type = Types::DeleteAssetModelCompositeModelResponse
    DeleteAssetModelInterfaceRelationshipRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model. This can be either the actual ID in UUID format, or else\n      externalId: followed by the external ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetModelInterfaceRelationshipRequest.add_member(:interface_asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'interfaceAssetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the interface asset model. This can be either the actual ID in UUID format, or\n      else externalId: followed by the external ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetModelInterfaceRelationshipRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the\n      request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAssetModelInterfaceRelationshipRequest.type = Types::DeleteAssetModelInterfaceRelationshipRequest
    DeleteAssetModelInterfaceRelationshipResponse.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model.</p>", "smithy.api#required" => {}}))
    DeleteAssetModelInterfaceRelationshipResponse.add_member(:interface_asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'interfaceAssetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the interface asset model.</p>", "smithy.api#required" => {}}))
    DeleteAssetModelInterfaceRelationshipResponse.add_member(:asset_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'assetModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the asset model, which has the following format.\n      <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>\n         </p>", "smithy.api#required" => {}}))
    DeleteAssetModelInterfaceRelationshipResponse.add_member(:asset_model_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelStatus, location_name: 'assetModelStatus', traits: {"smithy.api#required" => {}}))
    DeleteAssetModelInterfaceRelationshipResponse.type = Types::DeleteAssetModelInterfaceRelationshipResponse
    DeleteAssetModelRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model to delete. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetModelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAssetModelRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: ETag, location_name: 'ifMatch', traits: {"smithy.api#documentation" => "<p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   \n    The delete request is rejected if the tag does not match the latest or active version's current entity tag.\n    See <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html\">Optimistic locking for asset model writes</a>\n    in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DeleteAssetModelRequest.add_member(:if_none_match, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectAll, location_name: 'ifNoneMatch', traits: {"smithy.api#documentation" => "<p>Accepts <b>*</b> to reject the delete request if an active version \n    (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>", "smithy.api#httpHeader" => "If-None-Match"}))
    DeleteAssetModelRequest.add_member(:match_for_version_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelVersionType, location_name: 'matchForVersionType', traits: {"smithy.api#documentation" => "<p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in \n  conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the delete operation.</p>", "smithy.api#httpHeader" => "Match-For-Version-Type"}))
    DeleteAssetModelRequest.type = Types::DeleteAssetModelRequest
    DeleteAssetModelResponse.add_member(:asset_model_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelStatus, location_name: 'assetModelStatus', traits: {"smithy.api#documentation" => "<p>The status of the asset model, which contains a state (<code>DELETING</code> after\n      successfully calling this operation) and any error message.</p>", "smithy.api#required" => {}}))
    DeleteAssetModelResponse.type = Types::DeleteAssetModelResponse
    DeleteAssetRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset to delete. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAssetRequest.type = Types::DeleteAssetRequest
    DeleteAssetResponse.add_member(:asset_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetStatus, location_name: 'assetStatus', traits: {"smithy.api#documentation" => "<p>The status of the asset, which contains a state (<code>DELETING</code> after successfully\n      calling this operation) and any error message.</p>", "smithy.api#required" => {}}))
    DeleteAssetResponse.type = Types::DeleteAssetResponse
    DeleteComputationModelRequest.add_member(:computation_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'computationModelId', traits: {"smithy.api#documentation" => "<p>The ID of the computation model.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComputationModelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteComputationModelRequest.type = Types::DeleteComputationModelRequest
    DeleteComputationModelResponse.add_member(:computation_model_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelStatus, location_name: 'computationModelStatus', traits: {"smithy.api#documentation" => "<p>The status of the computation model. It contains a state (DELETING after successfully\n      calling this operation) and any error messages.</p>", "smithy.api#required" => {}}))
    DeleteComputationModelResponse.type = Types::DeleteComputationModelResponse
    DeleteDashboardRequest.add_member(:dashboard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'dashboardId', traits: {"smithy.api#documentation" => "<p>The ID of the dashboard to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDashboardRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteDashboardRequest.type = Types::DeleteDashboardRequest
    DeleteDashboardResponse.type = Types::DeleteDashboardResponse
    DeleteDatasetRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The ID of the dataset.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDatasetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteDatasetRequest.type = Types::DeleteDatasetRequest
    DeleteDatasetResponse.add_member(:dataset_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'datasetStatus', traits: {"smithy.api#documentation" => "<p>The status of the dataset. This contains the state and any error messages. \n  State is <code>DELETING</code> after a successfull call to this API, and any associated error message.</p>", "smithy.api#required" => {}}))
    DeleteDatasetResponse.type = Types::DeleteDatasetResponse
    DeleteGatewayRequest.add_member(:gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'gatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the gateway to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGatewayRequest.type = Types::DeleteGatewayRequest
    DeletePortalRequest.add_member(:portal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'portalId', traits: {"smithy.api#documentation" => "<p>The ID of the portal to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePortalRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeletePortalRequest.type = Types::DeletePortalRequest
    DeletePortalResponse.add_member(:portal_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalStatus, location_name: 'portalStatus', traits: {"smithy.api#documentation" => "<p>The status of the portal, which contains a state (<code>DELETING</code> after successfully\n      calling this operation) and any error message.</p>", "smithy.api#required" => {}}))
    DeletePortalResponse.type = Types::DeletePortalResponse
    DeleteProjectRequest.add_member(:project_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'projectId', traits: {"smithy.api#documentation" => "<p>The ID of the project.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProjectRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteProjectRequest.type = Types::DeleteProjectRequest
    DeleteProjectResponse.type = Types::DeleteProjectResponse
    DeleteTimeSeriesRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the time series.</p>", "smithy.api#httpQuery" => "alias"}))
    DeleteTimeSeriesRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "assetId"}))
    DeleteTimeSeriesRequest.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "propertyId"}))
    DeleteTimeSeriesRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    DeleteTimeSeriesRequest.type = Types::DeleteTimeSeriesRequest
    DescribeAccessPolicyRequest.add_member(:access_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'accessPolicyId', traits: {"smithy.api#documentation" => "<p>The ID of the access policy.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAccessPolicyRequest.type = Types::DescribeAccessPolicyRequest
    DescribeAccessPolicyResponse.add_member(:access_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'accessPolicyId', traits: {"smithy.api#documentation" => "<p>The ID of the access policy.</p>", "smithy.api#required" => {}}))
    DescribeAccessPolicyResponse.add_member(:access_policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'accessPolicyArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the access policy, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy/${AccessPolicyId}</code>\n         </p>", "smithy.api#required" => {}}))
    DescribeAccessPolicyResponse.add_member(:access_policy_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'accessPolicyIdentity', traits: {"smithy.api#documentation" => "<p>The identity (IAM Identity Center user, IAM Identity Center group, or IAM user) to which this access policy\n      applies.</p>", "smithy.api#required" => {}}))
    DescribeAccessPolicyResponse.add_member(:access_policy_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'accessPolicyResource', traits: {"smithy.api#documentation" => "<p>The IoT SiteWise Monitor resource (portal or project) to which this access policy provides\n      access.</p>", "smithy.api#required" => {}}))
    DescribeAccessPolicyResponse.add_member(:access_policy_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: 'accessPolicyPermission', traits: {"smithy.api#documentation" => "<p>The access policy permission. Note that a project <code>ADMINISTRATOR</code> is also known\n      as a project owner.</p>", "smithy.api#required" => {}}))
    DescribeAccessPolicyResponse.add_member(:access_policy_creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'accessPolicyCreationDate', traits: {"smithy.api#documentation" => "<p>The date the access policy was created, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeAccessPolicyResponse.add_member(:access_policy_last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'accessPolicyLastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the access policy was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeAccessPolicyResponse.type = Types::DescribeAccessPolicyResponse
    DescribeActionRequest.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'actionId', traits: {"smithy.api#documentation" => "<p>The ID of the action.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeActionRequest.type = Types::DescribeActionRequest
    DescribeActionResponse.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'actionId', traits: {"smithy.api#documentation" => "<p>The ID of the action.</p>", "smithy.api#required" => {}}))
    DescribeActionResponse.add_member(:target_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResource, location_name: 'targetResource', traits: {"smithy.api#documentation" => "<p>The resource the action will be taken on.</p>", "smithy.api#required" => {}}))
    DescribeActionResponse.add_member(:action_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'actionDefinitionId', traits: {"smithy.api#documentation" => "<p>The ID of the action definition.</p>", "smithy.api#required" => {}}))
    DescribeActionResponse.add_member(:action_payload, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPayload, location_name: 'actionPayload', traits: {"smithy.api#documentation" => "<p>The JSON payload of the action.</p>", "smithy.api#required" => {}}))
    DescribeActionResponse.add_member(:execution_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'executionTime', traits: {"smithy.api#documentation" => "<p>The time the action was executed.</p>", "smithy.api#required" => {}}))
    DescribeActionResponse.add_member(:resolve_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveTo, location_name: 'resolveTo', traits: {"smithy.api#documentation" => "<p>The detailed resource this action resolves to.</p>"}))
    DescribeActionResponse.type = Types::DescribeActionResponse
    DescribeAssetCompositeModelRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetCompositeModelRequest.add_member(:asset_composite_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetCompositeModelId', traits: {"smithy.api#documentation" => "<p>The ID of a composite model on this asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetCompositeModelRequest.type = Types::DescribeAssetCompositeModelRequest
    DescribeAssetCompositeModelResponse.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset, in UUID format. This ID uniquely identifies the asset within IoT SiteWise and can be used with other\n      IoT SiteWise APIs.</p>", "smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetCompositeModelId', traits: {"smithy.api#documentation" => "<p>The ID of a composite model on this asset.</p>", "smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'assetCompositeModelExternalId', traits: {"smithy.api#documentation" => "<p>An external ID to assign to the asset model.</p>\n         <p>If the composite model is a component-based composite model, or one nested inside a\n      component model, you can only set the external ID using\n        <code>UpdateAssetModelCompositeModel</code> and specifying the derived ID of the model or\n      property from the created model it's a part of.</p>"}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_path, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetCompositeModelPath, location_name: 'assetCompositeModelPath', traits: {"smithy.api#documentation" => "<p>The path to the composite model listing the parent composite models.</p>", "smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetCompositeModelName', traits: {"smithy.api#documentation" => "<p>The unique, friendly name for the composite model.</p>", "smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'assetCompositeModelDescription', traits: {"smithy.api#documentation" => "<p>A description for the composite model.</p>", "smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetCompositeModelType', traits: {"smithy.api#documentation" => "<p>The composite model type. Valid values are <code>AWS/ALARM</code>, <code>CUSTOM</code>, or\n        <code> AWS/L4E_ANOMALY</code>.</p>", "smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetProperties, location_name: 'assetCompositeModelProperties', traits: {"smithy.api#documentation" => "<p>The property definitions of the composite model that was used to create the asset.</p>", "smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetCompositeModelSummaries, location_name: 'assetCompositeModelSummaries', traits: {"smithy.api#documentation" => "<p>The list of composite model summaries.</p>", "smithy.api#required" => {}}))
    DescribeAssetCompositeModelResponse.add_member(:action_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionDefinitions, location_name: 'actionDefinitions', traits: {"smithy.api#documentation" => "<p>The available actions for a composite model on this asset.</p>"}))
    DescribeAssetCompositeModelResponse.type = Types::DescribeAssetCompositeModelResponse
    DescribeAssetModelCompositeModelRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelCompositeModelId', traits: {"smithy.api#documentation" => "<p>The ID of a composite model on this asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelRequest.add_member(:asset_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelVersionFilter, location_name: 'assetModelVersion', traits: {"smithy.api#documentation" => "<p>The version alias that specifies the latest or active version of the asset model. \n          The details are returned in the response. The default value is <code>LATEST</code>. See <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html\">\n          Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "assetModelVersion"}))
    DescribeAssetModelCompositeModelRequest.type = Types::DescribeAssetModelCompositeModelRequest
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model, in UUID format.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelCompositeModelId', traits: {"smithy.api#documentation" => "<p>The ID of a composite model on this asset model.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'assetModelCompositeModelExternalId', traits: {"smithy.api#documentation" => "<p>The external ID of a composite model on this asset model.</p>"}))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_path, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelCompositeModelPath, location_name: 'assetModelCompositeModelPath', traits: {"smithy.api#documentation" => "<p>The path to the composite model listing the parent composite models.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetModelCompositeModelName', traits: {"smithy.api#documentation" => "<p>The unique, friendly name for the composite model.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'assetModelCompositeModelDescription', traits: {"smithy.api#documentation" => "<p>The description for the composite model.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetModelCompositeModelType', traits: {"smithy.api#documentation" => "<p>The composite model type. Valid values are <code>AWS/ALARM</code>, <code>CUSTOM</code>, or\n        <code> AWS/L4E_ANOMALY</code>.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelProperties, location_name: 'assetModelCompositeModelProperties', traits: {"smithy.api#documentation" => "<p>The property definitions of the composite model.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:composition_details, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionDetails, location_name: 'compositionDetails', traits: {"smithy.api#documentation" => "<p>Metadata for the composition relationship established by using\n        <code>composedAssetModelId</code> in <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html\">\n               <code>CreateAssetModelCompositeModel</code>\n            </a>. For instance, an array detailing the\n      path of the composition relationship for this composite model.</p>"}))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelCompositeModelSummaries, location_name: 'assetModelCompositeModelSummaries', traits: {"smithy.api#documentation" => "<p>The list of composite model summaries for the composite model.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelCompositeModelResponse.add_member(:action_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionDefinitions, location_name: 'actionDefinitions', traits: {"smithy.api#documentation" => "<p>The available actions for a composite model on this asset model.</p>"}))
    DescribeAssetModelCompositeModelResponse.type = Types::DescribeAssetModelCompositeModelResponse
    DescribeAssetModelInterfaceRelationshipRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model. This can be either the actual ID in UUID format, or else\n      externalId: followed by the external ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetModelInterfaceRelationshipRequest.add_member(:interface_asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'interfaceAssetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the interface asset model. This can be either the actual ID in UUID format, or\n      else externalId: followed by the external ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetModelInterfaceRelationshipRequest.type = Types::DescribeAssetModelInterfaceRelationshipRequest
    DescribeAssetModelInterfaceRelationshipResponse.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelInterfaceRelationshipResponse.add_member(:interface_asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'interfaceAssetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the interface asset model.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelInterfaceRelationshipResponse.add_member(:property_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyMappings, location_name: 'propertyMappings', traits: {"smithy.api#documentation" => "<p>A list of property mappings between the interface asset model and the asset model where\n      the interface is applied.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelInterfaceRelationshipResponse.add_member(:hierarchy_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: HierarchyMappings, location_name: 'hierarchyMappings', traits: {"smithy.api#documentation" => "<p>A list of hierarchy mappings between the interface asset model and the asset model where\n      the interface is applied.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelInterfaceRelationshipResponse.type = Types::DescribeAssetModelInterfaceRelationshipResponse
    DescribeAssetModelRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetModelRequest.add_member(:exclude_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeProperties, location_name: 'excludeProperties', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p> Whether or not to exclude asset model properties from the response. </p>", "smithy.api#httpQuery" => "excludeProperties"}))
    DescribeAssetModelRequest.add_member(:asset_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelVersionFilter, location_name: 'assetModelVersion', traits: {"smithy.api#documentation" => "<p>The version alias that specifies the latest or active version of the asset model. \n          The details are returned in the response. The default value is <code>LATEST</code>. See <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html\">\n          Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "assetModelVersion"}))
    DescribeAssetModelRequest.type = Types::DescribeAssetModelRequest
    DescribeAssetModelResponse.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model, in UUID format.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'assetModelExternalId', traits: {"smithy.api#documentation" => "<p>The external ID of the asset model, if any.</p>"}))
    DescribeAssetModelResponse.add_member(:asset_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'assetModelArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset model, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>\n         </p>", "smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetModelName', traits: {"smithy.api#documentation" => "<p>The name of the asset model.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelType, location_name: 'assetModelType', traits: {"smithy.api#documentation" => "<p>The type of asset model.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>ASSET_MODEL</b> – (default) An asset model that you can use to create assets.\n   Can't be included as a component in another asset model.</p>\n            </li>\n            <li>\n               <p>\n                  <b>COMPONENT_MODEL</b> – A reusable component that you can include in the composite\n   models of other asset models. You can't create assets directly from this type of asset model. </p>\n            </li>\n         </ul>"}))
    DescribeAssetModelResponse.add_member(:asset_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'assetModelDescription', traits: {"smithy.api#documentation" => "<p>The asset model's description.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelProperties, location_name: 'assetModelProperties', traits: {"smithy.api#documentation" => "<p>The list of asset properties for the asset model.</p>\n         <p>This object doesn't include properties that you define in composite models. You can find\n      composite model properties in the <code>assetModelCompositeModels</code> object.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_hierarchies, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelHierarchies, location_name: 'assetModelHierarchies', traits: {"smithy.api#documentation" => "<p>A list of asset model hierarchies that each contain a <code>childAssetModelId</code> and a\n        <code>hierarchyId</code> (named <code>id</code>). A hierarchy specifies allowed parent/child\n      asset relationships for an asset model.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_composite_models, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelCompositeModels, location_name: 'assetModelCompositeModels', traits: {"smithy.api#documentation" => "<p>The list of built-in composite models for the asset model, such as those with those of\n      type <code>AWS/ALARMS</code>.</p>"}))
    DescribeAssetModelResponse.add_member(:asset_model_composite_model_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelCompositeModelSummaries, location_name: 'assetModelCompositeModelSummaries', traits: {"smithy.api#documentation" => "<p>The list of the immediate child custom composite model summaries for the asset\n      model.</p>"}))
    DescribeAssetModelResponse.add_member(:asset_model_creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'assetModelCreationDate', traits: {"smithy.api#documentation" => "<p>The date the asset model was created, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'assetModelLastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the asset model was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelStatus, location_name: 'assetModelStatus', traits: {"smithy.api#documentation" => "<p>The current status of the asset model, which contains a state and any error\n      message.</p>", "smithy.api#required" => {}}))
    DescribeAssetModelResponse.add_member(:asset_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'assetModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the asset model. See <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html\">\n          Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    DescribeAssetModelResponse.add_member(:interface_details, Smithy::Schema::Shapes::ShapeRef.new(shape: InterfaceDetails, location_name: 'interfaceDetails', traits: {"smithy.api#documentation" => "<p>A list of interface details that describe the interfaces implemented by this asset model,\n      including interface asset model IDs and property mappings.</p>"}))
    DescribeAssetModelResponse.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: ETag, location_name: 'eTag', traits: {"smithy.api#documentation" => "<p>The entity tag (ETag) is a hash of the retrieved version of the asset model. It's used to make\n    concurrent updates safely to the resource. See <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html\">Optimistic locking for asset model writes</a>\n    in the <i>IoT SiteWise User Guide</i>.\n    </p>\n         <p>See <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html\"> Optimistic locking for asset\n        model writes</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpHeader" => "ETag"}))
    DescribeAssetModelResponse.type = Types::DescribeAssetModelResponse
    DescribeAssetPropertyRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetPropertyRequest.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetPropertyRequest.type = Types::DescribeAssetPropertyRequest
    DescribeAssetPropertyResponse.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset, in UUID format.</p>", "smithy.api#required" => {}}))
    DescribeAssetPropertyResponse.add_member(:asset_external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'assetExternalId', traits: {"smithy.api#documentation" => "<p>The external ID of the asset. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    DescribeAssetPropertyResponse.add_member(:asset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetName', traits: {"smithy.api#documentation" => "<p>The name of the asset.</p>", "smithy.api#required" => {}}))
    DescribeAssetPropertyResponse.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model, in UUID format.</p>", "smithy.api#required" => {}}))
    DescribeAssetPropertyResponse.add_member(:asset_property, Smithy::Schema::Shapes::ShapeRef.new(shape: Property, location_name: 'assetProperty', traits: {"smithy.api#documentation" => "<p>The asset property's definition, alias, and notification state.</p>\n         <p>This response includes this object for normal asset properties. If you describe an asset\n      property in a composite model, this response includes the asset property information in\n        <code>compositeModel</code>.</p>"}))
    DescribeAssetPropertyResponse.add_member(:composite_model, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositeModelProperty, location_name: 'compositeModel', traits: {"smithy.api#documentation" => "<p>The composite model that declares this asset property, if this asset property exists in a\n      composite model.</p>"}))
    DescribeAssetPropertyResponse.type = Types::DescribeAssetPropertyResponse
    DescribeAssetRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAssetRequest.add_member(:exclude_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeProperties, location_name: 'excludeProperties', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p> Whether or not to exclude asset properties from the response. </p>", "smithy.api#httpQuery" => "excludeProperties"}))
    DescribeAssetRequest.type = Types::DescribeAssetRequest
    DescribeAssetResponse.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset, in UUID format.</p>", "smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'assetExternalId', traits: {"smithy.api#documentation" => "<p>The external ID of the asset, if any.</p>"}))
    DescribeAssetResponse.add_member(:asset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'assetArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>\n         </p>", "smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetName', traits: {"smithy.api#documentation" => "<p>The name of the asset.</p>", "smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model that was used to create the asset.</p>", "smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetProperties, location_name: 'assetProperties', traits: {"smithy.api#documentation" => "<p>The list of asset properties for the asset.</p>\n         <p>This object doesn't include properties that you define in composite models. You can find\n      composite model properties in the <code>assetCompositeModels</code> object.</p>", "smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_hierarchies, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetHierarchies, location_name: 'assetHierarchies', traits: {"smithy.api#documentation" => "<p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>", "smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_composite_models, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetCompositeModels, location_name: 'assetCompositeModels', traits: {"smithy.api#documentation" => "<p>The composite models for the asset.</p>"}))
    DescribeAssetResponse.add_member(:asset_creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'assetCreationDate', traits: {"smithy.api#documentation" => "<p>The date the asset was created, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'assetLastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the asset was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetStatus, location_name: 'assetStatus', traits: {"smithy.api#documentation" => "<p>The current status of the asset, which contains a state and any error message.</p>", "smithy.api#required" => {}}))
    DescribeAssetResponse.add_member(:asset_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'assetDescription', traits: {"smithy.api#documentation" => "<p>A description for the asset.</p>"}))
    DescribeAssetResponse.add_member(:asset_composite_model_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetCompositeModelSummaries, location_name: 'assetCompositeModelSummaries', traits: {"smithy.api#documentation" => "<p>The list of the immediate child custom composite model summaries for the asset.</p>"}))
    DescribeAssetResponse.type = Types::DescribeAssetResponse
    DescribeBulkImportJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The ID of the job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBulkImportJobRequest.type = Types::DescribeBulkImportJobRequest
    DescribeBulkImportJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The ID of the job.</p>", "smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'jobName', traits: {"smithy.api#documentation" => "<p>The unique name that helps identify the job request.</p>", "smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus', traits: {"smithy.api#documentation" => "<p>The status of the bulk import job can be one of following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code> – IoT SiteWise is waiting for the current bulk import job to finish.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CANCELLED</code> – The bulk import job has been canceled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RUNNING</code> – IoT SiteWise is processing your request to import your data from Amazon S3.</p>\n            </li>\n            <li>\n               <p>\n                  <code>COMPLETED</code> – IoT SiteWise successfully completed your request to import data from Amazon S3.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – IoT SiteWise couldn't process your request to import data from Amazon S3.\n        You can use logs saved in the specified error report location in Amazon S3 to troubleshoot issues.</p>\n            </li>\n            <li>\n               <p>\n                  <code>COMPLETED_WITH_FAILURES</code> – IoT SiteWise completed your request to import data from Amazon S3 with errors.\n        You can use logs saved in the specified error report location in Amazon S3 to troubleshoot issues.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:job_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'jobRoleArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the IAM role that allows IoT SiteWise to read Amazon S3 data.</p>", "smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:files, Smithy::Schema::Shapes::ShapeRef.new(shape: Files, location_name: 'files', traits: {"smithy.api#documentation" => "<p>The files in the specified Amazon S3 bucket that contain your data.</p>", "smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:error_report_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReportLocation, location_name: 'errorReportLocation', traits: {"smithy.api#documentation" => "<p>The Amazon S3 destination where errors associated with the job creation request are saved.</p>", "smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:job_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: JobConfiguration, location_name: 'jobConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of a job, such as the file format used to save data in Amazon S3.</p>", "smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:job_creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'jobCreationDate', traits: {"smithy.api#documentation" => "<p>The date the job was created, in Unix epoch TIME.</p>", "smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:job_last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'jobLastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the job was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeBulkImportJobResponse.add_member(:adaptive_ingestion, Smithy::Schema::Shapes::ShapeRef.new(shape: AdaptiveIngestion, location_name: 'adaptiveIngestion', traits: {"smithy.api#documentation" => "<p>If set to true, ingest new data into IoT SiteWise storage. Measurements with notifications, metrics and transforms are \n   computed. If set to false, historical data is ingested into IoT SiteWise as is.</p>"}))
    DescribeBulkImportJobResponse.add_member(:delete_files_after_import, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFilesAfterImport, location_name: 'deleteFilesAfterImport', traits: {"smithy.api#documentation" => "<p>If set to true, your data files is deleted from S3, after ingestion into IoT SiteWise storage.</p>"}))
    DescribeBulkImportJobResponse.type = Types::DescribeBulkImportJobResponse
    DescribeComputationModelExecutionSummaryRequest.add_member(:computation_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'computationModelId', traits: {"smithy.api#documentation" => "<p>The ID of the computation model.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeComputationModelExecutionSummaryRequest.add_member(:resolve_to_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveToResourceType, location_name: 'resolveToResourceType', traits: {"smithy.api#documentation" => "<p>The type of the resolved resource.</p>", "smithy.api#httpQuery" => "resolveToResourceType"}))
    DescribeComputationModelExecutionSummaryRequest.add_member(:resolve_to_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'resolveToResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resolved resource.</p>", "smithy.api#httpQuery" => "resolveToResourceId"}))
    DescribeComputationModelExecutionSummaryRequest.type = Types::DescribeComputationModelExecutionSummaryRequest
    DescribeComputationModelExecutionSummaryResponse.add_member(:computation_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'computationModelId', traits: {"smithy.api#documentation" => "<p>The ID of the computation model.</p>", "smithy.api#required" => {}}))
    DescribeComputationModelExecutionSummaryResponse.add_member(:resolve_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveTo, location_name: 'resolveTo', traits: {"smithy.api#documentation" => "<p>The detailed resource this execution summary resolves to.</p>"}))
    DescribeComputationModelExecutionSummaryResponse.add_member(:computation_model_execution_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelExecutionSummary, location_name: 'computationModelExecutionSummary', traits: {"smithy.api#documentation" => "<p>Contains the execution summary of the computation model.</p>", "smithy.api#required" => {}}))
    DescribeComputationModelExecutionSummaryResponse.type = Types::DescribeComputationModelExecutionSummaryResponse
    DescribeComputationModelRequest.add_member(:computation_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'computationModelId', traits: {"smithy.api#documentation" => "<p>The ID of the computation model.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeComputationModelRequest.type = Types::DescribeComputationModelRequest
    DescribeComputationModelResponse.add_member(:computation_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'computationModelId', traits: {"smithy.api#documentation" => "<p>The ID of the computation model.</p>", "smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'computationModelArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the computation model, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:computation-model/${ComputationModelId}</code>\n         </p>", "smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedName, location_name: 'computationModelName', traits: {"smithy.api#documentation" => "<p>The name of the computation model.</p>", "smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedDescription, location_name: 'computationModelDescription', traits: {"smithy.api#documentation" => "<p>The description of the computation model.</p>"}))
    DescribeComputationModelResponse.add_member(:computation_model_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelConfiguration, location_name: 'computationModelConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for the computation model.</p>", "smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_data_binding, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelDataBinding, location_name: 'computationModelDataBinding', traits: {"smithy.api#documentation" => "<p>The data binding for the computation model. Key is a variable name defined in configuration. \n  Value is a <code>ComputationModelDataBindingValue</code> referenced by the variable.</p>", "smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'computationModelCreationDate', traits: {"smithy.api#documentation" => "<p>The model creation date, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'computationModelLastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the model was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelStatus, location_name: 'computationModelStatus', traits: {"smithy.api#documentation" => "<p>The current status of the asset model, which contains a state and an error message if\n      any.</p>", "smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:computation_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'computationModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the computation model.</p>", "smithy.api#required" => {}}))
    DescribeComputationModelResponse.add_member(:action_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionDefinitions, location_name: 'actionDefinitions', traits: {"smithy.api#documentation" => "<p>The available actions for this computation model.</p>", "smithy.api#required" => {}}))
    DescribeComputationModelResponse.type = Types::DescribeComputationModelResponse
    DescribeDashboardRequest.add_member(:dashboard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'dashboardId', traits: {"smithy.api#documentation" => "<p>The ID of the dashboard.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDashboardRequest.type = Types::DescribeDashboardRequest
    DescribeDashboardResponse.add_member(:dashboard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'dashboardId', traits: {"smithy.api#documentation" => "<p>The ID of the dashboard.</p>", "smithy.api#required" => {}}))
    DescribeDashboardResponse.add_member(:dashboard_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'dashboardArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the dashboard, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard/${DashboardId}</code>\n         </p>", "smithy.api#required" => {}}))
    DescribeDashboardResponse.add_member(:dashboard_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'dashboardName', traits: {"smithy.api#documentation" => "<p>The name of the dashboard.</p>", "smithy.api#required" => {}}))
    DescribeDashboardResponse.add_member(:project_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'projectId', traits: {"smithy.api#documentation" => "<p>The ID of the project that the dashboard is in.</p>", "smithy.api#required" => {}}))
    DescribeDashboardResponse.add_member(:dashboard_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'dashboardDescription', traits: {"smithy.api#documentation" => "<p>The dashboard's description.</p>"}))
    DescribeDashboardResponse.add_member(:dashboard_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardDefinition, location_name: 'dashboardDefinition', traits: {"smithy.api#documentation" => "<p>The dashboard's definition JSON literal. For detailed information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html\">Creating\n        dashboards (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#required" => {}}))
    DescribeDashboardResponse.add_member(:dashboard_creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'dashboardCreationDate', traits: {"smithy.api#documentation" => "<p>The date the dashboard was created, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeDashboardResponse.add_member(:dashboard_last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'dashboardLastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the dashboard was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeDashboardResponse.type = Types::DescribeDashboardResponse
    DescribeDatasetRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The ID of the dataset.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDatasetRequest.type = Types::DescribeDatasetRequest
    DescribeDatasetResponse.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The ID of the dataset.</p>", "smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html\">ARN</a> of the dataset. \n  The format is <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}</code>.</p>", "smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedName, location_name: 'datasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>", "smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_description, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedDescription, location_name: 'datasetDescription', traits: {"smithy.api#documentation" => "<p>A description about the dataset, and its functionality.</p>", "smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSource, location_name: 'datasetSource', traits: {"smithy.api#documentation" => "<p>The data source for the dataset.</p>", "smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'datasetStatus', traits: {"smithy.api#documentation" => "<p>The status of the dataset. This contains the state and any error messages. \n  State is <code>CREATING</code> after a successfull call to this API, and any associated error message. The state is \n  <code>ACTIVE</code> when ready to use.</p>", "smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'datasetCreationDate', traits: {"smithy.api#documentation" => "<p>The dataset creation date, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'datasetLastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the dataset was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeDatasetResponse.add_member(:dataset_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'datasetVersion', traits: {"smithy.api#documentation" => "<p>The version of the dataset.</p>"}))
    DescribeDatasetResponse.type = Types::DescribeDatasetResponse
    DescribeDefaultEncryptionConfigurationRequest.type = Types::DescribeDefaultEncryptionConfigurationRequest
    DescribeDefaultEncryptionConfigurationResponse.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'encryptionType', traits: {"smithy.api#documentation" => "<p>The type of encryption used for the encryption configuration.</p>", "smithy.api#required" => {}}))
    DescribeDefaultEncryptionConfigurationResponse.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The key ARN of the customer managed key used for KMS encryption if you use\n        <code>KMS_BASED_ENCRYPTION</code>.</p>"}))
    DescribeDefaultEncryptionConfigurationResponse.add_member(:configuration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationStatus, location_name: 'configurationStatus', traits: {"smithy.api#documentation" => "<p>The status of the account configuration. This contains the\n      <code>ConfigurationState</code>. If there's an error, it also contains the\n        <code>ErrorDetails</code>.</p>", "smithy.api#required" => {}}))
    DescribeDefaultEncryptionConfigurationResponse.type = Types::DescribeDefaultEncryptionConfigurationResponse
    DescribeExecutionRequest.add_member(:execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'executionId', traits: {"smithy.api#documentation" => "<p>The ID of the execution.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeExecutionRequest.type = Types::DescribeExecutionRequest
    DescribeExecutionResponse.add_member(:execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'executionId', traits: {"smithy.api#documentation" => "<p>The ID of the execution.</p>", "smithy.api#required" => {}}))
    DescribeExecutionResponse.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'actionType', traits: {"smithy.api#documentation" => "<p>The type of action exectued.</p>"}))
    DescribeExecutionResponse.add_member(:target_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResource, location_name: 'targetResource', traits: {"smithy.api#required" => {}}))
    DescribeExecutionResponse.add_member(:target_resource_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'targetResourceVersion', traits: {"smithy.api#documentation" => "<p>The version of the target resource.</p>", "smithy.api#required" => {}}))
    DescribeExecutionResponse.add_member(:resolve_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveTo, location_name: 'resolveTo', traits: {"smithy.api#documentation" => "<p>The detailed resource this execution resolves to.</p>"}))
    DescribeExecutionResponse.add_member(:execution_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'executionStartTime', traits: {"smithy.api#documentation" => "<p>The time the process started.</p>", "smithy.api#required" => {}}))
    DescribeExecutionResponse.add_member(:execution_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'executionEndTime', traits: {"smithy.api#documentation" => "<p>The time the process ended.</p>"}))
    DescribeExecutionResponse.add_member(:execution_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'executionStatus', traits: {"smithy.api#documentation" => "<p>The status of the execution process.</p>", "smithy.api#required" => {}}))
    DescribeExecutionResponse.add_member(:execution_result, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResult, location_name: 'executionResult', traits: {"smithy.api#documentation" => "<p>The result of the execution.</p>"}))
    DescribeExecutionResponse.add_member(:execution_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionDetails, location_name: 'executionDetails', traits: {"smithy.api#documentation" => "<p>Provides detailed information about the execution of your anomaly detection models. This\n      includes model metrics and training timestamps for both training and inference actions.</p>\n         <ul>\n            <li>\n               <p> The training action (Amazon Web Services/ANOMALY_DETECTION_TRAINING), includes performance metrics\n          that help you compare different versions of your anomaly detection models. These metrics\n          provide insights into the model's performance during the training process. </p>\n            </li>\n            <li>\n               <p> The inference action (Amazon Web Services/ANOMALY_DETECTION_INFERENCE), includes information about\n          the results of executing your anomaly detection models. This helps you understand the\n          output of your models and assess their performance. </p>\n            </li>\n         </ul>"}))
    DescribeExecutionResponse.add_member(:execution_entity_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'executionEntityVersion', traits: {"smithy.api#documentation" => "<p>Entity version used for the execution.</p>"}))
    DescribeExecutionResponse.type = Types::DescribeExecutionResponse
    DescribeGatewayCapabilityConfigurationRequest.add_member(:gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'gatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the gateway that defines the capability configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeGatewayCapabilityConfigurationRequest.add_member(:capability_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityNamespace, location_name: 'capabilityNamespace', traits: {"smithy.api#documentation" => "<p>The namespace of the capability configuration.\n      For example, if you configure OPC UA\n      sources for an MQTT-enabled gateway, your OPC-UA capability configuration has the namespace\n        <code>iotsitewise:opcuacollector:3</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeGatewayCapabilityConfigurationRequest.type = Types::DescribeGatewayCapabilityConfigurationRequest
    DescribeGatewayCapabilityConfigurationResponse.add_member(:gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'gatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the gateway that defines the capability configuration.</p>", "smithy.api#required" => {}}))
    DescribeGatewayCapabilityConfigurationResponse.add_member(:capability_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityNamespace, location_name: 'capabilityNamespace', traits: {"smithy.api#documentation" => "<p>The namespace of the gateway capability.</p>", "smithy.api#required" => {}}))
    DescribeGatewayCapabilityConfigurationResponse.add_member(:capability_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityConfiguration, location_name: 'capabilityConfiguration', traits: {"smithy.api#documentation" => "<p>The JSON document that defines the gateway capability's configuration. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli\">Configuring data sources (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#required" => {}}))
    DescribeGatewayCapabilityConfigurationResponse.add_member(:capability_sync_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilitySyncStatus, location_name: 'capabilitySyncStatus', traits: {"smithy.api#documentation" => "<p>The synchronization status of the gateway capability configuration. The sync status can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>IN_SYNC</code> - The gateway is running with the latest configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OUT_OF_SYNC</code> - The gateway hasn't received the latest configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SYNC_FAILED</code> - The gateway rejected the latest configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNKNOWN</code> - The gateway hasn't reported its sync status.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_APPLICABLE</code> - The gateway doesn't support this capability. This is most common when integrating partner data sources, because the data integration is handled externally by the partner.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DescribeGatewayCapabilityConfigurationResponse.type = Types::DescribeGatewayCapabilityConfigurationResponse
    DescribeGatewayRequest.add_member(:gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'gatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the gateway device.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeGatewayRequest.type = Types::DescribeGatewayRequest
    DescribeGatewayResponse.add_member(:gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'gatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the gateway device.</p>", "smithy.api#required" => {}}))
    DescribeGatewayResponse.add_member(:gateway_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayName, location_name: 'gatewayName', traits: {"smithy.api#documentation" => "<p>The name of the gateway.</p>", "smithy.api#required" => {}}))
    DescribeGatewayResponse.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'gatewayArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the gateway, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:gateway/${GatewayId}</code>\n         </p>", "smithy.api#required" => {}}))
    DescribeGatewayResponse.add_member(:gateway_platform, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayPlatform, location_name: 'gatewayPlatform', traits: {"smithy.api#documentation" => "<p>The gateway's platform.</p>"}))
    DescribeGatewayResponse.add_member(:gateway_version, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayVersion, location_name: 'gatewayVersion', traits: {"smithy.api#documentation" => "<p>The version of the gateway. A value of <code>3</code> indicates an MQTT-enabled, V3\n      gateway, while <code>2</code> indicates a Classic streams, V2 gateway.</p>"}))
    DescribeGatewayResponse.add_member(:gateway_capability_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayCapabilitySummaries, location_name: 'gatewayCapabilitySummaries', traits: {"smithy.api#documentation" => "<p>A list of gateway capability summaries that each contain a namespace and status. Each\n      gateway capability defines data sources for the gateway. To retrieve a capability\n      configuration's definition, use <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGatewayCapabilityConfiguration.html\">DescribeGatewayCapabilityConfiguration</a>.</p>", "smithy.api#required" => {}}))
    DescribeGatewayResponse.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the gateway was created, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeGatewayResponse.add_member(:last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the gateway was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeGatewayResponse.type = Types::DescribeGatewayResponse
    DescribeLoggingOptionsRequest.type = Types::DescribeLoggingOptionsRequest
    DescribeLoggingOptionsResponse.add_member(:logging_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingOptions, location_name: 'loggingOptions', traits: {"smithy.api#documentation" => "<p>The current logging options.</p>", "smithy.api#required" => {}}))
    DescribeLoggingOptionsResponse.type = Types::DescribeLoggingOptionsResponse
    DescribePortalRequest.add_member(:portal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'portalId', traits: {"smithy.api#documentation" => "<p>The ID of the portal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePortalRequest.type = Types::DescribePortalRequest
    DescribePortalResponse.add_member(:portal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'portalId', traits: {"smithy.api#documentation" => "<p>The ID of the portal.</p>", "smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'portalArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the portal, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:portal/${PortalId}</code>\n         </p>", "smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'portalName', traits: {"smithy.api#documentation" => "<p>The name of the portal.</p>", "smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'portalDescription', traits: {"smithy.api#documentation" => "<p>The portal's description.</p>"}))
    DescribePortalResponse.add_member(:portal_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalClientId, location_name: 'portalClientId', traits: {"smithy.api#documentation" => "<p>The IAM Identity Center application generated client ID (used with IAM Identity Center API operations). IoT SiteWise includes\n        <code>portalClientId</code> for only portals that use IAM Identity Center to authenticate users.</p>", "smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_start_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'portalStartUrl', traits: {"smithy.api#documentation" => "<p>The URL for the IoT SiteWise Monitor portal. You can use this URL to access portals that\n      use IAM Identity Center for authentication. For portals that use IAM for authentication, you must use the\n      IoT SiteWise console to get a URL that you can use to access the portal.</p>", "smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_contact_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'portalContactEmail', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services administrator's contact email address.</p>", "smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalStatus, location_name: 'portalStatus', traits: {"smithy.api#documentation" => "<p>The current status of the portal, which contains a state and any error message.</p>", "smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'portalCreationDate', traits: {"smithy.api#documentation" => "<p>The date the portal was created, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'portalLastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the portal was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribePortalResponse.add_member(:portal_logo_image_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageLocation, location_name: 'portalLogoImageLocation', traits: {"smithy.api#documentation" => "<p>The portal's logo image, which is available at a URL.</p>"}))
    DescribePortalResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the service role that allows the portal's users to access your IoT SiteWise\n      resources on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html\">Using service roles for IoT SiteWise Monitor</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>"}))
    DescribePortalResponse.add_member(:portal_auth_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthMode, location_name: 'portalAuthMode', traits: {"smithy.api#documentation" => "<p>The service to use to authenticate users to the portal.</p>"}))
    DescribePortalResponse.add_member(:notification_sender_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'notificationSenderEmail', traits: {"smithy.api#documentation" => "<p>The email address that sends alarm notifications.</p>"}))
    DescribePortalResponse.add_member(:alarms, Smithy::Schema::Shapes::ShapeRef.new(shape: Alarms, location_name: 'alarms', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.</p>"}))
    DescribePortalResponse.add_member(:portal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalType, location_name: 'portalType', traits: {"smithy.api#documentation" => "<p>Define the type of portal. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>"}))
    DescribePortalResponse.add_member(:portal_type_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalTypeConfiguration, location_name: 'portalTypeConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration entry associated with the specific portal type. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>"}))
    DescribePortalResponse.type = Types::DescribePortalResponse
    DescribeProjectRequest.add_member(:project_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'projectId', traits: {"smithy.api#documentation" => "<p>The ID of the project.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeProjectRequest.type = Types::DescribeProjectRequest
    DescribeProjectResponse.add_member(:project_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'projectId', traits: {"smithy.api#documentation" => "<p>The ID of the project.</p>", "smithy.api#required" => {}}))
    DescribeProjectResponse.add_member(:project_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'projectArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the project, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:project/${ProjectId}</code>\n         </p>", "smithy.api#required" => {}}))
    DescribeProjectResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project.</p>", "smithy.api#required" => {}}))
    DescribeProjectResponse.add_member(:portal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'portalId', traits: {"smithy.api#documentation" => "<p>The ID of the portal that the project is in.</p>", "smithy.api#required" => {}}))
    DescribeProjectResponse.add_member(:project_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'projectDescription', traits: {"smithy.api#documentation" => "<p>The project's description.</p>"}))
    DescribeProjectResponse.add_member(:project_creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'projectCreationDate', traits: {"smithy.api#documentation" => "<p>The date the project was created, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeProjectResponse.add_member(:project_last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'projectLastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the project was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeProjectResponse.type = Types::DescribeProjectResponse
    DescribeStorageConfigurationRequest.type = Types::DescribeStorageConfigurationRequest
    DescribeStorageConfigurationResponse.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType, location_name: 'storageType', traits: {"smithy.api#documentation" => "<p>The storage tier that you specified for your data.\n      The <code>storageType</code> parameter can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SITEWISE_DEFAULT_STORAGE</code> – IoT SiteWise saves your data into the hot tier.\n          The hot tier is a service-managed database.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MULTI_LAYER_STORAGE</code> – IoT SiteWise saves your data in both the cold tier and the hot tier.\n          The cold tier is a customer-managed Amazon S3 bucket.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DescribeStorageConfigurationResponse.add_member(:multi_layer_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiLayerStorage, location_name: 'multiLayerStorage', traits: {"smithy.api#documentation" => "<p>Contains information about the storage destination.</p>"}))
    DescribeStorageConfigurationResponse.add_member(:disassociated_data_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatedDataStorageState, location_name: 'disassociatedDataStorage', traits: {"smithy.api#documentation" => "<p>Contains the storage configuration for time series (data streams) that aren't associated with asset properties.\n      The <code>disassociatedDataStorage</code> can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – IoT SiteWise accepts time series that aren't associated with asset properties.</p>\n               <important>\n                  <p>After the <code>disassociatedDataStorage</code> is enabled, you can't disable it.</p>\n               </important>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – IoT SiteWise doesn't accept time series (data streams) that aren't associated with asset properties.</p>\n            </li>\n         </ul>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html\">Data streams</a>\n    in the <i>IoT SiteWise User Guide</i>.</p>"}))
    DescribeStorageConfigurationResponse.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days your data is kept in the hot tier. By default, your data is kept indefinitely in the hot tier.</p>"}))
    DescribeStorageConfigurationResponse.add_member(:configuration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationStatus, location_name: 'configurationStatus', traits: {"smithy.api#required" => {}}))
    DescribeStorageConfigurationResponse.add_member(:last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the storage configuration was last updated, in Unix epoch time.</p>"}))
    DescribeStorageConfigurationResponse.add_member(:warm_tier, Smithy::Schema::Shapes::ShapeRef.new(shape: WarmTierState, location_name: 'warmTier', traits: {"smithy.api#documentation" => "<p>A service managed storage tier optimized for analytical queries. It stores periodically uploaded, buffered and historical data ingested with the CreaeBulkImportJob API.</p>"}))
    DescribeStorageConfigurationResponse.add_member(:warm_tier_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: WarmTierRetentionPeriod, location_name: 'warmTierRetentionPeriod', traits: {"smithy.api#documentation" => "<p>Set this period to specify how long your data is stored in the warm tier before it is deleted. You can set this only if cold tier is enabled.</p>"}))
    DescribeStorageConfigurationResponse.add_member(:disallow_ingest_null_na_n, Smithy::Schema::Shapes::ShapeRef.new(shape: DisallowIngestNullNaN, location_name: 'disallowIngestNullNaN', traits: {"smithy.api#documentation" => "<p>Describes the configuration for ingesting NULL and NaN data. By default the feature is\n      allowed. The feature is disallowed if the value is <code>true</code>.</p>"}))
    DescribeStorageConfigurationResponse.type = Types::DescribeStorageConfigurationResponse
    DescribeTimeSeriesRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the time series.</p>", "smithy.api#httpQuery" => "alias"}))
    DescribeTimeSeriesRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "assetId"}))
    DescribeTimeSeriesRequest.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "propertyId"}))
    DescribeTimeSeriesRequest.type = Types::DescribeTimeSeriesRequest
    DescribeTimeSeriesResponse.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset in which the asset property was created.</p>"}))
    DescribeTimeSeriesResponse.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property, in UUID format.</p>"}))
    DescribeTimeSeriesResponse.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the time series.</p>"}))
    DescribeTimeSeriesResponse.add_member(:time_series_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesId, location_name: 'timeSeriesId', traits: {"smithy.api#documentation" => "<p>The ID of the time series.</p>", "smithy.api#required" => {}}))
    DescribeTimeSeriesResponse.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The data type of the time series.</p>\n         <p>If you specify <code>STRUCT</code>, you must also specify <code>dataTypeSpec</code> to identify the type of the structure for this time series.</p>", "smithy.api#required" => {}}))
    DescribeTimeSeriesResponse.add_member(:data_type_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'dataTypeSpec', traits: {"smithy.api#documentation" => "<p>The data type of the structure for this time series. This parameter is required for time series\n      that have the <code>STRUCT</code> data type.</p>\n         <p>The options for this parameter depend on the type of the composite model\n      in which you created the asset property that is associated with your time series.\n      Use <code>AWS/ALARM_STATE</code> for alarm state in alarm composite models.</p>"}))
    DescribeTimeSeriesResponse.add_member(:time_series_creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'timeSeriesCreationDate', traits: {"smithy.api#documentation" => "<p>The date that the time series was created, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeTimeSeriesResponse.add_member(:time_series_last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'timeSeriesLastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date that the time series was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    DescribeTimeSeriesResponse.add_member(:time_series_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'timeSeriesArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the time series, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:time-series/${TimeSeriesId}</code>\n         </p>", "smithy.api#required" => {}}))
    DescribeTimeSeriesResponse.type = Types::DescribeTimeSeriesResponse
    DetailedError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: DetailedErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code. </p>", "smithy.api#required" => {}}))
    DetailedError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: DetailedErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message. </p>", "smithy.api#required" => {}}))
    DetailedError.type = Types::DetailedError
    DetailedErrorCode.add_member(:incompatible_compute_location, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCOMPATIBLE_COMPUTE_LOCATION', traits: {"smithy.api#enumValue" => "INCOMPATIBLE_COMPUTE_LOCATION"}))
    DetailedErrorCode.add_member(:incompatible_forwarding_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCOMPATIBLE_FORWARDING_CONFIGURATION', traits: {"smithy.api#enumValue" => "INCOMPATIBLE_FORWARDING_CONFIGURATION"}))
    DetailedErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DetailedError)
    DisassociateAssetsRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the parent asset from which to disassociate the child asset.\n      This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAssetsRequest.add_member(:hierarchy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'hierarchyId', traits: {"smithy.api#documentation" => "<p>The ID of a hierarchy in the parent asset's model. (This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.) Hierarchies allow\n      different groupings of assets to be formed that all come from the same asset model. You can\n      use the hierarchy ID to identify the correct asset to disassociate. For more information, see\n      <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#required" => {}}))
    DisassociateAssetsRequest.add_member(:child_asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'childAssetId', traits: {"smithy.api#documentation" => "<p>The ID of the child asset to disassociate. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#required" => {}}))
    DisassociateAssetsRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    DisassociateAssetsRequest.type = Types::DisassociateAssetsRequest
    DisassociateTimeSeriesFromAssetPropertyRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the time series.</p>", "smithy.api#httpQuery" => "alias", "smithy.api#required" => {}}))
    DisassociateTimeSeriesFromAssetPropertyRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "assetId", "smithy.api#required" => {}}))
    DisassociateTimeSeriesFromAssetPropertyRequest.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "propertyId", "smithy.api#required" => {}}))
    DisassociateTimeSeriesFromAssetPropertyRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    DisassociateTimeSeriesFromAssetPropertyRequest.type = Types::DisassociateTimeSeriesFromAssetPropertyRequest
    DisassociatedDataStorageState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    DisassociatedDataStorageState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    EncryptionType.add_member(:sitewise_default_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SITEWISE_DEFAULT_ENCRYPTION', traits: {"smithy.api#enumValue" => "SITEWISE_DEFAULT_ENCRYPTION"}))
    EncryptionType.add_member(:kms_based_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS_BASED_ENCRYPTION', traits: {"smithy.api#enumValue" => "KMS_BASED_ENCRYPTION"}))
    ErrorCode.add_member(:validation_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_ERROR', traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    ErrorCode.add_member(:internal_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    ErrorDetails.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#required" => {}}))
    ErrorDetails.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message.</p>", "smithy.api#required" => {}}))
    ErrorDetails.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: DetailedErrors, location_name: 'details', traits: {"smithy.api#documentation" => "<p> A list of detailed errors. </p>"}))
    ErrorDetails.type = Types::ErrorDetails
    ErrorReportLocation.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Bucket, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket to which errors associated with the bulk import job are\n      sent.</p>", "smithy.api#required" => {}}))
    ErrorReportLocation.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>Amazon S3 uses the prefix as a folder name to organize data in the bucket. Each Amazon S3 object has\n      a key that is its unique identifier in the bucket. Each object in a bucket has exactly one\n      key. The prefix must end with a forward slash (/). For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html\">Organizing objects\n        using prefixes</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>", "smithy.api#required" => {}}))
    ErrorReportLocation.type = Types::ErrorReportLocation
    ExecuteActionRequest.add_member(:target_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResource, location_name: 'targetResource', traits: {"smithy.api#documentation" => "<p>The resource the action will be taken on.</p>", "smithy.api#required" => {}}))
    ExecuteActionRequest.add_member(:action_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'actionDefinitionId', traits: {"smithy.api#documentation" => "<p>The ID of the action definition.</p>", "smithy.api#required" => {}}))
    ExecuteActionRequest.add_member(:action_payload, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPayload, location_name: 'actionPayload', traits: {"smithy.api#documentation" => "<p>The JSON payload of the action.</p>", "smithy.api#required" => {}}))
    ExecuteActionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"}))
    ExecuteActionRequest.add_member(:resolve_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveTo, location_name: 'resolveTo', traits: {"smithy.api#documentation" => "<p>The detailed resource this action resolves to.</p>"}))
    ExecuteActionRequest.type = Types::ExecuteActionRequest
    ExecuteActionResponse.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'actionId', traits: {"smithy.api#documentation" => "<p>The ID of the action.</p>", "smithy.api#required" => {}}))
    ExecuteActionResponse.type = Types::ExecuteActionResponse
    ExecuteQueryRequest.add_member(:query_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatement, location_name: 'queryStatement', traits: {"smithy.api#documentation" => "<p>The IoT SiteWise query statement.</p>", "smithy.api#required" => {}}))
    ExecuteQueryRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteQueryNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string that specifies the next page of results.</p>"}))
    ExecuteQueryRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteQueryMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return at one time.</p>\n         <ul>\n            <li>\n               <p>Minimum is 1</p>\n            </li>\n            <li>\n               <p>Maximum is 20000</p>\n            </li>\n            <li>\n               <p>Default is 250</p>\n            </li>\n         </ul>"}))
    ExecuteQueryRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    ExecuteQueryRequest.type = Types::ExecuteQueryRequest
    ExecuteQueryResponse.add_member(:columns, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnsList, location_name: 'columns', traits: {"smithy.api#documentation" => "<p>Represents a single column in the query results.</p>"}))
    ExecuteQueryResponse.add_member(:rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Rows, location_name: 'rows', traits: {"smithy.api#documentation" => "<p>Represents a single row in the query results.</p>"}))
    ExecuteQueryResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteQueryNextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string that specifies the next page of results.</p>"}))
    ExecuteQueryResponse.type = Types::ExecuteQueryResponse
    ExecutionDetails.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionDetailsKey)
    ExecutionDetails.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionDetailsValue)
    ExecutionResult.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResultKey)
    ExecutionResult.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResultValue)
    ExecutionState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ExecutionState.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExecutionState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ExecutionStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The current state of the computation model.</p>", "smithy.api#required" => {}}))
    ExecutionStatus.type = Types::ExecutionStatus
    ExecutionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionSummary)
    ExecutionSummary.add_member(:execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'executionId', traits: {"smithy.api#documentation" => "<p>The ID of the execution.</p>", "smithy.api#required" => {}}))
    ExecutionSummary.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'actionType', traits: {"smithy.api#documentation" => "<p>The type of action exectued.</p>"}))
    ExecutionSummary.add_member(:target_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResource, location_name: 'targetResource', traits: {"smithy.api#required" => {}}))
    ExecutionSummary.add_member(:target_resource_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'targetResourceVersion', traits: {"smithy.api#documentation" => "<p>The version of the target resource.</p>", "smithy.api#required" => {}}))
    ExecutionSummary.add_member(:resolve_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveTo, location_name: 'resolveTo', traits: {"smithy.api#documentation" => "<p>The detailed resource this execution resolves to.</p>"}))
    ExecutionSummary.add_member(:execution_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'executionStartTime', traits: {"smithy.api#documentation" => "<p>The time the process started.</p>", "smithy.api#required" => {}}))
    ExecutionSummary.add_member(:execution_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'executionEndTime', traits: {"smithy.api#documentation" => "<p>The time the process ended.</p>"}))
    ExecutionSummary.add_member(:execution_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'executionStatus', traits: {"smithy.api#documentation" => "<p>The status of the execution process.</p>", "smithy.api#required" => {}}))
    ExecutionSummary.add_member(:execution_entity_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'executionEntityVersion', traits: {"smithy.api#documentation" => "<p>The execution entity version associated with the summary.</p>"}))
    ExecutionSummary.type = Types::ExecutionSummary
    ExpressionVariable.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The friendly name of the variable to be used in the expression.</p>", "smithy.api#required" => {}}))
    ExpressionVariable.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The variable that identifies an asset property from which to use values.</p>", "smithy.api#required" => {}}))
    ExpressionVariable.type = Types::ExpressionVariable
    ExpressionVariables.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionVariable)
    File.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Bucket, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket from which data is imported.</p>", "smithy.api#required" => {}}))
    File.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key of the Amazon S3 object that contains your data. Each object has a key that is a unique\n      identifier. Each object has exactly one key.</p>", "smithy.api#required" => {}}))
    File.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'versionId', traits: {"smithy.api#documentation" => "<p>The version ID to identify a specific version of the Amazon S3 object that contains your\n      data.</p>"}))
    File.type = Types::File
    FileFormat.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Csv, location_name: 'csv', traits: {"smithy.api#documentation" => "<p>The file is in .CSV format.</p>"}))
    FileFormat.add_member(:parquet, Smithy::Schema::Shapes::ShapeRef.new(shape: Parquet, location_name: 'parquet', traits: {"smithy.api#documentation" => "<p>The file is in parquet format.</p>"}))
    FileFormat.type = Types::FileFormat
    Files.member = Smithy::Schema::Shapes::ShapeRef.new(shape: File)
    ForwardingConfig.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ForwardingConfigState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The forwarding state for the given property. </p>", "smithy.api#required" => {}}))
    ForwardingConfig.type = Types::ForwardingConfig
    ForwardingConfigState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ForwardingConfigState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    GatewayCapabilitySummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayCapabilitySummary)
    GatewayCapabilitySummary.add_member(:capability_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityNamespace, location_name: 'capabilityNamespace', traits: {"smithy.api#documentation" => "<p>The namespace of the capability configuration.\n      For example, if you configure OPC UA\n      sources for an MQTT-enabled gateway, your OPC-UA capability configuration has the namespace\n        <code>iotsitewise:opcuacollector:3</code>.</p>", "smithy.api#required" => {}}))
    GatewayCapabilitySummary.add_member(:capability_sync_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilitySyncStatus, location_name: 'capabilitySyncStatus', traits: {"smithy.api#documentation" => "<p>The synchronization status of the gateway capability configuration. The sync status can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>IN_SYNC</code> - The gateway is running with the latest configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OUT_OF_SYNC</code> - The gateway hasn't received the latest configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SYNC_FAILED</code> - The gateway rejected the latest configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNKNOWN</code> - The gateway hasn't reported its sync status.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_APPLICABLE</code> - The gateway doesn't support this capability. This is most common when integrating partner data sources, because the data integration is handled externally by the partner.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    GatewayCapabilitySummary.type = Types::GatewayCapabilitySummary
    GatewayPlatform.add_member(:greengrass, Smithy::Schema::Shapes::ShapeRef.new(shape: Greengrass, location_name: 'greengrass', traits: {"smithy.api#documentation" => "<p>A gateway that runs on IoT Greengrass.</p>"}))
    GatewayPlatform.add_member(:greengrass_v2, Smithy::Schema::Shapes::ShapeRef.new(shape: GreengrassV2, location_name: 'greengrassV2', traits: {"smithy.api#documentation" => "<p>A gateway that runs on IoT Greengrass V2.</p>"}))
    GatewayPlatform.add_member(:siemens_ie, Smithy::Schema::Shapes::ShapeRef.new(shape: SiemensIE, location_name: 'siemensIE', traits: {"smithy.api#documentation" => "<p>A SiteWise Edge gateway that runs on a Siemens Industrial Edge Device.</p>"}))
    GatewayPlatform.type = Types::GatewayPlatform
    GatewaySummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GatewaySummary)
    GatewaySummary.add_member(:gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'gatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the gateway device.</p>", "smithy.api#required" => {}}))
    GatewaySummary.add_member(:gateway_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayName, location_name: 'gatewayName', traits: {"smithy.api#documentation" => "<p>The name of the gateway.</p>", "smithy.api#required" => {}}))
    GatewaySummary.add_member(:gateway_platform, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayPlatform, location_name: 'gatewayPlatform'))
    GatewaySummary.add_member(:gateway_version, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayVersion, location_name: 'gatewayVersion', traits: {"smithy.api#documentation" => "<p>The version of the gateway. A value of <code>3</code> indicates an MQTT-enabled, V3\n      gateway, while <code>2</code> indicates a Classic streams, V2 gateway.</p>"}))
    GatewaySummary.add_member(:gateway_capability_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayCapabilitySummaries, location_name: 'gatewayCapabilitySummaries', traits: {"smithy.api#documentation" => "<p>A list of gateway capability summaries that each contain a namespace and status. Each\n      gateway capability defines data sources for the gateway. To retrieve a capability\n      configuration's definition, use <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGatewayCapabilityConfiguration.html\">DescribeGatewayCapabilityConfiguration</a>.</p>"}))
    GatewaySummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the gateway was created, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    GatewaySummary.add_member(:last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the gateway was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    GatewaySummary.type = Types::GatewaySummary
    GetAssetPropertyAggregatesRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset, in UUID format.</p>", "smithy.api#httpQuery" => "assetId"}))
    GetAssetPropertyAggregatesRequest.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property, in UUID format.</p>", "smithy.api#httpQuery" => "propertyId"}))
    GetAssetPropertyAggregatesRequest.add_member(:property_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: 'propertyAlias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the property, such as an OPC-UA server data stream path\n        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "propertyAlias"}))
    GetAssetPropertyAggregatesRequest.add_member(:aggregate_types, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregateTypes, location_name: 'aggregateTypes', traits: {"smithy.api#documentation" => "<p>The data aggregating function.</p>", "smithy.api#httpQuery" => "aggregateTypes", "smithy.api#required" => {}}))
    GetAssetPropertyAggregatesRequest.add_member(:resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: Resolution, location_name: 'resolution', traits: {"smithy.api#documentation" => "<p>The time interval over which to aggregate data.</p>", "smithy.api#httpQuery" => "resolution", "smithy.api#required" => {}}))
    GetAssetPropertyAggregatesRequest.add_member(:qualities, Smithy::Schema::Shapes::ShapeRef.new(shape: Qualities, location_name: 'qualities', traits: {"smithy.api#documentation" => "<p>The quality by which to filter asset data.</p>", "smithy.api#httpQuery" => "qualities"}))
    GetAssetPropertyAggregatesRequest.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>", "smithy.api#httpQuery" => "startDate", "smithy.api#required" => {}}))
    GetAssetPropertyAggregatesRequest.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endDate', traits: {"smithy.api#documentation" => "<p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>", "smithy.api#httpQuery" => "endDate", "smithy.api#required" => {}}))
    GetAssetPropertyAggregatesRequest.add_member(:time_ordering, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOrdering, location_name: 'timeOrdering', traits: {"smithy.api#documentation" => "<p>The chronological sorting order of the requested information.</p>\n         <p>Default: <code>ASCENDING</code>\n         </p>", "smithy.api#httpQuery" => "timeOrdering"}))
    GetAssetPropertyAggregatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetAssetPropertyAggregatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssetPropertyValueAggregatesMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs\n      first.</p>\n         <ul>\n            <li>\n               <p>The size of the result set is equal to 1 MB.</p>\n            </li>\n            <li>\n               <p>The number of data points in the result set is equal to the value of\n            <code>maxResults</code>. The maximum value of <code>maxResults</code> is 2500.</p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "maxResults"}))
    GetAssetPropertyAggregatesRequest.type = Types::GetAssetPropertyAggregatesRequest
    GetAssetPropertyAggregatesResponse.add_member(:aggregated_values, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregatedValues, location_name: 'aggregatedValues', traits: {"smithy.api#documentation" => "<p>The requested aggregated values.</p>", "smithy.api#required" => {}}))
    GetAssetPropertyAggregatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    GetAssetPropertyAggregatesResponse.type = Types::GetAssetPropertyAggregatesResponse
    GetAssetPropertyValueHistoryRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset, in UUID format.</p>", "smithy.api#httpQuery" => "assetId"}))
    GetAssetPropertyValueHistoryRequest.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property, in UUID format.</p>", "smithy.api#httpQuery" => "propertyId"}))
    GetAssetPropertyValueHistoryRequest.add_member(:property_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: 'propertyAlias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the property, such as an OPC-UA server data stream path\n        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "propertyAlias"}))
    GetAssetPropertyValueHistoryRequest.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startDate', traits: {"smithy.api#documentation" => "<p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>", "smithy.api#httpQuery" => "startDate"}))
    GetAssetPropertyValueHistoryRequest.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endDate', traits: {"smithy.api#documentation" => "<p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>", "smithy.api#httpQuery" => "endDate"}))
    GetAssetPropertyValueHistoryRequest.add_member(:qualities, Smithy::Schema::Shapes::ShapeRef.new(shape: Qualities, location_name: 'qualities', traits: {"smithy.api#documentation" => "<p>The quality by which to filter asset data.</p>", "smithy.api#httpQuery" => "qualities"}))
    GetAssetPropertyValueHistoryRequest.add_member(:time_ordering, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOrdering, location_name: 'timeOrdering', traits: {"smithy.api#documentation" => "<p>The chronological sorting order of the requested information.</p>\n         <p>Default: <code>ASCENDING</code>\n         </p>", "smithy.api#httpQuery" => "timeOrdering"}))
    GetAssetPropertyValueHistoryRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetAssetPropertyValueHistoryRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssetPropertyValueHistoryMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs\n      first.</p>\n         <ul>\n            <li>\n               <p>The size of the result set is equal to 4 MB.</p>\n            </li>\n            <li>\n               <p>The number of data points in the result set is equal to the value of\n            <code>maxResults</code>. The maximum value of <code>maxResults</code> is 20000.</p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "maxResults"}))
    GetAssetPropertyValueHistoryRequest.type = Types::GetAssetPropertyValueHistoryRequest
    GetAssetPropertyValueHistoryResponse.add_member(:asset_property_value_history, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyValueHistory, location_name: 'assetPropertyValueHistory', traits: {"smithy.api#documentation" => "<p>The asset property's value history.</p>", "smithy.api#required" => {}}))
    GetAssetPropertyValueHistoryResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    GetAssetPropertyValueHistoryResponse.type = Types::GetAssetPropertyValueHistoryResponse
    GetAssetPropertyValueRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset, in UUID format.</p>", "smithy.api#httpQuery" => "assetId"}))
    GetAssetPropertyValueRequest.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property, in UUID format.</p>", "smithy.api#httpQuery" => "propertyId"}))
    GetAssetPropertyValueRequest.add_member(:property_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: 'propertyAlias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the property, such as an OPC-UA server data stream path\n        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "propertyAlias"}))
    GetAssetPropertyValueRequest.type = Types::GetAssetPropertyValueRequest
    GetAssetPropertyValueResponse.add_member(:property_value, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyValue, location_name: 'propertyValue', traits: {"smithy.api#documentation" => "<p>The current asset property value.</p>"}))
    GetAssetPropertyValueResponse.type = Types::GetAssetPropertyValueResponse
    GetInterpolatedAssetPropertyValuesRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset, in UUID format.</p>", "smithy.api#httpQuery" => "assetId"}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property, in UUID format.</p>", "smithy.api#httpQuery" => "propertyId"}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:property_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: 'propertyAlias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the property, such as an OPC-UA server data stream path\n        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "propertyAlias"}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:start_time_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeInSeconds, location_name: 'startTimeInSeconds', traits: {"smithy.api#documentation" => "<p>The exclusive start of the range from which to interpolate data, expressed in seconds in\n      Unix epoch time.</p>", "smithy.api#httpQuery" => "startTimeInSeconds", "smithy.api#required" => {}}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:start_time_offset_in_nanos, Smithy::Schema::Shapes::ShapeRef.new(shape: OffsetInNanos, location_name: 'startTimeOffsetInNanos', traits: {"smithy.api#documentation" => "<p>The nanosecond offset converted from <code>startTimeInSeconds</code>.</p>", "smithy.api#httpQuery" => "startTimeOffsetInNanos"}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:end_time_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeInSeconds, location_name: 'endTimeInSeconds', traits: {"smithy.api#documentation" => "<p>The inclusive end of the range from which to interpolate data, expressed in seconds in\n      Unix epoch time.</p>", "smithy.api#httpQuery" => "endTimeInSeconds", "smithy.api#required" => {}}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:end_time_offset_in_nanos, Smithy::Schema::Shapes::ShapeRef.new(shape: OffsetInNanos, location_name: 'endTimeOffsetInNanos', traits: {"smithy.api#documentation" => "<p>The nanosecond offset converted from <code>endTimeInSeconds</code>.</p>", "smithy.api#httpQuery" => "endTimeOffsetInNanos"}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:quality, Smithy::Schema::Shapes::ShapeRef.new(shape: Quality, location_name: 'quality', traits: {"smithy.api#documentation" => "<p>The quality of the asset property value. You can use this parameter as a filter to choose\n      only the asset property values that have a specific quality.</p>", "smithy.api#httpQuery" => "quality", "smithy.api#required" => {}}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:interval_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: IntervalInSeconds, location_name: 'intervalInSeconds', traits: {"smithy.api#documentation" => "<p>The time interval in seconds over which to interpolate data. Each interval starts when the\n      previous one ends.</p>", "smithy.api#httpQuery" => "intervalInSeconds", "smithy.api#required" => {}}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxInterpolatedResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request. If not specified, the default value is 10.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: InterpolationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The interpolation type.</p>\n         <p>Valid values: <code>LINEAR_INTERPOLATION | LOCF_INTERPOLATION</code>\n         </p>\n         <ul>\n            <li>\n               <p>\n                  <code>LINEAR_INTERPOLATION</code> – Estimates missing data using <a href=\"https://en.wikipedia.org/wiki/Linear_interpolation\">linear\n          interpolation</a>.</p>\n               <p>For example, you can use this operation to return the interpolated temperature values\n          for a wind turbine every 24 hours over a duration of 7 days. If the interpolation starts\n          July 1, 2021, at 9 AM, IoT SiteWise returns the first interpolated value on July 2, 2021, at 9 AM,\n          the second interpolated value on July 3, 2021, at 9 AM, and so on.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LOCF_INTERPOLATION</code> – Estimates missing data using last observation\n          carried forward interpolation</p>\n               <p>If no data point is found for an interval, IoT SiteWise returns the last observed data point\n          for the previous interval and carries forward this interpolated value until a new data\n          point is found.</p>\n               <p>For example, you can get the state of an on-off valve every 24 hours over a duration\n          of 7 days. If the interpolation starts July 1, 2021, at 9 AM, IoT SiteWise returns the last\n          observed data point between July 1, 2021, at 9 AM and July 2, 2021, at 9 AM as the first\n          interpolated value. If a data point isn't found after 9 AM on July 2, 2021, IoT SiteWise uses the\n          same interpolated value for the rest of the days.</p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "type", "smithy.api#required" => {}}))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:interval_window_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: IntervalWindowInSeconds, location_name: 'intervalWindowInSeconds', traits: {"smithy.api#documentation" => "<p>The query interval for the window, in seconds. IoT SiteWise computes each interpolated value by\n      using data points from the timestamp of each interval, minus the window to the timestamp of\n      each interval plus the window. If not specified, the window ranges between the start time\n      minus the interval and the end time plus the interval.</p>\n         <note>\n            <ul>\n               <li>\n                  <p>If you specify a value for the <code>intervalWindowInSeconds</code> parameter, the\n            value for the <code>type</code> parameter must be\n            <code>LINEAR_INTERPOLATION</code>.</p>\n               </li>\n               <li>\n                  <p>If a data point isn't found during the specified query window, IoT SiteWise won't return an\n            interpolated value for the interval. This indicates that there's a gap in the ingested\n            data points.</p>\n               </li>\n            </ul>\n         </note>\n         <p>For example, you can get the interpolated temperature values for a wind turbine every 24\n      hours over a duration of 7 days. If the interpolation starts on July 1, 2021, at 9 AM with a\n      window of 2 hours, IoT SiteWise uses the data points from 7 AM (9 AM minus 2 hours) to 11 AM (9 AM\n      plus 2 hours) on July 2, 2021 to compute the first interpolated value. Next, IoT SiteWise uses the\n      data points from 7 AM (9 AM minus 2 hours) to 11 AM (9 AM plus 2 hours) on July 3, 2021 to\n      compute the second interpolated value, and so on. </p>", "smithy.api#httpQuery" => "intervalWindowInSeconds"}))
    GetInterpolatedAssetPropertyValuesRequest.type = Types::GetInterpolatedAssetPropertyValuesRequest
    GetInterpolatedAssetPropertyValuesResponse.add_member(:interpolated_asset_property_values, Smithy::Schema::Shapes::ShapeRef.new(shape: InterpolatedAssetPropertyValues, location_name: 'interpolatedAssetPropertyValues', traits: {"smithy.api#documentation" => "<p>The requested interpolated values.</p>", "smithy.api#required" => {}}))
    GetInterpolatedAssetPropertyValuesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    GetInterpolatedAssetPropertyValuesResponse.type = Types::GetInterpolatedAssetPropertyValuesResponse
    Greengrass.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'groupArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the Greengrass group. For more information about how to find a group's\n      ARN, see <a href=\"https://docs.aws.amazon.com/greengrass/v1/apireference/listgroups-get.html\">ListGroups</a> and <a href=\"https://docs.aws.amazon.com/greengrass/v1/apireference/getgroup-get.html\">GetGroup</a> in the <i>IoT Greengrass V1\n        API Reference</i>.</p>", "smithy.api#required" => {}}))
    Greengrass.type = Types::Greengrass
    GreengrassV2.add_member(:core_device_thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceThingName, location_name: 'coreDeviceThingName', traits: {"smithy.api#documentation" => "<p>The name of the IoT thing for your IoT Greengrass V2 core device.</p>", "smithy.api#required" => {}}))
    GreengrassV2.add_member(:core_device_operating_system, Smithy::Schema::Shapes::ShapeRef.new(shape: CoreDeviceOperatingSystem, location_name: 'coreDeviceOperatingSystem', traits: {"smithy.api#documentation" => "<p>The operating system of the core device in IoT Greengrass V2. Specifying the operating system is\n      required for MQTT-enabled, V3 gateways (<code>gatewayVersion</code>\n            <code>3</code>) and not applicable for Classic stream, V2 gateways\n        (<code>gatewayVersion</code>\n            <code>2</code>).</p>"}))
    GreengrassV2.type = Types::GreengrassV2
    GroupIdentity.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The IAM Identity Center ID of the group.</p>", "smithy.api#required" => {}}))
    GroupIdentity.type = Types::GroupIdentity
    HierarchyMapping.add_member(:asset_model_hierarchy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelHierarchyId', traits: {"smithy.api#documentation" => "<p>The ID of the hierarchy in the asset model where the interface is applied.</p>", "smithy.api#required" => {}}))
    HierarchyMapping.add_member(:interface_asset_model_hierarchy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'interfaceAssetModelHierarchyId', traits: {"smithy.api#documentation" => "<p>The ID of the hierarchy in the interface asset model.</p>", "smithy.api#required" => {}}))
    HierarchyMapping.type = Types::HierarchyMapping
    HierarchyMappings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HierarchyMapping)
    IAMRoleIdentity.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM ARNs</a> in the\n        <i>IAM User Guide</i>.</p>", "smithy.api#required" => {}}))
    IAMRoleIdentity.type = Types::IAMRoleIdentity
    IAMUserIdentity.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM user. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM ARNs</a> in the\n        <i>IAM User Guide</i>.</p>\n         <note>\n            <p>If you delete the IAM user, access policies that contain this identity include an\n        empty <code>arn</code>. You can delete the access policy for the IAM user that no longer\n        exists.</p>\n         </note>", "smithy.api#required" => {}}))
    IAMUserIdentity.type = Types::IAMUserIdentity
    IDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ID)
    Identity.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdentity, location_name: 'user', traits: {"smithy.api#documentation" => "<p>An IAM Identity Center user identity.</p>"}))
    Identity.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentity, location_name: 'group', traits: {"smithy.api#documentation" => "<p>An IAM Identity Center group identity.</p>"}))
    Identity.add_member(:iam_user, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMUserIdentity, location_name: 'iamUser', traits: {"smithy.api#documentation" => "<p>An IAM user identity.</p>"}))
    Identity.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleIdentity, location_name: 'iamRole', traits: {"smithy.api#documentation" => "<p>An IAM role identity.</p>"}))
    Identity.type = Types::Identity
    IdentityType.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    IdentityType.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GROUP', traits: {"smithy.api#enumValue" => "GROUP"}))
    IdentityType.add_member(:iam, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM', traits: {"smithy.api#enumValue" => "IAM"}))
    Image.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of an existing image. Specify this parameter to keep an existing image.</p>"}))
    Image.add_member(:file, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFile, location_name: 'file'))
    Image.type = Types::Image
    ImageFile.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFileData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The image file contents, represented as a base64-encoded string. The file size must be\n      less than 1 MB.</p>", "smithy.api#required" => {}}))
    ImageFile.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFileType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The file type of the image.</p>", "smithy.api#required" => {}}))
    ImageFile.type = Types::ImageFile
    ImageFileType.add_member(:png, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PNG', traits: {"smithy.api#enumValue" => "PNG"}))
    ImageLocation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the image.</p>", "smithy.api#required" => {}}))
    ImageLocation.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The URL where the image is available. The URL is valid for 15 minutes so that you can view\n      and download the image</p>", "smithy.api#required" => {}}))
    ImageLocation.type = Types::ImageLocation
    InterfaceDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InterfaceRelationship)
    InterfaceRelationship.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the asset model that has the interface applied to it.</p>", "smithy.api#required" => {}}))
    InterfaceRelationship.type = Types::InterfaceRelationship
    InterfaceRelationshipSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InterfaceRelationshipSummary)
    InterfaceRelationshipSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the asset model that has the interface applied to it.</p>", "smithy.api#required" => {}}))
    InterfaceRelationshipSummary.type = Types::InterfaceRelationshipSummary
    InterfaceSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InterfaceSummary)
    InterfaceSummary.add_member(:interface_asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'interfaceAssetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the interface asset model that contains this property.</p>", "smithy.api#required" => {}}))
    InterfaceSummary.add_member(:interface_asset_model_property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'interfaceAssetModelPropertyId', traits: {"smithy.api#documentation" => "<p>The ID of the property in the interface asset model that corresponds to this\n      property.</p>", "smithy.api#required" => {}}))
    InterfaceSummary.type = Types::InterfaceSummary
    InternalFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalFailureException.type = Types::InternalFailureException
    InterpolatedAssetPropertyValue.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeInNanos, location_name: 'timestamp', traits: {"smithy.api#required" => {}}))
    InterpolatedAssetPropertyValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Variant, location_name: 'value', traits: {"smithy.api#required" => {}}))
    InterpolatedAssetPropertyValue.type = Types::InterpolatedAssetPropertyValue
    InterpolatedAssetPropertyValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InterpolatedAssetPropertyValue)
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidRequestException.type = Types::InvalidRequestException
    InvocationOutput.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The text message of the SiteWise Assistant's response.</p>"}))
    InvocationOutput.add_member(:citations, Smithy::Schema::Shapes::ShapeRef.new(shape: Citations, location_name: 'citations', traits: {"smithy.api#documentation" => "<p>A list of citations, and related information for the SiteWise Assistant's response.</p>"}))
    InvocationOutput.type = Types::InvocationOutput
    InvokeAssistantRequest.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The ID assigned to a conversation. IoT SiteWise automatically generates a unique ID for you, and this parameter is never required. \n  However, if you prefer to have your own ID, you must specify it here in UUID format. If you specify your own ID, it must be globally unique.</p>"}))
    InvokeAssistantRequest.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageInput, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A text message sent to the SiteWise Assistant by the user.</p>", "smithy.api#required" => {}}))
    InvokeAssistantRequest.add_member(:enable_trace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'enableTrace', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies if to turn trace on or not. It is used to track the SiteWise Assistant's \n  reasoning, and data access process.</p>"}))
    InvokeAssistantRequest.type = Types::InvokeAssistantRequest
    InvokeAssistantResponse.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseStream, location_name: 'body', traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeAssistantResponse.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The ID of the conversation, in UUID format. This ID uniquely identifies the conversation within IoT SiteWise.</p>", "smithy.api#httpHeader" => "x-amz-iotsitewise-assistant-conversation-id", "smithy.api#required" => {}}))
    InvokeAssistantResponse[:http_payload] = :body
    InvokeAssistantResponse[:http_payload_member] = InvokeAssistantResponse.member(:body)
    InvokeAssistantResponse.type = Types::InvokeAssistantResponse
    JobConfiguration.add_member(:file_format, Smithy::Schema::Shapes::ShapeRef.new(shape: FileFormat, location_name: 'fileFormat', traits: {"smithy.api#documentation" => "<p>The file format of the data in S3.</p>", "smithy.api#required" => {}}))
    JobConfiguration.type = Types::JobConfiguration
    JobStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    JobStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    JobStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:completed_with_failures, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED_WITH_FAILURES', traits: {"smithy.api#enumValue" => "COMPLETED_WITH_FAILURES"}))
    JobSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummary)
    JobSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the job.</p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The unique name that helps identify the job request.</p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the bulk import job can be one of following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code> – IoT SiteWise is waiting for the current bulk import job to finish.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CANCELLED</code> – The bulk import job has been canceled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RUNNING</code> – IoT SiteWise is processing your request to import your data from Amazon S3.</p>\n            </li>\n            <li>\n               <p>\n                  <code>COMPLETED</code> – IoT SiteWise successfully completed your request to import data from Amazon S3.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – IoT SiteWise couldn't process your request to import data from Amazon S3.\n        You can use logs saved in the specified error report location in Amazon S3 to troubleshoot issues.</p>\n            </li>\n            <li>\n               <p>\n                  <code>COMPLETED_WITH_FAILURES</code> – IoT SiteWise completed your request to import data from Amazon S3 with errors.\n        You can use logs saved in the specified error report location in Amazon S3 to troubleshoot issues.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    JobSummary.type = Types::JobSummary
    KendraSourceDetail.add_member(:knowledge_base_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'knowledgeBaseArn', traits: {"smithy.api#documentation" => "<p>The <code>knowledgeBaseArn</code> details for the Kendra dataset source.</p>", "smithy.api#required" => {}}))
    KendraSourceDetail.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The <code>roleARN</code> details for the Kendra dataset source.</p>", "smithy.api#required" => {}}))
    KendraSourceDetail.type = Types::KendraSourceDetail
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    LimitExceededException.type = Types::LimitExceededException
    ListAccessPoliciesRequest.add_member(:identity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'identityType', traits: {"smithy.api#documentation" => "<p>The type of identity (IAM Identity Center user, IAM Identity Center group, or IAM user). This parameter is required\n      if you specify <code>identityId</code>.</p>", "smithy.api#httpQuery" => "identityType"}))
    ListAccessPoliciesRequest.add_member(:identity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'identityId', traits: {"smithy.api#documentation" => "<p>The ID of the identity. This parameter is required if you specify <code>USER</code> or\n        <code>GROUP</code> for <code>identityType</code>.</p>", "smithy.api#httpQuery" => "identityId"}))
    ListAccessPoliciesRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of resource (portal or project). This parameter is required if you specify\n        <code>resourceId</code>.</p>", "smithy.api#httpQuery" => "resourceType"}))
    ListAccessPoliciesRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource. This parameter is required if you specify\n        <code>resourceType</code>.</p>", "smithy.api#httpQuery" => "resourceId"}))
    ListAccessPoliciesRequest.add_member(:iam_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'iamArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM user. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM ARNs</a> in the\n        <i>IAM User Guide</i>. This parameter is required if you specify\n        <code>IAM</code> for <code>identityType</code>.</p>", "smithy.api#httpQuery" => "iamArn"}))
    ListAccessPoliciesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAccessPoliciesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>\n         <p>Default: 50</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAccessPoliciesRequest.type = Types::ListAccessPoliciesRequest
    ListAccessPoliciesResponse.add_member(:access_policy_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicySummaries, location_name: 'accessPolicySummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes each access policy.</p>", "smithy.api#required" => {}}))
    ListAccessPoliciesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListAccessPoliciesResponse.type = Types::ListAccessPoliciesResponse
    ListActionsRequest.add_member(:target_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceType, location_name: 'targetResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource.</p>", "smithy.api#httpQuery" => "targetResourceType", "smithy.api#required" => {}}))
    ListActionsRequest.add_member(:target_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'targetResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the target resource.</p>", "smithy.api#httpQuery" => "targetResourceId", "smithy.api#required" => {}}))
    ListActionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListActionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListActionsRequest.add_member(:resolve_to_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveToResourceType, location_name: 'resolveToResourceType', traits: {"smithy.api#documentation" => "<p>The type of the resolved resource.</p>", "smithy.api#httpQuery" => "resolveToResourceType"}))
    ListActionsRequest.add_member(:resolve_to_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'resolveToResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resolved resource.</p>", "smithy.api#httpQuery" => "resolveToResourceId"}))
    ListActionsRequest.type = Types::ListActionsRequest
    ListActionsResponse.add_member(:action_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionSummaries, location_name: 'actionSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes the actions associated with the specified asset.</p>", "smithy.api#required" => {}}))
    ListActionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>", "smithy.api#required" => {}}))
    ListActionsResponse.type = Types::ListActionsResponse
    ListAssetModelCompositeModelsRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetModelCompositeModelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssetModelCompositeModelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>\n         <p>Default: 50</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssetModelCompositeModelsRequest.add_member(:asset_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelVersionFilter, location_name: 'assetModelVersion', traits: {"smithy.api#documentation" => "<p>The version alias that specifies the latest or active version of the asset model. \n          The details are returned in the response. The default value is <code>LATEST</code>. See <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html\">\n          Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "assetModelVersion"}))
    ListAssetModelCompositeModelsRequest.type = Types::ListAssetModelCompositeModelsRequest
    ListAssetModelCompositeModelsResponse.add_member(:asset_model_composite_model_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelCompositeModelSummaries, location_name: 'assetModelCompositeModelSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes each composite model.</p>", "smithy.api#required" => {}}))
    ListAssetModelCompositeModelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListAssetModelCompositeModelsResponse.type = Types::ListAssetModelCompositeModelsResponse
    ListAssetModelPropertiesFilter.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    ListAssetModelPropertiesFilter.add_member(:base, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BASE', traits: {"smithy.api#enumValue" => "BASE"}))
    ListAssetModelPropertiesRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetModelPropertiesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssetModelPropertiesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request. If not specified, the default value is 50.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssetModelPropertiesRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetModelPropertiesFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p> Filters the requested list of asset model properties. You can choose one of the following\n      options:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALL</code> – The list includes all asset model properties for a given asset\n          model ID. </p>\n            </li>\n            <li>\n               <p>\n                  <code>BASE</code> – The list includes only base asset model properties for a given\n          asset model ID. </p>\n            </li>\n         </ul>\n         <p>Default: <code>BASE</code>\n         </p>", "smithy.api#httpQuery" => "filter"}))
    ListAssetModelPropertiesRequest.add_member(:asset_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelVersionFilter, location_name: 'assetModelVersion', traits: {"smithy.api#documentation" => "<p>The version alias that specifies the latest or active version of the asset model. \n          The details are returned in the response. The default value is <code>LATEST</code>. See <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html\">\n          Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "assetModelVersion"}))
    ListAssetModelPropertiesRequest.type = Types::ListAssetModelPropertiesRequest
    ListAssetModelPropertiesResponse.add_member(:asset_model_property_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelPropertySummaries, location_name: 'assetModelPropertySummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes the properties associated with the specified asset model.</p>", "smithy.api#required" => {}}))
    ListAssetModelPropertiesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListAssetModelPropertiesResponse.type = Types::ListAssetModelPropertiesResponse
    ListAssetModelsRequest.add_member(:asset_model_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetModelsTypeFilter, location_name: 'assetModelTypes', traits: {"smithy.api#documentation" => "<p>The type of asset model. If you don't provide an <code>assetModelTypes</code>, all types\n      of asset models are returned.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>ASSET_MODEL</b> – An asset model that you can use\n          to create assets. Can't be included as a component in another asset model.</p>\n            </li>\n            <li>\n               <p>\n                  <b>COMPONENT_MODEL</b> – A reusable component that\n          you can include in the composite models of other asset models. You can't create\n          assets directly from this type of asset model. </p>\n            </li>\n            <li>\n               <p>\n                  <b>INTERFACE</b> – An interface is a type of model\n          that defines a standard structure that can be applied to different asset models.</p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "assetModelTypes"}))
    ListAssetModelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssetModelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>\n         <p>Default: 50</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssetModelsRequest.add_member(:asset_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelVersionFilter, location_name: 'assetModelVersion', traits: {"smithy.api#documentation" => "<p>The version alias that specifies the latest or active version of the asset model. \n          The details are returned in the response. The default value is <code>LATEST</code>. See <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html\">\n          Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "assetModelVersion"}))
    ListAssetModelsRequest.type = Types::ListAssetModelsRequest
    ListAssetModelsResponse.add_member(:asset_model_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelSummaries, location_name: 'assetModelSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes each asset model.</p>", "smithy.api#required" => {}}))
    ListAssetModelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListAssetModelsResponse.type = Types::ListAssetModelsResponse
    ListAssetModelsTypeFilter.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelType)
    ListAssetPropertiesFilter.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    ListAssetPropertiesFilter.add_member(:base, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BASE', traits: {"smithy.api#enumValue" => "BASE"}))
    ListAssetPropertiesRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetPropertiesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssetPropertiesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request. If not specified, the default value is 50.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssetPropertiesRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetPropertiesFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p> Filters the requested list of asset properties. You can choose one of the following\n      options:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALL</code> – The list includes all asset properties for a given asset model ID.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>BASE</code> – The list includes only base asset properties for a given asset\n          model ID. </p>\n            </li>\n         </ul>\n         <p>Default: <code>BASE</code>\n         </p>", "smithy.api#httpQuery" => "filter"}))
    ListAssetPropertiesRequest.type = Types::ListAssetPropertiesRequest
    ListAssetPropertiesResponse.add_member(:asset_property_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertySummaries, location_name: 'assetPropertySummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes the properties associated with the specified asset.</p>", "smithy.api#required" => {}}))
    ListAssetPropertiesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListAssetPropertiesResponse.type = Types::ListAssetPropertiesResponse
    ListAssetRelationshipsRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetRelationshipsRequest.add_member(:traversal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TraversalType, location_name: 'traversalType', traits: {"smithy.api#documentation" => "<p>The type of traversal to use to identify asset relationships. Choose the following\n      option:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PATH_TO_ROOT</code> – Identify the asset's parent assets up to the root\n          asset. The asset that you specify in <code>assetId</code> is the first result in the list\n          of <code>assetRelationshipSummaries</code>, and the root asset is the last result.</p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "traversalType", "smithy.api#required" => {}}))
    ListAssetRelationshipsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssetRelationshipsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssetRelationshipsRequest.type = Types::ListAssetRelationshipsRequest
    ListAssetRelationshipsResponse.add_member(:asset_relationship_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetRelationshipSummaries, location_name: 'assetRelationshipSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes each asset relationship.</p>", "smithy.api#required" => {}}))
    ListAssetRelationshipsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListAssetRelationshipsResponse.type = Types::ListAssetRelationshipsResponse
    ListAssetsFilter.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    ListAssetsFilter.add_member(:top_level, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOP_LEVEL', traits: {"smithy.api#enumValue" => "TOP_LEVEL"}))
    ListAssetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>\n         <p>Default: 50</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssetsRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model by which to filter the list of assets. This parameter is\n      required if you choose <code>ALL</code> for <code>filter</code>. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "assetModelId"}))
    ListAssetsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetsFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>The filter for the requested list of assets. Choose one of the following options:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALL</code> – The list includes all assets for a given asset model ID. The\n            <code>assetModelId</code> parameter is required if you filter by\n          <code>ALL</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TOP_LEVEL</code> – The list includes only top-level assets in the asset\n          hierarchy tree.</p>\n            </li>\n         </ul>\n         <p>Default: <code>ALL</code>\n         </p>", "smithy.api#httpQuery" => "filter"}))
    ListAssetsRequest.type = Types::ListAssetsRequest
    ListAssetsResponse.add_member(:asset_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetSummaries, location_name: 'assetSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes each asset.</p>", "smithy.api#required" => {}}))
    ListAssetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListAssetsResponse.type = Types::ListAssetsResponse
    ListAssociatedAssetsRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset to query. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociatedAssetsRequest.add_member(:hierarchy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'hierarchyId', traits: {"smithy.api#documentation" => "<p>(Optional) If you don't provide a <code>hierarchyId</code>, all the immediate assets in\n      the <code>traversalDirection</code> will be returned. </p>\n         <p> The ID of the hierarchy by which child assets are associated to the asset.\n      (This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.)</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "hierarchyId"}))
    ListAssociatedAssetsRequest.add_member(:traversal_direction, Smithy::Schema::Shapes::ShapeRef.new(shape: TraversalDirection, location_name: 'traversalDirection', traits: {"smithy.api#documentation" => "<p>The direction to list associated assets. Choose one of the following options:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CHILD</code> – The list includes all child assets associated to the\n          asset.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PARENT</code> – The list includes the asset's parent asset.</p>\n            </li>\n         </ul>\n         <p>Default: <code>CHILD</code>\n         </p>", "smithy.api#httpQuery" => "traversalDirection"}))
    ListAssociatedAssetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAssociatedAssetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>\n         <p>Default: 50</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAssociatedAssetsRequest.type = Types::ListAssociatedAssetsRequest
    ListAssociatedAssetsResponse.add_member(:asset_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedAssetsSummaries, location_name: 'assetSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes the associated assets.</p>", "smithy.api#required" => {}}))
    ListAssociatedAssetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListAssociatedAssetsResponse.type = Types::ListAssociatedAssetsResponse
    ListBulkImportJobsFilter.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    ListBulkImportJobsFilter.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ListBulkImportJobsFilter.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ListBulkImportJobsFilter.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ListBulkImportJobsFilter.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ListBulkImportJobsFilter.add_member(:completed_with_failures, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED_WITH_FAILURES', traits: {"smithy.api#enumValue" => "COMPLETED_WITH_FAILURES"}))
    ListBulkImportJobsFilter.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ListBulkImportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListBulkImportJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListBulkImportJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListBulkImportJobsFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>You can use a filter to select the bulk import jobs that you want to retrieve.</p>", "smithy.api#httpQuery" => "filter"}))
    ListBulkImportJobsRequest.type = Types::ListBulkImportJobsRequest
    ListBulkImportJobsResponse.add_member(:job_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummaries, location_name: 'jobSummaries', traits: {"smithy.api#documentation" => "<p>One or more job summaries to list.</p>", "smithy.api#required" => {}}))
    ListBulkImportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListBulkImportJobsResponse.type = Types::ListBulkImportJobsResponse
    ListCompositionRelationshipsRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCompositionRelationshipsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCompositionRelationshipsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>\n         <p>Default: 50</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCompositionRelationshipsRequest.type = Types::ListCompositionRelationshipsRequest
    ListCompositionRelationshipsResponse.add_member(:composition_relationship_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositionRelationshipSummaries, location_name: 'compositionRelationshipSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes each composition relationship.</p>", "smithy.api#required" => {}}))
    ListCompositionRelationshipsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListCompositionRelationshipsResponse.type = Types::ListCompositionRelationshipsResponse
    ListComputationModelDataBindingUsagesRequest.add_member(:data_binding_value_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: DataBindingValueFilter, location_name: 'dataBindingValueFilter', traits: {"smithy.api#documentation" => "<p>A filter used to limit the returned data binding usages based on specific data binding\n      values. You can filter by asset, asset model, asset property, or asset model property to find\n      all computation models using these specific data sources.</p>", "smithy.api#required" => {}}))
    ListComputationModelDataBindingUsagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token used for the next set of paginated results.</p>"}))
    ListComputationModelDataBindingUsagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results returned for each paginated request.</p>"}))
    ListComputationModelDataBindingUsagesRequest.type = Types::ListComputationModelDataBindingUsagesRequest
    ListComputationModelDataBindingUsagesResponse.add_member(:data_binding_usage_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelDataBindingUsageSummaries, location_name: 'dataBindingUsageSummaries', traits: {"smithy.api#documentation" => "<p>A list of summaries describing the data binding usages across computation models. Each\n      summary includes the computation model IDs and the matched data binding details.</p>", "smithy.api#required" => {}}))
    ListComputationModelDataBindingUsagesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of paginated results, or null if there are no additional\n      results.</p>"}))
    ListComputationModelDataBindingUsagesResponse.type = Types::ListComputationModelDataBindingUsagesResponse
    ListComputationModelResolveToResourcesRequest.add_member(:computation_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'computationModelId', traits: {"smithy.api#documentation" => "<p>The ID of the computation model for which to list resolved resources.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComputationModelResolveToResourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListComputationModelResolveToResourcesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results returned for each paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListComputationModelResolveToResourcesRequest.type = Types::ListComputationModelResolveToResourcesRequest
    ListComputationModelResolveToResourcesResponse.add_member(:computation_model_resolve_to_resource_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelResolveToResourceSummaries, location_name: 'computationModelResolveToResourceSummaries', traits: {"smithy.api#documentation" => "<p>A list of summaries describing the distinct resources that this computation model resolves\n      to when actions were executed.</p>", "smithy.api#required" => {}}))
    ListComputationModelResolveToResourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of paginated results, or null if there are no additional\n      results.</p>"}))
    ListComputationModelResolveToResourcesResponse.type = Types::ListComputationModelResolveToResourcesResponse
    ListComputationModelsRequest.add_member(:computation_model_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelType, location_name: 'computationModelType', traits: {"smithy.api#documentation" => "<p>The type of computation model. If a <code>computationModelType</code> is not provided, all\n      types of computation models are returned.</p>", "smithy.api#httpQuery" => "computationModelType"}))
    ListComputationModelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListComputationModelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListComputationModelsRequest.type = Types::ListComputationModelsRequest
    ListComputationModelsResponse.add_member(:computation_model_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelSummaries, location_name: 'computationModelSummaries', traits: {"smithy.api#documentation" => "<p>A list summarizing each computation model.</p>", "smithy.api#required" => {}}))
    ListComputationModelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListComputationModelsResponse.type = Types::ListComputationModelsResponse
    ListDashboardsRequest.add_member(:project_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'projectId', traits: {"smithy.api#documentation" => "<p>The ID of the project.</p>", "smithy.api#httpQuery" => "projectId", "smithy.api#required" => {}}))
    ListDashboardsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDashboardsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>\n         <p>Default: 50</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDashboardsRequest.type = Types::ListDashboardsRequest
    ListDashboardsResponse.add_member(:dashboard_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardSummaries, location_name: 'dashboardSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes each dashboard in the project.</p>", "smithy.api#required" => {}}))
    ListDashboardsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListDashboardsResponse.type = Types::ListDashboardsResponse
    ListDatasetsRequest.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSourceType, location_name: 'sourceType', traits: {"smithy.api#documentation" => "<p>The type of data source for the dataset.</p>", "smithy.api#httpQuery" => "sourceType", "smithy.api#required" => {}}))
    ListDatasetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDatasetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDatasetsRequest.type = Types::ListDatasetsRequest
    ListDatasetsResponse.add_member(:dataset_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSummaries, location_name: 'datasetSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes the dataset response.</p>", "smithy.api#required" => {}}))
    ListDatasetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListDatasetsResponse.type = Types::ListDatasetsResponse
    ListExecutionsRequest.add_member(:target_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetResourceType, location_name: 'targetResourceType', traits: {"smithy.api#documentation" => "<p>The type of the target resource.</p>", "smithy.api#httpQuery" => "targetResourceType", "smithy.api#required" => {}}))
    ListExecutionsRequest.add_member(:target_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'targetResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the target resource.</p>", "smithy.api#httpQuery" => "targetResourceId", "smithy.api#required" => {}}))
    ListExecutionsRequest.add_member(:resolve_to_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveToResourceType, location_name: 'resolveToResourceType', traits: {"smithy.api#documentation" => "<p>The type of the resolved resource.</p>", "smithy.api#httpQuery" => "resolveToResourceType"}))
    ListExecutionsRequest.add_member(:resolve_to_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'resolveToResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resolved resource.</p>", "smithy.api#httpQuery" => "resolveToResourceId"}))
    ListExecutionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListExecutionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results returned for each paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListExecutionsRequest.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'actionType', traits: {"smithy.api#documentation" => "<p>The type of action exectued.</p>", "smithy.api#httpQuery" => "actionType"}))
    ListExecutionsRequest.type = Types::ListExecutionsRequest
    ListExecutionsResponse.add_member(:execution_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionSummaries, location_name: 'executionSummaries', traits: {"smithy.api#documentation" => "<p>Contains the list of execution summaries of the computation models.</p>", "smithy.api#required" => {}}))
    ListExecutionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListExecutionsResponse.type = Types::ListExecutionsResponse
    ListGatewaysRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListGatewaysRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>\n         <p>Default: 50</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListGatewaysRequest.type = Types::ListGatewaysRequest
    ListGatewaysResponse.add_member(:gateway_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewaySummaries, location_name: 'gatewaySummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes each gateway.</p>", "smithy.api#required" => {}}))
    ListGatewaysResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListGatewaysResponse.type = Types::ListGatewaysResponse
    ListInterfaceRelationshipsRequest.add_member(:interface_asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'interfaceAssetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the interface asset model. This can be either the actual ID in UUID format, or\n      else externalId: followed by the external ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInterfaceRelationshipsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListInterfaceRelationshipsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request. Default: 50</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListInterfaceRelationshipsRequest.type = Types::ListInterfaceRelationshipsRequest
    ListInterfaceRelationshipsResponse.add_member(:interface_relationship_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: InterfaceRelationshipSummaries, location_name: 'interfaceRelationshipSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes each interface relationship.</p>", "smithy.api#required" => {}}))
    ListInterfaceRelationshipsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListInterfaceRelationshipsResponse.type = Types::ListInterfaceRelationshipsResponse
    ListPortalsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPortalsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>\n         <p>Default: 50</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPortalsRequest.type = Types::ListPortalsRequest
    ListPortalsResponse.add_member(:portal_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalSummaries, location_name: 'portalSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes each portal.</p>"}))
    ListPortalsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListPortalsResponse.type = Types::ListPortalsResponse
    ListProjectAssetsRequest.add_member(:project_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'projectId', traits: {"smithy.api#documentation" => "<p>The ID of the project.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProjectAssetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListProjectAssetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>\n         <p>Default: 50</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListProjectAssetsRequest.type = Types::ListProjectAssetsRequest
    ListProjectAssetsResponse.add_member(:asset_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetIDs, location_name: 'assetIds', traits: {"smithy.api#documentation" => "<p>A list that contains the IDs of each asset associated with the project.</p>", "smithy.api#required" => {}}))
    ListProjectAssetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListProjectAssetsResponse.type = Types::ListProjectAssetsResponse
    ListProjectsRequest.add_member(:portal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'portalId', traits: {"smithy.api#documentation" => "<p>The ID of the portal.</p>", "smithy.api#httpQuery" => "portalId", "smithy.api#required" => {}}))
    ListProjectsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListProjectsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>\n         <p>Default: 50</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListProjectsRequest.type = Types::ListProjectsRequest
    ListProjectsResponse.add_member(:project_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSummaries, location_name: 'projectSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes each project in the portal.</p>", "smithy.api#required" => {}}))
    ListProjectsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListProjectsResponse.type = Types::ListProjectsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of key-value pairs that contain metadata for the resource. For more information,\n      see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your IoT SiteWise\n        resources</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTimeSeriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListTimeSeriesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return for each paginated request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListTimeSeriesRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpQuery" => "assetId"}))
    ListTimeSeriesRequest.add_member(:alias_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyAlias, location_name: 'aliasPrefix', traits: {"smithy.api#documentation" => "<p>The alias prefix of the time series.</p>", "smithy.api#httpQuery" => "aliasPrefix"}))
    ListTimeSeriesRequest.add_member(:time_series_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ListTimeSeriesType, location_name: 'timeSeriesType', traits: {"smithy.api#documentation" => "<p>The type of the time series. The time series type can be one of the following\n      values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ASSOCIATED</code> – The time series is associated with an asset\n          property.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISASSOCIATED</code> – The time series isn't associated with any asset\n          property.</p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "timeSeriesType"}))
    ListTimeSeriesRequest.type = Types::ListTimeSeriesRequest
    ListTimeSeriesResponse.add_member(:time_series_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesSummaries, location_name: 'TimeSeriesSummaries', traits: {"smithy.api#documentation" => "<p>One or more time series summaries to list.</p>", "smithy.api#required" => {}}))
    ListTimeSeriesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results.</p>"}))
    ListTimeSeriesResponse.type = Types::ListTimeSeriesResponse
    ListTimeSeriesType.add_member(:associated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATED', traits: {"smithy.api#enumValue" => "ASSOCIATED"}))
    ListTimeSeriesType.add_member(:disassociated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISASSOCIATED', traits: {"smithy.api#enumValue" => "DISASSOCIATED"}))
    Location.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'uri', traits: {"smithy.api#documentation" => "<p>The URI of the location.</p>"}))
    Location.type = Types::Location
    LoggingLevel.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    LoggingLevel.add_member(:info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    LoggingLevel.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "OFF"}))
    LoggingOptions.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingLevel, location_name: 'level', traits: {"smithy.api#documentation" => "<p>The IoT SiteWise logging verbosity level.</p>", "smithy.api#required" => {}}))
    LoggingOptions.type = Types::LoggingOptions
    MatchedDataBinding.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: DataBindingValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the matched data binding.</p>", "smithy.api#required" => {}}))
    MatchedDataBinding.type = Types::MatchedDataBinding
    Measurement.add_member(:processing_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MeasurementProcessingConfig, location_name: 'processingConfig', traits: {"smithy.api#documentation" => "<p>The processing configuration for the given measurement property.\n      You can configure measurements to be kept at the edge or forwarded to the Amazon Web Services Cloud.\n      By default, measurements are forwarded to the cloud.</p>"}))
    Measurement.type = Types::Measurement
    MeasurementProcessingConfig.add_member(:forwarding_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ForwardingConfig, location_name: 'forwardingConfig', traits: {"smithy.api#documentation" => "<p>The forwarding configuration for the given measurement property. </p>", "smithy.api#required" => {}}))
    MeasurementProcessingConfig.type = Types::MeasurementProcessingConfig
    Metric.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'expression', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "", "smithy.api#documentation" => "<p>The mathematical expression that defines the metric aggregation function. You can specify\n      up to 10 variables per expression. You can specify up to 10 functions\n      per expression. </p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    Metric.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionVariables, location_name: 'variables', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => [], "smithy.api#documentation" => "<p>The list of variables used in the expression.</p>"}))
    Metric.add_member(:window, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricWindow, location_name: 'window', traits: {"smithy.api#documentation" => "<p>The window (time interval) over which IoT SiteWise computes the metric's aggregation expression.\n      IoT SiteWise computes one data point per <code>window</code>.</p>", "smithy.api#required" => {}}))
    Metric.add_member(:processing_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricProcessingConfig, location_name: 'processingConfig', traits: {"smithy.api#documentation" => "<p>The processing configuration for the given metric property.\n      You can configure metrics to be computed at the edge or in the Amazon Web Services Cloud.\n      By default, metrics are forwarded to the cloud.</p>"}))
    Metric.type = Types::Metric
    MetricProcessingConfig.add_member(:compute_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeLocation, location_name: 'computeLocation', traits: {"smithy.api#documentation" => "<p>The compute location for the given metric property. </p>", "smithy.api#required" => {}}))
    MetricProcessingConfig.type = Types::MetricProcessingConfig
    MetricWindow.add_member(:tumbling, Smithy::Schema::Shapes::ShapeRef.new(shape: TumblingWindow, location_name: 'tumbling', traits: {"smithy.api#documentation" => "<p>The tumbling time interval window.</p>"}))
    MetricWindow.type = Types::MetricWindow
    MonitorErrorCode.add_member(:internal_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    MonitorErrorCode.add_member(:validation_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_ERROR', traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    MonitorErrorCode.add_member(:limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED"}))
    MonitorErrorDetails.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    MonitorErrorDetails.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    MonitorErrorDetails.type = Types::MonitorErrorDetails
    MultiLayerStorage.add_member(:customer_managed_s3_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerManagedS3Storage, location_name: 'customerManagedS3Storage', traits: {"smithy.api#documentation" => "<p>Contains information about a customer managed Amazon S3 bucket.</p>", "smithy.api#required" => {}}))
    MultiLayerStorage.type = Types::MultiLayerStorage
    Parquet.type = Types::Parquet
    Permission.add_member(:administrator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADMINISTRATOR', traits: {"smithy.api#enumValue" => "ADMINISTRATOR"}))
    Permission.add_member(:viewer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIEWER', traits: {"smithy.api#enumValue" => "VIEWER"}))
    PortalResource.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the portal.</p>", "smithy.api#required" => {}}))
    PortalResource.type = Types::PortalResource
    PortalState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    PortalState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    PortalState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    PortalState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    PortalState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    PortalState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    PortalStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The current state of the portal.</p>", "smithy.api#required" => {}}))
    PortalStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorErrorDetails, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Contains associated error information, if any.</p>"}))
    PortalStatus.type = Types::PortalStatus
    PortalSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PortalSummary)
    PortalSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the portal.</p>", "smithy.api#required" => {}}))
    PortalSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the portal.</p>", "smithy.api#required" => {}}))
    PortalSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The portal's description.</p>"}))
    PortalSummary.add_member(:start_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'startUrl', traits: {"smithy.api#documentation" => "<p>The URL for the IoT SiteWise Monitor portal. You can use this URL to access portals that\n      use IAM Identity Center for authentication. For portals that use IAM for authentication, you must use the\n      IoT SiteWise console to get a URL that you can use to access the portal.</p>", "smithy.api#required" => {}}))
    PortalSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the portal was created, in Unix epoch time.</p>"}))
    PortalSummary.add_member(:last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the portal was last updated, in Unix epoch time.</p>"}))
    PortalSummary.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the service role that allows the portal's users to access your IoT SiteWise\n      resources on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html\">Using service roles for IoT SiteWise Monitor</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>"}))
    PortalSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    PortalSummary.add_member(:portal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalType, location_name: 'portalType', traits: {"smithy.api#documentation" => "<p>Define the type of portal. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>"}))
    PortalSummary.type = Types::PortalSummary
    PortalTools.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    PortalType.add_member(:sitewise_portal_v1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SITEWISE_PORTAL_V1', traits: {"smithy.api#enumValue" => "SITEWISE_PORTAL_V1"}))
    PortalType.add_member(:sitewise_portal_v2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SITEWISE_PORTAL_V2', traits: {"smithy.api#enumValue" => "SITEWISE_PORTAL_V2"}))
    PortalTypeConfiguration.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PortalTypeKey)
    PortalTypeConfiguration.value = Smithy::Schema::Shapes::ShapeRef.new(shape: PortalTypeEntry)
    PortalTypeEntry.add_member(:portal_tools, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalTools, location_name: 'portalTools', traits: {"smithy.api#documentation" => "<p>The array of tools associated with the specified portal type. The possible values are <code>ASSISTANT</code> and <code>DASHBOARD</code>.</p>"}))
    PortalTypeEntry.type = Types::PortalTypeEntry
    PreconditionFailedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    PreconditionFailedException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource on which precondition failed with this operation.</p>", "smithy.api#required" => {}}))
    PreconditionFailedException.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource on which precondition failed with this operation.</p>", "smithy.api#required" => {}}))
    PreconditionFailedException.type = Types::PreconditionFailedException
    ProjectResource.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the project.</p>", "smithy.api#required" => {}}))
    ProjectResource.type = Types::ProjectResource
    ProjectSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSummary)
    ProjectSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the project.</p>", "smithy.api#required" => {}}))
    ProjectSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the project.</p>", "smithy.api#required" => {}}))
    ProjectSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The project's description.</p>"}))
    ProjectSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the project was created, in Unix epoch time.</p>"}))
    ProjectSummary.add_member(:last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date the project was last updated, in Unix epoch time.</p>"}))
    ProjectSummary.type = Types::ProjectSummary
    Property.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the asset property.</p>", "smithy.api#required" => {}}))
    Property.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID of the asset property. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    Property.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the property.</p>", "smithy.api#required" => {}}))
    Property.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the property, such as an OPC-UA server data stream path\n        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>"}))
    Property.add_member(:notification, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyNotification, location_name: 'notification', traits: {"smithy.api#documentation" => "<p>The asset property's notification topic and state. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html\">UpdateAssetProperty</a>.</p>"}))
    Property.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The property data type.</p>", "smithy.api#required" => {}}))
    Property.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyUnit, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>The unit (such as <code>Newtons</code> or <code>RPM</code>) of the asset property.</p>"}))
    Property.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The property type (see <code>PropertyType</code>). A property contains one type.</p>"}))
    Property.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyPath, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The structured path to the property from the root of the asset.</p>"}))
    Property.type = Types::Property
    PropertyDataType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    PropertyDataType.add_member(:integer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTEGER', traits: {"smithy.api#enumValue" => "INTEGER"}))
    PropertyDataType.add_member(:double, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE', traits: {"smithy.api#enumValue" => "DOUBLE"}))
    PropertyDataType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    PropertyDataType.add_member(:struct, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRUCT', traits: {"smithy.api#enumValue" => "STRUCT"}))
    PropertyMapping.add_member(:asset_model_property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelPropertyId', traits: {"smithy.api#documentation" => "<p>The ID of the property in the asset model where the interface is applied.</p>", "smithy.api#required" => {}}))
    PropertyMapping.add_member(:interface_asset_model_property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'interfaceAssetModelPropertyId', traits: {"smithy.api#documentation" => "<p>The ID of the property in the interface asset model.</p>", "smithy.api#required" => {}}))
    PropertyMapping.type = Types::PropertyMapping
    PropertyMappingConfiguration.add_member(:match_by_property_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MatchByPropertyName, location_name: 'matchByPropertyName', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, properties are matched by name between the interface asset model and the asset\n      model where the interface is applied.</p>"}))
    PropertyMappingConfiguration.add_member(:create_missing_property, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMissingProperty, location_name: 'createMissingProperty', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, missing properties from the interface asset model are automatically created in\n      the asset model where the interface is applied.</p>"}))
    PropertyMappingConfiguration.add_member(:overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyMappings, location_name: 'overrides', traits: {"smithy.api#documentation" => "<p>A list of specific property mappings that override the automatic mapping by name when an\n      interface is applied to an asset model.</p>"}))
    PropertyMappingConfiguration.type = Types::PropertyMappingConfiguration
    PropertyMappings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyMapping)
    PropertyNotification.add_member(:topic, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyNotificationTopic, location_name: 'topic', traits: {"smithy.api#documentation" => "<p>The MQTT topic to which IoT SiteWise publishes property value update notifications.</p>", "smithy.api#required" => {}}))
    PropertyNotification.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyNotificationState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The current notification state.</p>", "smithy.api#required" => {}}))
    PropertyNotification.type = Types::PropertyNotification
    PropertyNotificationState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    PropertyNotificationState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    PropertyType.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute, location_name: 'attribute', traits: {"smithy.api#documentation" => "<p>Specifies an asset attribute property. An attribute generally contains static information,\n      such as the serial number of an <a href=\"https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications\">IIoT</a> wind turbine.</p>"}))
    PropertyType.add_member(:measurement, Smithy::Schema::Shapes::ShapeRef.new(shape: Measurement, location_name: 'measurement', traits: {"smithy.api#documentation" => "<p>Specifies an asset measurement property. A measurement represents a device's raw sensor\n      data stream, such as timestamped temperature values or timestamped power values.</p>"}))
    PropertyType.add_member(:transform, Smithy::Schema::Shapes::ShapeRef.new(shape: Transform, location_name: 'transform', traits: {"smithy.api#documentation" => "<p>Specifies an asset transform property. A transform contains a mathematical expression that\n      maps a property's data points from one form to another, such as a unit conversion from Celsius\n      to Fahrenheit.</p>"}))
    PropertyType.add_member(:metric, Smithy::Schema::Shapes::ShapeRef.new(shape: Metric, location_name: 'metric', traits: {"smithy.api#documentation" => "<p>Specifies an asset metric property. A metric contains a mathematical expression that uses\n      aggregate functions to process all input data points over a time interval and output a single\n      data point, such as to calculate the average hourly temperature.</p>"}))
    PropertyType.type = Types::PropertyType
    PropertyValueNullValue.add_member(:value_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RawValueType, location_name: 'valueType', traits: {"smithy.api#documentation" => "<p>The type of null asset property data.</p>", "smithy.api#required" => {}}))
    PropertyValueNullValue.type = Types::PropertyValueNullValue
    PutAssetModelInterfaceRelationshipRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model. This can be either the actual ID in UUID format, or else\n      externalId: followed by the external ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAssetModelInterfaceRelationshipRequest.add_member(:interface_asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'interfaceAssetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the interface asset model. This can be either the actual ID in UUID format, or\n      else externalId: followed by the external ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAssetModelInterfaceRelationshipRequest.add_member(:property_mapping_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyMappingConfiguration, location_name: 'propertyMappingConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for mapping properties from the interface asset model to the asset model\n      where the interface is applied. This configuration controls how properties are matched and\n      created during the interface application process.</p>", "smithy.api#required" => {}}))
    PutAssetModelInterfaceRelationshipRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the\n      request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    PutAssetModelInterfaceRelationshipRequest.type = Types::PutAssetModelInterfaceRelationshipRequest
    PutAssetModelInterfaceRelationshipResponse.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model.</p>", "smithy.api#required" => {}}))
    PutAssetModelInterfaceRelationshipResponse.add_member(:interface_asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'interfaceAssetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the interface asset model.</p>", "smithy.api#required" => {}}))
    PutAssetModelInterfaceRelationshipResponse.add_member(:asset_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'assetModelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the asset model, which has the following format.\n      <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>\n         </p>", "smithy.api#required" => {}}))
    PutAssetModelInterfaceRelationshipResponse.add_member(:asset_model_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelStatus, location_name: 'assetModelStatus', traits: {"smithy.api#required" => {}}))
    PutAssetModelInterfaceRelationshipResponse.type = Types::PutAssetModelInterfaceRelationshipResponse
    PutAssetPropertyValueEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAssetPropertyValueEntry)
    PutAssetPropertyValueEntry.add_member(:entry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntryId, location_name: 'entryId', traits: {"smithy.api#documentation" => "<p>The user specified ID for the entry. You can use this ID to identify which entries\n      failed.</p>", "smithy.api#required" => {}}))
    PutAssetPropertyValueEntry.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset to update.</p>"}))
    PutAssetPropertyValueEntry.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property for this entry.</p>"}))
    PutAssetPropertyValueEntry.add_member(:property_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: 'propertyAlias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the property, such as an OPC-UA server data stream path\n        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>"}))
    PutAssetPropertyValueEntry.add_member(:property_values, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetPropertyValues, location_name: 'propertyValues', traits: {"smithy.api#documentation" => "<p>The list of property values to upload. You can specify up to 10\n        <code>propertyValues</code> array elements. </p>", "smithy.api#required" => {}}))
    PutAssetPropertyValueEntry.type = Types::PutAssetPropertyValueEntry
    PutDefaultEncryptionConfigurationRequest.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'encryptionType', traits: {"smithy.api#documentation" => "<p>The type of encryption used for the encryption configuration.</p>", "smithy.api#required" => {}}))
    PutDefaultEncryptionConfigurationRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The Key ID of the customer managed key used for KMS encryption. This is required if you\n      use <code>KMS_BASED_ENCRYPTION</code>.</p>"}))
    PutDefaultEncryptionConfigurationRequest.type = Types::PutDefaultEncryptionConfigurationRequest
    PutDefaultEncryptionConfigurationResponse.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'encryptionType', traits: {"smithy.api#documentation" => "<p>The type of encryption used for the encryption configuration.</p>", "smithy.api#required" => {}}))
    PutDefaultEncryptionConfigurationResponse.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Key ARN of the KMS key used for KMS encryption if you use\n        <code>KMS_BASED_ENCRYPTION</code>.</p>"}))
    PutDefaultEncryptionConfigurationResponse.add_member(:configuration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationStatus, location_name: 'configurationStatus', traits: {"smithy.api#documentation" => "<p>The status of the account configuration. This contains the\n      <code>ConfigurationState</code>. If there is an error, it also contains the\n        <code>ErrorDetails</code>.</p>", "smithy.api#required" => {}}))
    PutDefaultEncryptionConfigurationResponse.type = Types::PutDefaultEncryptionConfigurationResponse
    PutLoggingOptionsRequest.add_member(:logging_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingOptions, location_name: 'loggingOptions', traits: {"smithy.api#documentation" => "<p>The logging options to set.</p>", "smithy.api#required" => {}}))
    PutLoggingOptionsRequest.type = Types::PutLoggingOptionsRequest
    PutLoggingOptionsResponse.type = Types::PutLoggingOptionsResponse
    PutStorageConfigurationRequest.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType, location_name: 'storageType', traits: {"smithy.api#documentation" => "<p>The storage tier that you specified for your data.\n      The <code>storageType</code> parameter can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SITEWISE_DEFAULT_STORAGE</code> – IoT SiteWise saves your data into the hot tier.\n          The hot tier is a service-managed database.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MULTI_LAYER_STORAGE</code> – IoT SiteWise saves your data in both the cold tier and the hot tier.\n          The cold tier is a customer-managed Amazon S3 bucket.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    PutStorageConfigurationRequest.add_member(:multi_layer_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiLayerStorage, location_name: 'multiLayerStorage', traits: {"smithy.api#documentation" => "<p>Identifies a storage destination. If you specified <code>MULTI_LAYER_STORAGE</code> for the storage type,\n      you must specify a <code>MultiLayerStorage</code> object.</p>"}))
    PutStorageConfigurationRequest.add_member(:disassociated_data_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatedDataStorageState, location_name: 'disassociatedDataStorage', traits: {"smithy.api#documentation" => "<p>Contains the storage configuration for time series (data streams) that aren't associated with asset properties.\n      The <code>disassociatedDataStorage</code> can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – IoT SiteWise accepts time series that aren't associated with asset properties.</p>\n               <important>\n                  <p>After the <code>disassociatedDataStorage</code> is enabled, you can't disable it.</p>\n               </important>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – IoT SiteWise doesn't accept time series (data streams) that aren't associated with asset properties.</p>\n            </li>\n         </ul>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html\">Data streams</a>\n    in the <i>IoT SiteWise User Guide</i>.</p>"}))
    PutStorageConfigurationRequest.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod'))
    PutStorageConfigurationRequest.add_member(:warm_tier, Smithy::Schema::Shapes::ShapeRef.new(shape: WarmTierState, location_name: 'warmTier', traits: {"smithy.api#documentation" => "<p>A service managed storage tier optimized for analytical queries. It stores periodically uploaded, buffered and historical data ingested with the CreaeBulkImportJob API.</p>"}))
    PutStorageConfigurationRequest.add_member(:warm_tier_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: WarmTierRetentionPeriod, location_name: 'warmTierRetentionPeriod', traits: {"smithy.api#documentation" => "<p>Set this period to specify how long your data is stored in the warm tier before it is deleted. You can set this only if cold tier is enabled.</p>"}))
    PutStorageConfigurationRequest.add_member(:disallow_ingest_null_na_n, Smithy::Schema::Shapes::ShapeRef.new(shape: DisallowIngestNullNaN, location_name: 'disallowIngestNullNaN', traits: {"smithy.api#documentation" => "<p>Describes the configuration for ingesting NULL and NaN data. By default the feature is\n      allowed. The feature is disallowed if the value is <code>true</code>.</p>"}))
    PutStorageConfigurationRequest.type = Types::PutStorageConfigurationRequest
    PutStorageConfigurationResponse.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType, location_name: 'storageType', traits: {"smithy.api#documentation" => "<p>The storage tier that you specified for your data.\n      The <code>storageType</code> parameter can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SITEWISE_DEFAULT_STORAGE</code> – IoT SiteWise saves your data into the hot tier.\n          The hot tier is a service-managed database.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MULTI_LAYER_STORAGE</code> – IoT SiteWise saves your data in both the cold tier and the hot tier.\n          The cold tier is a customer-managed Amazon S3 bucket.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    PutStorageConfigurationResponse.add_member(:multi_layer_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiLayerStorage, location_name: 'multiLayerStorage', traits: {"smithy.api#documentation" => "<p>Contains information about the storage destination.</p>"}))
    PutStorageConfigurationResponse.add_member(:disassociated_data_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatedDataStorageState, location_name: 'disassociatedDataStorage', traits: {"smithy.api#documentation" => "<p>Contains the storage configuration for time series (data streams) that aren't associated with asset properties.\n      The <code>disassociatedDataStorage</code> can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – IoT SiteWise accepts time series that aren't associated with asset properties.</p>\n               <important>\n                  <p>After the <code>disassociatedDataStorage</code> is enabled, you can't disable it.</p>\n               </important>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – IoT SiteWise doesn't accept time series (data streams) that aren't associated with asset properties.</p>\n            </li>\n         </ul>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html\">Data streams</a>\n    in the <i>IoT SiteWise User Guide</i>.</p>"}))
    PutStorageConfigurationResponse.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'retentionPeriod'))
    PutStorageConfigurationResponse.add_member(:configuration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationStatus, location_name: 'configurationStatus', traits: {"smithy.api#required" => {}}))
    PutStorageConfigurationResponse.add_member(:warm_tier, Smithy::Schema::Shapes::ShapeRef.new(shape: WarmTierState, location_name: 'warmTier', traits: {"smithy.api#documentation" => "<p>A service managed storage tier optimized for analytical queries. It stores periodically uploaded, buffered and historical data ingested with the CreaeBulkImportJob API.</p>"}))
    PutStorageConfigurationResponse.add_member(:warm_tier_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: WarmTierRetentionPeriod, location_name: 'warmTierRetentionPeriod', traits: {"smithy.api#documentation" => "<p>Set this period to specify how long your data is stored in the warm tier before it is deleted. You can set this only if cold tier is enabled.</p>"}))
    PutStorageConfigurationResponse.add_member(:disallow_ingest_null_na_n, Smithy::Schema::Shapes::ShapeRef.new(shape: DisallowIngestNullNaN, location_name: 'disallowIngestNullNaN', traits: {"smithy.api#documentation" => "<p>Describes the configuration for ingesting NULL and NaN data. By default the feature is\n      allowed. The feature is disallowed if the value is <code>true</code>.</p>"}))
    PutStorageConfigurationResponse.type = Types::PutStorageConfigurationResponse
    Qualities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Quality)
    Quality.add_member(:good, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GOOD', traits: {"smithy.api#enumValue" => "GOOD"}))
    Quality.add_member(:bad, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BAD', traits: {"smithy.api#enumValue" => "BAD"}))
    Quality.add_member(:uncertain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNCERTAIN', traits: {"smithy.api#enumValue" => "UNCERTAIN"}))
    QueryTimeoutException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    QueryTimeoutException.type = Types::QueryTimeoutException
    RawValueType.add_member(:double, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE', traits: {"smithy.api#enumValue" => "D"}))
    RawValueType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "B"}))
    RawValueType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "S"}))
    RawValueType.add_member(:integer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTEGER', traits: {"smithy.api#enumValue" => "I"}))
    RawValueType.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "U"}))
    Reference.add_member(:dataset, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetReference, location_name: 'dataset', traits: {"smithy.api#documentation" => "<p>Contains the dataset reference information.</p>"}))
    Reference.type = Types::Reference
    ResolveTo.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset that the resource resolves to.</p>", "smithy.api#required" => {}}))
    ResolveTo.type = Types::ResolveTo
    ResolveToResourceType.add_member(:asset, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSET', traits: {"smithy.api#enumValue" => "ASSET"}))
    Resource.add_member(:portal, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalResource, location_name: 'portal', traits: {"smithy.api#documentation" => "<p>A portal resource.</p>"}))
    Resource.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectResource, location_name: 'project', traits: {"smithy.api#documentation" => "<p>A project resource.</p>"}))
    Resource.type = Types::Resource
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceAlreadyExistsException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that already exists.</p>", "smithy.api#required" => {}}))
    ResourceAlreadyExistsException.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that already exists.</p>", "smithy.api#required" => {}}))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:portal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PORTAL', traits: {"smithy.api#enumValue" => "PORTAL"}))
    ResourceType.add_member(:project, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROJECT', traits: {"smithy.api#enumValue" => "PROJECT"}))
    ResponseStream.add_member(:trace, Types::ResponseStream::Trace, Smithy::Schema::Shapes::ShapeRef.new(shape: Trace, location_name: 'trace', traits: {"smithy.api#documentation" => "<p>Contains tracing information of the SiteWise Assistant's reasoning and data access.</p>"}))
    ResponseStream.add_member(:output, Types::ResponseStream::Output, Smithy::Schema::Shapes::ShapeRef.new(shape: InvocationOutput, location_name: 'output', traits: {"smithy.api#documentation" => "<p>Contains the SiteWise Assistant's response.</p>"}))
    ResponseStream.add_member(:access_denied_exception, Types::ResponseStream::AccessDeniedException, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException, location_name: 'accessDeniedException'))
    ResponseStream.add_member(:conflicting_operation_exception, Types::ResponseStream::ConflictingOperationException, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException, location_name: 'conflictingOperationException'))
    ResponseStream.add_member(:internal_failure_exception, Types::ResponseStream::InternalFailureException, Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException, location_name: 'internalFailureException'))
    ResponseStream.add_member(:invalid_request_exception, Types::ResponseStream::InvalidRequestException, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException, location_name: 'invalidRequestException'))
    ResponseStream.add_member(:limit_exceeded_exception, Types::ResponseStream::LimitExceededException, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException, location_name: 'limitExceededException'))
    ResponseStream.add_member(:resource_not_found_exception, Types::ResponseStream::ResourceNotFoundException, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException, location_name: 'resourceNotFoundException'))
    ResponseStream.add_member(:throttling_exception, Types::ResponseStream::ThrottlingException, Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException, location_name: 'throttlingException'))
    ResponseStream.add_member(:unknown, Types::ResponseStream::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ResponseStream.type = Types::ResponseStream
    RetentionPeriod.add_member(:number_of_days, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfDays, location_name: 'numberOfDays', traits: {"smithy.api#documentation" => "<p>The number of days that your data is kept.</p>\n         <note>\n            <p>If you specified a value for this parameter, the <code>unlimited</code> parameter must\n        be <code>false</code>.</p>\n         </note>"}))
    RetentionPeriod.add_member(:unlimited, Smithy::Schema::Shapes::ShapeRef.new(shape: Unlimited, location_name: 'unlimited', traits: {"smithy.api#documentation" => "<p>If true, your data is kept indefinitely.</p>\n         <note>\n            <p>If configured to <code>true</code>, you must not specify a value for the\n          <code>numberOfDays</code> parameter.</p>\n         </note>"}))
    RetentionPeriod.type = Types::RetentionPeriod
    Row.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: DatumList, location_name: 'data', traits: {"smithy.api#documentation" => "<p>List of data points in a single row of the result set.</p>", "smithy.api#required" => {}}))
    Row.type = Types::Row
    Rows.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Row)
    ScalarType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    ScalarType.add_member(:int, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT', traits: {"smithy.api#enumValue" => "INT"}))
    ScalarType.add_member(:double, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE', traits: {"smithy.api#enumValue" => "DOUBLE"}))
    ScalarType.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    ScalarType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SiemensIE.add_member(:iot_core_thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IotCoreThingName, location_name: 'iotCoreThingName', traits: {"smithy.api#documentation" => "<p>The name of the IoT Thing for your SiteWise Edge gateway.</p>", "smithy.api#required" => {}}))
    SiemensIE.type = Types::SiemensIE
    Source.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Contains the ARN of the dataset. If the source is Kendra, it's the ARN of the Kendra index.</p>"}))
    Source.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'location', traits: {"smithy.api#documentation" => "<p>Contains the location information where the cited text is originally stored. \n  For example, if the data source is Kendra, and the text synchronized is from an S3 bucket, then the location refers to an S3 object.</p>"}))
    Source.type = Types::Source
    SourceDetail.add_member(:kendra, Smithy::Schema::Shapes::ShapeRef.new(shape: KendraSourceDetail, location_name: 'kendra', traits: {"smithy.api#documentation" => "<p>Contains details about the Kendra dataset source.</p>"}))
    SourceDetail.type = Types::SourceDetail
    StorageType.add_member(:sitewise_default_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SITEWISE_DEFAULT_STORAGE', traits: {"smithy.api#enumValue" => "SITEWISE_DEFAULT_STORAGE"}))
    StorageType.add_member(:multi_layer_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTI_LAYER_STORAGE', traits: {"smithy.api#enumValue" => "MULTI_LAYER_STORAGE"}))
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource to tag.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that contain metadata for the resource. For more information,\n      see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your IoT SiteWise\n        resources</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetResource.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset, in UUID format.</p>"}))
    TargetResource.add_member(:computation_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'computationModelId', traits: {"smithy.api#documentation" => "<p>The ID of the computation model.</p>"}))
    TargetResource.type = Types::TargetResource
    TargetResourceType.add_member(:asset, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSET', traits: {"smithy.api#enumValue" => "ASSET"}))
    TargetResourceType.add_member(:computation_model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPUTATION_MODEL', traits: {"smithy.api#enumValue" => "COMPUTATION_MODEL"}))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TimeInNanos.add_member(:time_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeInSeconds, location_name: 'timeInSeconds', traits: {"smithy.api#documentation" => "<p>The timestamp date, in seconds, in the Unix epoch format. Fractional nanosecond data is\n      provided by <code>offsetInNanos</code>.</p>", "smithy.api#required" => {}}))
    TimeInNanos.add_member(:offset_in_nanos, Smithy::Schema::Shapes::ShapeRef.new(shape: OffsetInNanos, location_name: 'offsetInNanos', traits: {"smithy.api#documentation" => "<p>The nanosecond offset from <code>timeInSeconds</code>.</p>"}))
    TimeInNanos.type = Types::TimeInNanos
    TimeOrdering.add_member(:ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASCENDING"}))
    TimeOrdering.add_member(:descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESCENDING"}))
    TimeSeriesSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesSummary)
    TimeSeriesSummary.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset in which the asset property was created.</p>"}))
    TimeSeriesSummary.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property, in UUID format.</p>"}))
    TimeSeriesSummary.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyAlias, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the time series.</p>"}))
    TimeSeriesSummary.add_member(:time_series_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeriesId, location_name: 'timeSeriesId', traits: {"smithy.api#documentation" => "<p>The ID of the time series.</p>", "smithy.api#required" => {}}))
    TimeSeriesSummary.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The data type of the time series.</p>\n         <p>If you specify <code>STRUCT</code>, you must also specify <code>dataTypeSpec</code> to identify the type of the structure for this time series.</p>", "smithy.api#required" => {}}))
    TimeSeriesSummary.add_member(:data_type_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'dataTypeSpec', traits: {"smithy.api#documentation" => "<p>The data type of the structure for this time series. This parameter is required for time series\n      that have the <code>STRUCT</code> data type.</p>\n         <p>The options for this parameter depend on the type of the composite model\n      in which you created the asset property that is associated with your time series.\n      Use <code>AWS/ALARM_STATE</code> for alarm state in alarm composite models.</p>"}))
    TimeSeriesSummary.add_member(:time_series_creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'timeSeriesCreationDate', traits: {"smithy.api#documentation" => "<p>The date that the time series was created, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    TimeSeriesSummary.add_member(:time_series_last_update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'timeSeriesLastUpdateDate', traits: {"smithy.api#documentation" => "<p>The date that the time series was last updated, in Unix epoch time.</p>", "smithy.api#required" => {}}))
    TimeSeriesSummary.add_member(:time_series_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'timeSeriesArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the time series, which has the following format.</p>\n         <p>\n            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:time-series/${TimeSeriesId}</code>\n         </p>", "smithy.api#required" => {}}))
    TimeSeriesSummary.type = Types::TimeSeriesSummary
    Timestamps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TimeInNanos)
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TooManyTagsException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource with too many tags.</p>"}))
    TooManyTagsException.type = Types::TooManyTagsException
    Trace.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The cited text from the data source.</p>"}))
    Trace.type = Types::Trace
    Transform.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'expression', traits: {"smithy.api#documentation" => "<p>The mathematical expression that defines the transformation function. You can specify up\n      to 10 variables per expression. You can specify up to 10 functions per\n      expression. </p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#required" => {}}))
    Transform.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionVariables, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>The list of variables used in the expression.</p>", "smithy.api#required" => {}}))
    Transform.add_member(:processing_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TransformProcessingConfig, location_name: 'processingConfig', traits: {"smithy.api#documentation" => "<p>The processing configuration for the given transform property.\n      You can configure transforms to be kept at the edge or forwarded to the Amazon Web Services Cloud.\n      You can also configure transforms to be computed at the edge or in the cloud.</p>"}))
    Transform.type = Types::Transform
    TransformProcessingConfig.add_member(:compute_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeLocation, location_name: 'computeLocation', traits: {"smithy.api#documentation" => "<p>The compute location for the given transform property. </p>", "smithy.api#required" => {}}))
    TransformProcessingConfig.add_member(:forwarding_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ForwardingConfig, location_name: 'forwardingConfig'))
    TransformProcessingConfig.type = Types::TransformProcessingConfig
    TraversalDirection.add_member(:parent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARENT', traits: {"smithy.api#enumValue" => "PARENT"}))
    TraversalDirection.add_member(:child, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHILD', traits: {"smithy.api#enumValue" => "CHILD"}))
    TraversalType.add_member(:path_to_root, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PATH_TO_ROOT', traits: {"smithy.api#enumValue" => "PATH_TO_ROOT"}))
    TumblingWindow.add_member(:interval, Smithy::Schema::Shapes::ShapeRef.new(shape: Interval, location_name: 'interval', traits: {"smithy.api#documentation" => "<p>The time interval for the tumbling window. The interval time must be between 1 minute and\n      1 week.</p>\n         <p>IoT SiteWise computes the <code>1w</code> interval the end of Sunday at midnight each week (UTC),\n      the <code>1d</code> interval at the end of each day at midnight (UTC), the <code>1h</code>\n      interval at the end of each hour, and so on. </p>\n         <p>When IoT SiteWise aggregates data points for metric computations, the start of each interval is\n      exclusive and the end of each interval is inclusive. IoT SiteWise places the computed data point at\n      the end of the interval.</p>", "smithy.api#required" => {}}))
    TumblingWindow.add_member(:offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Offset, location_name: 'offset', traits: {"smithy.api#documentation" => "<p>The offset for the tumbling window. The <code>offset</code> parameter accepts the\n      following:</p>\n         <ul>\n            <li>\n               <p>The offset time.</p>\n               <p>For example, if you specify <code>18h</code> for <code>offset</code> and\n            <code>1d</code> for <code>interval</code>, IoT SiteWise aggregates data in one of the following\n          ways:</p>\n               <ul>\n                  <li>\n                     <p>If you create the metric before or at 6 PM (UTC), you get the first aggregation\n              result at 6 PM (UTC) on the day when you create the metric.</p>\n                  </li>\n                  <li>\n                     <p>If you create the metric after 6 PM (UTC), you get the first aggregation result at\n              6 PM (UTC) the next day.</p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>The ISO 8601 format.</p>\n               <p>For example, if you specify <code>PT18H</code> for <code>offset</code> and\n            <code>1d</code> for <code>interval</code>, IoT SiteWise aggregates data in one of the following\n          ways:</p>\n               <ul>\n                  <li>\n                     <p>If you create the metric before or at 6 PM (UTC), you get the first aggregation\n              result at 6 PM (UTC) on the day when you create the metric.</p>\n                  </li>\n                  <li>\n                     <p>If you create the metric after 6 PM (UTC), you get the first aggregation result at\n              6 PM (UTC) the next day.</p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>The 24-hour clock.</p>\n               <p>For example, if you specify <code>00:03:00</code> for <code>offset</code>,\n            <code>5m</code> for <code>interval</code>, and you create the metric at 2 PM (UTC), you\n          get the first aggregation result at 2:03 PM (UTC). You get the second aggregation result\n          at 2:08 PM (UTC). </p>\n            </li>\n            <li>\n               <p>The offset time zone.</p>\n               <p>For example, if you specify <code>2021-07-23T18:00-08</code> for <code>offset</code>\n          and <code>1d</code> for <code>interval</code>, IoT SiteWise aggregates data in one of the\n          following ways:</p>\n               <ul>\n                  <li>\n                     <p>If you create the metric before or at 6 PM (PST), you get the first aggregation\n              result at 6 PM (PST) on the day when you create the metric.</p>\n                  </li>\n                  <li>\n                     <p>If you create the metric after 6 PM (PST), you get the first aggregation result at\n              6 PM (PST) the next day.</p>\n                  </li>\n               </ul>\n            </li>\n         </ul>"}))
    TumblingWindow.type = Types::TumblingWindow
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource to untag.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>A list of keys for tags to remove from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAccessPolicyRequest.add_member(:access_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'accessPolicyId', traits: {"smithy.api#documentation" => "<p>The ID of the access policy.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccessPolicyRequest.add_member(:access_policy_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'accessPolicyIdentity', traits: {"smithy.api#documentation" => "<p>The identity for this access policy. Choose an IAM Identity Center user, an IAM Identity Center group, or an IAM user.</p>", "smithy.api#required" => {}}))
    UpdateAccessPolicyRequest.add_member(:access_policy_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'accessPolicyResource', traits: {"smithy.api#documentation" => "<p>The IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.</p>", "smithy.api#required" => {}}))
    UpdateAccessPolicyRequest.add_member(:access_policy_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: 'accessPolicyPermission', traits: {"smithy.api#documentation" => "<p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>", "smithy.api#required" => {}}))
    UpdateAccessPolicyRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateAccessPolicyRequest.type = Types::UpdateAccessPolicyRequest
    UpdateAccessPolicyResponse.type = Types::UpdateAccessPolicyResponse
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model, in UUID format.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelCompositeModelId', traits: {"smithy.api#documentation" => "<p>The ID of a composite model on this asset model.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'assetModelCompositeModelExternalId', traits: {"smithy.api#documentation" => "<p>An external ID to assign to the asset model. You can only set the external ID of the asset\n      model if it wasn't set when it was created, or you're setting it to the exact same thing as\n      when it was created.</p>"}))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'assetModelCompositeModelDescription', traits: {"smithy.api#documentation" => "<p>A description for the composite model.</p>"}))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetModelCompositeModelName', traits: {"smithy.api#documentation" => "<p>A unique name for the composite model.</p>", "smithy.api#required" => {}}))
    UpdateAssetModelCompositeModelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelProperties, location_name: 'assetModelCompositeModelProperties', traits: {"smithy.api#documentation" => "<p>The property definitions of the composite model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html#inline-composite-models\">\n        Inline custom composite models</a> in the <i>IoT SiteWise User Guide</i>.</p>\n         <p>You can specify up to 200 properties per composite model. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    UpdateAssetModelCompositeModelRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: ETag, location_name: 'ifMatch', traits: {"smithy.api#documentation" => "<p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   \n    The update request is rejected if the tag does not match the latest or active version's current entity tag.\n    See <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html\">Optimistic locking for asset model writes</a>\n    in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateAssetModelCompositeModelRequest.add_member(:if_none_match, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectAll, location_name: 'ifNoneMatch', traits: {"smithy.api#documentation" => "<p>Accepts <b>*</b> to reject the update request if an active version \n    (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>", "smithy.api#httpHeader" => "If-None-Match"}))
    UpdateAssetModelCompositeModelRequest.add_member(:match_for_version_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelVersionType, location_name: 'matchForVersionType', traits: {"smithy.api#documentation" => "<p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in \n  conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the update operation.</p>", "smithy.api#httpHeader" => "Match-For-Version-Type"}))
    UpdateAssetModelCompositeModelRequest.type = Types::UpdateAssetModelCompositeModelRequest
    UpdateAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_path, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelCompositeModelPath, location_name: 'assetModelCompositeModelPath', traits: {"smithy.api#documentation" => "<p>The path to the composite model listing the parent composite models.</p>", "smithy.api#required" => {}}))
    UpdateAssetModelCompositeModelResponse.add_member(:asset_model_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelStatus, location_name: 'assetModelStatus', traits: {"smithy.api#required" => {}}))
    UpdateAssetModelCompositeModelResponse.type = Types::UpdateAssetModelCompositeModelResponse
    UpdateAssetModelRequest.add_member(:asset_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetModelId', traits: {"smithy.api#documentation" => "<p>The ID of the asset model to update. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetModelRequest.add_member(:asset_model_external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'assetModelExternalId', traits: {"smithy.api#documentation" => "<p>An external ID to assign to the asset model. The asset model must not already have an\n      external ID. The external ID must be unique within your Amazon Web Services account. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    UpdateAssetModelRequest.add_member(:asset_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetModelName', traits: {"smithy.api#documentation" => "<p>A unique name for the asset model.</p>", "smithy.api#required" => {}}))
    UpdateAssetModelRequest.add_member(:asset_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'assetModelDescription', traits: {"smithy.api#documentation" => "<p>A description for the asset model.</p>"}))
    UpdateAssetModelRequest.add_member(:asset_model_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelProperties, location_name: 'assetModelProperties', traits: {"smithy.api#documentation" => "<p>The updated property definitions of the asset model. For more information, see\n      <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html\">Asset properties</a> in the <i>IoT SiteWise User Guide</i>.</p>\n         <p>You can specify up to 200 properties per asset model. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    UpdateAssetModelRequest.add_member(:asset_model_hierarchies, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelHierarchies, location_name: 'assetModelHierarchies', traits: {"smithy.api#documentation" => "<p>The updated hierarchy definitions of the asset model. Each hierarchy specifies an asset\n      model whose assets can be children of any other assets created from this asset model. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>\n         <p>You can specify up to 10 hierarchies per asset model. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    UpdateAssetModelRequest.add_member(:asset_model_composite_models, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelCompositeModels, location_name: 'assetModelCompositeModels', traits: {"smithy.api#documentation" => "<p>The composite models that are part of this asset model. It groups properties\n  (such as attributes, measurements, transforms, and metrics) and child composite models that\n      model parts of your industrial equipment. Each composite model has a type that defines the\n      properties that the composite model supports. Use composite models to define alarms on this asset model.</p>\n         <note>\n            <p>When creating custom composite models, you need to use <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html\">CreateAssetModelCompositeModel</a>. For more information,\n      see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-custom-composite-models.html\">Creating custom composite models (Components)</a> in the\n      <i>IoT SiteWise User Guide</i>.</p>\n         </note>"}))
    UpdateAssetModelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateAssetModelRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: ETag, location_name: 'ifMatch', traits: {"smithy.api#documentation" => "<p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   \n    The update request is rejected if the tag does not match the latest or active version's current entity tag.\n    See <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html\">Optimistic locking for asset model writes</a>\n    in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateAssetModelRequest.add_member(:if_none_match, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectAll, location_name: 'ifNoneMatch', traits: {"smithy.api#documentation" => "<p>Accepts <b>*</b> to reject the update request if an active version \n    (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>", "smithy.api#httpHeader" => "If-None-Match"}))
    UpdateAssetModelRequest.add_member(:match_for_version_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelVersionType, location_name: 'matchForVersionType', traits: {"smithy.api#documentation" => "<p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in \n  conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the update operation.</p>", "smithy.api#httpHeader" => "Match-For-Version-Type"}))
    UpdateAssetModelRequest.type = Types::UpdateAssetModelRequest
    UpdateAssetModelResponse.add_member(:asset_model_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelStatus, location_name: 'assetModelStatus', traits: {"smithy.api#documentation" => "<p>The status of the asset model, which contains a state (<code>UPDATING</code> after\n      successfully calling this operation) and any error message.</p>", "smithy.api#required" => {}}))
    UpdateAssetModelResponse.type = Types::UpdateAssetModelResponse
    UpdateAssetPropertyRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset to be updated. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetPropertyRequest.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the asset property to be updated. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetPropertyRequest.add_member(:property_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyAlias, location_name: 'propertyAlias', traits: {"smithy.api#documentation" => "<p>The alias that identifies the property, such as an OPC-UA server data stream path\n        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see\n        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>\n         <p>If you omit this parameter, the alias is removed from the property.</p>"}))
    UpdateAssetPropertyRequest.add_member(:property_notification_state, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyNotificationState, location_name: 'propertyNotificationState', traits: {"smithy.api#documentation" => "<p>The MQTT notification state (enabled or disabled) for this asset property.\n      When the notification state is enabled, IoT SiteWise publishes property value\n      updates to a unique MQTT topic. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html\">Interacting with other services</a> in the <i>IoT SiteWise User Guide</i>.</p>\n         <p>If you omit this parameter, the notification state is set to <code>DISABLED</code>.</p>"}))
    UpdateAssetPropertyRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateAssetPropertyRequest.add_member(:property_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyUnit, location_name: 'propertyUnit', traits: {"smithy.api#documentation" => "<p>The unit of measure (such as Newtons or RPM) of the asset property. If you don't specify a\n      value for this parameter, the service uses the value of the <code>assetModelProperty</code> in\n      the asset model.</p>"}))
    UpdateAssetPropertyRequest.type = Types::UpdateAssetPropertyRequest
    UpdateAssetRequest.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomID, location_name: 'assetId', traits: {"smithy.api#documentation" => "<p>The ID of the asset to update. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.\n    For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references\">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetRequest.add_member(:asset_external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'assetExternalId', traits: {"smithy.api#documentation" => "<p>An external ID to assign to the asset. The asset must not already have an external ID.\n      The external ID must be unique within your Amazon Web Services account. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    UpdateAssetRequest.add_member(:asset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'assetName', traits: {"smithy.api#documentation" => "<p>A friendly name for the asset.</p>", "smithy.api#required" => {}}))
    UpdateAssetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateAssetRequest.add_member(:asset_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'assetDescription', traits: {"smithy.api#documentation" => "<p>A description for the asset.</p>"}))
    UpdateAssetRequest.type = Types::UpdateAssetRequest
    UpdateAssetResponse.add_member(:asset_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetStatus, location_name: 'assetStatus', traits: {"smithy.api#documentation" => "<p>The status of the asset, which contains a state (<code>UPDATING</code> after successfully\n      calling this operation) and any error message.</p>", "smithy.api#required" => {}}))
    UpdateAssetResponse.type = Types::UpdateAssetResponse
    UpdateComputationModelRequest.add_member(:computation_model_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'computationModelId', traits: {"smithy.api#documentation" => "<p>The ID of the computation model.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateComputationModelRequest.add_member(:computation_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedName, location_name: 'computationModelName', traits: {"smithy.api#documentation" => "<p>The name of the computation model.</p>", "smithy.api#required" => {}}))
    UpdateComputationModelRequest.add_member(:computation_model_description, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedDescription, location_name: 'computationModelDescription', traits: {"smithy.api#documentation" => "<p>The description of the computation model.</p>"}))
    UpdateComputationModelRequest.add_member(:computation_model_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelConfiguration, location_name: 'computationModelConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for the computation model.</p>", "smithy.api#required" => {}}))
    UpdateComputationModelRequest.add_member(:computation_model_data_binding, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelDataBinding, location_name: 'computationModelDataBinding', traits: {"smithy.api#documentation" => "<p>The data binding for the computation model. Key is a variable name defined in configuration. \n  Value is a <code>ComputationModelDataBindingValue</code> referenced by the variable.</p>", "smithy.api#required" => {}}))
    UpdateComputationModelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the\n      request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateComputationModelRequest.type = Types::UpdateComputationModelRequest
    UpdateComputationModelResponse.add_member(:computation_model_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputationModelStatus, location_name: 'computationModelStatus', traits: {"smithy.api#documentation" => "<p>The status of the computation model. It contains a state (UPDATING after successfully\n      calling this operation) and an error message if any.</p>", "smithy.api#required" => {}}))
    UpdateComputationModelResponse.type = Types::UpdateComputationModelResponse
    UpdateDashboardRequest.add_member(:dashboard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'dashboardId', traits: {"smithy.api#documentation" => "<p>The ID of the dashboard to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDashboardRequest.add_member(:dashboard_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'dashboardName', traits: {"smithy.api#documentation" => "<p>A new friendly name for the dashboard.</p>", "smithy.api#required" => {}}))
    UpdateDashboardRequest.add_member(:dashboard_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'dashboardDescription', traits: {"smithy.api#documentation" => "<p>A new description for the dashboard.</p>"}))
    UpdateDashboardRequest.add_member(:dashboard_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardDefinition, location_name: 'dashboardDefinition', traits: {"smithy.api#documentation" => "<p>The new dashboard definition, as specified in a JSON literal.</p>\n         <ul>\n            <li>\n               <p>IoT SiteWise Monitor (Classic) see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html\">Create dashboards (CLI)</a>\n               </p>\n            </li>\n            <li>\n               <p>IoT SiteWise Monitor (AI-aware) see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-ai-dashboard-cli.html\">Create dashboards (CLI)</a>\n               </p>\n            </li>\n         </ul>\n         <p>in the <i>IoT SiteWise User Guide</i>\n         </p>", "smithy.api#required" => {}}))
    UpdateDashboardRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateDashboardRequest.type = Types::UpdateDashboardRequest
    UpdateDashboardResponse.type = Types::UpdateDashboardResponse
    UpdateDatasetRequest.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The ID of the dataset.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:dataset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedName, location_name: 'datasetName', traits: {"smithy.api#documentation" => "<p>The name of the dataset.</p>", "smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:dataset_description, Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedDescription, location_name: 'datasetDescription', traits: {"smithy.api#documentation" => "<p>A description about the dataset, and its functionality.</p>"}))
    UpdateDatasetRequest.add_member(:dataset_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetSource, location_name: 'datasetSource', traits: {"smithy.api#documentation" => "<p>The data source for the dataset.</p>", "smithy.api#required" => {}}))
    UpdateDatasetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateDatasetRequest.type = Types::UpdateDatasetRequest
    UpdateDatasetResponse.add_member(:dataset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'datasetId', traits: {"smithy.api#documentation" => "<p>The ID of the dataset.</p>"}))
    UpdateDatasetResponse.add_member(:dataset_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'datasetArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html\">ARN</a> of the dataset. \n  The format is <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}</code>.</p>"}))
    UpdateDatasetResponse.add_member(:dataset_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetStatus, location_name: 'datasetStatus', traits: {"smithy.api#documentation" => "<p>The status of the dataset. This contains the state and any error messages. \n  State is <code>UPDATING</code> after a successfull call to this API, and any associated error message. The state is \n  <code>ACTIVE</code> when ready to use.</p>"}))
    UpdateDatasetResponse.type = Types::UpdateDatasetResponse
    UpdateGatewayCapabilityConfigurationRequest.add_member(:gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'gatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the gateway to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGatewayCapabilityConfigurationRequest.add_member(:capability_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityNamespace, location_name: 'capabilityNamespace', traits: {"smithy.api#documentation" => "<p>The namespace of the gateway capability configuration to be updated.\n      For example, if you configure OPC UA\n      sources for an MQTT-enabled gateway, your OPC-UA capability configuration has the namespace\n        <code>iotsitewise:opcuacollector:3</code>.</p>", "smithy.api#required" => {}}))
    UpdateGatewayCapabilityConfigurationRequest.add_member(:capability_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityConfiguration, location_name: 'capabilityConfiguration', traits: {"smithy.api#documentation" => "<p>The JSON document that defines the configuration for the gateway capability. For more\n      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli\">Configuring data sources (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#required" => {}}))
    UpdateGatewayCapabilityConfigurationRequest.type = Types::UpdateGatewayCapabilityConfigurationRequest
    UpdateGatewayCapabilityConfigurationResponse.add_member(:capability_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityNamespace, location_name: 'capabilityNamespace', traits: {"smithy.api#documentation" => "<p>The namespace of the gateway capability.</p>", "smithy.api#required" => {}}))
    UpdateGatewayCapabilityConfigurationResponse.add_member(:capability_sync_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilitySyncStatus, location_name: 'capabilitySyncStatus', traits: {"smithy.api#documentation" => "<p>The synchronization status of the gateway capability configuration. The sync status can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>IN_SYNC</code> - The gateway is running with the latest configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OUT_OF_SYNC</code> - The gateway hasn't received the latest configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SYNC_FAILED</code> - The gateway rejected the latest configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNKNOWN</code> - The gateway hasn't reported its sync status.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_APPLICABLE</code> - The gateway doesn't support this capability. This is most common when integrating partner data sources, because the data integration is handled externally by the partner.</p>\n            </li>\n         </ul>\n         <p>After you update a capability configuration, its sync status is <code>OUT_OF_SYNC</code>\n      until the gateway receives and applies or rejects the updated configuration.</p>", "smithy.api#required" => {}}))
    UpdateGatewayCapabilityConfigurationResponse.type = Types::UpdateGatewayCapabilityConfigurationResponse
    UpdateGatewayRequest.add_member(:gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'gatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the gateway to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGatewayRequest.add_member(:gateway_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayName, location_name: 'gatewayName', traits: {"smithy.api#documentation" => "<p>A unique name for the gateway.</p>", "smithy.api#required" => {}}))
    UpdateGatewayRequest.type = Types::UpdateGatewayRequest
    UpdatePortalRequest.add_member(:portal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'portalId', traits: {"smithy.api#documentation" => "<p>The ID of the portal to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePortalRequest.add_member(:portal_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'portalName', traits: {"smithy.api#documentation" => "<p>A new friendly name for the portal.</p>", "smithy.api#required" => {}}))
    UpdatePortalRequest.add_member(:portal_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'portalDescription', traits: {"smithy.api#documentation" => "<p>A new description for the portal.</p>"}))
    UpdatePortalRequest.add_member(:portal_contact_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'portalContactEmail', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services administrator's contact email address.</p>", "smithy.api#required" => {}}))
    UpdatePortalRequest.add_member(:portal_logo_image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'portalLogoImage'))
    UpdatePortalRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of a service role that allows the portal's users to access your IoT SiteWise\n      resources on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html\">Using service roles for IoT SiteWise Monitor</a> in the\n        <i>IoT SiteWise User Guide</i>.</p>", "smithy.api#required" => {}}))
    UpdatePortalRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdatePortalRequest.add_member(:notification_sender_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'notificationSenderEmail', traits: {"smithy.api#documentation" => "<p>The email address that sends alarm notifications.</p>"}))
    UpdatePortalRequest.add_member(:alarms, Smithy::Schema::Shapes::ShapeRef.new(shape: Alarms, location_name: 'alarms', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.\n  You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range.\n  For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html\">Monitoring with alarms</a> in the <i>IoT SiteWise Application Guide</i>.</p>"}))
    UpdatePortalRequest.add_member(:portal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalType, location_name: 'portalType', traits: {"smithy.api#documentation" => "<p>Define the type of portal. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>"}))
    UpdatePortalRequest.add_member(:portal_type_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalTypeConfiguration, location_name: 'portalTypeConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration entry associated with the specific portal type. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>"}))
    UpdatePortalRequest.type = Types::UpdatePortalRequest
    UpdatePortalResponse.add_member(:portal_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalStatus, location_name: 'portalStatus', traits: {"smithy.api#documentation" => "<p>The status of the portal, which contains a state (<code>UPDATING</code> after successfully\n      calling this operation) and any error message.</p>", "smithy.api#required" => {}}))
    UpdatePortalResponse.type = Types::UpdatePortalResponse
    UpdateProjectRequest.add_member(:project_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: 'projectId', traits: {"smithy.api#documentation" => "<p>The ID of the project to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProjectRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>A new friendly name for the project.</p>", "smithy.api#required" => {}}))
    UpdateProjectRequest.add_member(:project_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'projectDescription', traits: {"smithy.api#documentation" => "<p>A new description for the project.</p>"}))
    UpdateProjectRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateProjectRequest.type = Types::UpdateProjectRequest
    UpdateProjectResponse.type = Types::UpdateProjectResponse
    UserIdentity.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The IAM Identity Center ID of the user.</p>", "smithy.api#required" => {}}))
    UserIdentity.type = Types::UserIdentity
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ValidationException.type = Types::ValidationException
    VariableValue.add_member(:property_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Macro, location_name: 'propertyId', traits: {"smithy.api#documentation" => "<p>The ID of the property to use as the variable. You can use the property <code>name</code>\n      if it's from the same asset model. If the property has an external ID, you can specify\n        <code>externalId:</code> followed by the external ID. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    VariableValue.add_member(:hierarchy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Macro, location_name: 'hierarchyId', traits: {"smithy.api#documentation" => "<p>The ID of the hierarchy to query for the property ID. You can use the hierarchy's name\n      instead of the hierarchy's ID. If the hierarchy has an external ID, you can specify\n        <code>externalId:</code> followed by the external ID. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids\">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>\n         <p>You use a hierarchy ID instead of a model ID because you can have several hierarchies\n      using the same model and therefore the same <code>propertyId</code>. For example, you might\n      have separately grouped assets that come from the same asset model. For more information, see\n      <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>"}))
    VariableValue.add_member(:property_path, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetModelPropertyPath, location_name: 'propertyPath', traits: {"smithy.api#documentation" => "<p>The path of the property.</p>"}))
    VariableValue.type = Types::VariableValue
    Variant.add_member(:string_value, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValueStringValue, location_name: 'stringValue', traits: {"smithy.api#documentation" => "<p> Asset property data of type string (sequence of characters). The allowed pattern:\n      \"^$|[^\\u0000-\\u001F\\u007F]+\". The max length is 1024. </p>"}))
    Variant.add_member(:integer_value, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValueIntegerValue, location_name: 'integerValue', traits: {"smithy.api#documentation" => "<p>Asset property data of type integer (whole number).</p>"}))
    Variant.add_member(:double_value, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValueDoubleValue, location_name: 'doubleValue', traits: {"smithy.api#documentation" => "<p> Asset property data of type double (floating point number). The min value is -10^10. The\n      max value is 10^10. Double.NaN is allowed. </p>"}))
    Variant.add_member(:boolean_value, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValueBooleanValue, location_name: 'booleanValue', traits: {"smithy.api#documentation" => "<p>Asset property data of type Boolean (true or false).</p>"}))
    Variant.add_member(:null_value, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValueNullValue, location_name: 'nullValue', traits: {"smithy.api#documentation" => "<p>The type of null asset property data with BAD and UNCERTAIN qualities.</p>"}))
    Variant.type = Types::Variant
    WarmTierRetentionPeriod.add_member(:number_of_days, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfDays, location_name: 'numberOfDays', traits: {"smithy.api#documentation" => "<p>The number of days the data is stored in the warm tier.</p>"}))
    WarmTierRetentionPeriod.add_member(:unlimited, Smithy::Schema::Shapes::ShapeRef.new(shape: Unlimited, location_name: 'unlimited', traits: {"smithy.api#documentation" => "<p>If set to true, the data is stored indefinitely in the warm tier.</p>"}))
    WarmTierRetentionPeriod.type = Types::WarmTierRetentionPeriod
    WarmTierState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    WarmTierState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))

    AWSIoTSiteWise = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotsitewise#AWSIoTSiteWise"
      service.name = "AWSIoTSiteWise"
      service.version = "2019-12-02"
      service.traits = {"aws.api#service" => {"sdkId" => "IoTSiteWise", "arnNamespace" => "iotsitewise", "cloudFormationName" => "IoTSiteWise", "cloudTrailEventSource" => "iotsitewise.amazonaws.com", "endpointPrefix" => "iotsitewise"}, "aws.auth#sigv4" => {"name" => "iotsitewise"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT SiteWise"}
      service.add_operation(:associate_assets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#AssociateAssets"
        operation.name = "AssociateAssets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAssetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/assets/{assetId}/associate", "code" => 200}}
      end)
      service.add_operation(:associate_time_series_to_asset_property, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#AssociateTimeSeriesToAssetProperty"
        operation.name = "AssociateTimeSeriesToAssetProperty"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateTimeSeriesToAssetPropertyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/timeseries/associate", "code" => 200}}
      end)
      service.add_operation(:batch_associate_project_assets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#BatchAssociateProjectAssets"
        operation.name = "BatchAssociateProjectAssets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateProjectAssetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateProjectAssetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "POST", "uri" => "/projects/{projectId}/assets/associate", "code" => 200}}
      end)
      service.add_operation(:batch_disassociate_project_assets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#BatchDisassociateProjectAssets"
        operation.name = "BatchDisassociateProjectAssets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateProjectAssetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateProjectAssetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "POST", "uri" => "/projects/{projectId}/assets/disassociate", "code" => 200}}
      end)
      service.add_operation(:batch_get_asset_property_aggregates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#BatchGetAssetPropertyAggregates"
        operation.name = "BatchGetAssetPropertyAggregates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/properties/batch/aggregates", "code" => 200}}
        operation[:paginator] = Paginators::BatchGetAssetPropertyAggregates.new
      end)
      service.add_operation(:batch_get_asset_property_value, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#BatchGetAssetPropertyValue"
        operation.name = "BatchGetAssetPropertyValue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/properties/batch/latest", "code" => 200}}
        operation[:paginator] = Paginators::BatchGetAssetPropertyValue.new
      end)
      service.add_operation(:batch_get_asset_property_value_history, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#BatchGetAssetPropertyValueHistory"
        operation.name = "BatchGetAssetPropertyValueHistory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/properties/batch/history", "code" => 200}}
        operation[:paginator] = Paginators::BatchGetAssetPropertyValueHistory.new
      end)
      service.add_operation(:batch_put_asset_property_value, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#BatchPutAssetPropertyValue"
        operation.name = "BatchPutAssetPropertyValue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutAssetPropertyValueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutAssetPropertyValueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/properties", "code" => 200}}
      end)
      service.add_operation(:create_access_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateAccessPolicy"
        operation.name = "CreateAccessPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "POST", "uri" => "/access-policies", "code" => 201}}
      end)
      service.add_operation(:create_asset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateAsset"
        operation.name = "CreateAsset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/assets", "code" => 202}}
      end)
      service.add_operation(:create_asset_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateAssetModel"
        operation.name = "CreateAssetModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssetModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssetModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/asset-models", "code" => 202}}
      end)
      service.add_operation(:create_asset_model_composite_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateAssetModelCompositeModel"
        operation.name = "CreateAssetModelCompositeModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssetModelCompositeModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssetModelCompositeModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/asset-models/{assetModelId}/composite-models", "code" => 202}}
      end)
      service.add_operation(:create_bulk_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateBulkImportJob"
        operation.name = "CreateBulkImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBulkImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBulkImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/jobs", "code" => 202}}
      end)
      service.add_operation(:create_computation_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateComputationModel"
        operation.name = "CreateComputationModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComputationModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComputationModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/computation-models", "code" => 202}}
      end)
      service.add_operation(:create_dashboard, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateDashboard"
        operation.name = "CreateDashboard"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDashboardRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDashboardResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "POST", "uri" => "/dashboards", "code" => 201}}
      end)
      service.add_operation(:create_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateDataset"
        operation.name = "CreateDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/datasets", "code" => 202}}
      end)
      service.add_operation(:create_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateGateway"
        operation.name = "CreateGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGatewayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGatewayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/20200301/gateways", "code" => 201}}
      end)
      service.add_operation(:create_portal, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreatePortal"
        operation.name = "CreatePortal"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePortalRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePortalResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "POST", "uri" => "/portals", "code" => 202}}
      end)
      service.add_operation(:create_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#CreateProject"
        operation.name = "CreateProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "POST", "uri" => "/projects", "code" => 201}}
      end)
      service.add_operation(:delete_access_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteAccessPolicy"
        operation.name = "DeleteAccessPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/access-policies/{accessPolicyId}", "code" => 204}}
      end)
      service.add_operation(:delete_asset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteAsset"
        operation.name = "DeleteAsset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/assets/{assetId}", "code" => 202}}
      end)
      service.add_operation(:delete_asset_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteAssetModel"
        operation.name = "DeleteAssetModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssetModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssetModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/asset-models/{assetModelId}", "code" => 202}}
      end)
      service.add_operation(:delete_asset_model_composite_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteAssetModelCompositeModel"
        operation.name = "DeleteAssetModelCompositeModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssetModelCompositeModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssetModelCompositeModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}", "code" => 202}}
      end)
      service.add_operation(:delete_asset_model_interface_relationship, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteAssetModelInterfaceRelationship"
        operation.name = "DeleteAssetModelInterfaceRelationship"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssetModelInterfaceRelationshipRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssetModelInterfaceRelationshipResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship", "code" => 202}}
      end)
      service.add_operation(:delete_computation_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteComputationModel"
        operation.name = "DeleteComputationModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComputationModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComputationModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/computation-models/{computationModelId}", "code" => 202}}
      end)
      service.add_operation(:delete_dashboard, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteDashboard"
        operation.name = "DeleteDashboard"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDashboardRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDashboardResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/dashboards/{dashboardId}", "code" => 204}}
      end)
      service.add_operation(:delete_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteDataset"
        operation.name = "DeleteDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/datasets/{datasetId}", "code" => 202}}
      end)
      service.add_operation(:delete_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteGateway"
        operation.name = "DeleteGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGatewayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/20200301/gateways/{gatewayId}", "code" => 200}}
      end)
      service.add_operation(:delete_portal, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeletePortal"
        operation.name = "DeletePortal"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePortalRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePortalResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/portals/{portalId}", "code" => 202}}
      end)
      service.add_operation(:delete_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/projects/{projectId}", "code" => 204}}
      end)
      service.add_operation(:delete_time_series, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DeleteTimeSeries"
        operation.name = "DeleteTimeSeries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTimeSeriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/timeseries/delete", "code" => 200}}
      end)
      service.add_operation(:describe_access_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAccessPolicy"
        operation.name = "DescribeAccessPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccessPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccessPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/access-policies/{accessPolicyId}", "code" => 200}}
      end)
      service.add_operation(:describe_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAction"
        operation.name = "DescribeAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeActionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/actions/{actionId}", "code" => 200}}
      end)
      service.add_operation(:describe_asset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAsset"
        operation.name = "DescribeAsset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/assets/{assetId}", "code" => 200}}
      end)
      service.add_operation(:describe_asset_composite_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAssetCompositeModel"
        operation.name = "DescribeAssetCompositeModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssetCompositeModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssetCompositeModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/assets/{assetId}/composite-models/{assetCompositeModelId}", "code" => 200}}
      end)
      service.add_operation(:describe_asset_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAssetModel"
        operation.name = "DescribeAssetModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssetModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssetModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/asset-models/{assetModelId}", "code" => 200}}
      end)
      service.add_operation(:describe_asset_model_composite_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAssetModelCompositeModel"
        operation.name = "DescribeAssetModelCompositeModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssetModelCompositeModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssetModelCompositeModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}", "code" => 200}}
      end)
      service.add_operation(:describe_asset_model_interface_relationship, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAssetModelInterfaceRelationship"
        operation.name = "DescribeAssetModelInterfaceRelationship"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssetModelInterfaceRelationshipRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssetModelInterfaceRelationshipResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship", "code" => 200}}
      end)
      service.add_operation(:describe_asset_property, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeAssetProperty"
        operation.name = "DescribeAssetProperty"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssetPropertyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssetPropertyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/assets/{assetId}/properties/{propertyId}", "code" => 200}}
      end)
      service.add_operation(:describe_bulk_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeBulkImportJob"
        operation.name = "DescribeBulkImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBulkImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBulkImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "GET", "uri" => "/jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:describe_computation_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeComputationModel"
        operation.name = "DescribeComputationModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComputationModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComputationModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/computation-models/{computationModelId}", "code" => 200}}
      end)
      service.add_operation(:describe_computation_model_execution_summary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeComputationModelExecutionSummary"
        operation.name = "DescribeComputationModelExecutionSummary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComputationModelExecutionSummaryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeComputationModelExecutionSummaryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/computation-models/{computationModelId}/execution-summary", "code" => 200}}
      end)
      service.add_operation(:describe_dashboard, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeDashboard"
        operation.name = "DescribeDashboard"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDashboardRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDashboardResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/dashboards/{dashboardId}", "code" => 200}}
      end)
      service.add_operation(:describe_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeDataset"
        operation.name = "DescribeDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasets/{datasetId}", "code" => 200}}
      end)
      service.add_operation(:describe_default_encryption_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeDefaultEncryptionConfiguration"
        operation.name = "DescribeDefaultEncryptionConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDefaultEncryptionConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDefaultEncryptionConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/configuration/account/encryption", "code" => 200}}
      end)
      service.add_operation(:describe_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeExecution"
        operation.name = "DescribeExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExecutionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExecutionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/executions/{executionId}", "code" => 200}}
      end)
      service.add_operation(:describe_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeGateway"
        operation.name = "DescribeGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGatewayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGatewayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/20200301/gateways/{gatewayId}", "code" => 200}}
      end)
      service.add_operation(:describe_gateway_capability_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeGatewayCapabilityConfiguration"
        operation.name = "DescribeGatewayCapabilityConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGatewayCapabilityConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGatewayCapabilityConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/20200301/gateways/{gatewayId}/capability/{capabilityNamespace}", "code" => 200}}
      end)
      service.add_operation(:describe_logging_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeLoggingOptions"
        operation.name = "DescribeLoggingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/logging", "code" => 200}}
      end)
      service.add_operation(:describe_portal, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribePortal"
        operation.name = "DescribePortal"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePortalRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePortalResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/portals/{portalId}", "code" => 200}}
      end)
      service.add_operation(:describe_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeProject"
        operation.name = "DescribeProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/projects/{projectId}", "code" => 200}}
      end)
      service.add_operation(:describe_storage_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeStorageConfiguration"
        operation.name = "DescribeStorageConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStorageConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStorageConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/configuration/account/storage", "code" => 200}}
      end)
      service.add_operation(:describe_time_series, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DescribeTimeSeries"
        operation.name = "DescribeTimeSeries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTimeSeriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTimeSeriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/timeseries/describe", "code" => 200}}
      end)
      service.add_operation(:disassociate_assets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DisassociateAssets"
        operation.name = "DisassociateAssets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAssetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/assets/{assetId}/disassociate", "code" => 200}}
      end)
      service.add_operation(:disassociate_time_series_from_asset_property, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#DisassociateTimeSeriesFromAssetProperty"
        operation.name = "DisassociateTimeSeriesFromAssetProperty"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateTimeSeriesFromAssetPropertyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/timeseries/disassociate", "code" => 200}}
      end)
      service.add_operation(:execute_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ExecuteAction"
        operation.name = "ExecuteAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteActionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/actions", "code" => 202}}
      end)
      service.add_operation(:execute_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ExecuteQuery"
        operation.name = "ExecuteQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteQueryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/queries/execution", "code" => 200}}
        operation[:paginator] = Paginators::ExecuteQuery.new
      end)
      service.add_operation(:get_asset_property_aggregates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#GetAssetPropertyAggregates"
        operation.name = "GetAssetPropertyAggregates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssetPropertyAggregatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssetPropertyAggregatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "GET", "uri" => "/properties/aggregates", "code" => 200}}
        operation[:paginator] = Paginators::GetAssetPropertyAggregates.new
      end)
      service.add_operation(:get_asset_property_value, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#GetAssetPropertyValue"
        operation.name = "GetAssetPropertyValue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssetPropertyValueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssetPropertyValueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "GET", "uri" => "/properties/latest", "code" => 200}}
      end)
      service.add_operation(:get_asset_property_value_history, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#GetAssetPropertyValueHistory"
        operation.name = "GetAssetPropertyValueHistory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssetPropertyValueHistoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssetPropertyValueHistoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "GET", "uri" => "/properties/history", "code" => 200}}
        operation[:paginator] = Paginators::GetAssetPropertyValueHistory.new
      end)
      service.add_operation(:get_interpolated_asset_property_values, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#GetInterpolatedAssetPropertyValues"
        operation.name = "GetInterpolatedAssetPropertyValues"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInterpolatedAssetPropertyValuesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInterpolatedAssetPropertyValuesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "GET", "uri" => "/properties/interpolated", "code" => 200}}
        operation[:paginator] = Paginators::GetInterpolatedAssetPropertyValues.new
      end)
      service.add_operation(:invoke_assistant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#InvokeAssistant"
        operation.name = "InvokeAssistant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeAssistantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: InvokeAssistantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/assistant/invocation", "code" => 200}}
      end)
      service.add_operation(:list_access_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAccessPolicies"
        operation.name = "ListAccessPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPoliciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/access-policies", "code" => 200}}
        operation[:paginator] = Paginators::ListAccessPolicies.new
      end)
      service.add_operation(:list_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListActions"
        operation.name = "ListActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListActionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListActionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/actions", "code" => 200}}
      end)
      service.add_operation(:list_asset_model_composite_models, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAssetModelCompositeModels"
        operation.name = "ListAssetModelCompositeModels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetModelCompositeModelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetModelCompositeModelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/asset-models/{assetModelId}/composite-models", "code" => 200}}
        operation[:paginator] = Paginators::ListAssetModelCompositeModels.new
      end)
      service.add_operation(:list_asset_model_properties, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAssetModelProperties"
        operation.name = "ListAssetModelProperties"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetModelPropertiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetModelPropertiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/asset-models/{assetModelId}/properties", "code" => 200}}
        operation[:paginator] = Paginators::ListAssetModelProperties.new
      end)
      service.add_operation(:list_asset_models, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAssetModels"
        operation.name = "ListAssetModels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetModelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetModelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/asset-models", "code" => 200}}
        operation[:paginator] = Paginators::ListAssetModels.new
      end)
      service.add_operation(:list_asset_properties, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAssetProperties"
        operation.name = "ListAssetProperties"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetPropertiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetPropertiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/assets/{assetId}/properties", "code" => 200}}
        operation[:paginator] = Paginators::ListAssetProperties.new
      end)
      service.add_operation(:list_asset_relationships, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAssetRelationships"
        operation.name = "ListAssetRelationships"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetRelationshipsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetRelationshipsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/assets/{assetId}/assetRelationships", "code" => 200}}
        operation[:paginator] = Paginators::ListAssetRelationships.new
      end)
      service.add_operation(:list_assets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAssets"
        operation.name = "ListAssets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/assets", "code" => 200}}
        operation[:paginator] = Paginators::ListAssets.new
      end)
      service.add_operation(:list_associated_assets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListAssociatedAssets"
        operation.name = "ListAssociatedAssets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedAssetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedAssetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/assets/{assetId}/hierarchies", "code" => 200}}
        operation[:paginator] = Paginators::ListAssociatedAssets.new
      end)
      service.add_operation(:list_bulk_import_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListBulkImportJobs"
        operation.name = "ListBulkImportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBulkImportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBulkImportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "GET", "uri" => "/jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListBulkImportJobs.new
      end)
      service.add_operation(:list_composition_relationships, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListCompositionRelationships"
        operation.name = "ListCompositionRelationships"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCompositionRelationshipsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCompositionRelationshipsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/asset-models/{assetModelId}/composition-relationships", "code" => 200}}
        operation[:paginator] = Paginators::ListCompositionRelationships.new
      end)
      service.add_operation(:list_computation_model_data_binding_usages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListComputationModelDataBindingUsages"
        operation.name = "ListComputationModelDataBindingUsages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComputationModelDataBindingUsagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComputationModelDataBindingUsagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/computation-models/data-binding-usages", "code" => 200}}
        operation[:paginator] = Paginators::ListComputationModelDataBindingUsages.new
      end)
      service.add_operation(:list_computation_model_resolve_to_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListComputationModelResolveToResources"
        operation.name = "ListComputationModelResolveToResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComputationModelResolveToResourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComputationModelResolveToResourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/computation-models/{computationModelId}/resolve-to-resources", "code" => 200}}
        operation[:paginator] = Paginators::ListComputationModelResolveToResources.new
      end)
      service.add_operation(:list_computation_models, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListComputationModels"
        operation.name = "ListComputationModels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComputationModelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComputationModelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/computation-models", "code" => 200}}
        operation[:paginator] = Paginators::ListComputationModels.new
      end)
      service.add_operation(:list_dashboards, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListDashboards"
        operation.name = "ListDashboards"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDashboardsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDashboardsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/dashboards", "code" => 200}}
        operation[:paginator] = Paginators::ListDashboards.new
      end)
      service.add_operation(:list_datasets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListDatasets"
        operation.name = "ListDatasets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/datasets", "code" => 200}}
        operation[:paginator] = Paginators::ListDatasets.new
      end)
      service.add_operation(:list_executions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListExecutions"
        operation.name = "ListExecutions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/executions", "code" => 200}}
        operation[:paginator] = Paginators::ListExecutions.new
      end)
      service.add_operation(:list_gateways, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListGateways"
        operation.name = "ListGateways"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGatewaysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGatewaysResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/20200301/gateways", "code" => 200}}
        operation[:paginator] = Paginators::ListGateways.new
      end)
      service.add_operation(:list_interface_relationships, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListInterfaceRelationships"
        operation.name = "ListInterfaceRelationships"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInterfaceRelationshipsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInterfaceRelationshipsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/interface/{interfaceAssetModelId}/asset-models", "code" => 200}}
        operation[:paginator] = Paginators::ListInterfaceRelationships.new
      end)
      service.add_operation(:list_portals, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListPortals"
        operation.name = "ListPortals"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPortalsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPortalsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/portals", "code" => 200}}
        operation[:paginator] = Paginators::ListPortals.new
      end)
      service.add_operation(:list_project_assets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListProjectAssets"
        operation.name = "ListProjectAssets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectAssetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectAssetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/projects/{projectId}/assets", "code" => 200}}
        operation[:paginator] = Paginators::ListProjectAssets.new
      end)
      service.add_operation(:list_projects, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListProjects"
        operation.name = "ListProjects"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "GET", "uri" => "/projects", "code" => 200}}
        operation[:paginator] = Paginators::ListProjects.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:list_time_series, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#ListTimeSeries"
        operation.name = "ListTimeSeries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTimeSeriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTimeSeriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/timeseries", "code" => 200}}
        operation[:paginator] = Paginators::ListTimeSeries.new
      end)
      service.add_operation(:put_asset_model_interface_relationship, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#PutAssetModelInterfaceRelationship"
        operation.name = "PutAssetModelInterfaceRelationship"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAssetModelInterfaceRelationshipRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAssetModelInterfaceRelationshipResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship", "code" => 202}}
      end)
      service.add_operation(:put_default_encryption_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#PutDefaultEncryptionConfiguration"
        operation.name = "PutDefaultEncryptionConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDefaultEncryptionConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDefaultEncryptionConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/configuration/account/encryption", "code" => 200}}
      end)
      service.add_operation(:put_logging_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#PutLoggingOptions"
        operation.name = "PutLoggingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLoggingOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLoggingOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/logging", "code" => 200}}
      end)
      service.add_operation(:put_storage_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#PutStorageConfiguration"
        operation.name = "PutStorageConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutStorageConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutStorageConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/configuration/account/storage", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:update_access_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateAccessPolicy"
        operation.name = "UpdateAccessPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccessPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccessPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/access-policies/{accessPolicyId}", "code" => 200}}
      end)
      service.add_operation(:update_asset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateAsset"
        operation.name = "UpdateAsset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/assets/{assetId}", "code" => 202}}
      end)
      service.add_operation(:update_asset_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateAssetModel"
        operation.name = "UpdateAssetModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssetModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssetModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/asset-models/{assetModelId}", "code" => 202}}
      end)
      service.add_operation(:update_asset_model_composite_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateAssetModelCompositeModel"
        operation.name = "UpdateAssetModelCompositeModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssetModelCompositeModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssetModelCompositeModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}", "code" => 202}}
      end)
      service.add_operation(:update_asset_property, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateAssetProperty"
        operation.name = "UpdateAssetProperty"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssetPropertyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/assets/{assetId}/properties/{propertyId}", "code" => 200}}
      end)
      service.add_operation(:update_computation_model, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateComputationModel"
        operation.name = "UpdateComputationModel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComputationModelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComputationModelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/computation-models/{computationModelId}", "code" => 202}}
      end)
      service.add_operation(:update_dashboard, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateDashboard"
        operation.name = "UpdateDashboard"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDashboardRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDashboardResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/dashboards/{dashboardId}", "code" => 200}}
      end)
      service.add_operation(:update_dataset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateDataset"
        operation.name = "UpdateDataset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/datasets/{datasetId}", "code" => 202}}
      end)
      service.add_operation(:update_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateGateway"
        operation.name = "UpdateGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/20200301/gateways/{gatewayId}", "code" => 200}}
      end)
      service.add_operation(:update_gateway_capability_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateGatewayCapabilityConfiguration"
        operation.name = "UpdateGatewayCapabilityConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayCapabilityConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayCapabilityConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/20200301/gateways/{gatewayId}/capability", "code" => 201}}
      end)
      service.add_operation(:update_portal, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdatePortal"
        operation.name = "UpdatePortal"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePortalRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePortalResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/portals/{portalId}", "code" => 202}}
      end)
      service.add_operation(:update_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsitewise#UpdateProject"
        operation.name = "UpdateProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "monitor."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/projects/{projectId}", "code" => 200}}
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
