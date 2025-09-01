# frozen_string_literal: true

# This is generated code!

module Aws::CleanRooms
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#AccessDeniedExceptionReason', name: 'AccessDeniedExceptionReason', traits: {"smithy.api#enum" => [{"value" => "INSUFFICIENT_PERMISSIONS", "name" => "INSUFFICIENT_PERMISSIONS"}]})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d+$"})
    AdditionalAnalyses = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#AdditionalAnalyses', name: 'AdditionalAnalyses')
    AdditionalAnalysesResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#AdditionalAnalysesResourceArn', name: 'AdditionalAnalysesResourceArn', traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:([\\d]{12}|\\*):membership\\/[\\*\\d\\w-]+\\/configuredaudiencemodelassociation\\/[\\*\\d\\w-]+$|^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:([0-9]{12}|\\*):membership\\/[\\*\\d\\w-]+\\/configured-model-algorithm-association\\/([-a-zA-Z0-9_\\/.]+|\\*)$"})
    AggregateColumn = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AggregateColumn', name: 'AggregateColumn')
    AggregateColumnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AggregateColumnList', name: 'AggregateColumnList')
    AggregateFunctionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#AggregateFunctionName', name: 'AggregateFunctionName', traits: {"smithy.api#enum" => [{"name" => "SUM", "value" => "SUM"}, {"name" => "SUM_DISTINCT", "value" => "SUM_DISTINCT"}, {"name" => "COUNT", "value" => "COUNT"}, {"name" => "COUNT_DISTINCT", "value" => "COUNT_DISTINCT"}, {"name" => "AVG", "value" => "AVG"}]})
    AggregationConstraint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AggregationConstraint', name: 'AggregationConstraint')
    AggregationConstraints = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AggregationConstraints', name: 'AggregationConstraints', traits: {"smithy.api#length" => {"min" => 1}})
    AggregationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#AggregationType', name: 'AggregationType', traits: {"smithy.api#enum" => [{"name" => "COUNT_DISTINCT", "value" => "COUNT_DISTINCT"}]})
    AllowedAdditionalAnalyses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AllowedAdditionalAnalyses', name: 'AllowedAdditionalAnalyses', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    AllowedAnalysesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AllowedAnalysesList', name: 'AllowedAnalysesList')
    AllowedAnalysisProviderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AllowedAnalysisProviderList', name: 'AllowedAnalysisProviderList')
    AllowedColumnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AllowedColumnList', name: 'AllowedColumnList', traits: {"smithy.api#length" => {"min" => 1}})
    AllowedResultReceivers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AllowedResultReceivers', name: 'AllowedResultReceivers')
    AnalysisFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#AnalysisFormat', name: 'AnalysisFormat')
    AnalysisMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#AnalysisMethod', name: 'AnalysisMethod')
    AnalysisParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AnalysisParameter', name: 'AnalysisParameter', traits: {"smithy.api#sensitive" => {}})
    AnalysisParameterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AnalysisParameterList', name: 'AnalysisParameterList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AnalysisRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AnalysisRule', name: 'AnalysisRule')
    AnalysisRuleAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AnalysisRuleAggregation', name: 'AnalysisRuleAggregation')
    AnalysisRuleColumnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AnalysisRuleColumnList', name: 'AnalysisRuleColumnList')
    AnalysisRuleColumnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#AnalysisRuleColumnName', name: 'AnalysisRuleColumnName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[a-z0-9_](([a-z0-9_ ]+-)*([a-z0-9_ ]+))?$"})
    AnalysisRuleColumnNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AnalysisRuleColumnNameList', name: 'AnalysisRuleColumnNameList')
    AnalysisRuleCustom = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AnalysisRuleCustom', name: 'AnalysisRuleCustom')
    AnalysisRuleIdMappingTable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AnalysisRuleIdMappingTable', name: 'AnalysisRuleIdMappingTable')
    AnalysisRuleList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AnalysisRuleList', name: 'AnalysisRuleList')
    AnalysisRulePolicy = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#AnalysisRulePolicy', name: 'AnalysisRulePolicy')
    AnalysisRulePolicyV1 = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#AnalysisRulePolicyV1', name: 'AnalysisRulePolicyV1')
    AnalysisRuleType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#AnalysisRuleType', name: 'AnalysisRuleType')
    AnalysisRuleTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AnalysisRuleTypeList', name: 'AnalysisRuleTypeList')
    AnalysisSchema = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AnalysisSchema', name: 'AnalysisSchema')
    AnalysisSource = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#AnalysisSource', name: 'AnalysisSource')
    AnalysisSourceMetadata = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#AnalysisSourceMetadata', name: 'AnalysisSourceMetadata')
    AnalysisTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplate', name: 'AnalysisTemplate')
    AnalysisTemplateArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateArn', name: 'AnalysisTemplateArn', traits: {"smithy.api#length" => {"max" => 200}, "smithy.api#pattern" => "^arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/analysistemplate/[\\d\\w-]+$"})
    AnalysisTemplateArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateArnList', name: 'AnalysisTemplateArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AnalysisTemplateArnOrQueryWildcard = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateArnOrQueryWildcard', name: 'AnalysisTemplateArnOrQueryWildcard', traits: {"smithy.api#length" => {"max" => 200}, "smithy.api#pattern" => "^(ANY_QUERY|ANY_JOB|arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/analysistemplate/[\\d\\w-]+)$"})
    AnalysisTemplateArtifact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateArtifact', name: 'AnalysisTemplateArtifact')
    AnalysisTemplateArtifactList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateArtifactList', name: 'AnalysisTemplateArtifactList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AnalysisTemplateArtifactMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateArtifactMetadata', name: 'AnalysisTemplateArtifactMetadata')
    AnalysisTemplateArtifacts = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateArtifacts', name: 'AnalysisTemplateArtifacts')
    AnalysisTemplateIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateIdentifier', name: 'AnalysisTemplateIdentifier', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    AnalysisTemplateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateSummary', name: 'AnalysisTemplateSummary')
    AnalysisTemplateSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateSummaryList', name: 'AnalysisTemplateSummaryList')
    AnalysisTemplateText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateText', name: 'AnalysisTemplateText', traits: {"smithy.api#length" => {"min" => 0, "max" => 90000}, "smithy.api#sensitive" => {}})
    AnalysisTemplateValidationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateValidationStatus', name: 'AnalysisTemplateValidationStatus')
    AnalysisTemplateValidationStatusDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateValidationStatusDetail', name: 'AnalysisTemplateValidationStatusDetail')
    AnalysisTemplateValidationStatusDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateValidationStatusDetailList', name: 'AnalysisTemplateValidationStatusDetailList')
    AnalysisTemplateValidationStatusReason = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateValidationStatusReason', name: 'AnalysisTemplateValidationStatusReason')
    AnalysisTemplateValidationStatusReasonList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateValidationStatusReasonList', name: 'AnalysisTemplateValidationStatusReasonList')
    AnalysisTemplateValidationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#AnalysisTemplateValidationType', name: 'AnalysisTemplateValidationType')
    AnalysisType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#AnalysisType', name: 'AnalysisType')
    AnalyticsEngine = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#AnalyticsEngine', name: 'AnalyticsEngine')
    AthenaDatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#AthenaDatabaseName', name: 'AthenaDatabaseName', traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_]+-)*([a-zA-Z0-9_]+))?$"})
    AthenaOutputLocation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#AthenaOutputLocation', name: 'AthenaOutputLocation', traits: {"smithy.api#length" => {"min" => 8, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9.-]{3,63}(.*)$"})
    AthenaTableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#AthenaTableName', name: 'AthenaTableName', traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_]+)*([a-zA-Z0-9_]+))?$"})
    AthenaTableReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#AthenaTableReference', name: 'AthenaTableReference')
    AthenaWorkGroup = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#AthenaWorkGroup', name: 'AthenaWorkGroup', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([a-zA-Z0-9._-])*$"})
    BatchGetCollaborationAnalysisTemplateError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#BatchGetCollaborationAnalysisTemplateError', name: 'BatchGetCollaborationAnalysisTemplateError')
    BatchGetCollaborationAnalysisTemplateErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#BatchGetCollaborationAnalysisTemplateErrorList', name: 'BatchGetCollaborationAnalysisTemplateErrorList', traits: {"smithy.api#length" => {"max" => 10}})
    BatchGetCollaborationAnalysisTemplateOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#BatchGetCollaborationAnalysisTemplateOperationInput', name: 'BatchGetCollaborationAnalysisTemplateOperationInput')
    BatchGetCollaborationAnalysisTemplateOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#BatchGetCollaborationAnalysisTemplateOperationOutput', name: 'BatchGetCollaborationAnalysisTemplateOperationOutput')
    BatchGetSchemaAnalysisRuleError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#BatchGetSchemaAnalysisRuleError', name: 'BatchGetSchemaAnalysisRuleError')
    BatchGetSchemaAnalysisRuleErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#BatchGetSchemaAnalysisRuleErrorList', name: 'BatchGetSchemaAnalysisRuleErrorList', traits: {"smithy.api#length" => {"max" => 25}})
    BatchGetSchemaAnalysisRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#BatchGetSchemaAnalysisRuleInput', name: 'BatchGetSchemaAnalysisRuleInput')
    BatchGetSchemaAnalysisRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#BatchGetSchemaAnalysisRuleOutput', name: 'BatchGetSchemaAnalysisRuleOutput')
    BatchGetSchemaError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#BatchGetSchemaError', name: 'BatchGetSchemaError')
    BatchGetSchemaErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#BatchGetSchemaErrorList', name: 'BatchGetSchemaErrorList', traits: {"smithy.api#length" => {"max" => 25}})
    BatchGetSchemaOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#BatchGetSchemaOperationInput', name: 'BatchGetSchemaOperationInput')
    BatchGetSchemaOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#BatchGetSchemaOperationOutput', name: 'BatchGetSchemaOperationOutput')
    BilledJobResourceUtilization = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#BilledJobResourceUtilization', name: 'BilledJobResourceUtilization')
    BilledResourceUtilization = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#BilledResourceUtilization', name: 'BilledResourceUtilization')
    CleanroomsArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#CleanroomsArn', name: 'CleanroomsArn', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:[\\d\\w/-]+$"})
    Collaboration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#Collaboration', name: 'Collaboration')
    CollaborationAnalysisTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CollaborationAnalysisTemplate', name: 'CollaborationAnalysisTemplate')
    CollaborationAnalysisTemplateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#CollaborationAnalysisTemplateList', name: 'CollaborationAnalysisTemplateList', traits: {"smithy.api#length" => {"max" => 10}})
    CollaborationAnalysisTemplateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CollaborationAnalysisTemplateSummary', name: 'CollaborationAnalysisTemplateSummary')
    CollaborationAnalysisTemplateSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#CollaborationAnalysisTemplateSummaryList', name: 'CollaborationAnalysisTemplateSummaryList')
    CollaborationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#CollaborationArn', name: 'CollaborationArn', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^arn:aws:[\\w]+:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:collaboration/[\\d\\w-]+$"})
    CollaborationConfiguredAudienceModelAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CollaborationConfiguredAudienceModelAssociation', name: 'CollaborationConfiguredAudienceModelAssociation')
    CollaborationConfiguredAudienceModelAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CollaborationConfiguredAudienceModelAssociationSummary', name: 'CollaborationConfiguredAudienceModelAssociationSummary')
    CollaborationConfiguredAudienceModelAssociationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#CollaborationConfiguredAudienceModelAssociationSummaryList', name: 'CollaborationConfiguredAudienceModelAssociationSummaryList')
    CollaborationDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#CollaborationDescription', name: 'CollaborationDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t\\r\\n]*$"})
    CollaborationIdNamespaceAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CollaborationIdNamespaceAssociation', name: 'CollaborationIdNamespaceAssociation')
    CollaborationIdNamespaceAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CollaborationIdNamespaceAssociationSummary', name: 'CollaborationIdNamespaceAssociationSummary')
    CollaborationIdNamespaceAssociationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#CollaborationIdNamespaceAssociationSummaryList', name: 'CollaborationIdNamespaceAssociationSummaryList')
    CollaborationIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#CollaborationIdentifier', name: 'CollaborationIdentifier', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    CollaborationJobLogStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#CollaborationJobLogStatus', name: 'CollaborationJobLogStatus')
    CollaborationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#CollaborationName', name: 'CollaborationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t]*$"})
    CollaborationPrivacyBudgetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CollaborationPrivacyBudgetSummary', name: 'CollaborationPrivacyBudgetSummary')
    CollaborationPrivacyBudgetSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#CollaborationPrivacyBudgetSummaryList', name: 'CollaborationPrivacyBudgetSummaryList')
    CollaborationPrivacyBudgetTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CollaborationPrivacyBudgetTemplate', name: 'CollaborationPrivacyBudgetTemplate')
    CollaborationPrivacyBudgetTemplateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CollaborationPrivacyBudgetTemplateSummary', name: 'CollaborationPrivacyBudgetTemplateSummary')
    CollaborationPrivacyBudgetTemplateSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#CollaborationPrivacyBudgetTemplateSummaryList', name: 'CollaborationPrivacyBudgetTemplateSummaryList')
    CollaborationQueryLogStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#CollaborationQueryLogStatus', name: 'CollaborationQueryLogStatus')
    CollaborationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CollaborationSummary', name: 'CollaborationSummary')
    CollaborationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#CollaborationSummaryList', name: 'CollaborationSummaryList')
    Column = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#Column', name: 'Column')
    ColumnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ColumnList', name: 'ColumnList')
    ColumnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ColumnName', name: 'ColumnName', traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-z0-9_](([a-z0-9_ ]+-)*([a-z0-9_ ]+))?$"})
    ColumnTypeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ColumnTypeString', name: 'ColumnTypeString', traits: {"smithy.api#length" => {"max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t]*$"})
    ComputeConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ComputeConfiguration', name: 'ComputeConfiguration')
    ConfigurationDetails = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ConfigurationDetails', name: 'ConfigurationDetails')
    ConfiguredAudienceModelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredAudienceModelArn', name: 'ConfiguredAudienceModelArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:[0-9]{12}:configured-audience-model/[-a-zA-Z0-9_/.]+$"})
    ConfiguredAudienceModelAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredAudienceModelAssociation', name: 'ConfiguredAudienceModelAssociation')
    ConfiguredAudienceModelAssociationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredAudienceModelAssociationArn', name: 'ConfiguredAudienceModelAssociationArn', traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/configuredaudiencemodelassociation/[\\d\\w-]+$"})
    ConfiguredAudienceModelAssociationIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredAudienceModelAssociationIdentifier', name: 'ConfiguredAudienceModelAssociationIdentifier', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ConfiguredAudienceModelAssociationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredAudienceModelAssociationName', name: 'ConfiguredAudienceModelAssociationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t]*$"})
    ConfiguredAudienceModelAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredAudienceModelAssociationSummary', name: 'ConfiguredAudienceModelAssociationSummary')
    ConfiguredAudienceModelAssociationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredAudienceModelAssociationSummaryList', name: 'ConfiguredAudienceModelAssociationSummaryList')
    ConfiguredTable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTable', name: 'ConfiguredTable')
    ConfiguredTableAnalysisRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAnalysisRule', name: 'ConfiguredTableAnalysisRule')
    ConfiguredTableAnalysisRulePolicy = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAnalysisRulePolicy', name: 'ConfiguredTableAnalysisRulePolicy')
    ConfiguredTableAnalysisRulePolicyV1 = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAnalysisRulePolicyV1', name: 'ConfiguredTableAnalysisRulePolicyV1')
    ConfiguredTableAnalysisRuleType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAnalysisRuleType', name: 'ConfiguredTableAnalysisRuleType')
    ConfiguredTableAnalysisRuleTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAnalysisRuleTypeList', name: 'ConfiguredTableAnalysisRuleTypeList')
    ConfiguredTableArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableArn', name: 'ConfiguredTableArn', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^arn:aws:[\\w]+:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:configuredtable/[\\d\\w-]+$"})
    ConfiguredTableAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAssociation', name: 'ConfiguredTableAssociation')
    ConfiguredTableAssociationAnalysisRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRule', name: 'ConfiguredTableAssociationAnalysisRule')
    ConfiguredTableAssociationAnalysisRuleAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRuleAggregation', name: 'ConfiguredTableAssociationAnalysisRuleAggregation')
    ConfiguredTableAssociationAnalysisRuleCustom = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRuleCustom', name: 'ConfiguredTableAssociationAnalysisRuleCustom')
    ConfiguredTableAssociationAnalysisRuleList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRuleList', name: 'ConfiguredTableAssociationAnalysisRuleList')
    ConfiguredTableAssociationAnalysisRulePolicy = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRulePolicy', name: 'ConfiguredTableAssociationAnalysisRulePolicy')
    ConfiguredTableAssociationAnalysisRulePolicyV1 = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRulePolicyV1', name: 'ConfiguredTableAssociationAnalysisRulePolicyV1')
    ConfiguredTableAssociationAnalysisRuleType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRuleType', name: 'ConfiguredTableAssociationAnalysisRuleType')
    ConfiguredTableAssociationAnalysisRuleTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRuleTypeList', name: 'ConfiguredTableAssociationAnalysisRuleTypeList')
    ConfiguredTableAssociationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAssociationArn', name: 'ConfiguredTableAssociationArn', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^arn:aws:[\\w]+:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:configuredtableassociation/[\\d\\w-]+/[\\d\\w-]+$"})
    ConfiguredTableAssociationIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAssociationIdentifier', name: 'ConfiguredTableAssociationIdentifier', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ConfiguredTableAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAssociationSummary', name: 'ConfiguredTableAssociationSummary')
    ConfiguredTableAssociationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableAssociationSummaryList', name: 'ConfiguredTableAssociationSummaryList')
    ConfiguredTableIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableIdentifier', name: 'ConfiguredTableIdentifier', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ConfiguredTableSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableSummary', name: 'ConfiguredTableSummary')
    ConfiguredTableSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ConfiguredTableSummaryList', name: 'ConfiguredTableSummaryList')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ConflictExceptionReason', name: 'ConflictExceptionReason', traits: {"smithy.api#enum" => [{"value" => "ALREADY_EXISTS", "name" => "ALREADY_EXISTS"}, {"value" => "SUBRESOURCES_EXIST", "name" => "SUBRESOURCES_EXIST"}, {"value" => "INVALID_STATE", "name" => "INVALID_STATE"}]})
    ConsolidatedPolicy = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ConsolidatedPolicy', name: 'ConsolidatedPolicy')
    ConsolidatedPolicyAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConsolidatedPolicyAggregation', name: 'ConsolidatedPolicyAggregation')
    ConsolidatedPolicyCustom = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConsolidatedPolicyCustom', name: 'ConsolidatedPolicyCustom')
    ConsolidatedPolicyList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ConsolidatedPolicyList', name: 'ConsolidatedPolicyList')
    ConsolidatedPolicyV1 = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ConsolidatedPolicyV1', name: 'ConsolidatedPolicyV1')
    CreateAnalysisTemplateOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateAnalysisTemplateOperationInput', name: 'CreateAnalysisTemplateOperationInput')
    CreateAnalysisTemplateOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateAnalysisTemplateOperationOutput', name: 'CreateAnalysisTemplateOperationOutput')
    CreateCollaborationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateCollaborationOperationInput', name: 'CreateCollaborationOperationInput')
    CreateCollaborationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateCollaborationOperationOutput', name: 'CreateCollaborationOperationOutput')
    CreateConfiguredAudienceModelAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateConfiguredAudienceModelAssociationInput', name: 'CreateConfiguredAudienceModelAssociationInput')
    CreateConfiguredAudienceModelAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateConfiguredAudienceModelAssociationOutput', name: 'CreateConfiguredAudienceModelAssociationOutput')
    CreateConfiguredTableAnalysisRuleOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateConfiguredTableAnalysisRuleOperationInput', name: 'CreateConfiguredTableAnalysisRuleOperationInput')
    CreateConfiguredTableAnalysisRuleOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateConfiguredTableAnalysisRuleOperationOutput', name: 'CreateConfiguredTableAnalysisRuleOperationOutput')
    CreateConfiguredTableAssociationAnalysisRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateConfiguredTableAssociationAnalysisRuleInput', name: 'CreateConfiguredTableAssociationAnalysisRuleInput')
    CreateConfiguredTableAssociationAnalysisRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateConfiguredTableAssociationAnalysisRuleOutput', name: 'CreateConfiguredTableAssociationAnalysisRuleOutput')
    CreateConfiguredTableAssociationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateConfiguredTableAssociationOperationInput', name: 'CreateConfiguredTableAssociationOperationInput')
    CreateConfiguredTableAssociationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateConfiguredTableAssociationOperationOutput', name: 'CreateConfiguredTableAssociationOperationOutput')
    CreateConfiguredTableOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateConfiguredTableOperationInput', name: 'CreateConfiguredTableOperationInput')
    CreateConfiguredTableOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateConfiguredTableOperationOutput', name: 'CreateConfiguredTableOperationOutput')
    CreateIdMappingTableInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateIdMappingTableInput', name: 'CreateIdMappingTableInput')
    CreateIdMappingTableOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateIdMappingTableOutput', name: 'CreateIdMappingTableOutput')
    CreateIdNamespaceAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateIdNamespaceAssociationInput', name: 'CreateIdNamespaceAssociationInput')
    CreateIdNamespaceAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateIdNamespaceAssociationOutput', name: 'CreateIdNamespaceAssociationOutput')
    CreateMembershipOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateMembershipOperationInput', name: 'CreateMembershipOperationInput')
    CreateMembershipOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreateMembershipOperationOutput', name: 'CreateMembershipOperationOutput')
    CreatePrivacyBudgetTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreatePrivacyBudgetTemplateInput', name: 'CreatePrivacyBudgetTemplateInput')
    CreatePrivacyBudgetTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#CreatePrivacyBudgetTemplateOutput', name: 'CreatePrivacyBudgetTemplateOutput')
    CustomMLMemberAbilities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#CustomMLMemberAbilities', name: 'CustomMLMemberAbilities', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#uniqueItems" => {}})
    CustomMLMemberAbility = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#CustomMLMemberAbility', name: 'CustomMLMemberAbility')
    DataEncryptionMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DataEncryptionMetadata', name: 'DataEncryptionMetadata')
    DeleteAnalysisTemplateOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteAnalysisTemplateOperationInput', name: 'DeleteAnalysisTemplateOperationInput')
    DeleteAnalysisTemplateOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteAnalysisTemplateOperationOutput', name: 'DeleteAnalysisTemplateOperationOutput')
    DeleteCollaborationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteCollaborationOperationInput', name: 'DeleteCollaborationOperationInput')
    DeleteCollaborationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteCollaborationOperationOutput', name: 'DeleteCollaborationOperationOutput')
    DeleteConfiguredAudienceModelAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteConfiguredAudienceModelAssociationInput', name: 'DeleteConfiguredAudienceModelAssociationInput')
    DeleteConfiguredAudienceModelAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteConfiguredAudienceModelAssociationOutput', name: 'DeleteConfiguredAudienceModelAssociationOutput')
    DeleteConfiguredTableAnalysisRuleOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteConfiguredTableAnalysisRuleOperationInput', name: 'DeleteConfiguredTableAnalysisRuleOperationInput')
    DeleteConfiguredTableAnalysisRuleOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteConfiguredTableAnalysisRuleOperationOutput', name: 'DeleteConfiguredTableAnalysisRuleOperationOutput')
    DeleteConfiguredTableAssociationAnalysisRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteConfiguredTableAssociationAnalysisRuleInput', name: 'DeleteConfiguredTableAssociationAnalysisRuleInput')
    DeleteConfiguredTableAssociationAnalysisRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteConfiguredTableAssociationAnalysisRuleOutput', name: 'DeleteConfiguredTableAssociationAnalysisRuleOutput')
    DeleteConfiguredTableAssociationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteConfiguredTableAssociationOperationInput', name: 'DeleteConfiguredTableAssociationOperationInput')
    DeleteConfiguredTableAssociationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteConfiguredTableAssociationOperationOutput', name: 'DeleteConfiguredTableAssociationOperationOutput')
    DeleteConfiguredTableOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteConfiguredTableOperationInput', name: 'DeleteConfiguredTableOperationInput')
    DeleteConfiguredTableOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteConfiguredTableOperationOutput', name: 'DeleteConfiguredTableOperationOutput')
    DeleteIdMappingTableInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteIdMappingTableInput', name: 'DeleteIdMappingTableInput')
    DeleteIdMappingTableOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteIdMappingTableOutput', name: 'DeleteIdMappingTableOutput')
    DeleteIdNamespaceAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteIdNamespaceAssociationInput', name: 'DeleteIdNamespaceAssociationInput')
    DeleteIdNamespaceAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteIdNamespaceAssociationOutput', name: 'DeleteIdNamespaceAssociationOutput')
    DeleteMemberOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteMemberOperationInput', name: 'DeleteMemberOperationInput')
    DeleteMemberOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteMemberOperationOutput', name: 'DeleteMemberOperationOutput')
    DeleteMembershipOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteMembershipOperationInput', name: 'DeleteMembershipOperationInput')
    DeleteMembershipOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeleteMembershipOperationOutput', name: 'DeleteMembershipOperationOutput')
    DeletePrivacyBudgetTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeletePrivacyBudgetTemplateInput', name: 'DeletePrivacyBudgetTemplateInput')
    DeletePrivacyBudgetTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DeletePrivacyBudgetTemplateOutput', name: 'DeletePrivacyBudgetTemplateOutput')
    DifferentialPrivacyAggregationExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyAggregationExpression', name: 'DifferentialPrivacyAggregationExpression', traits: {"smithy.api#length" => {"min" => 1}})
    DifferentialPrivacyAggregationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyAggregationType', name: 'DifferentialPrivacyAggregationType')
    DifferentialPrivacyColumn = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyColumn', name: 'DifferentialPrivacyColumn')
    DifferentialPrivacyColumnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyColumnList', name: 'DifferentialPrivacyColumnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DifferentialPrivacyConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyConfiguration', name: 'DifferentialPrivacyConfiguration')
    DifferentialPrivacyParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyParameters', name: 'DifferentialPrivacyParameters')
    DifferentialPrivacyPreviewAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyPreviewAggregation', name: 'DifferentialPrivacyPreviewAggregation')
    DifferentialPrivacyPreviewAggregationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyPreviewAggregationList', name: 'DifferentialPrivacyPreviewAggregationList')
    DifferentialPrivacyPreviewParametersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyPreviewParametersInput', name: 'DifferentialPrivacyPreviewParametersInput')
    DifferentialPrivacyPrivacyBudget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyPrivacyBudget', name: 'DifferentialPrivacyPrivacyBudget')
    DifferentialPrivacyPrivacyBudgetAggregation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyPrivacyBudgetAggregation', name: 'DifferentialPrivacyPrivacyBudgetAggregation')
    DifferentialPrivacyPrivacyBudgetAggregationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyPrivacyBudgetAggregationList', name: 'DifferentialPrivacyPrivacyBudgetAggregationList')
    DifferentialPrivacyPrivacyImpact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyPrivacyImpact', name: 'DifferentialPrivacyPrivacyImpact')
    DifferentialPrivacySensitivityParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacySensitivityParameters', name: 'DifferentialPrivacySensitivityParameters')
    DifferentialPrivacySensitivityParametersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacySensitivityParametersList', name: 'DifferentialPrivacySensitivityParametersList')
    DifferentialPrivacyTemplateParametersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyTemplateParametersInput', name: 'DifferentialPrivacyTemplateParametersInput')
    DifferentialPrivacyTemplateParametersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyTemplateParametersOutput', name: 'DifferentialPrivacyTemplateParametersOutput')
    DifferentialPrivacyTemplateUpdateParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DifferentialPrivacyTemplateUpdateParameters', name: 'DifferentialPrivacyTemplateUpdateParameters')
    DirectAnalysisConfigurationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#DirectAnalysisConfigurationDetails', name: 'DirectAnalysisConfigurationDetails')
    DisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#DisplayName', name: 'DisplayName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t]*$"})
    Epsilon = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cleanrooms#Epsilon', name: 'Epsilon', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    FilterableMemberStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#FilterableMemberStatus', name: 'FilterableMemberStatus', traits: {"smithy.api#enum" => [{"name" => "INVITED", "value" => "INVITED"}, {"name" => "ACTIVE", "value" => "ACTIVE"}]})
    GenericResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#GenericResourceName', name: 'GenericResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t]*$"})
    GetAnalysisTemplateOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetAnalysisTemplateOperationInput', name: 'GetAnalysisTemplateOperationInput')
    GetAnalysisTemplateOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetAnalysisTemplateOperationOutput', name: 'GetAnalysisTemplateOperationOutput')
    GetCollaborationAnalysisTemplateOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetCollaborationAnalysisTemplateOperationInput', name: 'GetCollaborationAnalysisTemplateOperationInput')
    GetCollaborationAnalysisTemplateOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetCollaborationAnalysisTemplateOperationOutput', name: 'GetCollaborationAnalysisTemplateOperationOutput')
    GetCollaborationConfiguredAudienceModelAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetCollaborationConfiguredAudienceModelAssociationInput', name: 'GetCollaborationConfiguredAudienceModelAssociationInput')
    GetCollaborationConfiguredAudienceModelAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetCollaborationConfiguredAudienceModelAssociationOutput', name: 'GetCollaborationConfiguredAudienceModelAssociationOutput')
    GetCollaborationIdNamespaceAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetCollaborationIdNamespaceAssociationInput', name: 'GetCollaborationIdNamespaceAssociationInput')
    GetCollaborationIdNamespaceAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetCollaborationIdNamespaceAssociationOutput', name: 'GetCollaborationIdNamespaceAssociationOutput')
    GetCollaborationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetCollaborationOperationInput', name: 'GetCollaborationOperationInput')
    GetCollaborationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetCollaborationOperationOutput', name: 'GetCollaborationOperationOutput')
    GetCollaborationPrivacyBudgetTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetCollaborationPrivacyBudgetTemplateInput', name: 'GetCollaborationPrivacyBudgetTemplateInput')
    GetCollaborationPrivacyBudgetTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetCollaborationPrivacyBudgetTemplateOutput', name: 'GetCollaborationPrivacyBudgetTemplateOutput')
    GetConfiguredAudienceModelAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetConfiguredAudienceModelAssociationInput', name: 'GetConfiguredAudienceModelAssociationInput')
    GetConfiguredAudienceModelAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetConfiguredAudienceModelAssociationOutput', name: 'GetConfiguredAudienceModelAssociationOutput')
    GetConfiguredTableAnalysisRuleOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetConfiguredTableAnalysisRuleOperationInput', name: 'GetConfiguredTableAnalysisRuleOperationInput')
    GetConfiguredTableAnalysisRuleOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetConfiguredTableAnalysisRuleOperationOutput', name: 'GetConfiguredTableAnalysisRuleOperationOutput')
    GetConfiguredTableAssociationAnalysisRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetConfiguredTableAssociationAnalysisRuleInput', name: 'GetConfiguredTableAssociationAnalysisRuleInput')
    GetConfiguredTableAssociationAnalysisRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetConfiguredTableAssociationAnalysisRuleOutput', name: 'GetConfiguredTableAssociationAnalysisRuleOutput')
    GetConfiguredTableAssociationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetConfiguredTableAssociationOperationInput', name: 'GetConfiguredTableAssociationOperationInput')
    GetConfiguredTableAssociationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetConfiguredTableAssociationOperationOutput', name: 'GetConfiguredTableAssociationOperationOutput')
    GetConfiguredTableOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetConfiguredTableOperationInput', name: 'GetConfiguredTableOperationInput')
    GetConfiguredTableOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetConfiguredTableOperationOutput', name: 'GetConfiguredTableOperationOutput')
    GetIdMappingTableInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetIdMappingTableInput', name: 'GetIdMappingTableInput')
    GetIdMappingTableOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetIdMappingTableOutput', name: 'GetIdMappingTableOutput')
    GetIdNamespaceAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetIdNamespaceAssociationInput', name: 'GetIdNamespaceAssociationInput')
    GetIdNamespaceAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetIdNamespaceAssociationOutput', name: 'GetIdNamespaceAssociationOutput')
    GetMembershipOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetMembershipOperationInput', name: 'GetMembershipOperationInput')
    GetMembershipOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetMembershipOperationOutput', name: 'GetMembershipOperationOutput')
    GetPrivacyBudgetTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetPrivacyBudgetTemplateInput', name: 'GetPrivacyBudgetTemplateInput')
    GetPrivacyBudgetTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetPrivacyBudgetTemplateOutput', name: 'GetPrivacyBudgetTemplateOutput')
    GetProtectedJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetProtectedJobInput', name: 'GetProtectedJobInput')
    GetProtectedJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetProtectedJobOutput', name: 'GetProtectedJobOutput')
    GetProtectedQueryOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetProtectedQueryOperationInput', name: 'GetProtectedQueryOperationInput')
    GetProtectedQueryOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetProtectedQueryOperationOutput', name: 'GetProtectedQueryOperationOutput')
    GetSchemaAnalysisRuleOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetSchemaAnalysisRuleOperationInput', name: 'GetSchemaAnalysisRuleOperationInput')
    GetSchemaAnalysisRuleOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetSchemaAnalysisRuleOperationOutput', name: 'GetSchemaAnalysisRuleOperationOutput')
    GetSchemaOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetSchemaOperationInput', name: 'GetSchemaOperationInput')
    GetSchemaOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GetSchemaOperationOutput', name: 'GetSchemaOperationOutput')
    GlueDatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#GlueDatabaseName', name: 'GlueDatabaseName', traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_]+-)*([a-zA-Z0-9_]+))?$"})
    GlueTableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#GlueTableName', name: 'GlueTableName', traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$"})
    GlueTableReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#GlueTableReference', name: 'GlueTableReference')
    Hash = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#Hash', name: 'Hash')
    HashList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#HashList', name: 'HashList')
    IdMappingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#IdMappingConfig', name: 'IdMappingConfig')
    IdMappingTable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#IdMappingTable', name: 'IdMappingTable')
    IdMappingTableArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#IdMappingTableArn', name: 'IdMappingTableArn', traits: {"smithy.api#length" => {"max" => 200}, "smithy.api#pattern" => "^arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/idmappingtable/[\\d\\w-]+$"})
    IdMappingTableInputReferenceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#IdMappingTableInputReferenceArn', name: 'IdMappingTableInputReferenceArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn):entityresolution:.*:[0-9]+:(idmappingworkflow/.*)$"})
    IdMappingTableInputReferenceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#IdMappingTableInputReferenceConfig', name: 'IdMappingTableInputReferenceConfig')
    IdMappingTableInputReferenceProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#IdMappingTableInputReferenceProperties', name: 'IdMappingTableInputReferenceProperties')
    IdMappingTableInputSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#IdMappingTableInputSource', name: 'IdMappingTableInputSource')
    IdMappingTableInputSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#IdMappingTableInputSourceList', name: 'IdMappingTableInputSourceList', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    IdMappingTableSchemaTypeProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#IdMappingTableSchemaTypeProperties', name: 'IdMappingTableSchemaTypeProperties')
    IdMappingTableSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#IdMappingTableSummary', name: 'IdMappingTableSummary')
    IdMappingTableSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#IdMappingTableSummaryList', name: 'IdMappingTableSummaryList')
    IdMappingWorkflowsSupported = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#IdMappingWorkflowsSupported', name: 'IdMappingWorkflowsSupported')
    IdNamespaceAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#IdNamespaceAssociation', name: 'IdNamespaceAssociation')
    IdNamespaceAssociationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#IdNamespaceAssociationArn', name: 'IdNamespaceAssociationArn', traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/idnamespaceassociation/[\\d\\w-]+$"})
    IdNamespaceAssociationIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#IdNamespaceAssociationIdentifier', name: 'IdNamespaceAssociationIdentifier', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    IdNamespaceAssociationInputReferenceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#IdNamespaceAssociationInputReferenceArn', name: 'IdNamespaceAssociationInputReferenceArn', traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^arn:aws:entityresolution:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:idnamespace/[\\d\\w-]+$"})
    IdNamespaceAssociationInputReferenceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#IdNamespaceAssociationInputReferenceConfig', name: 'IdNamespaceAssociationInputReferenceConfig')
    IdNamespaceAssociationInputReferenceProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#IdNamespaceAssociationInputReferenceProperties', name: 'IdNamespaceAssociationInputReferenceProperties')
    IdNamespaceAssociationInputReferencePropertiesSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#IdNamespaceAssociationInputReferencePropertiesSummary', name: 'IdNamespaceAssociationInputReferencePropertiesSummary')
    IdNamespaceAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#IdNamespaceAssociationSummary', name: 'IdNamespaceAssociationSummary')
    IdNamespaceAssociationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#IdNamespaceAssociationSummaryList', name: 'IdNamespaceAssociationSummaryList')
    IdNamespaceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#IdNamespaceType', name: 'IdNamespaceType')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobComputePaymentConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#JobComputePaymentConfig', name: 'JobComputePaymentConfig')
    JoinOperator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#JoinOperator', name: 'JoinOperator', traits: {"smithy.api#enum" => [{"name" => "OR", "value" => "OR"}, {"name" => "AND", "value" => "AND"}]})
    JoinOperatorsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#JoinOperatorsList', name: 'JoinOperatorsList', traits: {"smithy.api#length" => {"max" => 2}})
    JoinRequiredOption = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#JoinRequiredOption', name: 'JoinRequiredOption', traits: {"smithy.api#enum" => [{"name" => "QUERY_RUNNER", "value" => "QUERY_RUNNER"}]})
    KMSKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#KMSKeyArn', name: 'KMSKeyArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:kms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:key/[a-zA-Z0-9-]+$"})
    KeyPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#KeyPrefix', name: 'KeyPrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\w!.=*/-]*$"})
    ListAnalysisTemplatesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListAnalysisTemplatesOperationInput', name: 'ListAnalysisTemplatesOperationInput')
    ListAnalysisTemplatesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListAnalysisTemplatesOperationOutput', name: 'ListAnalysisTemplatesOperationOutput')
    ListCollaborationAnalysisTemplatesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListCollaborationAnalysisTemplatesOperationInput', name: 'ListCollaborationAnalysisTemplatesOperationInput')
    ListCollaborationAnalysisTemplatesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListCollaborationAnalysisTemplatesOperationOutput', name: 'ListCollaborationAnalysisTemplatesOperationOutput')
    ListCollaborationConfiguredAudienceModelAssociationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListCollaborationConfiguredAudienceModelAssociationsInput', name: 'ListCollaborationConfiguredAudienceModelAssociationsInput')
    ListCollaborationConfiguredAudienceModelAssociationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListCollaborationConfiguredAudienceModelAssociationsOutput', name: 'ListCollaborationConfiguredAudienceModelAssociationsOutput')
    ListCollaborationIdNamespaceAssociationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListCollaborationIdNamespaceAssociationsInput', name: 'ListCollaborationIdNamespaceAssociationsInput')
    ListCollaborationIdNamespaceAssociationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListCollaborationIdNamespaceAssociationsOutput', name: 'ListCollaborationIdNamespaceAssociationsOutput')
    ListCollaborationPrivacyBudgetTemplatesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListCollaborationPrivacyBudgetTemplatesInput', name: 'ListCollaborationPrivacyBudgetTemplatesInput')
    ListCollaborationPrivacyBudgetTemplatesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListCollaborationPrivacyBudgetTemplatesOutput', name: 'ListCollaborationPrivacyBudgetTemplatesOutput')
    ListCollaborationPrivacyBudgetsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListCollaborationPrivacyBudgetsInput', name: 'ListCollaborationPrivacyBudgetsInput')
    ListCollaborationPrivacyBudgetsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListCollaborationPrivacyBudgetsOutput', name: 'ListCollaborationPrivacyBudgetsOutput')
    ListCollaborationsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListCollaborationsOperationInput', name: 'ListCollaborationsOperationInput')
    ListCollaborationsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListCollaborationsOperationOutput', name: 'ListCollaborationsOperationOutput')
    ListConfiguredAudienceModelAssociationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListConfiguredAudienceModelAssociationsInput', name: 'ListConfiguredAudienceModelAssociationsInput')
    ListConfiguredAudienceModelAssociationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListConfiguredAudienceModelAssociationsOutput', name: 'ListConfiguredAudienceModelAssociationsOutput')
    ListConfiguredTableAssociationsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListConfiguredTableAssociationsOperationInput', name: 'ListConfiguredTableAssociationsOperationInput')
    ListConfiguredTableAssociationsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListConfiguredTableAssociationsOperationOutput', name: 'ListConfiguredTableAssociationsOperationOutput')
    ListConfiguredTablesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListConfiguredTablesOperationInput', name: 'ListConfiguredTablesOperationInput')
    ListConfiguredTablesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListConfiguredTablesOperationOutput', name: 'ListConfiguredTablesOperationOutput')
    ListIdMappingTablesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListIdMappingTablesInput', name: 'ListIdMappingTablesInput')
    ListIdMappingTablesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListIdMappingTablesOutput', name: 'ListIdMappingTablesOutput')
    ListIdNamespaceAssociationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListIdNamespaceAssociationsInput', name: 'ListIdNamespaceAssociationsInput')
    ListIdNamespaceAssociationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListIdNamespaceAssociationsOutput', name: 'ListIdNamespaceAssociationsOutput')
    ListMembersOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListMembersOperationInput', name: 'ListMembersOperationInput')
    ListMembersOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListMembersOperationOutput', name: 'ListMembersOperationOutput')
    ListMembershipsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListMembershipsOperationInput', name: 'ListMembershipsOperationInput')
    ListMembershipsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListMembershipsOperationOutput', name: 'ListMembershipsOperationOutput')
    ListPrivacyBudgetTemplatesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListPrivacyBudgetTemplatesInput', name: 'ListPrivacyBudgetTemplatesInput')
    ListPrivacyBudgetTemplatesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListPrivacyBudgetTemplatesOutput', name: 'ListPrivacyBudgetTemplatesOutput')
    ListPrivacyBudgetsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListPrivacyBudgetsInput', name: 'ListPrivacyBudgetsInput')
    ListPrivacyBudgetsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListPrivacyBudgetsOutput', name: 'ListPrivacyBudgetsOutput')
    ListProtectedJobsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListProtectedJobsInput', name: 'ListProtectedJobsInput')
    ListProtectedJobsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListProtectedJobsOutput', name: 'ListProtectedJobsOutput')
    ListProtectedQueriesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListProtectedQueriesOperationInput', name: 'ListProtectedQueriesOperationInput')
    ListProtectedQueriesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListProtectedQueriesOperationOutput', name: 'ListProtectedQueriesOperationOutput')
    ListSchemasOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListSchemasOperationInput', name: 'ListSchemasOperationInput')
    ListSchemasOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListSchemasOperationOutput', name: 'ListSchemasOperationOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MLMemberAbilities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#MLMemberAbilities', name: 'MLMemberAbilities')
    MLPaymentConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#MLPaymentConfig', name: 'MLPaymentConfig')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cleanrooms#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MemberAbilities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#MemberAbilities', name: 'MemberAbilities', traits: {"smithy.api#uniqueItems" => {}})
    MemberAbility = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#MemberAbility', name: 'MemberAbility')
    MemberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#MemberList', name: 'MemberList', traits: {"smithy.api#length" => {"min" => 0, "max" => 9}})
    MemberSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#MemberSpecification', name: 'MemberSpecification')
    MemberStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#MemberStatus', name: 'MemberStatus', traits: {"smithy.api#enum" => [{"name" => "INVITED", "value" => "INVITED"}, {"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "LEFT", "value" => "LEFT"}, {"name" => "REMOVED", "value" => "REMOVED"}]})
    MemberSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#MemberSummary', name: 'MemberSummary')
    MemberSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#MemberSummaryList', name: 'MemberSummaryList')
    Membership = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#Membership', name: 'Membership')
    MembershipArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#MembershipArn', name: 'MembershipArn', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^arn:aws:[\\w]+:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+$"})
    MembershipIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#MembershipIdentifier', name: 'MembershipIdentifier', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    MembershipJobComputePaymentConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#MembershipJobComputePaymentConfig', name: 'MembershipJobComputePaymentConfig')
    MembershipJobLogStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#MembershipJobLogStatus', name: 'MembershipJobLogStatus')
    MembershipMLPaymentConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#MembershipMLPaymentConfig', name: 'MembershipMLPaymentConfig')
    MembershipModelInferencePaymentConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#MembershipModelInferencePaymentConfig', name: 'MembershipModelInferencePaymentConfig')
    MembershipModelTrainingPaymentConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#MembershipModelTrainingPaymentConfig', name: 'MembershipModelTrainingPaymentConfig')
    MembershipPaymentConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#MembershipPaymentConfiguration', name: 'MembershipPaymentConfiguration')
    MembershipProtectedJobOutputConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#MembershipProtectedJobOutputConfiguration', name: 'MembershipProtectedJobOutputConfiguration')
    MembershipProtectedJobResultConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#MembershipProtectedJobResultConfiguration', name: 'MembershipProtectedJobResultConfiguration')
    MembershipProtectedQueryOutputConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#MembershipProtectedQueryOutputConfiguration', name: 'MembershipProtectedQueryOutputConfiguration')
    MembershipProtectedQueryResultConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#MembershipProtectedQueryResultConfiguration', name: 'MembershipProtectedQueryResultConfiguration')
    MembershipQueryComputePaymentConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#MembershipQueryComputePaymentConfig', name: 'MembershipQueryComputePaymentConfig')
    MembershipQueryLogStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#MembershipQueryLogStatus', name: 'MembershipQueryLogStatus')
    MembershipStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#MembershipStatus', name: 'MembershipStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "REMOVED", "value" => "REMOVED"}, {"name" => "COLLABORATION_DELETED", "value" => "COLLABORATION_DELETED"}]})
    MembershipSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#MembershipSummary', name: 'MembershipSummary')
    MembershipSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#MembershipSummaryList', name: 'MembershipSummaryList')
    ModelInferencePaymentConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ModelInferencePaymentConfig', name: 'ModelInferencePaymentConfig')
    ModelTrainingPaymentConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ModelTrainingPaymentConfig', name: 'ModelTrainingPaymentConfig')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"max" => 10240}})
    ParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cleanrooms#ParameterMap', name: 'ParameterMap')
    ParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ParameterName', name: 'ParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z_]+$"})
    ParameterType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#ParameterType', name: 'ParameterType')
    ParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ParameterValue', name: 'ParameterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    PaymentConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#PaymentConfiguration', name: 'PaymentConfiguration')
    PopulateIdMappingTableInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#PopulateIdMappingTableInput', name: 'PopulateIdMappingTableInput')
    PopulateIdMappingTableOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#PopulateIdMappingTableOutput', name: 'PopulateIdMappingTableOutput')
    PreviewPrivacyImpactInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#PreviewPrivacyImpactInput', name: 'PreviewPrivacyImpactInput')
    PreviewPrivacyImpactOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#PreviewPrivacyImpactOutput', name: 'PreviewPrivacyImpactOutput')
    PreviewPrivacyImpactParametersInput = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#PreviewPrivacyImpactParametersInput', name: 'PreviewPrivacyImpactParametersInput')
    PrivacyBudget = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#PrivacyBudget', name: 'PrivacyBudget')
    PrivacyBudgetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#PrivacyBudgetSummary', name: 'PrivacyBudgetSummary')
    PrivacyBudgetSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#PrivacyBudgetSummaryList', name: 'PrivacyBudgetSummaryList')
    PrivacyBudgetTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#PrivacyBudgetTemplate', name: 'PrivacyBudgetTemplate')
    PrivacyBudgetTemplateArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#PrivacyBudgetTemplateArn', name: 'PrivacyBudgetTemplateArn', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^arn:aws:[\\w]+:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:privacybudgettemplate/[\\d\\w-]+$"})
    PrivacyBudgetTemplateAutoRefresh = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#PrivacyBudgetTemplateAutoRefresh', name: 'PrivacyBudgetTemplateAutoRefresh')
    PrivacyBudgetTemplateIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#PrivacyBudgetTemplateIdentifier', name: 'PrivacyBudgetTemplateIdentifier', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    PrivacyBudgetTemplateParametersInput = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#PrivacyBudgetTemplateParametersInput', name: 'PrivacyBudgetTemplateParametersInput')
    PrivacyBudgetTemplateParametersOutput = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#PrivacyBudgetTemplateParametersOutput', name: 'PrivacyBudgetTemplateParametersOutput')
    PrivacyBudgetTemplateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#PrivacyBudgetTemplateSummary', name: 'PrivacyBudgetTemplateSummary')
    PrivacyBudgetTemplateSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#PrivacyBudgetTemplateSummaryList', name: 'PrivacyBudgetTemplateSummaryList')
    PrivacyBudgetTemplateUpdateParameters = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#PrivacyBudgetTemplateUpdateParameters', name: 'PrivacyBudgetTemplateUpdateParameters')
    PrivacyBudgetType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#PrivacyBudgetType', name: 'PrivacyBudgetType')
    PrivacyImpact = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#PrivacyImpact', name: 'PrivacyImpact')
    ProtectedJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJob', name: 'ProtectedJob')
    ProtectedJobAnalysisType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobAnalysisType', name: 'ProtectedJobAnalysisType')
    ProtectedJobConfigurationDetails = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobConfigurationDetails', name: 'ProtectedJobConfigurationDetails')
    ProtectedJobDirectAnalysisConfigurationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobDirectAnalysisConfigurationDetails', name: 'ProtectedJobDirectAnalysisConfigurationDetails')
    ProtectedJobError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobError', name: 'ProtectedJobError')
    ProtectedJobIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobIdentifier', name: 'ProtectedJobIdentifier', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ProtectedJobMemberOutputConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobMemberOutputConfigurationInput', name: 'ProtectedJobMemberOutputConfigurationInput')
    ProtectedJobMemberOutputConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobMemberOutputConfigurationOutput', name: 'ProtectedJobMemberOutputConfigurationOutput')
    ProtectedJobMemberOutputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobMemberOutputList', name: 'ProtectedJobMemberOutputList')
    ProtectedJobOutput = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobOutput', name: 'ProtectedJobOutput')
    ProtectedJobOutputConfigurationInput = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobOutputConfigurationInput', name: 'ProtectedJobOutputConfigurationInput')
    ProtectedJobOutputConfigurationOutput = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobOutputConfigurationOutput', name: 'ProtectedJobOutputConfigurationOutput')
    ProtectedJobParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobParameters', name: 'ProtectedJobParameters')
    ProtectedJobReceiverAccountIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobReceiverAccountIds', name: 'ProtectedJobReceiverAccountIds')
    ProtectedJobReceiverConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobReceiverConfiguration', name: 'ProtectedJobReceiverConfiguration')
    ProtectedJobReceiverConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobReceiverConfigurations', name: 'ProtectedJobReceiverConfigurations')
    ProtectedJobResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobResult', name: 'ProtectedJobResult')
    ProtectedJobResultConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobResultConfigurationInput', name: 'ProtectedJobResultConfigurationInput')
    ProtectedJobResultConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobResultConfigurationOutput', name: 'ProtectedJobResultConfigurationOutput')
    ProtectedJobS3Output = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobS3Output', name: 'ProtectedJobS3Output')
    ProtectedJobS3OutputConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobS3OutputConfigurationInput', name: 'ProtectedJobS3OutputConfigurationInput')
    ProtectedJobS3OutputConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobS3OutputConfigurationOutput', name: 'ProtectedJobS3OutputConfigurationOutput')
    ProtectedJobSingleMemberOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobSingleMemberOutput', name: 'ProtectedJobSingleMemberOutput')
    ProtectedJobStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobStatistics', name: 'ProtectedJobStatistics')
    ProtectedJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobStatus', name: 'ProtectedJobStatus')
    ProtectedJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobSummary', name: 'ProtectedJobSummary')
    ProtectedJobSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobSummaryList', name: 'ProtectedJobSummaryList')
    ProtectedJobType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#ProtectedJobType', name: 'ProtectedJobType')
    ProtectedQuery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQuery', name: 'ProtectedQuery')
    ProtectedQueryDistributeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryDistributeOutput', name: 'ProtectedQueryDistributeOutput')
    ProtectedQueryDistributeOutputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryDistributeOutputConfiguration', name: 'ProtectedQueryDistributeOutputConfiguration')
    ProtectedQueryDistributeOutputConfigurationLocation = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryDistributeOutputConfigurationLocation', name: 'ProtectedQueryDistributeOutputConfigurationLocation')
    ProtectedQueryDistributeOutputConfigurationLocations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryDistributeOutputConfigurationLocations', name: 'ProtectedQueryDistributeOutputConfigurationLocations')
    ProtectedQueryError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryError', name: 'ProtectedQueryError')
    ProtectedQueryIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryIdentifier', name: 'ProtectedQueryIdentifier', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ProtectedQueryMemberOutputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryMemberOutputConfiguration', name: 'ProtectedQueryMemberOutputConfiguration')
    ProtectedQueryMemberOutputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryMemberOutputList', name: 'ProtectedQueryMemberOutputList')
    ProtectedQueryOutput = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryOutput', name: 'ProtectedQueryOutput')
    ProtectedQueryOutputConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryOutputConfiguration', name: 'ProtectedQueryOutputConfiguration')
    ProtectedQueryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryResult', name: 'ProtectedQueryResult')
    ProtectedQueryResultConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryResultConfiguration', name: 'ProtectedQueryResultConfiguration')
    ProtectedQueryS3Output = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryS3Output', name: 'ProtectedQueryS3Output')
    ProtectedQueryS3OutputConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryS3OutputConfiguration', name: 'ProtectedQueryS3OutputConfiguration')
    ProtectedQuerySQLParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQuerySQLParameters', name: 'ProtectedQuerySQLParameters', traits: {"smithy.api#sensitive" => {}})
    ProtectedQuerySingleMemberOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQuerySingleMemberOutput', name: 'ProtectedQuerySingleMemberOutput')
    ProtectedQueryStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryStatistics', name: 'ProtectedQueryStatistics')
    ProtectedQueryStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryStatus', name: 'ProtectedQueryStatus', traits: {"smithy.api#enum" => [{"name" => "SUBMITTED", "value" => "SUBMITTED"}, {"name" => "STARTED", "value" => "STARTED"}, {"name" => "CANCELLED", "value" => "CANCELLED"}, {"name" => "CANCELLING", "value" => "CANCELLING"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "SUCCESS", "value" => "SUCCESS"}, {"name" => "TIMED_OUT", "value" => "TIMED_OUT"}]})
    ProtectedQuerySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQuerySummary', name: 'ProtectedQuerySummary')
    ProtectedQuerySummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQuerySummaryList', name: 'ProtectedQuerySummaryList')
    ProtectedQueryType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ProtectedQueryType', name: 'ProtectedQueryType', traits: {"smithy.api#enum" => [{"name" => "SQL", "value" => "SQL"}]})
    QueryComputePaymentConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#QueryComputePaymentConfig', name: 'QueryComputePaymentConfig')
    QueryConstraint = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#QueryConstraint', name: 'QueryConstraint')
    QueryConstraintList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#QueryConstraintList', name: 'QueryConstraintList', traits: {"smithy.api#length" => {"max" => 1}})
    QueryConstraintRequireOverlap = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#QueryConstraintRequireOverlap', name: 'QueryConstraintRequireOverlap')
    QueryTables = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#QueryTables', name: 'QueryTables')
    ReceiverAccountIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ReceiverAccountIds', name: 'ReceiverAccountIds')
    ReceiverConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ReceiverConfiguration', name: 'ReceiverConfiguration')
    ReceiverConfigurationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ReceiverConfigurationsList', name: 'ReceiverConfigurationsList')
    ResourceAlias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ResourceAlias', name: 'ResourceAlias', traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$"})
    ResourceDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ResourceDescription', name: 'ResourceDescription', traits: {"smithy.api#length" => {"max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t\\r\\n]*$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ResourceType', name: 'ResourceType', traits: {"smithy.api#enum" => [{"value" => "CONFIGURED_TABLE", "name" => "CONFIGURED_TABLE"}, {"value" => "COLLABORATION", "name" => "COLLABORATION"}, {"value" => "MEMBERSHIP", "name" => "MEMBERSHIP"}, {"value" => "CONFIGURED_TABLE_ASSOCIATION", "name" => "CONFIGURED_TABLE_ASSOCIATION"}]})
    ResultFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ResultFormat', name: 'ResultFormat', traits: {"smithy.api#enum" => [{"name" => "CSV", "value" => "CSV"}, {"name" => "PARQUET", "value" => "PARQUET"}]})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 32, "max" => 512}, "smithy.api#pattern" => "^arn:aws:iam::[\\w]+:role/[\\w+=./@-]+$"})
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#S3Location', name: 'S3Location')
    ScalarFunctions = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ScalarFunctions', name: 'ScalarFunctions', traits: {"smithy.api#enum" => [{"name" => "ABS", "value" => "ABS"}, {"name" => "CAST", "value" => "CAST"}, {"name" => "CEILING", "value" => "CEILING"}, {"name" => "COALESCE", "value" => "COALESCE"}, {"name" => "CONVERT", "value" => "CONVERT"}, {"name" => "CURRENT_DATE", "value" => "CURRENT_DATE"}, {"name" => "DATEADD", "value" => "DATEADD"}, {"name" => "EXTRACT", "value" => "EXTRACT"}, {"name" => "FLOOR", "value" => "FLOOR"}, {"name" => "GETDATE", "value" => "GETDATE"}, {"name" => "LN", "value" => "LN"}, {"name" => "LOG", "value" => "LOG"}, {"name" => "LOWER", "value" => "LOWER"}, {"name" => "ROUND", "value" => "ROUND"}, {"name" => "RTRIM", "value" => "RTRIM"}, {"name" => "SQRT", "value" => "SQRT"}, {"name" => "SUBSTRING", "value" => "SUBSTRING"}, {"name" => "TO_CHAR", "value" => "TO_CHAR"}, {"name" => "TO_DATE", "value" => "TO_DATE"}, {"name" => "TO_NUMBER", "value" => "TO_NUMBER"}, {"name" => "TO_TIMESTAMP", "value" => "TO_TIMESTAMP"}, {"name" => "TRIM", "value" => "TRIM"}, {"name" => "TRUNC", "value" => "TRUNC"}, {"name" => "UPPER", "value" => "UPPER"}]})
    ScalarFunctionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ScalarFunctionsList', name: 'ScalarFunctionsList')
    Schema = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#Schema', name: 'Schema')
    SchemaAnalysisRuleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#SchemaAnalysisRuleList', name: 'SchemaAnalysisRuleList', traits: {"smithy.api#length" => {"max" => 25}})
    SchemaAnalysisRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#SchemaAnalysisRuleRequest', name: 'SchemaAnalysisRuleRequest')
    SchemaAnalysisRuleRequestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#SchemaAnalysisRuleRequestList', name: 'SchemaAnalysisRuleRequestList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    SchemaConfiguration = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#SchemaConfiguration', name: 'SchemaConfiguration')
    SchemaConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#SchemaConfigurationList', name: 'SchemaConfigurationList')
    SchemaList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#SchemaList', name: 'SchemaList', traits: {"smithy.api#length" => {"max" => 25}})
    SchemaStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#SchemaStatus', name: 'SchemaStatus')
    SchemaStatusDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#SchemaStatusDetail', name: 'SchemaStatusDetail')
    SchemaStatusDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#SchemaStatusDetailList', name: 'SchemaStatusDetailList')
    SchemaStatusReason = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#SchemaStatusReason', name: 'SchemaStatusReason')
    SchemaStatusReasonCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#SchemaStatusReasonCode', name: 'SchemaStatusReasonCode')
    SchemaStatusReasonList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#SchemaStatusReasonList', name: 'SchemaStatusReasonList')
    SchemaSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#SchemaSummary', name: 'SchemaSummary')
    SchemaSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#SchemaSummaryList', name: 'SchemaSummaryList')
    SchemaType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#SchemaType', name: 'SchemaType')
    SchemaTypeProperties = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#SchemaTypeProperties', name: 'SchemaTypeProperties')
    SecretsManagerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#SecretsManagerArn', name: 'SecretsManagerArn', traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^arn:aws:secretsmanager:[a-z]{2}-[a-z]+-[0-9]:\\d{12}:secret:.*$"})
    SelectedAnalysisMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#SelectedAnalysisMethod', name: 'SelectedAnalysisMethod')
    SelectedAnalysisMethods = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#SelectedAnalysisMethods', name: 'SelectedAnalysisMethods')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SnowflakeAccountIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#SnowflakeAccountIdentifier', name: 'SnowflakeAccountIdentifier', traits: {"smithy.api#length" => {"min" => 3, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{N}\\p{Pc}\\p{Pd}\\p{Zs}.]+$"})
    SnowflakeDatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#SnowflakeDatabaseName', name: 'SnowflakeDatabaseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{N}\\p{Pc}\\p{Pd}\\p{Zs}]+$"})
    SnowflakeSchemaName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#SnowflakeSchemaName', name: 'SnowflakeSchemaName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{N}\\p{Pc}\\p{Pd}\\p{Zs}]+$"})
    SnowflakeTableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#SnowflakeTableName', name: 'SnowflakeTableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{N}\\p{Pc}\\p{Pd}\\p{Zs}]+$"})
    SnowflakeTableReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#SnowflakeTableReference', name: 'SnowflakeTableReference')
    SnowflakeTableSchema = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#SnowflakeTableSchema', name: 'SnowflakeTableSchema')
    SnowflakeTableSchemaList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#SnowflakeTableSchemaList', name: 'SnowflakeTableSchemaList', traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    SnowflakeTableSchemaV1 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#SnowflakeTableSchemaV1', name: 'SnowflakeTableSchemaV1')
    StartProtectedJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#StartProtectedJobInput', name: 'StartProtectedJobInput')
    StartProtectedJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#StartProtectedJobOutput', name: 'StartProtectedJobOutput')
    StartProtectedQueryOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#StartProtectedQueryOperationInput', name: 'StartProtectedQueryOperationInput')
    StartProtectedQueryOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#StartProtectedQueryOperationOutput', name: 'StartProtectedQueryOperationOutput')
    TableAlias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#TableAlias', name: 'TableAlias', traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$"})
    TableAliasList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#TableAliasList', name: 'TableAliasList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    TableDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#TableDescription', name: 'TableDescription', traits: {"smithy.api#length" => {"max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t\\r\\n]*$"})
    TableReference = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.cleanrooms#TableReference', name: 'TableReference')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#TagKeys', name: 'TagKeys')
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cleanrooms#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetProtectedJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#TargetProtectedJobStatus', name: 'TargetProtectedJobStatus')
    TargetProtectedQueryStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#TargetProtectedQueryStatus', name: 'TargetProtectedQueryStatus', traits: {"smithy.api#enum" => [{"name" => "CANCELLED", "value" => "CANCELLED"}]})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#UUID', name: 'UUID', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateAnalysisTemplateOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateAnalysisTemplateOperationInput', name: 'UpdateAnalysisTemplateOperationInput')
    UpdateAnalysisTemplateOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateAnalysisTemplateOperationOutput', name: 'UpdateAnalysisTemplateOperationOutput')
    UpdateCollaborationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateCollaborationOperationInput', name: 'UpdateCollaborationOperationInput')
    UpdateCollaborationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateCollaborationOperationOutput', name: 'UpdateCollaborationOperationOutput')
    UpdateConfiguredAudienceModelAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateConfiguredAudienceModelAssociationInput', name: 'UpdateConfiguredAudienceModelAssociationInput')
    UpdateConfiguredAudienceModelAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateConfiguredAudienceModelAssociationOutput', name: 'UpdateConfiguredAudienceModelAssociationOutput')
    UpdateConfiguredTableAnalysisRuleOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateConfiguredTableAnalysisRuleOperationInput', name: 'UpdateConfiguredTableAnalysisRuleOperationInput')
    UpdateConfiguredTableAnalysisRuleOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateConfiguredTableAnalysisRuleOperationOutput', name: 'UpdateConfiguredTableAnalysisRuleOperationOutput')
    UpdateConfiguredTableAssociationAnalysisRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateConfiguredTableAssociationAnalysisRuleInput', name: 'UpdateConfiguredTableAssociationAnalysisRuleInput')
    UpdateConfiguredTableAssociationAnalysisRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateConfiguredTableAssociationAnalysisRuleOutput', name: 'UpdateConfiguredTableAssociationAnalysisRuleOutput')
    UpdateConfiguredTableAssociationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateConfiguredTableAssociationOperationInput', name: 'UpdateConfiguredTableAssociationOperationInput')
    UpdateConfiguredTableAssociationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateConfiguredTableAssociationOperationOutput', name: 'UpdateConfiguredTableAssociationOperationOutput')
    UpdateConfiguredTableOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateConfiguredTableOperationInput', name: 'UpdateConfiguredTableOperationInput')
    UpdateConfiguredTableOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateConfiguredTableOperationOutput', name: 'UpdateConfiguredTableOperationOutput')
    UpdateIdMappingTableInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateIdMappingTableInput', name: 'UpdateIdMappingTableInput')
    UpdateIdMappingTableOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateIdMappingTableOutput', name: 'UpdateIdMappingTableOutput')
    UpdateIdNamespaceAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateIdNamespaceAssociationInput', name: 'UpdateIdNamespaceAssociationInput')
    UpdateIdNamespaceAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateIdNamespaceAssociationOutput', name: 'UpdateIdNamespaceAssociationOutput')
    UpdateMembershipOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateMembershipOperationInput', name: 'UpdateMembershipOperationInput')
    UpdateMembershipOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateMembershipOperationOutput', name: 'UpdateMembershipOperationOutput')
    UpdatePrivacyBudgetTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdatePrivacyBudgetTemplateInput', name: 'UpdatePrivacyBudgetTemplateInput')
    UpdatePrivacyBudgetTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdatePrivacyBudgetTemplateOutput', name: 'UpdatePrivacyBudgetTemplateOutput')
    UpdateProtectedJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateProtectedJobInput', name: 'UpdateProtectedJobInput')
    UpdateProtectedJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateProtectedJobOutput', name: 'UpdateProtectedJobOutput')
    UpdateProtectedQueryOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateProtectedQueryOperationInput', name: 'UpdateProtectedQueryOperationInput')
    UpdateProtectedQueryOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#UpdateProtectedQueryOperationOutput', name: 'UpdateProtectedQueryOperationOutput')
    UsersNoisePerQuery = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cleanrooms#UsersNoisePerQuery', name: 'UsersNoisePerQuery', traits: {"smithy.api#range" => {"min" => 10, "max" => 100}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cleanrooms#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cleanrooms#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "FIELD_VALIDATION_FAILED", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "INVALID_CONFIGURATION", "name" => "INVALID_CONFIGURATION"}, {"value" => "INVALID_QUERY", "name" => "INVALID_QUERY"}, {"value" => "IAM_SYNCHRONIZATION_DELAY", "name" => "IAM_SYNCHRONIZATION_DELAY"}]})
    WorkerComputeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cleanrooms#WorkerComputeConfiguration', name: 'WorkerComputeConfiguration')
    WorkerComputeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cleanrooms#WorkerComputeType', name: 'WorkerComputeType')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>A reason code for the exception.</p>"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AdditionalAnalyses.add_member(:allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOWED', traits: {"smithy.api#enumValue" => "ALLOWED"}))
    AdditionalAnalyses.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRED', traits: {"smithy.api#enumValue" => "REQUIRED"}))
    AdditionalAnalyses.add_member(:not_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_ALLOWED', traits: {"smithy.api#enumValue" => "NOT_ALLOWED"}))
    AggregateColumn.add_member(:column_names, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnNameList, location_name: 'columnNames', traits: {"smithy.api#documentation" => "<p>Column names in configured table of aggregate columns.</p>", "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    AggregateColumn.add_member(:function, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregateFunctionName, location_name: 'function', traits: {"smithy.api#documentation" => "<p>Aggregation function that can be applied to aggregate column in query.</p>", "smithy.api#required" => {}}))
    AggregateColumn.type = Types::AggregateColumn
    AggregateColumnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AggregateColumn)
    AggregationConstraint.add_member(:column_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnName, location_name: 'columnName', traits: {"smithy.api#documentation" => "<p>Column in aggregation constraint for which there must be a minimum number of distinct values in an output row for it to be in the query output.</p>", "smithy.api#required" => {}}))
    AggregationConstraint.add_member(:minimum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'minimum', traits: {"smithy.api#documentation" => "<p>The minimum number of distinct values that an output row must be an aggregation of. Minimum threshold of distinct values for a specified column that must exist in an output row for it to be in the query output.</p>", "smithy.api#range" => {"min" => 2, "max" => 100000}, "smithy.api#required" => {}}))
    AggregationConstraint.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of aggregation the constraint allows. The only valid value is currently `COUNT_DISTINCT`.</p>", "smithy.api#required" => {}}))
    AggregationConstraint.type = Types::AggregationConstraint
    AggregationConstraints.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationConstraint)
    AllowedAdditionalAnalyses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAnalysesResourceArn)
    AllowedAnalysesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArnOrQueryWildcard)
    AllowedAnalysisProviderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AllowedColumnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName)
    AllowedResultReceivers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AnalysisFormat.add_member(:sql, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL', traits: {"smithy.api#enumValue" => "SQL"}))
    AnalysisFormat.add_member(:pyspark_1_0, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PYSPARK_1_0', traits: {"smithy.api#enumValue" => "PYSPARK_1_0"}))
    AnalysisMethod.add_member(:direct_query, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT_QUERY', traits: {"smithy.api#enumValue" => "DIRECT_QUERY"}))
    AnalysisMethod.add_member(:direct_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT_JOB', traits: {"smithy.api#enumValue" => "DIRECT_JOB"}))
    AnalysisMethod.add_member(:multiple, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTIPLE', traits: {"smithy.api#enumValue" => "MULTIPLE"}))
    AnalysisParameter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the parameter. The name must use only alphanumeric, underscore (_), or hyphen (-) characters but cannot start or end with a hyphen.</p>", "smithy.api#required" => {}}))
    AnalysisParameter.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of parameter.</p>", "smithy.api#required" => {}}))
    AnalysisParameter.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue, location_name: 'defaultValue', traits: {"smithy.api#documentation" => "<p>Optional. The default value that is applied in the analysis template. The member who can query can override this value in the query editor.</p>"}))
    AnalysisParameter.type = Types::AnalysisParameter
    AnalysisParameterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisParameter)
    AnalysisRule.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique ID for the associated collaboration.</p>", "smithy.api#required" => {}}))
    AnalysisRule.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of analysis rule.</p>", "smithy.api#required" => {}}))
    AnalysisRule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the analysis rule.</p>", "smithy.api#required" => {}}))
    AnalysisRule.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time the analysis rule was created.</p>", "smithy.api#required" => {}}))
    AnalysisRule.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time the analysis rule was last updated.</p>", "smithy.api#required" => {}}))
    AnalysisRule.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRulePolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>A policy that describes the associated data usage limitations.</p>", "smithy.api#required" => {}}))
    AnalysisRule.add_member(:collaboration_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRulePolicy, location_name: 'collaborationPolicy'))
    AnalysisRule.add_member(:consolidated_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsolidatedPolicy, location_name: 'consolidatedPolicy', traits: {"smithy.api#documentation" => "<p> The consolidated policy for the analysis rule.</p>"}))
    AnalysisRule.type = Types::AnalysisRule
    AnalysisRuleAggregation.add_member(:aggregate_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregateColumnList, location_name: 'aggregateColumns', traits: {"smithy.api#documentation" => "<p>The columns that query runners are allowed to use in aggregation queries.</p>", "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    AnalysisRuleAggregation.add_member(:join_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: 'joinColumns', traits: {"smithy.api#documentation" => "<p>Columns in configured table that can be used in join statements and/or as aggregate columns. They can never be outputted directly.</p>", "smithy.api#required" => {}}))
    AnalysisRuleAggregation.add_member(:join_required, Smithy::Schema::Shapes::ShapeRef.new(shape: JoinRequiredOption, location_name: 'joinRequired', traits: {"smithy.api#documentation" => "<p>Control that requires member who runs query to do a join with their configured table and/or other configured table in query.</p>"}))
    AnalysisRuleAggregation.add_member(:allowed_join_operators, Smithy::Schema::Shapes::ShapeRef.new(shape: JoinOperatorsList, location_name: 'allowedJoinOperators', traits: {"smithy.api#documentation" => "<p>Which logical operators (if any) are to be used in an INNER JOIN match condition. Default is <code>AND</code>.</p>"}))
    AnalysisRuleAggregation.add_member(:dimension_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: 'dimensionColumns', traits: {"smithy.api#documentation" => "<p>The columns that query runners are allowed to select, group by, or filter by.</p>", "smithy.api#required" => {}}))
    AnalysisRuleAggregation.add_member(:scalar_functions, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalarFunctionsList, location_name: 'scalarFunctions', traits: {"smithy.api#documentation" => "<p>Set of scalar functions that are allowed to be used on dimension columns and the output of aggregation of metrics.</p>", "smithy.api#required" => {}}))
    AnalysisRuleAggregation.add_member(:output_constraints, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationConstraints, location_name: 'outputConstraints', traits: {"smithy.api#documentation" => "<p>Columns that must meet a specific threshold value (after an aggregation function is applied to it) for each output row to be returned.</p>", "smithy.api#required" => {}}))
    AnalysisRuleAggregation.add_member(:additional_analyses, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAnalyses, location_name: 'additionalAnalyses', traits: {"smithy.api#documentation" => "<p> An indicator as to whether additional analyses (such as Clean Rooms ML) can be applied to the output of the direct query. </p> <p>The <code>additionalAnalyses</code> parameter is currently supported for the list analysis rule (<code>AnalysisRuleList</code>) and the custom analysis rule (<code>AnalysisRuleCustom</code>).</p>"}))
    AnalysisRuleAggregation.type = Types::AnalysisRuleAggregation
    AnalysisRuleColumnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnName)
    AnalysisRuleColumnNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnName)
    AnalysisRuleCustom.add_member(:allowed_analyses, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedAnalysesList, location_name: 'allowedAnalyses', traits: {"smithy.api#documentation" => "<p>The ARN of the analysis templates that are allowed by the custom analysis rule.</p>", "smithy.api#length" => {"min" => 0}, "smithy.api#required" => {}}))
    AnalysisRuleCustom.add_member(:allowed_analysis_providers, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedAnalysisProviderList, location_name: 'allowedAnalysisProviders', traits: {"smithy.api#documentation" => "<p>The IDs of the Amazon Web Services accounts that are allowed to query by the custom analysis rule. Required when <code>allowedAnalyses</code> is <code>ANY_QUERY</code>.</p>", "smithy.api#length" => {"min" => 0}}))
    AnalysisRuleCustom.add_member(:additional_analyses, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAnalyses, location_name: 'additionalAnalyses', traits: {"smithy.api#documentation" => "<p> An indicator as to whether additional analyses (such as Clean Rooms ML) can be applied to the output of the direct query.</p>"}))
    AnalysisRuleCustom.add_member(:disallowed_output_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: 'disallowedOutputColumns', traits: {"smithy.api#documentation" => "<p> A list of columns that aren't allowed to be shown in the query output.</p>"}))
    AnalysisRuleCustom.add_member(:differential_privacy, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyConfiguration, location_name: 'differentialPrivacy', traits: {"smithy.api#documentation" => "<p>The differential privacy configuration.</p>"}))
    AnalysisRuleCustom.type = Types::AnalysisRuleCustom
    AnalysisRuleIdMappingTable.add_member(:join_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: 'joinColumns', traits: {"smithy.api#documentation" => "<p>The columns that query runners are allowed to use in an INNER JOIN statement.</p>", "smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#required" => {}}))
    AnalysisRuleIdMappingTable.add_member(:query_constraints, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryConstraintList, location_name: 'queryConstraints', traits: {"smithy.api#documentation" => "<p>The query constraints of the analysis rule ID mapping table.</p>", "smithy.api#required" => {}}))
    AnalysisRuleIdMappingTable.add_member(:dimension_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: 'dimensionColumns', traits: {"smithy.api#documentation" => "<p>The columns that query runners are allowed to select, group by, or filter by.</p>"}))
    AnalysisRuleIdMappingTable.type = Types::AnalysisRuleIdMappingTable
    AnalysisRuleList.add_member(:join_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: 'joinColumns', traits: {"smithy.api#documentation" => "<p>Columns that can be used to join a configured table with the table of the member who can query and other members' configured tables.</p>", "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    AnalysisRuleList.add_member(:allowed_join_operators, Smithy::Schema::Shapes::ShapeRef.new(shape: JoinOperatorsList, location_name: 'allowedJoinOperators', traits: {"smithy.api#documentation" => "<p>The logical operators (if any) that are to be used in an INNER JOIN match condition. Default is <code>AND</code>.</p>"}))
    AnalysisRuleList.add_member(:list_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: 'listColumns', traits: {"smithy.api#documentation" => "<p>Columns that can be listed in the output.</p>", "smithy.api#required" => {}}))
    AnalysisRuleList.add_member(:additional_analyses, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAnalyses, location_name: 'additionalAnalyses', traits: {"smithy.api#documentation" => "<p> An indicator as to whether additional analyses (such as Clean Rooms ML) can be applied to the output of the direct query.</p>"}))
    AnalysisRuleList.type = Types::AnalysisRuleList
    AnalysisRulePolicy.add_member(:v1, Types::AnalysisRulePolicy::V1, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRulePolicyV1, location_name: 'v1', traits: {"smithy.api#documentation" => "<p>Controls on the query specifications that can be run on configured table.</p>"}))
    AnalysisRulePolicy.add_member(:unknown, Types::AnalysisRulePolicy::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AnalysisRulePolicy.type = Types::AnalysisRulePolicy
    AnalysisRulePolicyV1.add_member(:list, Types::AnalysisRulePolicyV1::List, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleList, location_name: 'list', traits: {"smithy.api#documentation" => "<p>Analysis rule type that enables only list queries on a configured table.</p>"}))
    AnalysisRulePolicyV1.add_member(:aggregation, Types::AnalysisRulePolicyV1::Aggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleAggregation, location_name: 'aggregation', traits: {"smithy.api#documentation" => "<p>Analysis rule type that enables only aggregation queries on a configured table.</p>"}))
    AnalysisRulePolicyV1.add_member(:custom, Types::AnalysisRulePolicyV1::Custom, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleCustom, location_name: 'custom', traits: {"smithy.api#documentation" => "<p>Analysis rule type that enables custom SQL queries on a configured table.</p>"}))
    AnalysisRulePolicyV1.add_member(:id_mapping_table, Types::AnalysisRulePolicyV1::IdMappingTable, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleIdMappingTable, location_name: 'idMappingTable', traits: {"smithy.api#documentation" => "<p>The ID mapping table.</p>"}))
    AnalysisRulePolicyV1.add_member(:unknown, Types::AnalysisRulePolicyV1::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AnalysisRulePolicyV1.type = Types::AnalysisRulePolicyV1
    AnalysisRuleType.add_member(:aggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGGREGATION', traits: {"smithy.api#enumValue" => "AGGREGATION"}))
    AnalysisRuleType.add_member(:list, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIST', traits: {"smithy.api#enumValue" => "LIST"}))
    AnalysisRuleType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    AnalysisRuleType.add_member(:id_mapping_table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ID_MAPPING_TABLE', traits: {"smithy.api#enumValue" => "ID_MAPPING_TABLE"}))
    AnalysisRuleTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleType)
    AnalysisSchema.add_member(:referenced_tables, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTables, location_name: 'referencedTables', traits: {"smithy.api#documentation" => "<p>The tables referenced in the analysis schema.</p>"}))
    AnalysisSchema.type = Types::AnalysisSchema
    AnalysisSource.add_member(:text, Types::AnalysisSource::Text, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateText, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The query text.</p>"}))
    AnalysisSource.add_member(:artifacts, Types::AnalysisSource::Artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArtifacts, location_name: 'artifacts', traits: {"smithy.api#documentation" => "<p> The artifacts of the analysis source.</p>"}))
    AnalysisSource.add_member(:unknown, Types::AnalysisSource::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AnalysisSource.type = Types::AnalysisSource
    AnalysisSourceMetadata.add_member(:artifacts, Types::AnalysisSourceMetadata::Artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArtifactMetadata, location_name: 'artifacts', traits: {"smithy.api#documentation" => "<p> The artifacts of the analysis source metadata.</p>"}))
    AnalysisSourceMetadata.add_member(:unknown, Types::AnalysisSourceMetadata::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AnalysisSourceMetadata.type = Types::AnalysisSourceMetadata
    AnalysisTemplate.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for the analysis template.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AnalysisTemplateId"}))
    AnalysisTemplate.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the analysis template.</p>", "smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique ID for the associated collaboration of the analysis template.</p>", "smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the analysis template’s associated collaboration.</p>", "smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The identifier of a member who created the analysis template.</p>", "smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the member who created the analysis template.</p>", "smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the analysis template.</p>"}))
    AnalysisTemplate.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the analysis template.</p>", "smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time that the analysis template was created.</p>", "smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time that the analysis template was last updated.</p>", "smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSchema, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The entire schema object.</p>", "smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The format of the analysis template.</p>", "smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSource, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source of the analysis template.</p>", "smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:source_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSourceMetadata, location_name: 'sourceMetadata', traits: {"smithy.api#documentation" => "<p> The source metadata for the analysis template.</p>"}))
    AnalysisTemplate.add_member(:analysis_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisParameterList, location_name: 'analysisParameters', traits: {"smithy.api#documentation" => "<p>The parameters of the analysis template.</p>"}))
    AnalysisTemplate.add_member(:validations, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateValidationStatusDetailList, location_name: 'validations', traits: {"smithy.api#documentation" => "<p>Information about the validations performed on the analysis template.</p>"}))
    AnalysisTemplate.type = Types::AnalysisTemplate
    AnalysisTemplateArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArn)
    AnalysisTemplateArtifact.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'location', traits: {"smithy.api#documentation" => "<p> The artifact location.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateArtifact.type = Types::AnalysisTemplateArtifact
    AnalysisTemplateArtifactList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArtifact)
    AnalysisTemplateArtifactMetadata.add_member(:entry_point_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: Hash, location_name: 'entryPointHash', traits: {"smithy.api#documentation" => "<p> The hash of the entry point for the analysis template artifact metadata.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateArtifactMetadata.add_member(:additional_artifact_hashes, Smithy::Schema::Shapes::ShapeRef.new(shape: HashList, location_name: 'additionalArtifactHashes', traits: {"smithy.api#documentation" => "<p> Additional artifact hashes for the analysis template.</p>"}))
    AnalysisTemplateArtifactMetadata.type = Types::AnalysisTemplateArtifactMetadata
    AnalysisTemplateArtifacts.add_member(:entry_point, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArtifact, location_name: 'entryPoint', traits: {"smithy.api#documentation" => "<p> The entry point for the analysis template artifacts.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateArtifacts.add_member(:additional_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArtifactList, location_name: 'additionalArtifacts', traits: {"smithy.api#documentation" => "<p> Additional artifacts for the analysis template.</p>"}))
    AnalysisTemplateArtifacts.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p> The role ARN for the analysis template artifacts.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateArtifacts.type = Types::AnalysisTemplateArtifacts
    AnalysisTemplateSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the analysis template.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time that the analysis template summary was created.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the analysis template.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the analysis template. </p>", "smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time that the analysis template summary was last updated.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the member who created the analysis template.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The identifier for a membership resource.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the analysis template summary’s associated collaboration.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the collaboration that the analysis template summary belongs to. Currently accepts collaboration ID.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the analysis template.</p>"}))
    AnalysisTemplateSummary.type = Types::AnalysisTemplateSummary
    AnalysisTemplateSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateSummary)
    AnalysisTemplateValidationStatus.add_member(:valid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALID', traits: {"smithy.api#enumValue" => "VALID"}))
    AnalysisTemplateValidationStatus.add_member(:invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID', traits: {"smithy.api#enumValue" => "INVALID"}))
    AnalysisTemplateValidationStatus.add_member(:unable_to_validate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNABLE_TO_VALIDATE', traits: {"smithy.api#enumValue" => "UNABLE_TO_VALIDATE"}))
    AnalysisTemplateValidationStatusDetail.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateValidationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of validation that was performed.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateValidationStatusDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateValidationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the validation.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateValidationStatusDetail.add_member(:reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateValidationStatusReasonList, location_name: 'reasons', traits: {"smithy.api#documentation" => "<p>The reasons for the validation results.</p>"}))
    AnalysisTemplateValidationStatusDetail.type = Types::AnalysisTemplateValidationStatusDetail
    AnalysisTemplateValidationStatusDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateValidationStatusDetail)
    AnalysisTemplateValidationStatusReason.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The validation message.</p>", "smithy.api#required" => {}}))
    AnalysisTemplateValidationStatusReason.type = Types::AnalysisTemplateValidationStatusReason
    AnalysisTemplateValidationStatusReasonList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateValidationStatusReason)
    AnalysisTemplateValidationType.add_member(:differential_privacy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIFFERENTIAL_PRIVACY', traits: {"smithy.api#enumValue" => "DIFFERENTIAL_PRIVACY"}))
    AnalysisType.add_member(:direct_analysis, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT_ANALYSIS', traits: {"smithy.api#enumValue" => "DIRECT_ANALYSIS"}))
    AnalysisType.add_member(:additional_analysis, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDITIONAL_ANALYSIS', traits: {"smithy.api#enumValue" => "ADDITIONAL_ANALYSIS"}))
    AnalyticsEngine.add_member(:spark, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPARK', traits: {"smithy.api#enumValue" => "SPARK"}))
    AnalyticsEngine.add_member(:clean_rooms_sql, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLEAN_ROOMS_SQL', traits: {"smithy.api#enumValue" => "CLEAN_ROOMS_SQL"}))
    AthenaTableReference.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: AthenaWorkGroup, location_name: 'workGroup', traits: {"smithy.api#documentation" => "<p> The workgroup of the Athena table reference.</p>", "smithy.api#required" => {}}))
    AthenaTableReference.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: AthenaOutputLocation, location_name: 'outputLocation', traits: {"smithy.api#documentation" => "<p> The output location for the Athena table.</p>"}))
    AthenaTableReference.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AthenaDatabaseName, location_name: 'databaseName', traits: {"smithy.api#documentation" => "<p> The database name.</p>", "smithy.api#required" => {}}))
    AthenaTableReference.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AthenaTableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p> The table reference.</p>", "smithy.api#required" => {}}))
    AthenaTableReference.type = Types::AthenaTableReference
    BatchGetCollaborationAnalysisTemplateError.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the analysis template.</p>", "smithy.api#required" => {}}))
    BatchGetCollaborationAnalysisTemplateError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>An error code for the error.</p>", "smithy.api#required" => {}}))
    BatchGetCollaborationAnalysisTemplateError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of why the call failed.</p>", "smithy.api#required" => {}}))
    BatchGetCollaborationAnalysisTemplateError.type = Types::BatchGetCollaborationAnalysisTemplateError
    BatchGetCollaborationAnalysisTemplateErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCollaborationAnalysisTemplateError)
    BatchGetCollaborationAnalysisTemplateOperationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    BatchGetCollaborationAnalysisTemplateOperationInput.add_member(:analysis_template_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArnList, location_name: 'analysisTemplateArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with the analysis template within a collaboration.</p>", "smithy.api#required" => {}}))
    BatchGetCollaborationAnalysisTemplateOperationInput.type = Types::BatchGetCollaborationAnalysisTemplateOperationInput
    BatchGetCollaborationAnalysisTemplateOperationOutput.add_member(:collaboration_analysis_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationAnalysisTemplateList, location_name: 'collaborationAnalysisTemplates', traits: {"smithy.api#documentation" => "<p>The retrieved list of analysis templates within a collaboration.</p>", "smithy.api#required" => {}}))
    BatchGetCollaborationAnalysisTemplateOperationOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCollaborationAnalysisTemplateErrorList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>Error reasons for collaboration analysis templates that could not be retrieved. One error is returned for every collaboration analysis template that could not be retrieved.</p>", "smithy.api#required" => {}}))
    BatchGetCollaborationAnalysisTemplateOperationOutput.type = Types::BatchGetCollaborationAnalysisTemplateOperationOutput
    BatchGetSchemaAnalysisRuleError.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>An error name for the error.</p>", "smithy.api#required" => {}}))
    BatchGetSchemaAnalysisRuleError.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The analysis rule type.</p>", "smithy.api#required" => {}}))
    BatchGetSchemaAnalysisRuleError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>An error code for the error.</p>", "smithy.api#required" => {}}))
    BatchGetSchemaAnalysisRuleError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of why the call failed.</p>", "smithy.api#required" => {}}))
    BatchGetSchemaAnalysisRuleError.type = Types::BatchGetSchemaAnalysisRuleError
    BatchGetSchemaAnalysisRuleErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetSchemaAnalysisRuleError)
    BatchGetSchemaAnalysisRuleInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration that contains the schema analysis rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    BatchGetSchemaAnalysisRuleInput.add_member(:schema_analysis_rule_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaAnalysisRuleRequestList, location_name: 'schemaAnalysisRuleRequests', traits: {"smithy.api#documentation" => "<p>The information that's necessary to retrieve a schema analysis rule.</p>", "smithy.api#required" => {}}))
    BatchGetSchemaAnalysisRuleInput.type = Types::BatchGetSchemaAnalysisRuleInput
    BatchGetSchemaAnalysisRuleOutput.add_member(:analysis_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaAnalysisRuleList, location_name: 'analysisRules', traits: {"smithy.api#documentation" => "<p>The retrieved list of analysis rules.</p>", "smithy.api#required" => {}}))
    BatchGetSchemaAnalysisRuleOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetSchemaAnalysisRuleErrorList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>Error reasons for schemas that could not be retrieved. One error is returned for every schema that could not be retrieved.</p>", "smithy.api#required" => {}}))
    BatchGetSchemaAnalysisRuleOutput.type = Types::BatchGetSchemaAnalysisRuleOutput
    BatchGetSchemaError.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>An error name for the error.</p>", "smithy.api#required" => {}}))
    BatchGetSchemaError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>An error code for the error. </p>", "smithy.api#required" => {}}))
    BatchGetSchemaError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>An error message for the error.</p>", "smithy.api#required" => {}}))
    BatchGetSchemaError.type = Types::BatchGetSchemaError
    BatchGetSchemaErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetSchemaError)
    BatchGetSchemaOperationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the collaboration that the schemas belong to. Currently accepts collaboration ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    BatchGetSchemaOperationInput.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: TableAliasList, location_name: 'names', traits: {"smithy.api#documentation" => "<p>The names for the schema objects to retrieve.</p>", "smithy.api#required" => {}}))
    BatchGetSchemaOperationInput.type = Types::BatchGetSchemaOperationInput
    BatchGetSchemaOperationOutput.add_member(:schemas, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaList, location_name: 'schemas', traits: {"smithy.api#documentation" => "<p>The retrieved list of schemas.</p>", "smithy.api#required" => {}}))
    BatchGetSchemaOperationOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetSchemaErrorList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>Error reasons for schemas that could not be retrieved. One error is returned for every schema that could not be retrieved.</p>", "smithy.api#required" => {}}))
    BatchGetSchemaOperationOutput.type = Types::BatchGetSchemaOperationOutput
    BilledJobResourceUtilization.add_member(:units, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'units', traits: {"smithy.api#documentation" => "<p> The number of Clean Rooms Processing Unit (CRPU) hours that have been billed.</p>", "smithy.api#required" => {}}))
    BilledJobResourceUtilization.type = Types::BilledJobResourceUtilization
    BilledResourceUtilization.add_member(:units, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'units', traits: {"smithy.api#documentation" => "<p> The number of Clean Rooms Processing Unit (CRPU) hours that have been billed.</p>", "smithy.api#required" => {}}))
    BilledResourceUtilization.type = Types::BilledResourceUtilization
    Collaboration.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the collaboration.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    Collaboration.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the collaboration.</p>", "smithy.api#required" => {}}))
    Collaboration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A human-readable identifier provided by the collaboration owner. Display names are not unique.</p>", "smithy.api#required" => {}}))
    Collaboration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the collaboration provided by the collaboration owner.</p>"}))
    Collaboration.add_member(:creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#documentation" => "<p>The identifier used to reference members of the collaboration. Currently only supports Amazon Web Services account ID.</p>", "smithy.api#required" => {}}))
    Collaboration.add_member(:creator_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'creatorDisplayName', traits: {"smithy.api#documentation" => "<p>A display name of the collaboration creator.</p>", "smithy.api#required" => {}}))
    Collaboration.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time when the collaboration was created.</p>", "smithy.api#required" => {}}))
    Collaboration.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time the collaboration metadata was last updated.</p>", "smithy.api#required" => {}}))
    Collaboration.add_member(:member_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberStatus, location_name: 'memberStatus', traits: {"smithy.api#documentation" => "<p>The status of a member in a collaboration.</p>", "smithy.api#required" => {}}))
    Collaboration.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The unique ID for your membership within the collaboration.</p>"}))
    Collaboration.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for your membership within the collaboration.</p>"}))
    Collaboration.add_member(:data_encryption_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DataEncryptionMetadata, location_name: 'dataEncryptionMetadata', traits: {"smithy.api#documentation" => "<p>The settings for client-side encryption for cryptographic computing.</p>"}))
    Collaboration.add_member(:query_log_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationQueryLogStatus, location_name: 'queryLogStatus', traits: {"smithy.api#documentation" => "<p>An indicator as to whether query logging has been enabled or disabled for the collaboration.</p> <p>When <code>ENABLED</code>, Clean Rooms logs details about queries run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>", "smithy.api#required" => {}}))
    Collaboration.add_member(:job_log_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationJobLogStatus, location_name: 'jobLogStatus', traits: {"smithy.api#documentation" => "<p>An indicator as to whether job logging has been enabled or disabled for the collaboration. </p> <p>When <code>ENABLED</code>, Clean Rooms logs details about jobs run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>"}))
    Collaboration.add_member(:analytics_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsEngine, location_name: 'analyticsEngine', traits: {"smithy.api#documentation" => "<p> The analytics engine for the collaboration.</p> <note> <p>After July 16, 2025, the <code>CLEAN_ROOMS_SQL</code> parameter will no longer be available. </p> </note>"}))
    Collaboration.type = Types::Collaboration
    CollaborationAnalysisTemplate.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the analysis template.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AnalysisTemplateId"}))
    CollaborationAnalysisTemplate.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the analysis template.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the analysis template’s associated collaboration.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the analysis template.</p>"}))
    CollaborationAnalysisTemplate.add_member(:creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#documentation" => "<p>The identifier used to reference members of the collaboration. Currently only supports Amazon Web Services account ID.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the analysis template.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time that the analysis template within a collaboration was created.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time that the analysis template in the collaboration was last updated.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSchema, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The entire schema object.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The format of the analysis template in the collaboration.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSource, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source of the analysis template within a collaboration.</p>"}))
    CollaborationAnalysisTemplate.add_member(:source_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSourceMetadata, location_name: 'sourceMetadata', traits: {"smithy.api#documentation" => "<p> The source metadata for the collaboration analysis template.</p>"}))
    CollaborationAnalysisTemplate.add_member(:analysis_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisParameterList, location_name: 'analysisParameters', traits: {"smithy.api#documentation" => "<p>The analysis parameters that have been specified in the analysis template.</p>"}))
    CollaborationAnalysisTemplate.add_member(:validations, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateValidationStatusDetailList, location_name: 'validations', traits: {"smithy.api#documentation" => "<p>The validations that were performed.</p>"}))
    CollaborationAnalysisTemplate.type = Types::CollaborationAnalysisTemplate
    CollaborationAnalysisTemplateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationAnalysisTemplate)
    CollaborationAnalysisTemplateSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the analysis template.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time that the summary of the analysis template in a collaboration was created.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the analysis template.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the analysis template.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time that the summary of the analysis template in the collaboration was last updated.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the analysis template’s associated collaboration.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#documentation" => "<p>The identifier used to reference members of the collaboration. Currently only supports Amazon Web Services account ID.</p>", "smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the analysis template.</p>"}))
    CollaborationAnalysisTemplateSummary.type = Types::CollaborationAnalysisTemplateSummary
    CollaborationAnalysisTemplateSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationAnalysisTemplateSummary)
    CollaborationConfiguredAudienceModelAssociation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the configured audience model association.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredAudienceModelAssociationId"}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configured audience model association.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the collaboration that the configured audience model associations belong to. Accepts collaboration ID.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the configured audience model's associated collaboration.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:configured_audience_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configure audience model.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the configured audience model association.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the configured audience model association.</p>"}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#documentation" => "<p>The identifier used to reference members of the collaboration. Only supports Amazon Web Services account ID.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the configured audience model association was created.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the configured audience model association was updated.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.type = Types::CollaborationConfiguredAudienceModelAssociation
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configured audience model association.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the configured audience model association was created.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the configured audience model association.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the configured audience model association.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the configured audience model association was updated.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the configured audience model's associated collaboration.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the collaboration that the configured audience model associations belong to. Accepts collaboration ID.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#documentation" => "<p>The identifier used to reference members of the collaboration. Only supports Amazon Web Services account ID.</p>", "smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the configured audience model association.</p>"}))
    CollaborationConfiguredAudienceModelAssociationSummary.type = Types::CollaborationConfiguredAudienceModelAssociationSummary
    CollaborationConfiguredAudienceModelAssociationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationConfiguredAudienceModelAssociationSummary)
    CollaborationIdNamespaceAssociation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration ID namespace association.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdNamespaceAssociationId"}))
    CollaborationIdNamespaceAssociation.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration that contains the collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the collaboration that contains the collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the collaboration ID namespace association.</p>"}))
    CollaborationIdNamespaceAssociation.add_member(:creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Web Services account that created the collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the collaboration ID namespace association was created.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the collaboration ID namespace was updated.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:input_reference_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceConfig, location_name: 'inputReferenceConfig', traits: {"smithy.api#documentation" => "<p>The input reference configuration that's necessary to create the collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:input_reference_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceProperties, location_name: 'inputReferenceProperties', traits: {"smithy.api#documentation" => "<p>The input reference properties that are needed to create the collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:id_mapping_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingConfig, location_name: 'idMappingConfig'))
    CollaborationIdNamespaceAssociation.type = Types::CollaborationIdNamespaceAssociation
    CollaborationIdNamespaceAssociationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the collaboration ID namespace association was created.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the collaboration ID namespace association was updated.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the collaboration that contains this collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration that contains this collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account that created this collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:input_reference_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceConfig, location_name: 'inputReferenceConfig', traits: {"smithy.api#documentation" => "<p>The input reference configuration that's used to create the collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the collaboration ID namepsace association.</p>"}))
    CollaborationIdNamespaceAssociationSummary.add_member(:input_reference_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferencePropertiesSummary, location_name: 'inputReferenceProperties', traits: {"smithy.api#documentation" => "<p>The input reference properties that are used to create the collaboration ID namespace association.</p>", "smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.type = Types::CollaborationIdNamespaceAssociationSummary
    CollaborationIdNamespaceAssociationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdNamespaceAssociationSummary)
    CollaborationJobLogStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    CollaborationJobLogStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CollaborationPrivacyBudgetSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration privacy budget.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:privacy_budget_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, location_name: 'privacyBudgetTemplateId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:privacy_budget_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateArn, location_name: 'privacyBudgetTemplateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the collaboration privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration that includes this privacy budget.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the collaboration that includes this privacy budget.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the account that created this privacy budget.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the privacy budget was created.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the privacy budget was updated.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:budget, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudget, location_name: 'budget', traits: {"smithy.api#documentation" => "<p>The includes epsilon provided and utility in terms of aggregations.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.type = Types::CollaborationPrivacyBudgetSummary
    CollaborationPrivacyBudgetSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationPrivacyBudgetSummary)
    CollaborationPrivacyBudgetTemplate.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the collaboration privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration that includes this collaboration privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the collaboration that includes this collaboration privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the account that created this collaboration privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the collaboration privacy budget template was created.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the collaboration privacy budget template was updated.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:privacy_budget_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetType, location_name: 'privacyBudgetType', traits: {"smithy.api#documentation" => "<p>The type of privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:auto_refresh, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateAutoRefresh, location_name: 'autoRefresh', traits: {"smithy.api#documentation" => "<p>How often the privacy budget refreshes.</p> <important> <p>If you plan to regularly bring new data into the collaboration, use <code>CALENDAR_MONTH</code> to automatically get a new privacy budget for the collaboration every calendar month. Choosing this option allows arbitrary amounts of information to be revealed about rows of the data when repeatedly queried across refreshes. Avoid choosing this if the same rows will be repeatedly queried between privacy budget refreshes.</p> </important>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateParametersOutput, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>Specifies the epsilon and noise parameters for the privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.type = Types::CollaborationPrivacyBudgetTemplate
    CollaborationPrivacyBudgetTemplateSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the collaboration privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration that contains this collaboration privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the collaboration that contains this collaboration privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the account that created this collaboration privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:privacy_budget_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetType, location_name: 'privacyBudgetType', traits: {"smithy.api#documentation" => "<p>The type of the privacy budget template.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the collaboration privacy budget template was created.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the collaboration privacy budget template was updated.</p>", "smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.type = Types::CollaborationPrivacyBudgetTemplateSummary
    CollaborationPrivacyBudgetTemplateSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationPrivacyBudgetTemplateSummary)
    CollaborationQueryLogStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    CollaborationQueryLogStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CollaborationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for the collaboration.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    CollaborationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the collaboration.</p>", "smithy.api#required" => {}}))
    CollaborationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A human-readable identifier provided by the collaboration owner. Display names are not unique.</p>", "smithy.api#required" => {}}))
    CollaborationSummary.add_member(:creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#documentation" => "<p>The identifier used to reference members of the collaboration. Currently only supports Amazon Web Services account ID.</p>", "smithy.api#required" => {}}))
    CollaborationSummary.add_member(:creator_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'creatorDisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the collaboration creator.</p>", "smithy.api#required" => {}}))
    CollaborationSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time when the collaboration was created.</p>", "smithy.api#required" => {}}))
    CollaborationSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time the collaboration metadata was last updated.</p>", "smithy.api#required" => {}}))
    CollaborationSummary.add_member(:member_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberStatus, location_name: 'memberStatus', traits: {"smithy.api#documentation" => "<p>The status of a member in a collaboration.</p>", "smithy.api#required" => {}}))
    CollaborationSummary.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The identifier of a member in a collaboration.</p>"}))
    CollaborationSummary.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The ARN of a member in a collaboration.</p>"}))
    CollaborationSummary.add_member(:analytics_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsEngine, location_name: 'analyticsEngine', traits: {"smithy.api#documentation" => "<p> The analytics engine.</p> <note> <p>After July 16, 2025, the <code>CLEAN_ROOMS_SQL</code> parameter will no longer be available. </p> </note>"}))
    CollaborationSummary.type = Types::CollaborationSummary
    CollaborationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationSummary)
    Column.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the column.</p>", "smithy.api#required" => {}}))
    Column.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnTypeString, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the column.</p>", "smithy.api#required" => {}}))
    Column.type = Types::Column
    ColumnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Column)
    ComputeConfiguration.add_member(:worker, Types::ComputeConfiguration::Worker, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerComputeConfiguration, location_name: 'worker', traits: {"smithy.api#documentation" => "<p> The worker configuration for the compute environment.</p>"}))
    ComputeConfiguration.add_member(:unknown, Types::ComputeConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ComputeConfiguration.type = Types::ComputeConfiguration
    ConfigurationDetails.add_member(:direct_analysis_configuration_details, Types::ConfigurationDetails::DirectAnalysisConfigurationDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectAnalysisConfigurationDetails, location_name: 'directAnalysisConfigurationDetails', traits: {"smithy.api#documentation" => "<p> The direct analysis configuration details.</p>"}))
    ConfigurationDetails.add_member(:unknown, Types::ConfigurationDetails::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ConfigurationDetails.type = Types::ConfigurationDetails
    ConfiguredAudienceModelAssociation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>A unique identifier of the configured audience model association.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredAudienceModelAssociationId"}))
    ConfiguredAudienceModelAssociation.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configured audience model association.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:configured_audience_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configured audience model that was used for this configured audience model association.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the membership that contains this configured audience model association.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ConfiguredAudienceModelAssociation.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the membership that contains this configured audience model association.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>A unique identifier of the collaboration that contains this configured audience model association.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the collaboration that contains this configured audience model association.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the configured audience model association.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:manage_resource_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'manageResourcePolicies', traits: {"smithy.api#documentation" => "<p>When <code>TRUE</code>, indicates that the resource policy for the configured audience model resource being associated is configured for Clean Rooms to manage permissions related to the given collaboration. When <code>FALSE</code>, indicates that the configured audience model resource owner will manage permissions related to the given collaboration.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the configured audience model association.</p>"}))
    ConfiguredAudienceModelAssociation.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the configured audience model association was created.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the configured audience model association was updated.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.type = Types::ConfiguredAudienceModelAssociation
    ConfiguredAudienceModelAssociationSummary.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>A unique identifier of the membership that contains the configured audience model association.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ConfiguredAudienceModelAssociationSummary.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the membership that contains the configured audience model association.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the collaboration that contains the configured audience model association.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>A unique identifier of the collaboration that configured audience model is associated with.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the configured audience model association was created.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the configured audience model association was updated.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>A unique identifier of the configured audience model association.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredAudienceModelAssociationId"}))
    ConfiguredAudienceModelAssociationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configured audience model association.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the configured audience model association.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:configured_audience_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configured audience model that was used for this configured audience model association.</p>", "smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the configured audience model association.</p>"}))
    ConfiguredAudienceModelAssociationSummary.type = Types::ConfiguredAudienceModelAssociationSummary
    ConfiguredAudienceModelAssociationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationSummary)
    ConfiguredTable.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the configured table.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    ConfiguredTable.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the configured table.</p>", "smithy.api#required" => {}}))
    ConfiguredTable.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the configured table.</p>", "smithy.api#required" => {}}))
    ConfiguredTable.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TableDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the configured table.</p>"}))
    ConfiguredTable.add_member(:table_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: TableReference, location_name: 'tableReference', traits: {"smithy.api#documentation" => "<p>The table that this configured table represents.</p>", "smithy.api#required" => {}}))
    ConfiguredTable.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time the configured table was created.</p>", "smithy.api#required" => {}}))
    ConfiguredTable.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time the configured table was last updated</p>", "smithy.api#required" => {}}))
    ConfiguredTable.add_member(:analysis_rule_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleTypeList, location_name: 'analysisRuleTypes', traits: {"smithy.api#documentation" => "<p>The types of analysis rules associated with this configured table. Currently, only one analysis rule may be associated with a configured table.</p>", "smithy.api#required" => {}}))
    ConfiguredTable.add_member(:analysis_method, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisMethod, location_name: 'analysisMethod', traits: {"smithy.api#documentation" => "<p>The analysis method for the configured table.</p> <p> <code>DIRECT_QUERY</code> allows SQL queries to be run directly on this table.</p> <p> <code>DIRECT_JOB</code> allows PySpark jobs to be run directly on this table.</p> <p> <code>MULTIPLE</code> allows both SQL queries and PySpark jobs to be run directly on this table.</p>", "smithy.api#required" => {}}))
    ConfiguredTable.add_member(:allowed_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedColumnList, location_name: 'allowedColumns', traits: {"smithy.api#documentation" => "<p>The columns within the underlying Glue table that can be utilized within collaborations.</p>", "smithy.api#required" => {}}))
    ConfiguredTable.add_member(:selected_analysis_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedAnalysisMethods, location_name: 'selectedAnalysisMethods', traits: {"smithy.api#documentation" => "<p> The selected analysis methods for the configured table.</p>"}))
    ConfiguredTable.type = Types::ConfiguredTable
    ConfiguredTableAnalysisRule.add_member(:configured_table_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'configuredTableId', traits: {"smithy.api#documentation" => "<p>The unique ID for the configured table.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    ConfiguredTableAnalysisRule.add_member(:configured_table_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableArn, location_name: 'configuredTableArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the configured table.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAnalysisRule.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRulePolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The policy that controls SQL query rules.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAnalysisRule.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of configured table analysis rule.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAnalysisRule.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time the configured table analysis rule was created.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAnalysisRule.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time the configured table analysis rule was last updated.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAnalysisRule.type = Types::ConfiguredTableAnalysisRule
    ConfiguredTableAnalysisRulePolicy.add_member(:v1, Types::ConfiguredTableAnalysisRulePolicy::V1, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRulePolicyV1, location_name: 'v1', traits: {"smithy.api#documentation" => "<p>Controls on the query specifications that can be run on a configured table.</p>"}))
    ConfiguredTableAnalysisRulePolicy.add_member(:unknown, Types::ConfiguredTableAnalysisRulePolicy::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ConfiguredTableAnalysisRulePolicy.type = Types::ConfiguredTableAnalysisRulePolicy
    ConfiguredTableAnalysisRulePolicyV1.add_member(:list, Types::ConfiguredTableAnalysisRulePolicyV1::List, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleList, location_name: 'list', traits: {"smithy.api#documentation" => "<p>Analysis rule type that enables only list queries on a configured table.</p>"}))
    ConfiguredTableAnalysisRulePolicyV1.add_member(:aggregation, Types::ConfiguredTableAnalysisRulePolicyV1::Aggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleAggregation, location_name: 'aggregation', traits: {"smithy.api#documentation" => "<p>Analysis rule type that enables only aggregation queries on a configured table.</p>"}))
    ConfiguredTableAnalysisRulePolicyV1.add_member(:custom, Types::ConfiguredTableAnalysisRulePolicyV1::Custom, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleCustom, location_name: 'custom'))
    ConfiguredTableAnalysisRulePolicyV1.add_member(:unknown, Types::ConfiguredTableAnalysisRulePolicyV1::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ConfiguredTableAnalysisRulePolicyV1.type = Types::ConfiguredTableAnalysisRulePolicyV1
    ConfiguredTableAnalysisRuleType.add_member(:aggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGGREGATION', traits: {"smithy.api#enumValue" => "AGGREGATION"}))
    ConfiguredTableAnalysisRuleType.add_member(:list, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIST', traits: {"smithy.api#enumValue" => "LIST"}))
    ConfiguredTableAnalysisRuleType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ConfiguredTableAnalysisRuleTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType)
    ConfiguredTableAssociation.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the configured table association.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the configured table association.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    ConfiguredTableAssociation.add_member(:configured_table_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'configuredTableId', traits: {"smithy.api#documentation" => "<p>The unique ID for the configured table that the association refers to.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociation.add_member(:configured_table_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableArn, location_name: 'configuredTableArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the configured table that the association refers to.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociation.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The unique ID for the membership this configured table association belongs to.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ConfiguredTableAssociation.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the membership this configured table association belongs to.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociation.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The service will assume this role to access catalog metadata and query the table.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the configured table association, in lowercase. The table is identified by this name when running protected queries against the underlying data.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociation.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TableDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the configured table association.</p>"}))
    ConfiguredTableAssociation.add_member(:analysis_rule_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleTypeList, location_name: 'analysisRuleTypes', traits: {"smithy.api#documentation" => "<p> The analysis rule types for the configured table association.</p>"}))
    ConfiguredTableAssociation.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time the configured table association was created.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociation.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time the configured table association was last updated.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociation.type = Types::ConfiguredTableAssociation
    ConfiguredTableAssociationAnalysisRule.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p> The membership identifier for the configured table association analysis rule.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ConfiguredTableAssociationAnalysisRule.add_member(:configured_table_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, location_name: 'configuredTableAssociationId', traits: {"smithy.api#documentation" => "<p> The unique identifier for the configured table association.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    ConfiguredTableAssociationAnalysisRule.add_member(:configured_table_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationArn, location_name: 'configuredTableAssociationArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the configured table association.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociationAnalysisRule.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRulePolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p> The policy of the configured table association analysis rule.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociationAnalysisRule.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleType, location_name: 'type', traits: {"smithy.api#documentation" => "<p> The type of the configured table association analysis rule.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociationAnalysisRule.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p> The creation time of the configured table association analysis rule.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociationAnalysisRule.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p> The update time of the configured table association analysis rule.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociationAnalysisRule.type = Types::ConfiguredTableAssociationAnalysisRule
    ConfiguredTableAssociationAnalysisRuleAggregation.add_member(:allowed_result_receivers, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedResultReceivers, location_name: 'allowedResultReceivers', traits: {"smithy.api#documentation" => "<p> The list of collaboration members who are allowed to receive results of queries run with this configured table.</p>"}))
    ConfiguredTableAssociationAnalysisRuleAggregation.add_member(:allowed_additional_analyses, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedAdditionalAnalyses, location_name: 'allowedAdditionalAnalyses', traits: {"smithy.api#documentation" => "<p> The list of resources or wildcards (ARNs) that are allowed to perform additional analysis on query output.</p> <p>The <code>allowedAdditionalAnalyses</code> parameter is currently supported for the list analysis rule (<code>AnalysisRuleList</code>) and the custom analysis rule (<code>AnalysisRuleCustom</code>).</p>"}))
    ConfiguredTableAssociationAnalysisRuleAggregation.type = Types::ConfiguredTableAssociationAnalysisRuleAggregation
    ConfiguredTableAssociationAnalysisRuleCustom.add_member(:allowed_result_receivers, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedResultReceivers, location_name: 'allowedResultReceivers', traits: {"smithy.api#documentation" => "<p> The list of collaboration members who are allowed to receive results of queries run with this configured table.</p>"}))
    ConfiguredTableAssociationAnalysisRuleCustom.add_member(:allowed_additional_analyses, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedAdditionalAnalyses, location_name: 'allowedAdditionalAnalyses', traits: {"smithy.api#documentation" => "<p> The list of resources or wildcards (ARNs) that are allowed to perform additional analysis on query output.</p>"}))
    ConfiguredTableAssociationAnalysisRuleCustom.type = Types::ConfiguredTableAssociationAnalysisRuleCustom
    ConfiguredTableAssociationAnalysisRuleList.add_member(:allowed_result_receivers, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedResultReceivers, location_name: 'allowedResultReceivers', traits: {"smithy.api#documentation" => "<p> The list of collaboration members who are allowed to receive results of queries run with this configured table.</p>"}))
    ConfiguredTableAssociationAnalysisRuleList.add_member(:allowed_additional_analyses, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedAdditionalAnalyses, location_name: 'allowedAdditionalAnalyses', traits: {"smithy.api#documentation" => "<p> The list of resources or wildcards (ARNs) that are allowed to perform additional analysis on query output.</p>"}))
    ConfiguredTableAssociationAnalysisRuleList.type = Types::ConfiguredTableAssociationAnalysisRuleList
    ConfiguredTableAssociationAnalysisRulePolicy.add_member(:v1, Types::ConfiguredTableAssociationAnalysisRulePolicy::V1, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRulePolicyV1, location_name: 'v1', traits: {"smithy.api#documentation" => "<p> The policy for the configured table association analysis rule.</p>"}))
    ConfiguredTableAssociationAnalysisRulePolicy.add_member(:unknown, Types::ConfiguredTableAssociationAnalysisRulePolicy::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ConfiguredTableAssociationAnalysisRulePolicy.type = Types::ConfiguredTableAssociationAnalysisRulePolicy
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member(:list, Types::ConfiguredTableAssociationAnalysisRulePolicyV1::List, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleList, location_name: 'list', traits: {"smithy.api#documentation" => "<p> Analysis rule type that enables only list queries on a configured table.</p>"}))
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member(:aggregation, Types::ConfiguredTableAssociationAnalysisRulePolicyV1::Aggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleAggregation, location_name: 'aggregation', traits: {"smithy.api#documentation" => "<p> Analysis rule type that enables only aggregation queries on a configured table.</p>"}))
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member(:custom, Types::ConfiguredTableAssociationAnalysisRulePolicyV1::Custom, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleCustom, location_name: 'custom', traits: {"smithy.api#documentation" => "<p> Analysis rule type that enables the table owner to approve custom SQL queries on their configured tables. It supports differential privacy.</p>"}))
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member(:unknown, Types::ConfiguredTableAssociationAnalysisRulePolicyV1::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ConfiguredTableAssociationAnalysisRulePolicyV1.type = Types::ConfiguredTableAssociationAnalysisRulePolicyV1
    ConfiguredTableAssociationAnalysisRuleType.add_member(:aggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGGREGATION', traits: {"smithy.api#enumValue" => "AGGREGATION"}))
    ConfiguredTableAssociationAnalysisRuleType.add_member(:list, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIST', traits: {"smithy.api#enumValue" => "LIST"}))
    ConfiguredTableAssociationAnalysisRuleType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ConfiguredTableAssociationAnalysisRuleTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleType)
    ConfiguredTableAssociationSummary.add_member(:configured_table_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'configuredTableId', traits: {"smithy.api#documentation" => "<p>The unique configured table ID that this configured table association refers to.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociationSummary.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The unique ID for the membership that the configured table association belongs to.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ConfiguredTableAssociationSummary.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the membership that the configured table association belongs to.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the configured table association. The table is identified by this name when running Protected Queries against the underlying data.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociationSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time the configured table association was created.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociationSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time the configured table association was last updated.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the configured table association.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    ConfiguredTableAssociationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the configured table association.</p>", "smithy.api#required" => {}}))
    ConfiguredTableAssociationSummary.add_member(:analysis_rule_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleTypeList, location_name: 'analysisRuleTypes', traits: {"smithy.api#documentation" => "<p>The analysis rule types that are associated with the configured table associations in this summary. </p>"}))
    ConfiguredTableAssociationSummary.type = Types::ConfiguredTableAssociationSummary
    ConfiguredTableAssociationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationSummary)
    ConfiguredTableSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the configured table.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    ConfiguredTableSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique ARN of the configured table.</p>", "smithy.api#required" => {}}))
    ConfiguredTableSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the configured table.</p>", "smithy.api#required" => {}}))
    ConfiguredTableSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time the configured table was created.</p>", "smithy.api#required" => {}}))
    ConfiguredTableSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time the configured table was last updated.</p>", "smithy.api#required" => {}}))
    ConfiguredTableSummary.add_member(:analysis_rule_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleTypeList, location_name: 'analysisRuleTypes', traits: {"smithy.api#documentation" => "<p>The types of analysis rules associated with this configured table.</p>", "smithy.api#required" => {}}))
    ConfiguredTableSummary.add_member(:analysis_method, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisMethod, location_name: 'analysisMethod', traits: {"smithy.api#documentation" => "<p>The analysis method for the configured tables. </p> <p> <code>DIRECT_QUERY</code> allows SQL queries to be run directly on this table.</p> <p> <code>DIRECT_JOB</code> allows PySpark jobs to be run directly on this table.</p> <p> <code>MULTIPLE</code> allows both SQL queries and PySpark jobs to be run directly on this table.</p>", "smithy.api#required" => {}}))
    ConfiguredTableSummary.add_member(:selected_analysis_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedAnalysisMethods, location_name: 'selectedAnalysisMethods', traits: {"smithy.api#documentation" => "<p> The selected analysis methods for the configured table summary.</p>"}))
    ConfiguredTableSummary.type = Types::ConfiguredTableSummary
    ConfiguredTableSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableSummary, traits: {"smithy.api#documentation" => "<p>The member of the configured table summary list.</p>"})
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the conflicting resource.</p>"}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the conflicting resource.</p>"}))
    ConflictException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>A reason code for the exception.</p>"}))
    ConflictException.type = Types::ConflictException
    ConsolidatedPolicy.add_member(:v1, Types::ConsolidatedPolicy::V1, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsolidatedPolicyV1, location_name: 'v1', traits: {"smithy.api#documentation" => "<p> The consolidated policy version 1.</p>"}))
    ConsolidatedPolicy.add_member(:unknown, Types::ConsolidatedPolicy::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ConsolidatedPolicy.type = Types::ConsolidatedPolicy
    ConsolidatedPolicyAggregation.add_member(:aggregate_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregateColumnList, location_name: 'aggregateColumns', traits: {"smithy.api#documentation" => "<p> Aggregate columns in consolidated policy aggregation.</p>", "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    ConsolidatedPolicyAggregation.add_member(:join_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: 'joinColumns', traits: {"smithy.api#documentation" => "<p> The columns to join on.</p>", "smithy.api#required" => {}}))
    ConsolidatedPolicyAggregation.add_member(:join_required, Smithy::Schema::Shapes::ShapeRef.new(shape: JoinRequiredOption, location_name: 'joinRequired', traits: {"smithy.api#documentation" => "<p> Join required</p>"}))
    ConsolidatedPolicyAggregation.add_member(:allowed_join_operators, Smithy::Schema::Shapes::ShapeRef.new(shape: JoinOperatorsList, location_name: 'allowedJoinOperators', traits: {"smithy.api#documentation" => "<p> The allowed join operators.</p>"}))
    ConsolidatedPolicyAggregation.add_member(:dimension_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: 'dimensionColumns', traits: {"smithy.api#documentation" => "<p> The dimension columns of the consolidated policy aggregation.</p>", "smithy.api#required" => {}}))
    ConsolidatedPolicyAggregation.add_member(:scalar_functions, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalarFunctionsList, location_name: 'scalarFunctions', traits: {"smithy.api#documentation" => "<p> The scalar functions.</p>", "smithy.api#required" => {}}))
    ConsolidatedPolicyAggregation.add_member(:output_constraints, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationConstraints, location_name: 'outputConstraints', traits: {"smithy.api#documentation" => "<p> The output constraints of the consolidated policy aggregation.</p>", "smithy.api#required" => {}}))
    ConsolidatedPolicyAggregation.add_member(:additional_analyses, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAnalyses, location_name: 'additionalAnalyses', traits: {"smithy.api#documentation" => "<p> Additional analyses for the consolidated policy aggregation.</p>"}))
    ConsolidatedPolicyAggregation.add_member(:allowed_result_receivers, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedResultReceivers, location_name: 'allowedResultReceivers', traits: {"smithy.api#documentation" => "<p> The allowed result receivers.</p>"}))
    ConsolidatedPolicyAggregation.add_member(:allowed_additional_analyses, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedAdditionalAnalyses, location_name: 'allowedAdditionalAnalyses', traits: {"smithy.api#documentation" => "<p> The additional analyses allowed by the consolidated policy aggregation.</p>"}))
    ConsolidatedPolicyAggregation.type = Types::ConsolidatedPolicyAggregation
    ConsolidatedPolicyCustom.add_member(:allowed_analyses, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedAnalysesList, location_name: 'allowedAnalyses', traits: {"smithy.api#documentation" => "<p> The allowed analyses.</p>", "smithy.api#length" => {"min" => 0}, "smithy.api#required" => {}}))
    ConsolidatedPolicyCustom.add_member(:allowed_analysis_providers, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedAnalysisProviderList, location_name: 'allowedAnalysisProviders', traits: {"smithy.api#documentation" => "<p> The allowed analysis providers.</p>", "smithy.api#length" => {"min" => 0}}))
    ConsolidatedPolicyCustom.add_member(:additional_analyses, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAnalyses, location_name: 'additionalAnalyses', traits: {"smithy.api#documentation" => "<p> Additional analyses for the consolidated policy.</p>"}))
    ConsolidatedPolicyCustom.add_member(:disallowed_output_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: 'disallowedOutputColumns', traits: {"smithy.api#documentation" => "<p> Disallowed output columns</p>"}))
    ConsolidatedPolicyCustom.add_member(:differential_privacy, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyConfiguration, location_name: 'differentialPrivacy'))
    ConsolidatedPolicyCustom.add_member(:allowed_result_receivers, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedResultReceivers, location_name: 'allowedResultReceivers', traits: {"smithy.api#documentation" => "<p> The allowed result receivers.</p>"}))
    ConsolidatedPolicyCustom.add_member(:allowed_additional_analyses, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedAdditionalAnalyses, location_name: 'allowedAdditionalAnalyses', traits: {"smithy.api#documentation" => "<p> The additional analyses allowed by the consolidated policy.</p>"}))
    ConsolidatedPolicyCustom.type = Types::ConsolidatedPolicyCustom
    ConsolidatedPolicyList.add_member(:join_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: 'joinColumns', traits: {"smithy.api#documentation" => "<p> The columns to join on.</p>", "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    ConsolidatedPolicyList.add_member(:allowed_join_operators, Smithy::Schema::Shapes::ShapeRef.new(shape: JoinOperatorsList, location_name: 'allowedJoinOperators', traits: {"smithy.api#documentation" => "<p> The allowed join operators in the consolidated policy list.</p>"}))
    ConsolidatedPolicyList.add_member(:list_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: 'listColumns', traits: {"smithy.api#documentation" => "<p> The columns in the consolidated policy list.</p>", "smithy.api#required" => {}}))
    ConsolidatedPolicyList.add_member(:additional_analyses, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalAnalyses, location_name: 'additionalAnalyses', traits: {"smithy.api#documentation" => "<p> Additional analyses for the consolidated policy list.</p>"}))
    ConsolidatedPolicyList.add_member(:allowed_result_receivers, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedResultReceivers, location_name: 'allowedResultReceivers', traits: {"smithy.api#documentation" => "<p> The allowed result receivers.</p>"}))
    ConsolidatedPolicyList.add_member(:allowed_additional_analyses, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedAdditionalAnalyses, location_name: 'allowedAdditionalAnalyses', traits: {"smithy.api#documentation" => "<p> The additional analyses allowed by the consolidated policy list.</p>"}))
    ConsolidatedPolicyList.type = Types::ConsolidatedPolicyList
    ConsolidatedPolicyV1.add_member(:list, Types::ConsolidatedPolicyV1::List, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsolidatedPolicyList, location_name: 'list', traits: {"smithy.api#documentation" => "<p> The list of consolidated policies.</p>"}))
    ConsolidatedPolicyV1.add_member(:aggregation, Types::ConsolidatedPolicyV1::Aggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsolidatedPolicyAggregation, location_name: 'aggregation', traits: {"smithy.api#documentation" => "<p> The aggregation setting for the consolidated policy.</p>"}))
    ConsolidatedPolicyV1.add_member(:custom, Types::ConsolidatedPolicyV1::Custom, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsolidatedPolicyCustom, location_name: 'custom', traits: {"smithy.api#documentation" => "<p> Custom policy</p>"}))
    ConsolidatedPolicyV1.add_member(:unknown, Types::ConsolidatedPolicyV1::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ConsolidatedPolicyV1.type = Types::ConsolidatedPolicyV1
    CreateAnalysisTemplateOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the analysis template.</p>"}))
    CreateAnalysisTemplateOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a membership resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    CreateAnalysisTemplateOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the analysis template.</p>", "smithy.api#required" => {}}))
    CreateAnalysisTemplateOperationInput.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The format of the analysis template.</p>", "smithy.api#required" => {}}))
    CreateAnalysisTemplateOperationInput.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSource, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The information in the analysis template.</p>", "smithy.api#required" => {}}))
    CreateAnalysisTemplateOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>"}))
    CreateAnalysisTemplateOperationInput.add_member(:analysis_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisParameterList, location_name: 'analysisParameters', traits: {"smithy.api#documentation" => "<p>The parameters of the analysis template.</p>"}))
    CreateAnalysisTemplateOperationInput.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSchema, location_name: 'schema'))
    CreateAnalysisTemplateOperationInput.type = Types::CreateAnalysisTemplateOperationInput
    CreateAnalysisTemplateOperationOutput.add_member(:analysis_template, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplate, location_name: 'analysisTemplate', traits: {"smithy.api#documentation" => "<p>The analysis template.</p>", "smithy.api#required" => {}}))
    CreateAnalysisTemplateOperationOutput.type = Types::CreateAnalysisTemplateOperationOutput
    CreateCollaborationOperationInput.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberList, location_name: 'members', traits: {"smithy.api#documentation" => "<p>A list of initial members, not including the creator. This list is immutable.</p>", "smithy.api#required" => {}}))
    CreateCollaborationOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The display name for a collaboration.</p>", "smithy.api#required" => {}}))
    CreateCollaborationOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the collaboration provided by the collaboration owner.</p>", "smithy.api#required" => {}}))
    CreateCollaborationOperationInput.add_member(:creator_member_abilities, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAbilities, location_name: 'creatorMemberAbilities', traits: {"smithy.api#documentation" => "<p>The abilities granted to the collaboration creator.</p>", "smithy.api#required" => {}}))
    CreateCollaborationOperationInput.add_member(:creator_ml_member_abilities, Smithy::Schema::Shapes::ShapeRef.new(shape: MLMemberAbilities, location_name: 'creatorMLMemberAbilities', traits: {"smithy.api#documentation" => "<p>The ML abilities granted to the collaboration creator.</p>"}))
    CreateCollaborationOperationInput.add_member(:creator_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'creatorDisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the collaboration creator.</p>", "smithy.api#required" => {}}))
    CreateCollaborationOperationInput.add_member(:data_encryption_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DataEncryptionMetadata, location_name: 'dataEncryptionMetadata', traits: {"smithy.api#documentation" => "<p>The settings for client-side encryption with Cryptographic Computing for Clean Rooms.</p>"}))
    CreateCollaborationOperationInput.add_member(:query_log_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationQueryLogStatus, location_name: 'queryLogStatus', traits: {"smithy.api#documentation" => "<p>An indicator as to whether query logging has been enabled or disabled for the collaboration.</p> <p>When <code>ENABLED</code>, Clean Rooms logs details about queries run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>", "smithy.api#required" => {}}))
    CreateCollaborationOperationInput.add_member(:job_log_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationJobLogStatus, location_name: 'jobLogStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether job logs are enabled for this collaboration. </p> <p>When <code>ENABLED</code>, Clean Rooms logs details about jobs run within this collaboration; those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>"}))
    CreateCollaborationOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>"}))
    CreateCollaborationOperationInput.add_member(:creator_payment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentConfiguration, location_name: 'creatorPaymentConfiguration', traits: {"smithy.api#documentation" => "<p>The collaboration creator's payment responsibilities set by the collaboration creator. </p> <p>If the collaboration creator hasn't specified anyone as the member paying for query compute costs, then the member who can query is the default payer.</p>"}))
    CreateCollaborationOperationInput.add_member(:analytics_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsEngine, location_name: 'analyticsEngine', traits: {"smithy.api#documentation" => "<p> The analytics engine.</p> <note> <p>After July 16, 2025, the <code>CLEAN_ROOMS_SQL</code> parameter will no longer be available. </p> </note>"}))
    CreateCollaborationOperationInput.type = Types::CreateCollaborationOperationInput
    CreateCollaborationOperationOutput.add_member(:collaboration, Smithy::Schema::Shapes::ShapeRef.new(shape: Collaboration, location_name: 'collaboration', traits: {"smithy.api#documentation" => "<p>The collaboration.</p>", "smithy.api#required" => {}}))
    CreateCollaborationOperationOutput.type = Types::CreateCollaborationOperationOutput
    CreateConfiguredAudienceModelAssociationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for one of your memberships for a collaboration. The configured audience model is associated to the collaboration that this membership belongs to. Accepts a membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    CreateConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, location_name: 'configuredAudienceModelArn', traits: {"smithy.api#documentation" => "<p>A unique identifier for the configured audience model that you want to associate.</p>", "smithy.api#required" => {}}))
    CreateConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationName, location_name: 'configuredAudienceModelAssociationName', traits: {"smithy.api#documentation" => "<p>The name of the configured audience model association.</p>", "smithy.api#required" => {}}))
    CreateConfiguredAudienceModelAssociationInput.add_member(:manage_resource_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'manageResourcePolicies', traits: {"smithy.api#documentation" => "<p>When <code>TRUE</code>, indicates that the resource policy for the configured audience model resource being associated is configured for Clean Rooms to manage permissions related to the given collaboration. When <code>FALSE</code>, indicates that the configured audience model resource owner will manage permissions related to the given collaboration.</p> <p>Setting this to <code>TRUE</code> requires you to have permissions to create, update, and delete the resource policy for the <code>cleanrooms-ml</code> resource when you call the <a>DeleteConfiguredAudienceModelAssociation</a> resource. In addition, if you are the collaboration creator and specify <code>TRUE</code>, you must have the same permissions when you call the <a>DeleteMember</a> and <a>DeleteCollaboration</a> APIs.</p>", "smithy.api#required" => {}}))
    CreateConfiguredAudienceModelAssociationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>"}))
    CreateConfiguredAudienceModelAssociationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the configured audience model association.</p>"}))
    CreateConfiguredAudienceModelAssociationInput.type = Types::CreateConfiguredAudienceModelAssociationInput
    CreateConfiguredAudienceModelAssociationOutput.add_member(:configured_audience_model_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociation, location_name: 'configuredAudienceModelAssociation', traits: {"smithy.api#documentation" => "<p>Information about the configured audience model association.</p>", "smithy.api#required" => {}}))
    CreateConfiguredAudienceModelAssociationOutput.type = Types::CreateConfiguredAudienceModelAssociationOutput
    CreateConfiguredTableAnalysisRuleOperationInput.add_member(:configured_table_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, location_name: 'configuredTableIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for the configured table to create the analysis rule for. Currently accepts the configured table ID. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    CreateConfiguredTableAnalysisRuleOperationInput.add_member(:analysis_rule_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, location_name: 'analysisRuleType', traits: {"smithy.api#documentation" => "<p>The type of analysis rule.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableAnalysisRuleOperationInput.add_member(:analysis_rule_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRulePolicy, location_name: 'analysisRulePolicy', traits: {"smithy.api#documentation" => "<p>The analysis rule policy that was created for the configured table.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableAnalysisRuleOperationInput.type = Types::CreateConfiguredTableAnalysisRuleOperationInput
    CreateConfiguredTableAnalysisRuleOperationOutput.add_member(:analysis_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRule, location_name: 'analysisRule', traits: {"smithy.api#documentation" => "<p>The analysis rule that was created for the configured table.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableAnalysisRuleOperationOutput.type = Types::CreateConfiguredTableAnalysisRuleOperationOutput
    CreateConfiguredTableAssociationAnalysisRuleInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p> A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    CreateConfiguredTableAssociationAnalysisRuleInput.add_member(:configured_table_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, location_name: 'configuredTableAssociationIdentifier', traits: {"smithy.api#documentation" => "<p> The unique ID for the configured table association. Currently accepts the configured table association ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    CreateConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleType, location_name: 'analysisRuleType', traits: {"smithy.api#documentation" => "<p> The type of analysis rule.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRulePolicy, location_name: 'analysisRulePolicy', traits: {"smithy.api#documentation" => "<p>The analysis rule policy that was created for the configured table association.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableAssociationAnalysisRuleInput.type = Types::CreateConfiguredTableAssociationAnalysisRuleInput
    CreateConfiguredTableAssociationAnalysisRuleOutput.add_member(:analysis_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRule, location_name: 'analysisRule', traits: {"smithy.api#documentation" => "<p>The analysis rule for the conﬁgured table association. In the console, the <code>ConfiguredTableAssociationAnalysisRule</code> is referred to as the <i>collaboration analysis rule</i>.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableAssociationAnalysisRuleOutput.type = Types::CreateConfiguredTableAssociationAnalysisRuleOutput
    CreateConfiguredTableAssociationOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the configured table association. This name is used to query the underlying configured table.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableAssociationOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TableDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the configured table association.</p>"}))
    CreateConfiguredTableAssociationOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for one of your memberships for a collaboration. The configured table is associated to the collaboration that this membership belongs to. Currently accepts a membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    CreateConfiguredTableAssociationOperationInput.add_member(:configured_table_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, location_name: 'configuredTableIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the configured table to be associated to. Currently accepts a configured table ID.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableAssociationOperationInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The service will assume this role to access catalog metadata and query the table.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableAssociationOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>"}))
    CreateConfiguredTableAssociationOperationInput.type = Types::CreateConfiguredTableAssociationOperationInput
    CreateConfiguredTableAssociationOperationOutput.add_member(:configured_table_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociation, location_name: 'configuredTableAssociation', traits: {"smithy.api#documentation" => "<p>The configured table association.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableAssociationOperationOutput.type = Types::CreateConfiguredTableAssociationOperationOutput
    CreateConfiguredTableOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the configured table.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TableDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the configured table.</p>"}))
    CreateConfiguredTableOperationInput.add_member(:table_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: TableReference, location_name: 'tableReference', traits: {"smithy.api#documentation" => "<p>A reference to the table being configured.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableOperationInput.add_member(:allowed_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedColumnList, location_name: 'allowedColumns', traits: {"smithy.api#documentation" => "<p>The columns of the underlying table that can be used by collaborations or analysis rules.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableOperationInput.add_member(:analysis_method, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisMethod, location_name: 'analysisMethod', traits: {"smithy.api#documentation" => "<p>The analysis method allowed for the configured tables.</p> <p> <code>DIRECT_QUERY</code> allows SQL queries to be run directly on this table.</p> <p> <code>DIRECT_JOB</code> allows PySpark jobs to be run directly on this table.</p> <p> <code>MULTIPLE</code> allows both SQL queries and PySpark jobs to be run directly on this table.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableOperationInput.add_member(:selected_analysis_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedAnalysisMethods, location_name: 'selectedAnalysisMethods', traits: {"smithy.api#documentation" => "<p> The analysis methods to enable for the configured table. When configured, you must specify at least two analysis methods.</p>"}))
    CreateConfiguredTableOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>"}))
    CreateConfiguredTableOperationInput.type = Types::CreateConfiguredTableOperationInput
    CreateConfiguredTableOperationOutput.add_member(:configured_table, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTable, location_name: 'configuredTable', traits: {"smithy.api#documentation" => "<p>The created configured table.</p>", "smithy.api#required" => {}}))
    CreateConfiguredTableOperationOutput.type = Types::CreateConfiguredTableOperationOutput
    CreateIdMappingTableInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership that contains the ID mapping table.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    CreateIdMappingTableInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the ID mapping table.</p>", "smithy.api#required" => {}}))
    CreateIdMappingTableInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the ID mapping table.</p>"}))
    CreateIdMappingTableInput.add_member(:input_reference_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTableInputReferenceConfig, location_name: 'inputReferenceConfig', traits: {"smithy.api#documentation" => "<p>The input reference configuration needed to create the ID mapping table.</p>", "smithy.api#required" => {}}))
    CreateIdMappingTableInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>"}))
    CreateIdMappingTableInput.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services KMS key. This value is used to encrypt the mapping table data that is stored by Clean Rooms.</p>"}))
    CreateIdMappingTableInput.type = Types::CreateIdMappingTableInput
    CreateIdMappingTableOutput.add_member(:id_mapping_table, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTable, location_name: 'idMappingTable', traits: {"smithy.api#documentation" => "<p>The ID mapping table that was created.</p>", "smithy.api#required" => {}}))
    CreateIdMappingTableOutput.type = Types::CreateIdMappingTableOutput
    CreateIdNamespaceAssociationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership that contains the ID namespace association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    CreateIdNamespaceAssociationInput.add_member(:input_reference_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceConfig, location_name: 'inputReferenceConfig', traits: {"smithy.api#documentation" => "<p>The input reference configuration needed to create the ID namespace association.</p>", "smithy.api#required" => {}}))
    CreateIdNamespaceAssociationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>"}))
    CreateIdNamespaceAssociationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the ID namespace association.</p>", "smithy.api#required" => {}}))
    CreateIdNamespaceAssociationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the ID namespace association.</p>"}))
    CreateIdNamespaceAssociationInput.add_member(:id_mapping_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingConfig, location_name: 'idMappingConfig', traits: {"smithy.api#documentation" => "<p>The configuration settings for the ID mapping table.</p>"}))
    CreateIdNamespaceAssociationInput.type = Types::CreateIdNamespaceAssociationInput
    CreateIdNamespaceAssociationOutput.add_member(:id_namespace_association, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociation, location_name: 'idNamespaceAssociation', traits: {"smithy.api#documentation" => "<p>The ID namespace association that was created.</p>", "smithy.api#required" => {}}))
    CreateIdNamespaceAssociationOutput.type = Types::CreateIdNamespaceAssociationOutput
    CreateMembershipOperationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>The unique ID for the associated collaboration.</p>", "smithy.api#required" => {}}))
    CreateMembershipOperationInput.add_member(:query_log_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipQueryLogStatus, location_name: 'queryLogStatus', traits: {"smithy.api#documentation" => "<p>An indicator as to whether query logging has been enabled or disabled for the membership.</p> <p>When <code>ENABLED</code>, Clean Rooms logs details about queries run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>", "smithy.api#required" => {}}))
    CreateMembershipOperationInput.add_member(:job_log_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipJobLogStatus, location_name: 'jobLogStatus', traits: {"smithy.api#documentation" => "<p>An indicator as to whether job logging has been enabled or disabled for the collaboration. </p> <p>When <code>ENABLED</code>, Clean Rooms logs details about jobs run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>"}))
    CreateMembershipOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>"}))
    CreateMembershipOperationInput.add_member(:default_result_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipProtectedQueryResultConfiguration, location_name: 'defaultResultConfiguration', traits: {"smithy.api#documentation" => "<p>The default protected query result configuration as specified by the member who can receive results.</p>"}))
    CreateMembershipOperationInput.add_member(:default_job_result_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipProtectedJobResultConfiguration, location_name: 'defaultJobResultConfiguration', traits: {"smithy.api#documentation" => "<p>The default job result configuration that determines how job results are protected and managed within this membership. This configuration applies to all jobs.</p>"}))
    CreateMembershipOperationInput.add_member(:payment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipPaymentConfiguration, location_name: 'paymentConfiguration', traits: {"smithy.api#documentation" => "<p>The payment responsibilities accepted by the collaboration member.</p> <p>Not required if the collaboration member has the member ability to run queries. </p> <p>Required if the collaboration member doesn't have the member ability to run queries but is configured as a payer by the collaboration creator. </p>"}))
    CreateMembershipOperationInput.type = Types::CreateMembershipOperationInput
    CreateMembershipOperationOutput.add_member(:membership, Smithy::Schema::Shapes::ShapeRef.new(shape: Membership, location_name: 'membership', traits: {"smithy.api#documentation" => "<p>The membership that was created.</p>", "smithy.api#required" => {}}))
    CreateMembershipOperationOutput.type = Types::CreateMembershipOperationOutput
    CreatePrivacyBudgetTemplateInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for one of your memberships for a collaboration. The privacy budget template is created in the collaboration that this membership belongs to. Accepts a membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "membershipIdentifier"}))
    CreatePrivacyBudgetTemplateInput.add_member(:auto_refresh, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateAutoRefresh, location_name: 'autoRefresh', traits: {"smithy.api#documentation" => "<p>How often the privacy budget refreshes.</p> <important> <p>If you plan to regularly bring new data into the collaboration, you can use <code>CALENDAR_MONTH</code> to automatically get a new privacy budget for the collaboration every calendar month. Choosing this option allows arbitrary amounts of information to be revealed about rows of the data when repeatedly queries across refreshes. Avoid choosing this if the same rows will be repeatedly queried between privacy budget refreshes.</p> </important>", "smithy.api#required" => {}}))
    CreatePrivacyBudgetTemplateInput.add_member(:privacy_budget_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetType, location_name: 'privacyBudgetType', traits: {"smithy.api#documentation" => "<p>Specifies the type of the privacy budget template.</p>", "smithy.api#required" => {}}))
    CreatePrivacyBudgetTemplateInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateParametersInput, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>Specifies your parameters for the privacy budget template.</p>", "smithy.api#required" => {}}))
    CreatePrivacyBudgetTemplateInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>"}))
    CreatePrivacyBudgetTemplateInput.type = Types::CreatePrivacyBudgetTemplateInput
    CreatePrivacyBudgetTemplateOutput.add_member(:privacy_budget_template, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplate, location_name: 'privacyBudgetTemplate', traits: {"smithy.api#documentation" => "<p>A summary of the elements in the privacy budget template.</p>", "smithy.api#required" => {}}))
    CreatePrivacyBudgetTemplateOutput.type = Types::CreatePrivacyBudgetTemplateOutput
    CustomMLMemberAbilities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMLMemberAbility)
    CustomMLMemberAbility.add_member(:can_receive_model_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAN_RECEIVE_MODEL_OUTPUT', traits: {"smithy.api#enumValue" => "CAN_RECEIVE_MODEL_OUTPUT"}))
    CustomMLMemberAbility.add_member(:can_receive_inference_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAN_RECEIVE_INFERENCE_OUTPUT', traits: {"smithy.api#enumValue" => "CAN_RECEIVE_INFERENCE_OUTPUT"}))
    DataEncryptionMetadata.add_member(:allow_cleartext, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allowCleartext', traits: {"smithy.api#documentation" => "<p>Indicates whether encrypted tables can contain cleartext data (<code>TRUE</code>) or are to cryptographically process every column (<code>FALSE</code>).</p>", "smithy.api#required" => {}}))
    DataEncryptionMetadata.add_member(:allow_duplicates, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allowDuplicates', traits: {"smithy.api#documentation" => "<p>Indicates whether Fingerprint columns can contain duplicate entries (<code>TRUE</code>) or are to contain only non-repeated values (<code>FALSE</code>).</p>", "smithy.api#required" => {}}))
    DataEncryptionMetadata.add_member(:allow_joins_on_columns_with_different_names, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allowJoinsOnColumnsWithDifferentNames', traits: {"smithy.api#documentation" => "<p>Indicates whether Fingerprint columns can be joined on any other Fingerprint column with a different name (<code>TRUE</code>) or can only be joined on Fingerprint columns of the same name (<code>FALSE</code>).</p>", "smithy.api#required" => {}}))
    DataEncryptionMetadata.add_member(:preserve_nulls, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'preserveNulls', traits: {"smithy.api#documentation" => "<p>Indicates whether NULL values are to be copied as NULL to encrypted tables (<code>TRUE</code>) or cryptographically processed (<code>FALSE</code>).</p>", "smithy.api#required" => {}}))
    DataEncryptionMetadata.type = Types::DataEncryptionMetadata
    DeleteAnalysisTemplateOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a membership resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeleteAnalysisTemplateOperationInput.add_member(:analysis_template_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateIdentifier, location_name: 'analysisTemplateIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for the analysis template resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AnalysisTemplateId"}))
    DeleteAnalysisTemplateOperationInput.type = Types::DeleteAnalysisTemplateOperationInput
    DeleteAnalysisTemplateOperationOutput.type = Types::DeleteAnalysisTemplateOperationOutput
    DeleteCollaborationOperationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for the collaboration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    DeleteCollaborationOperationInput.type = Types::DeleteCollaborationOperationInput
    DeleteCollaborationOperationOutput.type = Types::DeleteCollaborationOperationOutput
    DeleteConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, location_name: 'configuredAudienceModelAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier of the configured audience model association that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredAudienceModelAssociationId"}))
    DeleteConfiguredAudienceModelAssociationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier of the membership that contains the audience model association that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeleteConfiguredAudienceModelAssociationInput.type = Types::DeleteConfiguredAudienceModelAssociationInput
    DeleteConfiguredAudienceModelAssociationOutput.type = Types::DeleteConfiguredAudienceModelAssociationOutput
    DeleteConfiguredTableAnalysisRuleOperationInput.add_member(:configured_table_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, location_name: 'configuredTableIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier for the configured table that the analysis rule applies to. Currently accepts the configured table ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    DeleteConfiguredTableAnalysisRuleOperationInput.add_member(:analysis_rule_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, location_name: 'analysisRuleType', traits: {"smithy.api#documentation" => "<p>The analysis rule type to be deleted. Configured table analysis rules are uniquely identified by their configured table identifier and analysis rule type.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfiguredTableAnalysisRuleOperationInput.type = Types::DeleteConfiguredTableAnalysisRuleOperationInput
    DeleteConfiguredTableAnalysisRuleOperationOutput.type = Types::DeleteConfiguredTableAnalysisRuleOperationOutput
    DeleteConfiguredTableAssociationAnalysisRuleInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p> A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeleteConfiguredTableAssociationAnalysisRuleInput.add_member(:configured_table_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, location_name: 'configuredTableAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The identiﬁer for the conﬁgured table association that's related to the analysis rule that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    DeleteConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleType, location_name: 'analysisRuleType', traits: {"smithy.api#documentation" => "<p>The type of the analysis rule that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfiguredTableAssociationAnalysisRuleInput.type = Types::DeleteConfiguredTableAssociationAnalysisRuleInput
    DeleteConfiguredTableAssociationAnalysisRuleOutput.type = Types::DeleteConfiguredTableAssociationAnalysisRuleOutput
    DeleteConfiguredTableAssociationOperationInput.add_member(:configured_table_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, location_name: 'configuredTableAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The unique ID for the configured table association to be deleted. Currently accepts the configured table ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    DeleteConfiguredTableAssociationOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeleteConfiguredTableAssociationOperationInput.type = Types::DeleteConfiguredTableAssociationOperationInput
    DeleteConfiguredTableAssociationOperationOutput.type = Types::DeleteConfiguredTableAssociationOperationOutput
    DeleteConfiguredTableOperationInput.add_member(:configured_table_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, location_name: 'configuredTableIdentifier', traits: {"smithy.api#documentation" => "<p>The unique ID for the configured table to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    DeleteConfiguredTableOperationInput.type = Types::DeleteConfiguredTableOperationInput
    DeleteConfiguredTableOperationOutput.type = Types::DeleteConfiguredTableOperationOutput
    DeleteIdMappingTableInput.add_member(:id_mapping_table_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'idMappingTableIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the ID mapping table that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdMappingTableId"}))
    DeleteIdMappingTableInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership that contains the ID mapping table that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeleteIdMappingTableInput.type = Types::DeleteIdMappingTableInput
    DeleteIdMappingTableOutput.type = Types::DeleteIdMappingTableOutput
    DeleteIdNamespaceAssociationInput.add_member(:id_namespace_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationIdentifier, location_name: 'idNamespaceAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the ID namespace association that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdNamespaceAssociationId"}))
    DeleteIdNamespaceAssociationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership that contains the ID namespace association that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeleteIdNamespaceAssociationInput.type = Types::DeleteIdNamespaceAssociationInput
    DeleteIdNamespaceAssociationOutput.type = Types::DeleteIdNamespaceAssociationOutput
    DeleteMemberOperationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier for the associated collaboration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    DeleteMemberOperationInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The account ID of the member to remove.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMemberOperationInput.type = Types::DeleteMemberOperationInput
    DeleteMemberOperationOutput.type = Types::DeleteMemberOperationOutput
    DeleteMembershipOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a membership resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeleteMembershipOperationInput.type = Types::DeleteMembershipOperationInput
    DeleteMembershipOperationOutput.type = Types::DeleteMembershipOperationOutput
    DeletePrivacyBudgetTemplateInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for one of your memberships for a collaboration. The privacy budget template is deleted from the collaboration that this membership belongs to. Accepts a membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeletePrivacyBudgetTemplateInput.add_member(:privacy_budget_template_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, location_name: 'privacyBudgetTemplateIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for your privacy budget template. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "PrivacyBudgetTemplateId"}))
    DeletePrivacyBudgetTemplateInput.type = Types::DeletePrivacyBudgetTemplateInput
    DeletePrivacyBudgetTemplateOutput.type = Types::DeletePrivacyBudgetTemplateOutput
    DifferentialPrivacyAggregationType.add_member(:avg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVG', traits: {"smithy.api#enumValue" => "AVG"}))
    DifferentialPrivacyAggregationType.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COUNT', traits: {"smithy.api#enumValue" => "COUNT"}))
    DifferentialPrivacyAggregationType.add_member(:count_distinct, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COUNT_DISTINCT', traits: {"smithy.api#enumValue" => "COUNT_DISTINCT"}))
    DifferentialPrivacyAggregationType.add_member(:sum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUM', traits: {"smithy.api#enumValue" => "SUM"}))
    DifferentialPrivacyAggregationType.add_member(:stddev, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STDDEV', traits: {"smithy.api#enumValue" => "STDDEV"}))
    DifferentialPrivacyColumn.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the column, such as user_id, that contains the unique identifier of your users, whose privacy you want to protect. If you want to turn on differential privacy for two or more tables in a collaboration, you must configure the same column as the user identifier column in both analysis rules.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacyColumn.type = Types::DifferentialPrivacyColumn
    DifferentialPrivacyColumnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyColumn)
    DifferentialPrivacyConfiguration.add_member(:columns, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyColumnList, location_name: 'columns', traits: {"smithy.api#documentation" => "<p>The name of the column (such as user_id) that contains the unique identifier of your users whose privacy you want to protect. If you want to turn on diﬀerential privacy for two or more tables in a collaboration, you must conﬁgure the same column as the user identiﬁer column in both analysis rules.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacyConfiguration.type = Types::DifferentialPrivacyConfiguration
    DifferentialPrivacyParameters.add_member(:sensitivity_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacySensitivityParametersList, location_name: 'sensitivityParameters', traits: {"smithy.api#documentation" => "<p>Provides the sensitivity parameters that you can use to better understand the total amount of noise in query results.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacyParameters.type = Types::DifferentialPrivacyParameters
    DifferentialPrivacyPreviewAggregation.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyAggregationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of aggregation function.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacyPreviewAggregation.add_member(:max_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxCount', traits: {"smithy.api#documentation" => "<p>The maximum number of aggregations that the member who can query can run given the epsilon and noise parameters.</p>", "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    DifferentialPrivacyPreviewAggregation.type = Types::DifferentialPrivacyPreviewAggregation
    DifferentialPrivacyPreviewAggregationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyPreviewAggregation)
    DifferentialPrivacyPreviewParametersInput.add_member(:epsilon, Smithy::Schema::Shapes::ShapeRef.new(shape: Epsilon, location_name: 'epsilon', traits: {"smithy.api#documentation" => "<p>The epsilon value that you want to preview.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacyPreviewParametersInput.add_member(:users_noise_per_query, Smithy::Schema::Shapes::ShapeRef.new(shape: UsersNoisePerQuery, location_name: 'usersNoisePerQuery', traits: {"smithy.api#documentation" => "<p>Noise added per query is measured in terms of the number of users whose contributions you want to obscure. This value governs the rate at which the privacy budget is depleted.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacyPreviewParametersInput.type = Types::DifferentialPrivacyPreviewParametersInput
    DifferentialPrivacyPrivacyBudget.add_member(:aggregations, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyPrivacyBudgetAggregationList, location_name: 'aggregations', traits: {"smithy.api#documentation" => "<p>This information includes the configured epsilon value and the utility in terms of total aggregations, as well as the remaining aggregations.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacyPrivacyBudget.add_member(:epsilon, Smithy::Schema::Shapes::ShapeRef.new(shape: Epsilon, location_name: 'epsilon', traits: {"smithy.api#documentation" => "<p>The epsilon value that you configured.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacyPrivacyBudget.type = Types::DifferentialPrivacyPrivacyBudget
    DifferentialPrivacyPrivacyBudgetAggregation.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyAggregationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The different types of aggregation functions that you can perform.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacyPrivacyBudgetAggregation.add_member(:max_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxCount', traits: {"smithy.api#documentation" => "<p>The maximum number of aggregation functions that you can perform with the given privacy budget.</p>", "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    DifferentialPrivacyPrivacyBudgetAggregation.add_member(:remaining_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'remainingCount', traits: {"smithy.api#documentation" => "<p>The remaining number of aggregation functions that can be run with the available privacy budget.</p>", "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    DifferentialPrivacyPrivacyBudgetAggregation.type = Types::DifferentialPrivacyPrivacyBudgetAggregation
    DifferentialPrivacyPrivacyBudgetAggregationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyPrivacyBudgetAggregation)
    DifferentialPrivacyPrivacyImpact.add_member(:aggregations, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyPreviewAggregationList, location_name: 'aggregations', traits: {"smithy.api#documentation" => "<p>The number of aggregation functions that you can perform.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacyPrivacyImpact.type = Types::DifferentialPrivacyPrivacyImpact
    DifferentialPrivacySensitivityParameters.add_member(:aggregation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyAggregationType, location_name: 'aggregationType', traits: {"smithy.api#documentation" => "<p>The type of aggregation function that was run.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacySensitivityParameters.add_member(:aggregation_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyAggregationExpression, location_name: 'aggregationExpression', traits: {"smithy.api#documentation" => "<p>The aggregation expression that was run.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacySensitivityParameters.add_member(:user_contribution_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'userContributionLimit', traits: {"smithy.api#documentation" => "<p>The maximum number of rows contributed by a user in a SQL query.</p>", "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    DifferentialPrivacySensitivityParameters.add_member(:min_column_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Float, location_name: 'minColumnValue', traits: {"smithy.api#documentation" => "<p>The lower bound of the aggregation expression.</p>"}))
    DifferentialPrivacySensitivityParameters.add_member(:max_column_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Float, location_name: 'maxColumnValue', traits: {"smithy.api#documentation" => "<p>The upper bound of the aggregation expression.</p>"}))
    DifferentialPrivacySensitivityParameters.type = Types::DifferentialPrivacySensitivityParameters
    DifferentialPrivacySensitivityParametersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacySensitivityParameters)
    DifferentialPrivacyTemplateParametersInput.add_member(:epsilon, Smithy::Schema::Shapes::ShapeRef.new(shape: Epsilon, location_name: 'epsilon', traits: {"smithy.api#documentation" => "<p>The epsilon value that you want to use.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacyTemplateParametersInput.add_member(:users_noise_per_query, Smithy::Schema::Shapes::ShapeRef.new(shape: UsersNoisePerQuery, location_name: 'usersNoisePerQuery', traits: {"smithy.api#documentation" => "<p>Noise added per query is measured in terms of the number of users whose contributions you want to obscure. This value governs the rate at which the privacy budget is depleted.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacyTemplateParametersInput.type = Types::DifferentialPrivacyTemplateParametersInput
    DifferentialPrivacyTemplateParametersOutput.add_member(:epsilon, Smithy::Schema::Shapes::ShapeRef.new(shape: Epsilon, location_name: 'epsilon', traits: {"smithy.api#documentation" => "<p>The epsilon value that you specified.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacyTemplateParametersOutput.add_member(:users_noise_per_query, Smithy::Schema::Shapes::ShapeRef.new(shape: UsersNoisePerQuery, location_name: 'usersNoisePerQuery', traits: {"smithy.api#documentation" => "<p>Noise added per query is measured in terms of the number of users whose contributions you want to obscure. This value governs the rate at which the privacy budget is depleted.</p>", "smithy.api#required" => {}}))
    DifferentialPrivacyTemplateParametersOutput.type = Types::DifferentialPrivacyTemplateParametersOutput
    DifferentialPrivacyTemplateUpdateParameters.add_member(:epsilon, Smithy::Schema::Shapes::ShapeRef.new(shape: Epsilon, location_name: 'epsilon', traits: {"smithy.api#documentation" => "<p>The updated epsilon value that you want to use.</p>"}))
    DifferentialPrivacyTemplateUpdateParameters.add_member(:users_noise_per_query, Smithy::Schema::Shapes::ShapeRef.new(shape: UsersNoisePerQuery, location_name: 'usersNoisePerQuery', traits: {"smithy.api#documentation" => "<p>The updated value of noise added per query. It is measured in terms of the number of users whose contributions you want to obscure. This value governs the rate at which the privacy budget is depleted.</p>"}))
    DifferentialPrivacyTemplateUpdateParameters.type = Types::DifferentialPrivacyTemplateUpdateParameters
    DirectAnalysisConfigurationDetails.add_member(:receiver_account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiverAccountIds, location_name: 'receiverAccountIds', traits: {"smithy.api#documentation" => "<p> The account IDs for the member who received the results of a protected query.</p>"}))
    DirectAnalysisConfigurationDetails.type = Types::DirectAnalysisConfigurationDetails
    GetAnalysisTemplateOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a membership resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetAnalysisTemplateOperationInput.add_member(:analysis_template_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateIdentifier, location_name: 'analysisTemplateIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for the analysis template resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AnalysisTemplateId"}))
    GetAnalysisTemplateOperationInput.type = Types::GetAnalysisTemplateOperationInput
    GetAnalysisTemplateOperationOutput.add_member(:analysis_template, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplate, location_name: 'analysisTemplate', traits: {"smithy.api#documentation" => "<p>The analysis template.</p>", "smithy.api#required" => {}}))
    GetAnalysisTemplateOperationOutput.type = Types::GetAnalysisTemplateOperationOutput
    GetCollaborationAnalysisTemplateOperationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetCollaborationAnalysisTemplateOperationInput.add_member(:analysis_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArn, location_name: 'analysisTemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with the analysis template within a collaboration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AnalysisTemplateArn"}))
    GetCollaborationAnalysisTemplateOperationInput.type = Types::GetCollaborationAnalysisTemplateOperationInput
    GetCollaborationAnalysisTemplateOperationOutput.add_member(:collaboration_analysis_template, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationAnalysisTemplate, location_name: 'collaborationAnalysisTemplate', traits: {"smithy.api#documentation" => "<p>The analysis template within a collaboration.</p>", "smithy.api#required" => {}}))
    GetCollaborationAnalysisTemplateOperationOutput.type = Types::GetCollaborationAnalysisTemplateOperationOutput
    GetCollaborationConfiguredAudienceModelAssociationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the collaboration that the configured audience model association belongs to. Accepts a collaboration ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetCollaborationConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, location_name: 'configuredAudienceModelAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the configured audience model association that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredAudienceModelAssociationId"}))
    GetCollaborationConfiguredAudienceModelAssociationInput.type = Types::GetCollaborationConfiguredAudienceModelAssociationInput
    GetCollaborationConfiguredAudienceModelAssociationOutput.add_member(:collaboration_configured_audience_model_association, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationConfiguredAudienceModelAssociation, location_name: 'collaborationConfiguredAudienceModelAssociation', traits: {"smithy.api#documentation" => "<p>The metadata of the configured audience model association.</p>", "smithy.api#required" => {}}))
    GetCollaborationConfiguredAudienceModelAssociationOutput.type = Types::GetCollaborationConfiguredAudienceModelAssociationOutput
    GetCollaborationIdNamespaceAssociationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration that contains the ID namespace association that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetCollaborationIdNamespaceAssociationInput.add_member(:id_namespace_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationIdentifier, location_name: 'idNamespaceAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the ID namespace association that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdNamespaceAssociationId"}))
    GetCollaborationIdNamespaceAssociationInput.type = Types::GetCollaborationIdNamespaceAssociationInput
    GetCollaborationIdNamespaceAssociationOutput.add_member(:collaboration_id_namespace_association, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdNamespaceAssociation, location_name: 'collaborationIdNamespaceAssociation', traits: {"smithy.api#documentation" => "<p>The ID namespace association that you requested.</p>", "smithy.api#required" => {}}))
    GetCollaborationIdNamespaceAssociationOutput.type = Types::GetCollaborationIdNamespaceAssociationOutput
    GetCollaborationOperationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for the collaboration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetCollaborationOperationInput.type = Types::GetCollaborationOperationInput
    GetCollaborationOperationOutput.add_member(:collaboration, Smithy::Schema::Shapes::ShapeRef.new(shape: Collaboration, location_name: 'collaboration', traits: {"smithy.api#documentation" => "<p>The entire collaboration for this identifier.</p>", "smithy.api#required" => {}}))
    GetCollaborationOperationOutput.type = Types::GetCollaborationOperationOutput
    GetCollaborationPrivacyBudgetTemplateInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for one of your collaborations.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetCollaborationPrivacyBudgetTemplateInput.add_member(:privacy_budget_template_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, location_name: 'privacyBudgetTemplateIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for one of your privacy budget templates.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "PrivacyBudgetTemplateId"}))
    GetCollaborationPrivacyBudgetTemplateInput.type = Types::GetCollaborationPrivacyBudgetTemplateInput
    GetCollaborationPrivacyBudgetTemplateOutput.add_member(:collaboration_privacy_budget_template, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationPrivacyBudgetTemplate, location_name: 'collaborationPrivacyBudgetTemplate', traits: {"smithy.api#documentation" => "<p>Returns the details of the privacy budget template that you requested.</p>", "smithy.api#required" => {}}))
    GetCollaborationPrivacyBudgetTemplateOutput.type = Types::GetCollaborationPrivacyBudgetTemplateOutput
    GetConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, location_name: 'configuredAudienceModelAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the configured audience model association that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredAudienceModelAssociationId"}))
    GetConfiguredAudienceModelAssociationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the membership that contains the configured audience model association that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetConfiguredAudienceModelAssociationInput.type = Types::GetConfiguredAudienceModelAssociationInput
    GetConfiguredAudienceModelAssociationOutput.add_member(:configured_audience_model_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociation, location_name: 'configuredAudienceModelAssociation', traits: {"smithy.api#documentation" => "<p>Information about the configured audience model association that you requested.</p>", "smithy.api#required" => {}}))
    GetConfiguredAudienceModelAssociationOutput.type = Types::GetConfiguredAudienceModelAssociationOutput
    GetConfiguredTableAnalysisRuleOperationInput.add_member(:configured_table_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, location_name: 'configuredTableIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier for the configured table to retrieve. Currently accepts the configured table ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    GetConfiguredTableAnalysisRuleOperationInput.add_member(:analysis_rule_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, location_name: 'analysisRuleType', traits: {"smithy.api#documentation" => "<p>The analysis rule to be retrieved. Configured table analysis rules are uniquely identified by their configured table identifier and analysis rule type.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfiguredTableAnalysisRuleOperationInput.type = Types::GetConfiguredTableAnalysisRuleOperationInput
    GetConfiguredTableAnalysisRuleOperationOutput.add_member(:analysis_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRule, location_name: 'analysisRule', traits: {"smithy.api#documentation" => "<p>The entire analysis rule output.</p>", "smithy.api#required" => {}}))
    GetConfiguredTableAnalysisRuleOperationOutput.type = Types::GetConfiguredTableAnalysisRuleOperationOutput
    GetConfiguredTableAssociationAnalysisRuleInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p> A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetConfiguredTableAssociationAnalysisRuleInput.add_member(:configured_table_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, location_name: 'configuredTableAssociationIdentifier', traits: {"smithy.api#documentation" => "<p> The identiﬁer for the conﬁgured table association that's related to the analysis rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    GetConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleType, location_name: 'analysisRuleType', traits: {"smithy.api#documentation" => "<p> The type of analysis rule that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfiguredTableAssociationAnalysisRuleInput.type = Types::GetConfiguredTableAssociationAnalysisRuleInput
    GetConfiguredTableAssociationAnalysisRuleOutput.add_member(:analysis_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRule, location_name: 'analysisRule', traits: {"smithy.api#documentation" => "<p>The analysis rule for the conﬁgured table association. In the console, the <code>ConfiguredTableAssociationAnalysisRule</code> is referred to as the <i>collaboration analysis rule</i>.</p>", "smithy.api#required" => {}}))
    GetConfiguredTableAssociationAnalysisRuleOutput.type = Types::GetConfiguredTableAssociationAnalysisRuleOutput
    GetConfiguredTableAssociationOperationInput.add_member(:configured_table_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, location_name: 'configuredTableAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The unique ID for the configured table association to retrieve. Currently accepts the configured table ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    GetConfiguredTableAssociationOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetConfiguredTableAssociationOperationInput.type = Types::GetConfiguredTableAssociationOperationInput
    GetConfiguredTableAssociationOperationOutput.add_member(:configured_table_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociation, location_name: 'configuredTableAssociation', traits: {"smithy.api#documentation" => "<p>The entire configured table association object.</p>", "smithy.api#required" => {}}))
    GetConfiguredTableAssociationOperationOutput.type = Types::GetConfiguredTableAssociationOperationOutput
    GetConfiguredTableOperationInput.add_member(:configured_table_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, location_name: 'configuredTableIdentifier', traits: {"smithy.api#documentation" => "<p>The unique ID for the configured table to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    GetConfiguredTableOperationInput.type = Types::GetConfiguredTableOperationInput
    GetConfiguredTableOperationOutput.add_member(:configured_table, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTable, location_name: 'configuredTable', traits: {"smithy.api#documentation" => "<p>The retrieved configured table.</p>", "smithy.api#required" => {}}))
    GetConfiguredTableOperationOutput.type = Types::GetConfiguredTableOperationOutput
    GetIdMappingTableInput.add_member(:id_mapping_table_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'idMappingTableIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the ID mapping table identifier that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdMappingTableId"}))
    GetIdMappingTableInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership that contains the ID mapping table that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetIdMappingTableInput.type = Types::GetIdMappingTableInput
    GetIdMappingTableOutput.add_member(:id_mapping_table, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTable, location_name: 'idMappingTable', traits: {"smithy.api#documentation" => "<p>The ID mapping table that you requested.</p>", "smithy.api#required" => {}}))
    GetIdMappingTableOutput.type = Types::GetIdMappingTableOutput
    GetIdNamespaceAssociationInput.add_member(:id_namespace_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationIdentifier, location_name: 'idNamespaceAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the ID namespace association that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdNamespaceAssociationId"}))
    GetIdNamespaceAssociationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership that contains the ID namespace association that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetIdNamespaceAssociationInput.type = Types::GetIdNamespaceAssociationInput
    GetIdNamespaceAssociationOutput.add_member(:id_namespace_association, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociation, location_name: 'idNamespaceAssociation', traits: {"smithy.api#documentation" => "<p>The ID namespace association that you requested.</p>", "smithy.api#required" => {}}))
    GetIdNamespaceAssociationOutput.type = Types::GetIdNamespaceAssociationOutput
    GetMembershipOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a membership resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetMembershipOperationInput.type = Types::GetMembershipOperationInput
    GetMembershipOperationOutput.add_member(:membership, Smithy::Schema::Shapes::ShapeRef.new(shape: Membership, location_name: 'membership', traits: {"smithy.api#documentation" => "<p>The membership retrieved for the provided identifier.</p>", "smithy.api#required" => {}}))
    GetMembershipOperationOutput.type = Types::GetMembershipOperationOutput
    GetPrivacyBudgetTemplateInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for one of your memberships for a collaboration. The privacy budget template is retrieved from the collaboration that this membership belongs to. Accepts a membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetPrivacyBudgetTemplateInput.add_member(:privacy_budget_template_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, location_name: 'privacyBudgetTemplateIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for your privacy budget template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "PrivacyBudgetTemplateId"}))
    GetPrivacyBudgetTemplateInput.type = Types::GetPrivacyBudgetTemplateInput
    GetPrivacyBudgetTemplateOutput.add_member(:privacy_budget_template, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplate, location_name: 'privacyBudgetTemplate', traits: {"smithy.api#documentation" => "<p>Returns the details of the privacy budget template that you requested.</p>", "smithy.api#required" => {}}))
    GetPrivacyBudgetTemplateOutput.type = Types::GetPrivacyBudgetTemplateOutput
    GetProtectedJobInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p> The identifier for a membership in a protected job instance.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetProtectedJobInput.add_member(:protected_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobIdentifier, location_name: 'protectedJobIdentifier', traits: {"smithy.api#documentation" => "<p> The identifier for the protected job instance.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProtectedJobInput.type = Types::GetProtectedJobInput
    GetProtectedJobOutput.add_member(:protected_job, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJob, location_name: 'protectedJob', traits: {"smithy.api#documentation" => "<p> The protected job metadata.</p>", "smithy.api#required" => {}}))
    GetProtectedJobOutput.type = Types::GetProtectedJobOutput
    GetProtectedQueryOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a membership in a protected query instance.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetProtectedQueryOperationInput.add_member(:protected_query_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryIdentifier, location_name: 'protectedQueryIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a protected query instance.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProtectedQueryOperationInput.type = Types::GetProtectedQueryOperationInput
    GetProtectedQueryOperationOutput.add_member(:protected_query, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQuery, location_name: 'protectedQuery', traits: {"smithy.api#documentation" => "<p>The query processing metadata.</p>", "smithy.api#required" => {}}))
    GetProtectedQueryOperationOutput.type = Types::GetProtectedQueryOperationOutput
    GetSchemaAnalysisRuleOperationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the collaboration that the schema belongs to. Currently accepts a collaboration ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetSchemaAnalysisRuleOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the schema to retrieve the analysis rule for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSchemaAnalysisRuleOperationInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the schema analysis rule to retrieve. Schema analysis rules are uniquely identified by a combination of the collaboration, the schema name, and their type.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSchemaAnalysisRuleOperationInput.type = Types::GetSchemaAnalysisRuleOperationInput
    GetSchemaAnalysisRuleOperationOutput.add_member(:analysis_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRule, location_name: 'analysisRule', traits: {"smithy.api#documentation" => "<p>A specification about how data from the configured table can be used.</p>", "smithy.api#required" => {}}))
    GetSchemaAnalysisRuleOperationOutput.type = Types::GetSchemaAnalysisRuleOperationOutput
    GetSchemaOperationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the collaboration that the schema belongs to. Currently accepts a collaboration ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetSchemaOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the relation to retrieve the schema for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSchemaOperationInput.type = Types::GetSchemaOperationInput
    GetSchemaOperationOutput.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: Schema, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The entire schema object.</p>", "smithy.api#required" => {}}))
    GetSchemaOperationOutput.type = Types::GetSchemaOperationOutput
    GlueTableReference.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GlueTableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the Glue table.</p>", "smithy.api#required" => {}}))
    GlueTableReference.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GlueDatabaseName, location_name: 'databaseName', traits: {"smithy.api#documentation" => "<p>The name of the database the Glue table belongs to.</p>", "smithy.api#required" => {}}))
    GlueTableReference.type = Types::GlueTableReference
    Hash.add_member(:sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sha256', traits: {"smithy.api#documentation" => "<p> The SHA-256 hash value.</p>"}))
    Hash.type = Types::Hash
    HashList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Hash)
    IdMappingConfig.add_member(:allow_use_as_dimension_column, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allowUseAsDimensionColumn', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>An indicator as to whether you can use your column as a dimension column in the ID mapping table (<code>TRUE</code>) or not (<code>FALSE</code>).</p> <p>Default is <code>FALSE</code>.</p>", "smithy.api#required" => {}}))
    IdMappingConfig.type = Types::IdMappingConfig
    IdMappingTable.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the ID mapping table.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdMappingTableId"}))
    IdMappingTable.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTableArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTable.add_member(:input_reference_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTableInputReferenceConfig, location_name: 'inputReferenceConfig', traits: {"smithy.api#documentation" => "<p>The input reference configuration for the ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTable.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership resource for the ID mapping table.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    IdMappingTable.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the membership resource for the ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTable.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration that contains this ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTable.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the collaboration that contains this ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTable.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the ID mapping table.</p>"}))
    IdMappingTable.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTable.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the ID mapping table was created.</p>", "smithy.api#required" => {}}))
    IdMappingTable.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the ID mapping table was updated.</p>", "smithy.api#required" => {}}))
    IdMappingTable.add_member(:input_reference_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTableInputReferenceProperties, location_name: 'inputReferenceProperties', traits: {"smithy.api#documentation" => "<p>The input reference properties for the ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTable.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services KMS key.</p>"}))
    IdMappingTable.type = Types::IdMappingTable
    IdMappingTableInputReferenceConfig.add_member(:input_reference_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTableInputReferenceArn, location_name: 'inputReferenceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the referenced resource in Entity Resolution. Valid values are ID mapping workflow ARNs.</p>", "smithy.api#required" => {}}))
    IdMappingTableInputReferenceConfig.add_member(:manage_resource_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'manageResourcePolicies', traits: {"smithy.api#documentation" => "<p>When <code>TRUE</code>, Clean Rooms manages permissions for the ID mapping table resource. </p> <p>When <code>FALSE</code>, the resource owner manages permissions for the ID mapping table resource.</p>", "smithy.api#required" => {}}))
    IdMappingTableInputReferenceConfig.type = Types::IdMappingTableInputReferenceConfig
    IdMappingTableInputReferenceProperties.add_member(:id_mapping_table_input_source, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTableInputSourceList, location_name: 'idMappingTableInputSource', traits: {"smithy.api#documentation" => "<p>The input source of the ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTableInputReferenceProperties.type = Types::IdMappingTableInputReferenceProperties
    IdMappingTableInputSource.add_member(:id_namespace_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'idNamespaceAssociationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the ID namespace association.</p>", "smithy.api#required" => {}}))
    IdMappingTableInputSource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the input source of the ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTableInputSource.type = Types::IdMappingTableInputSource
    IdMappingTableInputSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTableInputSource)
    IdMappingTableSchemaTypeProperties.add_member(:id_mapping_table_input_source, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTableInputSourceList, location_name: 'idMappingTableInputSource', traits: {"smithy.api#documentation" => "<p>Defines which ID namespace associations are used to create the ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTableSchemaTypeProperties.type = Types::IdMappingTableSchemaTypeProperties
    IdMappingTableSummary.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the collaboration that contains this ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTableSummary.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration that contains this ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTableSummary.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership resource for this ID mapping table.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    IdMappingTableSummary.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the membership resource for this ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTableSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which this ID mapping table was created.</p>", "smithy.api#required" => {}}))
    IdMappingTableSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which this ID mapping table was updated.</p>", "smithy.api#required" => {}}))
    IdMappingTableSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of this ID mapping table.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdMappingTableId"}))
    IdMappingTableSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTableArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of this ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTableSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of this ID mapping table.</p>"}))
    IdMappingTableSummary.add_member(:input_reference_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTableInputReferenceConfig, location_name: 'inputReferenceConfig', traits: {"smithy.api#documentation" => "<p>The input reference configuration for the ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTableSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of this ID mapping table.</p>", "smithy.api#required" => {}}))
    IdMappingTableSummary.type = Types::IdMappingTableSummary
    IdMappingTableSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTableSummary)
    IdMappingWorkflowsSupported.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Document)
    IdNamespaceAssociation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for this ID namespace association.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdNamespaceAssociationIdentifier"}))
    IdNamespaceAssociation.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership resource for this ID namespace association.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    IdNamespaceAssociation.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the membership resource for this ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration that contains this ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the collaboration that contains this ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of this ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the ID namespace association.</p>"}))
    IdNamespaceAssociation.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the ID namespace association was created.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the ID namespace association was updated.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:input_reference_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceConfig, location_name: 'inputReferenceConfig', traits: {"smithy.api#documentation" => "<p>The input reference configuration for the ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:input_reference_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceProperties, location_name: 'inputReferenceProperties', traits: {"smithy.api#documentation" => "<p>The input reference properties for the ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:id_mapping_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingConfig, location_name: 'idMappingConfig', traits: {"smithy.api#documentation" => "<p>The configuration settings for the ID mapping table.</p>"}))
    IdNamespaceAssociation.type = Types::IdNamespaceAssociation
    IdNamespaceAssociationInputReferenceConfig.add_member(:input_reference_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceArn, location_name: 'inputReferenceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Entity Resolution resource that is being associated to the collaboration. Valid resource ARNs are from the ID namespaces that you own.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociationInputReferenceConfig.add_member(:manage_resource_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'manageResourcePolicies', traits: {"smithy.api#documentation" => "<p>When <code>TRUE</code>, Clean Rooms manages permissions for the ID namespace association resource.</p> <p>When <code>FALSE</code>, the resource owner manages permissions for the ID namespace association resource.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociationInputReferenceConfig.type = Types::IdNamespaceAssociationInputReferenceConfig
    IdNamespaceAssociationInputReferenceProperties.add_member(:id_namespace_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceType, location_name: 'idNamespaceType', traits: {"smithy.api#documentation" => "<p>The ID namespace type for this ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociationInputReferenceProperties.add_member(:id_mapping_workflows_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingWorkflowsSupported, location_name: 'idMappingWorkflowsSupported', traits: {"smithy.api#documentation" => "<p>Defines how ID mapping workflows are supported for this ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociationInputReferenceProperties.type = Types::IdNamespaceAssociationInputReferenceProperties
    IdNamespaceAssociationInputReferencePropertiesSummary.add_member(:id_namespace_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceType, location_name: 'idNamespaceType', traits: {"smithy.api#documentation" => "<p>The ID namespace type for this ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociationInputReferencePropertiesSummary.type = Types::IdNamespaceAssociationInputReferencePropertiesSummary
    IdNamespaceAssociationSummary.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership resource for this ID namespace association.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    IdNamespaceAssociationSummary.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the membership resource for this ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the collaboration that contains this ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration that contains this ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which this ID namespace association was created.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which this ID namespace association has been updated.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of this ID namespace association.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdNamespaceAssociationId"}))
    IdNamespaceAssociationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of this ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:input_reference_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceConfig, location_name: 'inputReferenceConfig', traits: {"smithy.api#documentation" => "<p>The input reference configuration details for this ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the ID namespace association.</p>"}))
    IdNamespaceAssociationSummary.add_member(:input_reference_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferencePropertiesSummary, location_name: 'inputReferenceProperties', traits: {"smithy.api#documentation" => "<p>The input reference properties for this ID namespace association.</p>", "smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.type = Types::IdNamespaceAssociationSummary
    IdNamespaceAssociationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationSummary)
    IdNamespaceType.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE', traits: {"smithy.api#enumValue" => "SOURCE"}))
    IdNamespaceType.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET', traits: {"smithy.api#enumValue" => "TARGET"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    JobComputePaymentConfig.add_member(:is_responsible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isResponsible', traits: {"smithy.api#documentation" => "<p>Indicates whether the collaboration creator has configured the collaboration member to pay for query and job compute costs (<code>TRUE</code>) or has not configured the collaboration member to pay for query and job compute costs (<code>FALSE</code>).</p> <p>Exactly one member can be configured to pay for query and job compute costs. An error is returned if the collaboration creator sets a <code>TRUE</code> value for more than one member in the collaboration. </p> <p>An error is returned if the collaboration creator sets a <code>FALSE</code> value for the member who can run queries and jobs.</p>", "smithy.api#required" => {}}))
    JobComputePaymentConfig.type = Types::JobComputePaymentConfig
    JoinOperatorsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JoinOperator)
    ListAnalysisTemplatesOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a membership resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAnalysisTemplatesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAnalysisTemplatesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAnalysisTemplatesOperationInput.type = Types::ListAnalysisTemplatesOperationInput
    ListAnalysisTemplatesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListAnalysisTemplatesOperationOutput.add_member(:analysis_template_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateSummaryList, location_name: 'analysisTemplateSummaries', traits: {"smithy.api#documentation" => "<p>Lists analysis template metadata.</p>", "smithy.api#required" => {}}))
    ListAnalysisTemplatesOperationOutput.type = Types::ListAnalysisTemplatesOperationOutput
    ListCollaborationAnalysisTemplatesOperationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListCollaborationAnalysisTemplatesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationAnalysisTemplatesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationAnalysisTemplatesOperationInput.type = Types::ListCollaborationAnalysisTemplatesOperationInput
    ListCollaborationAnalysisTemplatesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListCollaborationAnalysisTemplatesOperationOutput.add_member(:collaboration_analysis_template_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationAnalysisTemplateSummaryList, location_name: 'collaborationAnalysisTemplateSummaries', traits: {"smithy.api#documentation" => "<p>The metadata of the analysis template within a collaboration.</p>", "smithy.api#required" => {}}))
    ListCollaborationAnalysisTemplatesOperationOutput.type = Types::ListCollaborationAnalysisTemplatesOperationOutput
    ListCollaborationConfiguredAudienceModelAssociationsInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the collaboration that the configured audience model association belongs to. Accepts a collaboration ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListCollaborationConfiguredAudienceModelAssociationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationConfiguredAudienceModelAssociationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationConfiguredAudienceModelAssociationsInput.type = Types::ListCollaborationConfiguredAudienceModelAssociationsInput
    ListCollaborationConfiguredAudienceModelAssociationsOutput.add_member(:collaboration_configured_audience_model_association_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationConfiguredAudienceModelAssociationSummaryList, location_name: 'collaborationConfiguredAudienceModelAssociationSummaries', traits: {"smithy.api#documentation" => "<p>The metadata of the configured audience model association within a collaboration.</p>", "smithy.api#required" => {}}))
    ListCollaborationConfiguredAudienceModelAssociationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListCollaborationConfiguredAudienceModelAssociationsOutput.type = Types::ListCollaborationConfiguredAudienceModelAssociationsOutput
    ListCollaborationIdNamespaceAssociationsInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration that contains the ID namespace associations that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListCollaborationIdNamespaceAssociationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationIdNamespaceAssociationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of the results that is returned per call. Service chooses a default if it has not been set. Service may return a nextToken even if the maximum results has not been met.&gt;</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationIdNamespaceAssociationsInput.type = Types::ListCollaborationIdNamespaceAssociationsInput
    ListCollaborationIdNamespaceAssociationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token value provided to access the next page of results.</p>"}))
    ListCollaborationIdNamespaceAssociationsOutput.add_member(:collaboration_id_namespace_association_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdNamespaceAssociationSummaryList, location_name: 'collaborationIdNamespaceAssociationSummaries', traits: {"smithy.api#documentation" => "<p>The summary information of the collaboration ID namespace associations that you requested.</p>", "smithy.api#required" => {}}))
    ListCollaborationIdNamespaceAssociationsOutput.type = Types::ListCollaborationIdNamespaceAssociationsOutput
    ListCollaborationPrivacyBudgetTemplatesInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for one of your collaborations.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListCollaborationPrivacyBudgetTemplatesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationPrivacyBudgetTemplatesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationPrivacyBudgetTemplatesInput.type = Types::ListCollaborationPrivacyBudgetTemplatesInput
    ListCollaborationPrivacyBudgetTemplatesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListCollaborationPrivacyBudgetTemplatesOutput.add_member(:collaboration_privacy_budget_template_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationPrivacyBudgetTemplateSummaryList, location_name: 'collaborationPrivacyBudgetTemplateSummaries', traits: {"smithy.api#documentation" => "<p>An array that summarizes the collaboration privacy budget templates. The summary includes collaboration information, creation information, the privacy budget type.</p>", "smithy.api#required" => {}}))
    ListCollaborationPrivacyBudgetTemplatesOutput.type = Types::ListCollaborationPrivacyBudgetTemplatesOutput
    ListCollaborationPrivacyBudgetsInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for one of your collaborations.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListCollaborationPrivacyBudgetsInput.add_member(:privacy_budget_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetType, location_name: 'privacyBudgetType', traits: {"smithy.api#documentation" => "<p>Specifies the type of the privacy budget.</p>", "smithy.api#httpQuery" => "privacyBudgetType", "smithy.api#required" => {}}))
    ListCollaborationPrivacyBudgetsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationPrivacyBudgetsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationPrivacyBudgetsInput.type = Types::ListCollaborationPrivacyBudgetsInput
    ListCollaborationPrivacyBudgetsOutput.add_member(:collaboration_privacy_budget_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationPrivacyBudgetSummaryList, location_name: 'collaborationPrivacyBudgetSummaries', traits: {"smithy.api#documentation" => "<p>Summaries of the collaboration privacy budgets.</p>", "smithy.api#required" => {}}))
    ListCollaborationPrivacyBudgetsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListCollaborationPrivacyBudgetsOutput.type = Types::ListCollaborationPrivacyBudgetsOutput
    ListCollaborationsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationsOperationInput.add_member(:member_status, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterableMemberStatus, location_name: 'memberStatus', traits: {"smithy.api#documentation" => "<p>The caller's status in a collaboration.</p>", "smithy.api#httpQuery" => "memberStatus"}))
    ListCollaborationsOperationInput.type = Types::ListCollaborationsOperationInput
    ListCollaborationsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListCollaborationsOperationOutput.add_member(:collaboration_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationSummaryList, location_name: 'collaborationList', traits: {"smithy.api#documentation" => "<p>The list of collaborations.</p>", "smithy.api#required" => {}}))
    ListCollaborationsOperationOutput.type = Types::ListCollaborationsOperationOutput
    ListConfiguredAudienceModelAssociationsInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for a membership that contains the configured audience model associations that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConfiguredAudienceModelAssociationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListConfiguredAudienceModelAssociationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListConfiguredAudienceModelAssociationsInput.type = Types::ListConfiguredAudienceModelAssociationsInput
    ListConfiguredAudienceModelAssociationsOutput.add_member(:configured_audience_model_association_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationSummaryList, location_name: 'configuredAudienceModelAssociationSummaries', traits: {"smithy.api#documentation" => "<p>Summaries of the configured audience model associations that you requested.</p>", "smithy.api#required" => {}}))
    ListConfiguredAudienceModelAssociationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token value provided to access the next page of results.</p>"}))
    ListConfiguredAudienceModelAssociationsOutput.type = Types::ListConfiguredAudienceModelAssociationsOutput
    ListConfiguredTableAssociationsOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the membership to list configured table associations for. Currently accepts the membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConfiguredTableAssociationsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListConfiguredTableAssociationsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListConfiguredTableAssociationsOperationInput.type = Types::ListConfiguredTableAssociationsOperationInput
    ListConfiguredTableAssociationsOperationOutput.add_member(:configured_table_association_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationSummaryList, location_name: 'configuredTableAssociationSummaries', traits: {"smithy.api#documentation" => "<p>The retrieved list of configured table associations.</p>", "smithy.api#required" => {}}))
    ListConfiguredTableAssociationsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListConfiguredTableAssociationsOperationOutput.type = Types::ListConfiguredTableAssociationsOperationOutput
    ListConfiguredTablesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListConfiguredTablesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListConfiguredTablesOperationInput.type = Types::ListConfiguredTablesOperationInput
    ListConfiguredTablesOperationOutput.add_member(:configured_table_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableSummaryList, location_name: 'configuredTableSummaries', traits: {"smithy.api#documentation" => "<p>The configured tables listed by the request.</p>", "smithy.api#required" => {}}))
    ListConfiguredTablesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListConfiguredTablesOperationOutput.type = Types::ListConfiguredTablesOperationOutput
    ListIdMappingTablesInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership that contains the ID mapping tables that you want to view.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIdMappingTablesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListIdMappingTablesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of the results that is returned per call. Service chooses a default if it has not been set. Service may return a nextToken even if the maximum results has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListIdMappingTablesInput.type = Types::ListIdMappingTablesInput
    ListIdMappingTablesOutput.add_member(:id_mapping_table_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTableSummaryList, location_name: 'idMappingTableSummaries', traits: {"smithy.api#documentation" => "<p>The summary information of the ID mapping tables that you requested.</p>", "smithy.api#required" => {}}))
    ListIdMappingTablesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token value provided to access the next page of results.</p>"}))
    ListIdMappingTablesOutput.type = Types::ListIdMappingTablesOutput
    ListIdNamespaceAssociationsInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership that contains the ID namespace association that you want to view.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIdNamespaceAssociationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListIdNamespaceAssociationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of the results that is returned per call. Service chooses a default if it has not been set. Service may return a nextToken even if the maximum results has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListIdNamespaceAssociationsInput.type = Types::ListIdNamespaceAssociationsInput
    ListIdNamespaceAssociationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token value provided to access the next page of results.</p>"}))
    ListIdNamespaceAssociationsOutput.add_member(:id_namespace_association_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationSummaryList, location_name: 'idNamespaceAssociationSummaries', traits: {"smithy.api#documentation" => "<p>The summary information of the ID namespace associations that you requested.</p>", "smithy.api#required" => {}}))
    ListIdNamespaceAssociationsOutput.type = Types::ListIdNamespaceAssociationsOutput
    ListMembersOperationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the collaboration in which the members are listed.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListMembersOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListMembersOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListMembersOperationInput.type = Types::ListMembersOperationInput
    ListMembersOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListMembersOperationOutput.add_member(:member_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberSummaryList, location_name: 'memberSummaries', traits: {"smithy.api#documentation" => "<p>The list of members returned by the ListMembers operation.</p>", "smithy.api#required" => {}}))
    ListMembersOperationOutput.type = Types::ListMembersOperationOutput
    ListMembershipsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListMembershipsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListMembershipsOperationInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A filter which will return only memberships in the specified status.</p>", "smithy.api#httpQuery" => "status"}))
    ListMembershipsOperationInput.type = Types::ListMembershipsOperationInput
    ListMembershipsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListMembershipsOperationOutput.add_member(:membership_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipSummaryList, location_name: 'membershipSummaries', traits: {"smithy.api#documentation" => "<p>The list of memberships returned from the ListMemberships operation.</p>", "smithy.api#required" => {}}))
    ListMembershipsOperationOutput.type = Types::ListMembershipsOperationOutput
    ListPrivacyBudgetTemplatesInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for one of your memberships for a collaboration. The privacy budget templates are retrieved from the collaboration that this membership belongs to. Accepts a membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPrivacyBudgetTemplatesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPrivacyBudgetTemplatesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPrivacyBudgetTemplatesInput.type = Types::ListPrivacyBudgetTemplatesInput
    ListPrivacyBudgetTemplatesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListPrivacyBudgetTemplatesOutput.add_member(:privacy_budget_template_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateSummaryList, location_name: 'privacyBudgetTemplateSummaries', traits: {"smithy.api#documentation" => "<p>An array that summarizes the privacy budget templates. The summary includes collaboration information, creation information, and privacy budget type.</p>", "smithy.api#required" => {}}))
    ListPrivacyBudgetTemplatesOutput.type = Types::ListPrivacyBudgetTemplatesOutput
    ListPrivacyBudgetsInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for one of your memberships for a collaboration. The privacy budget is retrieved from the collaboration that this membership belongs to. Accepts a membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ListPrivacyBudgetsInput.add_member(:privacy_budget_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetType, location_name: 'privacyBudgetType', traits: {"smithy.api#documentation" => "<p>The privacy budget type.</p>", "smithy.api#httpQuery" => "privacyBudgetType", "smithy.api#required" => {}}))
    ListPrivacyBudgetsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPrivacyBudgetsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPrivacyBudgetsInput.type = Types::ListPrivacyBudgetsInput
    ListPrivacyBudgetsOutput.add_member(:privacy_budget_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetSummaryList, location_name: 'privacyBudgetSummaries', traits: {"smithy.api#documentation" => "<p>An array that summarizes the privacy budgets. The summary includes collaboration information, membership information, privacy budget template information, and privacy budget details.</p>", "smithy.api#required" => {}}))
    ListPrivacyBudgetsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListPrivacyBudgetsOutput.type = Types::ListPrivacyBudgetsOutput
    ListProtectedJobsInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for the membership in the collaboration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ListProtectedJobsInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A filter on the status of the protected job.</p>", "smithy.api#httpQuery" => "status"}))
    ListProtectedJobsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListProtectedJobsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListProtectedJobsInput.type = Types::ListProtectedJobsInput
    ListProtectedJobsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListProtectedJobsOutput.add_member(:protected_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobSummaryList, location_name: 'protectedJobs', traits: {"smithy.api#documentation" => "<p>A list of protected job summaries.</p>", "smithy.api#required" => {}}))
    ListProtectedJobsOutput.type = Types::ListProtectedJobsOutput
    ListProtectedQueriesOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for the membership in the collaboration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ListProtectedQueriesOperationInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A filter on the status of the protected query.</p>", "smithy.api#httpQuery" => "status"}))
    ListProtectedQueriesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListProtectedQueriesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListProtectedQueriesOperationInput.type = Types::ListProtectedQueriesOperationInput
    ListProtectedQueriesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListProtectedQueriesOperationOutput.add_member(:protected_queries, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQuerySummaryList, location_name: 'protectedQueries', traits: {"smithy.api#documentation" => "<p>A list of protected queries.</p>", "smithy.api#required" => {}}))
    ListProtectedQueriesOperationOutput.type = Types::ListProtectedQueriesOperationOutput
    ListSchemasOperationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the collaboration that the schema belongs to. Currently accepts a collaboration ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListSchemasOperationInput.add_member(:schema_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaType, location_name: 'schemaType', traits: {"smithy.api#documentation" => "<p>If present, filter schemas by schema type.</p>", "smithy.api#httpQuery" => "schemaType"}))
    ListSchemasOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSchemasOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSchemasOperationInput.type = Types::ListSchemasOperationInput
    ListSchemasOperationOutput.add_member(:schema_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaSummaryList, location_name: 'schemaSummaries', traits: {"smithy.api#documentation" => "<p>The retrieved list of schemas.</p>", "smithy.api#required" => {}}))
    ListSchemasOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListSchemasOperationOutput.type = Types::ListSchemasOperationOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CleanroomsArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with the resource you want to list tags on.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of objects specifying each key name and value.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MLMemberAbilities.add_member(:custom_ml_member_abilities, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMLMemberAbilities, location_name: 'customMLMemberAbilities', traits: {"smithy.api#documentation" => "<p>The custom ML member abilities for a collaboration member. </p>", "smithy.api#required" => {}}))
    MLMemberAbilities.type = Types::MLMemberAbilities
    MLPaymentConfig.add_member(:model_training, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelTrainingPaymentConfig, location_name: 'modelTraining', traits: {"smithy.api#documentation" => "<p>The payment responsibilities accepted by the member for model training.</p>"}))
    MLPaymentConfig.add_member(:model_inference, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInferencePaymentConfig, location_name: 'modelInference', traits: {"smithy.api#documentation" => "<p>The payment responsibilities accepted by the member for model inference.</p>"}))
    MLPaymentConfig.type = Types::MLPaymentConfig
    MemberAbilities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAbility)
    MemberAbility.add_member(:can_query, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAN_QUERY', traits: {"smithy.api#enumValue" => "CAN_QUERY"}))
    MemberAbility.add_member(:can_receive_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAN_RECEIVE_RESULTS', traits: {"smithy.api#enumValue" => "CAN_RECEIVE_RESULTS"}))
    MemberAbility.add_member(:can_run_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAN_RUN_JOB', traits: {"smithy.api#enumValue" => "CAN_RUN_JOB"}))
    MemberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MemberSpecification)
    MemberSpecification.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The identifier used to reference members of the collaboration. Currently only supports Amazon Web Services account ID.</p>", "smithy.api#required" => {}}))
    MemberSpecification.add_member(:member_abilities, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAbilities, location_name: 'memberAbilities', traits: {"smithy.api#documentation" => "<p>The abilities granted to the collaboration member.</p>", "smithy.api#required" => {}}))
    MemberSpecification.add_member(:ml_member_abilities, Smithy::Schema::Shapes::ShapeRef.new(shape: MLMemberAbilities, location_name: 'mlMemberAbilities', traits: {"smithy.api#documentation" => "<p>The ML abilities granted to the collaboration member.</p>"}))
    MemberSpecification.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The member's display name.</p>", "smithy.api#required" => {}}))
    MemberSpecification.add_member(:payment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentConfiguration, location_name: 'paymentConfiguration', traits: {"smithy.api#documentation" => "<p>The collaboration member's payment responsibilities set by the collaboration creator. </p> <p>If the collaboration creator hasn't speciﬁed anyone as the member paying for query compute costs, then the member who can query is the default payer.</p>"}))
    MemberSpecification.type = Types::MemberSpecification
    MemberSummary.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The identifier used to reference members of the collaboration. Currently only supports Amazon Web Services account ID.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AccountId"}))
    MemberSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the member. </p>", "smithy.api#required" => {}}))
    MemberSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The member's display name.</p>", "smithy.api#required" => {}}))
    MemberSummary.add_member(:abilities, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAbilities, location_name: 'abilities', traits: {"smithy.api#documentation" => "<p>The abilities granted to the collaboration member.</p>", "smithy.api#required" => {}}))
    MemberSummary.add_member(:ml_abilities, Smithy::Schema::Shapes::ShapeRef.new(shape: MLMemberAbilities, location_name: 'mlAbilities', traits: {"smithy.api#documentation" => "<p>Provides a summary of the ML abilities for the collaboration member.</p>"}))
    MemberSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time when the member was created.</p>", "smithy.api#required" => {}}))
    MemberSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time the member metadata was last updated.</p>", "smithy.api#required" => {}}))
    MemberSummary.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The unique ID for the member's associated membership, if present.</p>"}))
    MemberSummary.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the member's associated membership, if present.</p>"}))
    MemberSummary.add_member(:payment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentConfiguration, location_name: 'paymentConfiguration', traits: {"smithy.api#documentation" => "<p>The collaboration member's payment responsibilities set by the collaboration creator. </p>", "smithy.api#required" => {}}))
    MemberSummary.type = Types::MemberSummary
    MemberSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MemberSummary)
    Membership.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the membership.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    Membership.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the membership.</p>", "smithy.api#required" => {}}))
    Membership.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the membership's associated collaboration.</p>", "smithy.api#required" => {}}))
    Membership.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique ID for the membership's collaboration.</p>", "smithy.api#required" => {}}))
    Membership.add_member(:collaboration_creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'collaborationCreatorAccountId', traits: {"smithy.api#documentation" => "<p>The identifier used to reference members of the collaboration. Currently only supports Amazon Web Services account ID.</p>", "smithy.api#required" => {}}))
    Membership.add_member(:collaboration_creator_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'collaborationCreatorDisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the collaboration creator.</p>", "smithy.api#required" => {}}))
    Membership.add_member(:collaboration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationName, location_name: 'collaborationName', traits: {"smithy.api#documentation" => "<p>The name of the membership's collaboration.</p>", "smithy.api#required" => {}}))
    Membership.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time when the membership was created.</p>", "smithy.api#required" => {}}))
    Membership.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time the membership metadata was last updated.</p>", "smithy.api#required" => {}}))
    Membership.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the membership.</p>", "smithy.api#required" => {}}))
    Membership.add_member(:member_abilities, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAbilities, location_name: 'memberAbilities', traits: {"smithy.api#documentation" => "<p>The abilities granted to the collaboration member.</p>", "smithy.api#required" => {}}))
    Membership.add_member(:ml_member_abilities, Smithy::Schema::Shapes::ShapeRef.new(shape: MLMemberAbilities, location_name: 'mlMemberAbilities', traits: {"smithy.api#documentation" => "<p>Specifies the ML member abilities that are granted to a collaboration member.</p>"}))
    Membership.add_member(:query_log_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipQueryLogStatus, location_name: 'queryLogStatus', traits: {"smithy.api#documentation" => "<p>An indicator as to whether query logging has been enabled or disabled for the membership.</p> <p>When <code>ENABLED</code>, Clean Rooms logs details about queries run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>", "smithy.api#required" => {}}))
    Membership.add_member(:job_log_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipJobLogStatus, location_name: 'jobLogStatus', traits: {"smithy.api#documentation" => "<p>An indicator as to whether job logging has been enabled or disabled for the collaboration. </p> <p>When <code>ENABLED</code>, Clean Rooms logs details about jobs run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>"}))
    Membership.add_member(:default_result_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipProtectedQueryResultConfiguration, location_name: 'defaultResultConfiguration', traits: {"smithy.api#documentation" => "<p>The default protected query result configuration as specified by the member who can receive results.</p>"}))
    Membership.add_member(:default_job_result_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipProtectedJobResultConfiguration, location_name: 'defaultJobResultConfiguration', traits: {"smithy.api#documentation" => "<p> The default job result configuration for the membership.</p>"}))
    Membership.add_member(:payment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipPaymentConfiguration, location_name: 'paymentConfiguration', traits: {"smithy.api#documentation" => "<p>The payment responsibilities accepted by the collaboration member.</p>", "smithy.api#required" => {}}))
    Membership.type = Types::Membership
    MembershipJobComputePaymentConfig.add_member(:is_responsible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isResponsible', traits: {"smithy.api#documentation" => "<p>Indicates whether the collaboration member has accepted to pay for job compute costs (<code>TRUE</code>) or has not accepted to pay for query and job compute costs (<code>FALSE</code>).</p> <p>There is only one member who pays for queries and jobs. </p> <p>An error message is returned for the following reasons: </p> <ul> <li> <p>If you set the value to <code>FALSE</code> but you are responsible to pay for query and job compute costs. </p> </li> <li> <p>If you set the value to <code>TRUE</code> but you are not responsible to pay for query and job compute costs. </p> </li> </ul>", "smithy.api#required" => {}}))
    MembershipJobComputePaymentConfig.type = Types::MembershipJobComputePaymentConfig
    MembershipJobLogStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    MembershipJobLogStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    MembershipMLPaymentConfig.add_member(:model_training, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipModelTrainingPaymentConfig, location_name: 'modelTraining', traits: {"smithy.api#documentation" => "<p>The payment responsibilities accepted by the member for model training.</p>"}))
    MembershipMLPaymentConfig.add_member(:model_inference, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipModelInferencePaymentConfig, location_name: 'modelInference', traits: {"smithy.api#documentation" => "<p>The payment responsibilities accepted by the member for model inference.</p>"}))
    MembershipMLPaymentConfig.type = Types::MembershipMLPaymentConfig
    MembershipModelInferencePaymentConfig.add_member(:is_responsible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isResponsible', traits: {"smithy.api#documentation" => "<p>Indicates whether the collaboration member has accepted to pay for model inference costs (<code>TRUE</code>) or has not accepted to pay for model inference costs (<code>FALSE</code>).</p> <p>If the collaboration creator has not specified anyone to pay for model inference costs, then the member who can query is the default payer. </p> <p>An error message is returned for the following reasons: </p> <ul> <li> <p>If you set the value to <code>FALSE</code> but you are responsible to pay for model inference costs. </p> </li> <li> <p>If you set the value to <code>TRUE</code> but you are not responsible to pay for model inference costs. </p> </li> </ul>", "smithy.api#required" => {}}))
    MembershipModelInferencePaymentConfig.type = Types::MembershipModelInferencePaymentConfig
    MembershipModelTrainingPaymentConfig.add_member(:is_responsible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isResponsible', traits: {"smithy.api#documentation" => "<p>Indicates whether the collaboration member has accepted to pay for model training costs (<code>TRUE</code>) or has not accepted to pay for model training costs (<code>FALSE</code>).</p> <p>If the collaboration creator has not specified anyone to pay for model training costs, then the member who can query is the default payer. </p> <p>An error message is returned for the following reasons: </p> <ul> <li> <p>If you set the value to <code>FALSE</code> but you are responsible to pay for model training costs. </p> </li> <li> <p>If you set the value to <code>TRUE</code> but you are not responsible to pay for model training costs. </p> </li> </ul>", "smithy.api#required" => {}}))
    MembershipModelTrainingPaymentConfig.type = Types::MembershipModelTrainingPaymentConfig
    MembershipPaymentConfiguration.add_member(:query_compute, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipQueryComputePaymentConfig, location_name: 'queryCompute', traits: {"smithy.api#documentation" => "<p>The payment responsibilities accepted by the collaboration member for query compute costs.</p>", "smithy.api#required" => {}}))
    MembershipPaymentConfiguration.add_member(:machine_learning, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipMLPaymentConfig, location_name: 'machineLearning', traits: {"smithy.api#documentation" => "<p>The payment responsibilities accepted by the collaboration member for machine learning costs.</p>"}))
    MembershipPaymentConfiguration.add_member(:job_compute, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipJobComputePaymentConfig, location_name: 'jobCompute', traits: {"smithy.api#documentation" => "<p>The payment responsibilities accepted by the collaboration member for job compute costs.</p>"}))
    MembershipPaymentConfiguration.type = Types::MembershipPaymentConfiguration
    MembershipProtectedJobOutputConfiguration.add_member(:s3, Types::MembershipProtectedJobOutputConfiguration::S3, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobS3OutputConfigurationInput, location_name: 's3', traits: {"smithy.api#documentation" => "<p>Contains the configuration to write the job results to S3.</p>"}))
    MembershipProtectedJobOutputConfiguration.add_member(:unknown, Types::MembershipProtectedJobOutputConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    MembershipProtectedJobOutputConfiguration.type = Types::MembershipProtectedJobOutputConfiguration
    MembershipProtectedJobResultConfiguration.add_member(:output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipProtectedJobOutputConfiguration, location_name: 'outputConfiguration', traits: {"smithy.api#documentation" => "<p> The output configuration for a protected job result.</p>", "smithy.api#required" => {}}))
    MembershipProtectedJobResultConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for an IAM role that is used by Clean Rooms to write protected job results to the result location, given by the member who can receive results.</p>", "smithy.api#required" => {}}))
    MembershipProtectedJobResultConfiguration.type = Types::MembershipProtectedJobResultConfiguration
    MembershipProtectedQueryOutputConfiguration.add_member(:s3, Types::MembershipProtectedQueryOutputConfiguration::S3, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryS3OutputConfiguration, location_name: 's3'))
    MembershipProtectedQueryOutputConfiguration.add_member(:unknown, Types::MembershipProtectedQueryOutputConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    MembershipProtectedQueryOutputConfiguration.type = Types::MembershipProtectedQueryOutputConfiguration
    MembershipProtectedQueryResultConfiguration.add_member(:output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipProtectedQueryOutputConfiguration, location_name: 'outputConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for protected query results.</p>", "smithy.api#required" => {}}))
    MembershipProtectedQueryResultConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for an IAM role that is used by Clean Rooms to write protected query results to the result location, given by the member who can receive results.</p>"}))
    MembershipProtectedQueryResultConfiguration.type = Types::MembershipProtectedQueryResultConfiguration
    MembershipQueryComputePaymentConfig.add_member(:is_responsible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isResponsible', traits: {"smithy.api#documentation" => "<p>Indicates whether the collaboration member has accepted to pay for query compute costs (<code>TRUE</code>) or has not accepted to pay for query compute costs (<code>FALSE</code>).</p> <p>If the collaboration creator has not specified anyone to pay for query compute costs, then the member who can query is the default payer. </p> <p>An error message is returned for the following reasons: </p> <ul> <li> <p>If you set the value to <code>FALSE</code> but you are responsible to pay for query compute costs. </p> </li> <li> <p>If you set the value to <code>TRUE</code> but you are not responsible to pay for query compute costs. </p> </li> </ul>", "smithy.api#required" => {}}))
    MembershipQueryComputePaymentConfig.type = Types::MembershipQueryComputePaymentConfig
    MembershipQueryLogStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    MembershipQueryLogStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    MembershipSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the membership's collaboration.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    MembershipSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the membership.</p>", "smithy.api#required" => {}}))
    MembershipSummary.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the membership's associated collaboration.</p>", "smithy.api#required" => {}}))
    MembershipSummary.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique ID for the membership's collaboration.</p>", "smithy.api#required" => {}}))
    MembershipSummary.add_member(:collaboration_creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'collaborationCreatorAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services principal that created the collaboration. Currently only supports Amazon Web Services account ID.</p>", "smithy.api#required" => {}}))
    MembershipSummary.add_member(:collaboration_creator_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'collaborationCreatorDisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the collaboration creator.</p>", "smithy.api#required" => {}}))
    MembershipSummary.add_member(:collaboration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationName, location_name: 'collaborationName', traits: {"smithy.api#documentation" => "<p>The name for the membership's collaboration.</p>", "smithy.api#required" => {}}))
    MembershipSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time when the membership was created.</p>", "smithy.api#required" => {}}))
    MembershipSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time the membership metadata was last updated.</p>", "smithy.api#required" => {}}))
    MembershipSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the membership.</p>", "smithy.api#required" => {}}))
    MembershipSummary.add_member(:member_abilities, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAbilities, location_name: 'memberAbilities', traits: {"smithy.api#documentation" => "<p>The abilities granted to the collaboration member.</p>", "smithy.api#required" => {}}))
    MembershipSummary.add_member(:ml_member_abilities, Smithy::Schema::Shapes::ShapeRef.new(shape: MLMemberAbilities, location_name: 'mlMemberAbilities', traits: {"smithy.api#documentation" => "<p>Provides a summary of the ML abilities for the collaboration member.</p>"}))
    MembershipSummary.add_member(:payment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipPaymentConfiguration, location_name: 'paymentConfiguration', traits: {"smithy.api#documentation" => "<p>The payment responsibilities accepted by the collaboration member.</p>", "smithy.api#required" => {}}))
    MembershipSummary.type = Types::MembershipSummary
    MembershipSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipSummary)
    ModelInferencePaymentConfig.add_member(:is_responsible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isResponsible', traits: {"smithy.api#documentation" => "<p>Indicates whether the collaboration creator has configured the collaboration member to pay for model inference costs (<code>TRUE</code>) or has not configured the collaboration member to pay for model inference costs (<code>FALSE</code>).</p> <p>Exactly one member can be configured to pay for model inference costs. An error is returned if the collaboration creator sets a <code>TRUE</code> value for more than one member in the collaboration. </p> <p>If the collaboration creator hasn't specified anyone as the member paying for model inference costs, then the member who can query is the default payer. An error is returned if the collaboration creator sets a <code>FALSE</code> value for the member who can query.</p>", "smithy.api#required" => {}}))
    ModelInferencePaymentConfig.type = Types::ModelInferencePaymentConfig
    ModelTrainingPaymentConfig.add_member(:is_responsible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isResponsible', traits: {"smithy.api#documentation" => "<p>Indicates whether the collaboration creator has configured the collaboration member to pay for model training costs (<code>TRUE</code>) or has not configured the collaboration member to pay for model training costs (<code>FALSE</code>).</p> <p>Exactly one member can be configured to pay for model training costs. An error is returned if the collaboration creator sets a <code>TRUE</code> value for more than one member in the collaboration. </p> <p>If the collaboration creator hasn't specified anyone as the member paying for model training costs, then the member who can query is the default payer. An error is returned if the collaboration creator sets a <code>FALSE</code> value for the member who can query.</p>", "smithy.api#required" => {}}))
    ModelTrainingPaymentConfig.type = Types::ModelTrainingPaymentConfig
    ParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName)
    ParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue)
    ParameterType.add_member(:smallint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMALLINT', traits: {"smithy.api#enumValue" => "SMALLINT"}))
    ParameterType.add_member(:integer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTEGER', traits: {"smithy.api#enumValue" => "INTEGER"}))
    ParameterType.add_member(:bigint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BIGINT', traits: {"smithy.api#enumValue" => "BIGINT"}))
    ParameterType.add_member(:decimal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECIMAL', traits: {"smithy.api#enumValue" => "DECIMAL"}))
    ParameterType.add_member(:real, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REAL', traits: {"smithy.api#enumValue" => "REAL"}))
    ParameterType.add_member(:double_precision, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE_PRECISION', traits: {"smithy.api#enumValue" => "DOUBLE_PRECISION"}))
    ParameterType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    ParameterType.add_member(:char, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHAR', traits: {"smithy.api#enumValue" => "CHAR"}))
    ParameterType.add_member(:varchar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VARCHAR', traits: {"smithy.api#enumValue" => "VARCHAR"}))
    ParameterType.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATE', traits: {"smithy.api#enumValue" => "DATE"}))
    ParameterType.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP', traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    ParameterType.add_member(:timestamptz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMPTZ', traits: {"smithy.api#enumValue" => "TIMESTAMPTZ"}))
    ParameterType.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME', traits: {"smithy.api#enumValue" => "TIME"}))
    ParameterType.add_member(:timetz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMETZ', traits: {"smithy.api#enumValue" => "TIMETZ"}))
    ParameterType.add_member(:varbyte, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VARBYTE', traits: {"smithy.api#enumValue" => "VARBYTE"}))
    ParameterType.add_member(:binary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BINARY', traits: {"smithy.api#enumValue" => "BINARY"}))
    ParameterType.add_member(:byte, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTE', traits: {"smithy.api#enumValue" => "BYTE"}))
    ParameterType.add_member(:character, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHARACTER', traits: {"smithy.api#enumValue" => "CHARACTER"}))
    ParameterType.add_member(:double, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE', traits: {"smithy.api#enumValue" => "DOUBLE"}))
    ParameterType.add_member(:float, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLOAT', traits: {"smithy.api#enumValue" => "FLOAT"}))
    ParameterType.add_member(:int, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT', traits: {"smithy.api#enumValue" => "INT"}))
    ParameterType.add_member(:long, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LONG', traits: {"smithy.api#enumValue" => "LONG"}))
    ParameterType.add_member(:numeric, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMERIC', traits: {"smithy.api#enumValue" => "NUMERIC"}))
    ParameterType.add_member(:short, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHORT', traits: {"smithy.api#enumValue" => "SHORT"}))
    ParameterType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    ParameterType.add_member(:timestamp_ltz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP_LTZ', traits: {"smithy.api#enumValue" => "TIMESTAMP_LTZ"}))
    ParameterType.add_member(:timestamp_ntz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTAMP_NTZ', traits: {"smithy.api#enumValue" => "TIMESTAMP_NTZ"}))
    ParameterType.add_member(:tinyint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TINYINT', traits: {"smithy.api#enumValue" => "TINYINT"}))
    PaymentConfiguration.add_member(:query_compute, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryComputePaymentConfig, location_name: 'queryCompute', traits: {"smithy.api#documentation" => "<p>The collaboration member's payment responsibilities set by the collaboration creator for query compute costs.</p>", "smithy.api#required" => {}}))
    PaymentConfiguration.add_member(:machine_learning, Smithy::Schema::Shapes::ShapeRef.new(shape: MLPaymentConfig, location_name: 'machineLearning', traits: {"smithy.api#documentation" => "<p>An object representing the collaboration member's machine learning payment responsibilities set by the collaboration creator.</p>"}))
    PaymentConfiguration.add_member(:job_compute, Smithy::Schema::Shapes::ShapeRef.new(shape: JobComputePaymentConfig, location_name: 'jobCompute', traits: {"smithy.api#documentation" => "<p> The compute configuration for the job.</p>"}))
    PaymentConfiguration.type = Types::PaymentConfiguration
    PopulateIdMappingTableInput.add_member(:id_mapping_table_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'idMappingTableIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the ID mapping table that you want to populate.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdMappingTableId"}))
    PopulateIdMappingTableInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership that contains the ID mapping table that you want to populate.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    PopulateIdMappingTableInput.type = Types::PopulateIdMappingTableInput
    PopulateIdMappingTableOutput.add_member(:id_mapping_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'idMappingJobId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the mapping job that will populate the ID mapping table.</p>", "smithy.api#required" => {}}))
    PopulateIdMappingTableOutput.type = Types::PopulateIdMappingTableOutput
    PreviewPrivacyImpactInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for one of your memberships for a collaboration. Accepts a membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    PreviewPrivacyImpactInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: PreviewPrivacyImpactParametersInput, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>Specifies the desired epsilon and noise parameters to preview.</p>", "smithy.api#required" => {}}))
    PreviewPrivacyImpactInput.type = Types::PreviewPrivacyImpactInput
    PreviewPrivacyImpactOutput.add_member(:privacy_impact, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyImpact, location_name: 'privacyImpact', traits: {"smithy.api#documentation" => "<p>An estimate of the number of aggregation functions that the member who can query can run given the epsilon and noise parameters. This does not change the privacy budget.</p>", "smithy.api#required" => {}}))
    PreviewPrivacyImpactOutput.type = Types::PreviewPrivacyImpactOutput
    PreviewPrivacyImpactParametersInput.add_member(:differential_privacy, Types::PreviewPrivacyImpactParametersInput::DifferentialPrivacy, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyPreviewParametersInput, location_name: 'differentialPrivacy', traits: {"smithy.api#documentation" => "<p>An array that specifies the epsilon and noise parameters.</p>"}))
    PreviewPrivacyImpactParametersInput.add_member(:unknown, Types::PreviewPrivacyImpactParametersInput::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PreviewPrivacyImpactParametersInput.type = Types::PreviewPrivacyImpactParametersInput
    PrivacyBudget.add_member(:differential_privacy, Types::PrivacyBudget::DifferentialPrivacy, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyPrivacyBudget, location_name: 'differentialPrivacy', traits: {"smithy.api#documentation" => "<p>An object that specifies the epsilon parameter and the utility in terms of total aggregations, as well as the remaining aggregations available.</p>"}))
    PrivacyBudget.add_member(:unknown, Types::PrivacyBudget::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PrivacyBudget.type = Types::PrivacyBudget
    PrivacyBudgetSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the privacy budget.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:privacy_budget_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, location_name: 'privacyBudgetTemplateId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:privacy_budget_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateArn, location_name: 'privacyBudgetTemplateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The identifier for a membership resource.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the member who created the privacy budget summary.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the collaboration that contains this privacy budget.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the collaboration that contains this privacy budget.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies the type of the privacy budget.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the privacy budget was created.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the privacy budget was updated.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:budget, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudget, location_name: 'budget', traits: {"smithy.api#documentation" => "<p>The provided privacy budget.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetSummary.type = Types::PrivacyBudgetSummary
    PrivacyBudgetSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetSummary)
    PrivacyBudgetTemplate.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The identifier for a membership resource.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the member who created the privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique ID of the collaboration that contains this privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the collaboration that contains this privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the privacy budget template was created.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the privacy budget template was updated.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:privacy_budget_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetType, location_name: 'privacyBudgetType', traits: {"smithy.api#documentation" => "<p>Specifies the type of the privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:auto_refresh, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateAutoRefresh, location_name: 'autoRefresh', traits: {"smithy.api#documentation" => "<p>How often the privacy budget refreshes.</p> <important> <p>If you plan to regularly bring new data into the collaboration, use <code>CALENDAR_MONTH</code> to automatically get a new privacy budget for the collaboration every calendar month. Choosing this option allows arbitrary amounts of information to be revealed about rows of the data when repeatedly queried across refreshes. Avoid choosing this if the same rows will be repeatedly queried between privacy budget refreshes.</p> </important>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateParametersOutput, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>Specifies the epsilon and noise parameters for the privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplate.type = Types::PrivacyBudgetTemplate
    PrivacyBudgetTemplateAutoRefresh.add_member(:calendar_month, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALENDAR_MONTH', traits: {"smithy.api#enumValue" => "CALENDAR_MONTH"}))
    PrivacyBudgetTemplateAutoRefresh.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    PrivacyBudgetTemplateParametersInput.add_member(:differential_privacy, Types::PrivacyBudgetTemplateParametersInput::DifferentialPrivacy, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyTemplateParametersInput, location_name: 'differentialPrivacy', traits: {"smithy.api#documentation" => "<p>An object that specifies the epsilon and noise parameters.</p>"}))
    PrivacyBudgetTemplateParametersInput.add_member(:unknown, Types::PrivacyBudgetTemplateParametersInput::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PrivacyBudgetTemplateParametersInput.type = Types::PrivacyBudgetTemplateParametersInput
    PrivacyBudgetTemplateParametersOutput.add_member(:differential_privacy, Types::PrivacyBudgetTemplateParametersOutput::DifferentialPrivacy, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyTemplateParametersOutput, location_name: 'differentialPrivacy', traits: {"smithy.api#documentation" => "<p>The epsilon and noise parameters.</p>"}))
    PrivacyBudgetTemplateParametersOutput.add_member(:unknown, Types::PrivacyBudgetTemplateParametersOutput::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PrivacyBudgetTemplateParametersOutput.type = Types::PrivacyBudgetTemplateParametersOutput
    PrivacyBudgetTemplateSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The identifier for a membership resource.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the member who created the privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique ID of the collaboration that contains this privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the collaboration that contains this privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:privacy_budget_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetType, location_name: 'privacyBudgetType', traits: {"smithy.api#documentation" => "<p>The type of the privacy budget template.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the privacy budget template was created.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the privacy budget template was updated.</p>", "smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.type = Types::PrivacyBudgetTemplateSummary
    PrivacyBudgetTemplateSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateSummary)
    PrivacyBudgetTemplateUpdateParameters.add_member(:differential_privacy, Types::PrivacyBudgetTemplateUpdateParameters::DifferentialPrivacy, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyTemplateUpdateParameters, location_name: 'differentialPrivacy', traits: {"smithy.api#documentation" => "<p>An object that specifies the new values for the epsilon and noise parameters.</p>"}))
    PrivacyBudgetTemplateUpdateParameters.add_member(:unknown, Types::PrivacyBudgetTemplateUpdateParameters::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PrivacyBudgetTemplateUpdateParameters.type = Types::PrivacyBudgetTemplateUpdateParameters
    PrivacyBudgetType.add_member(:differential_privacy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIFFERENTIAL_PRIVACY', traits: {"smithy.api#enumValue" => "DIFFERENTIAL_PRIVACY"}))
    PrivacyImpact.add_member(:differential_privacy, Types::PrivacyImpact::DifferentialPrivacy, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyPrivacyImpact, location_name: 'differentialPrivacy', traits: {"smithy.api#documentation" => "<p>An object that lists the number and type of aggregation functions you can perform.</p>"}))
    PrivacyImpact.add_member(:unknown, Types::PrivacyImpact::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PrivacyImpact.type = Types::PrivacyImpact
    ProtectedJob.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for a protected job instance.</p>", "smithy.api#required" => {}}))
    ProtectedJob.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>he identifier for the membership.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ProtectedJob.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The ARN of the membership.</p>", "smithy.api#required" => {}}))
    ProtectedJob.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p> The creation time of the protected job.</p>", "smithy.api#required" => {}}))
    ProtectedJob.add_member(:job_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobParameters, location_name: 'jobParameters', traits: {"smithy.api#documentation" => "<p> The job parameters for the protected job.</p>"}))
    ProtectedJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of the protected job.</p>", "smithy.api#required" => {}}))
    ProtectedJob.add_member(:result_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobResultConfigurationOutput, location_name: 'resultConfiguration', traits: {"smithy.api#documentation" => "<p>Contains any details needed to write the job results.</p>"}))
    ProtectedJob.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobStatistics, location_name: 'statistics', traits: {"smithy.api#documentation" => "<p> The statistics of the protected job.</p>"}))
    ProtectedJob.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p> The result of the protected job.</p>"}))
    ProtectedJob.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobError, location_name: 'error', traits: {"smithy.api#documentation" => "<p> The error from the protected job.</p>"}))
    ProtectedJob.type = Types::ProtectedJob
    ProtectedJobAnalysisType.add_member(:direct_analysis, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT_ANALYSIS', traits: {"smithy.api#enumValue" => "DIRECT_ANALYSIS"}))
    ProtectedJobConfigurationDetails.add_member(:direct_analysis_configuration_details, Types::ProtectedJobConfigurationDetails::DirectAnalysisConfigurationDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobDirectAnalysisConfigurationDetails, location_name: 'directAnalysisConfigurationDetails', traits: {"smithy.api#documentation" => "<p>The details needed to configure the direct analysis.</p>"}))
    ProtectedJobConfigurationDetails.add_member(:unknown, Types::ProtectedJobConfigurationDetails::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedJobConfigurationDetails.type = Types::ProtectedJobConfigurationDetails
    ProtectedJobDirectAnalysisConfigurationDetails.add_member(:receiver_account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobReceiverAccountIds, location_name: 'receiverAccountIds', traits: {"smithy.api#documentation" => "<p> The receiver account IDs.</p>"}))
    ProtectedJobDirectAnalysisConfigurationDetails.type = Types::ProtectedJobDirectAnalysisConfigurationDetails
    ProtectedJobError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p> The message for the protected job error.</p>", "smithy.api#required" => {}}))
    ProtectedJobError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'code', traits: {"smithy.api#documentation" => "<p> The error code for the protected job.</p>", "smithy.api#required" => {}}))
    ProtectedJobError.type = Types::ProtectedJobError
    ProtectedJobMemberOutputConfigurationInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p> The account ID.</p>", "smithy.api#required" => {}}))
    ProtectedJobMemberOutputConfigurationInput.type = Types::ProtectedJobMemberOutputConfigurationInput
    ProtectedJobMemberOutputConfigurationOutput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p> The account ID.</p>", "smithy.api#required" => {}}))
    ProtectedJobMemberOutputConfigurationOutput.type = Types::ProtectedJobMemberOutputConfigurationOutput
    ProtectedJobMemberOutputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobSingleMemberOutput)
    ProtectedJobOutput.add_member(:s3, Types::ProtectedJobOutput::S3, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobS3Output, location_name: 's3', traits: {"smithy.api#documentation" => "<p>If present, the output for a protected job with an `S3` output type.</p>"}))
    ProtectedJobOutput.add_member(:member_list, Types::ProtectedJobOutput::MemberList, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobMemberOutputList, location_name: 'memberList', traits: {"smithy.api#documentation" => "<p>The list of member Amazon Web Services account(s) that received the results of the job. </p>"}))
    ProtectedJobOutput.add_member(:unknown, Types::ProtectedJobOutput::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedJobOutput.type = Types::ProtectedJobOutput
    ProtectedJobOutputConfigurationInput.add_member(:member, Types::ProtectedJobOutputConfigurationInput::Member, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobMemberOutputConfigurationInput, location_name: 'member', traits: {"smithy.api#documentation" => "<p> The member of the protected job output configuration input.</p>"}))
    ProtectedJobOutputConfigurationInput.add_member(:unknown, Types::ProtectedJobOutputConfigurationInput::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedJobOutputConfigurationInput.type = Types::ProtectedJobOutputConfigurationInput
    ProtectedJobOutputConfigurationOutput.add_member(:s3, Types::ProtectedJobOutputConfigurationOutput::S3, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobS3OutputConfigurationOutput, location_name: 's3', traits: {"smithy.api#documentation" => "<p>If present, the output for a protected job with an `S3` output type.</p>"}))
    ProtectedJobOutputConfigurationOutput.add_member(:member, Types::ProtectedJobOutputConfigurationOutput::Member, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobMemberOutputConfigurationOutput, location_name: 'member', traits: {"smithy.api#documentation" => "<p> The member output configuration for a protected job.</p>"}))
    ProtectedJobOutputConfigurationOutput.add_member(:unknown, Types::ProtectedJobOutputConfigurationOutput::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedJobOutputConfigurationOutput.type = Types::ProtectedJobOutputConfigurationOutput
    ProtectedJobParameters.add_member(:analysis_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArn, location_name: 'analysisTemplateArn', traits: {"smithy.api#documentation" => "<p> The ARN of the analysis template.</p>"}))
    ProtectedJobParameters.type = Types::ProtectedJobParameters
    ProtectedJobReceiverAccountIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    ProtectedJobReceiverConfiguration.add_member(:analysis_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobAnalysisType, location_name: 'analysisType', traits: {"smithy.api#documentation" => "<p> The analysis type for the protected job receiver configuration.</p>", "smithy.api#required" => {}}))
    ProtectedJobReceiverConfiguration.add_member(:configuration_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobConfigurationDetails, location_name: 'configurationDetails', traits: {"smithy.api#documentation" => "<p> The configuration details for the protected job receiver.</p>"}))
    ProtectedJobReceiverConfiguration.type = Types::ProtectedJobReceiverConfiguration
    ProtectedJobReceiverConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobReceiverConfiguration)
    ProtectedJobResult.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobOutput, location_name: 'output', traits: {"smithy.api#documentation" => "<p> The output of the protected job.</p>", "smithy.api#required" => {}}))
    ProtectedJobResult.type = Types::ProtectedJobResult
    ProtectedJobResultConfigurationInput.add_member(:output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobOutputConfigurationInput, location_name: 'outputConfiguration', traits: {"smithy.api#documentation" => "<p> The output configuration for a protected job result.</p>", "smithy.api#required" => {}}))
    ProtectedJobResultConfigurationInput.type = Types::ProtectedJobResultConfigurationInput
    ProtectedJobResultConfigurationOutput.add_member(:output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobOutputConfigurationOutput, location_name: 'outputConfiguration', traits: {"smithy.api#documentation" => "<p>The output configuration.</p>", "smithy.api#required" => {}}))
    ProtectedJobResultConfigurationOutput.type = Types::ProtectedJobResultConfigurationOutput
    ProtectedJobS3Output.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'location', traits: {"smithy.api#documentation" => "<p> The S3 location for the protected job output.</p>", "smithy.api#required" => {}}))
    ProtectedJobS3Output.type = Types::ProtectedJobS3Output
    ProtectedJobS3OutputConfigurationInput.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p> The S3 bucket for job output.</p>", "smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)", "smithy.api#required" => {}}))
    ProtectedJobS3OutputConfigurationInput.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPrefix, location_name: 'keyPrefix', traits: {"smithy.api#documentation" => "<p>The S3 prefix to unload the protected job results.</p>"}))
    ProtectedJobS3OutputConfigurationInput.type = Types::ProtectedJobS3OutputConfigurationInput
    ProtectedJobS3OutputConfigurationOutput.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p> The S3 bucket for job output.</p>", "smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)", "smithy.api#required" => {}}))
    ProtectedJobS3OutputConfigurationOutput.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPrefix, location_name: 'keyPrefix', traits: {"smithy.api#documentation" => "<p>The S3 prefix to unload the protected job results.</p>"}))
    ProtectedJobS3OutputConfigurationOutput.type = Types::ProtectedJobS3OutputConfigurationOutput
    ProtectedJobSingleMemberOutput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the member in the collaboration who can receive results from analyses.</p>", "smithy.api#required" => {}}))
    ProtectedJobSingleMemberOutput.type = Types::ProtectedJobSingleMemberOutput
    ProtectedJobStatistics.add_member(:total_duration_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'totalDurationInMillis', traits: {"smithy.api#documentation" => "<p>The duration of the protected job, from creation until job completion, in milliseconds.</p>"}))
    ProtectedJobStatistics.add_member(:billed_resource_utilization, Smithy::Schema::Shapes::ShapeRef.new(shape: BilledJobResourceUtilization, location_name: 'billedResourceUtilization', traits: {"smithy.api#documentation" => "<p> The billed resource utilization for the protected job.</p>"}))
    ProtectedJobStatistics.type = Types::ProtectedJobStatistics
    ProtectedJobStatus.add_member(:submitted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBMITTED', traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    ProtectedJobStatus.add_member(:started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTED', traits: {"smithy.api#enumValue" => "STARTED"}))
    ProtectedJobStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ProtectedJobStatus.add_member(:cancelling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "CANCELLING"}))
    ProtectedJobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ProtectedJobStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ProtectedJobSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The ID of the protected job.</p>", "smithy.api#required" => {}}))
    ProtectedJobSummary.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The unique ID for the membership that initiated the protected job.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ProtectedJobSummary.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the membership that initiated the protected job.</p>", "smithy.api#required" => {}}))
    ProtectedJobSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time the protected job was created.</p>", "smithy.api#required" => {}}))
    ProtectedJobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the protected job.</p>", "smithy.api#required" => {}}))
    ProtectedJobSummary.add_member(:receiver_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobReceiverConfigurations, location_name: 'receiverConfigurations', traits: {"smithy.api#default" => [], "smithy.api#documentation" => "<p> The receiver configurations for the protected job.</p>", "smithy.api#required" => {}}))
    ProtectedJobSummary.type = Types::ProtectedJobSummary
    ProtectedJobSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobSummary)
    ProtectedJobType.add_member(:pyspark, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PYSPARK', traits: {"smithy.api#enumValue" => "PYSPARK"}))
    ProtectedQuery.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for a protected query instance.</p>", "smithy.api#required" => {}}))
    ProtectedQuery.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The identifier for the membership.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ProtectedQuery.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The ARN of the membership.</p>", "smithy.api#required" => {}}))
    ProtectedQuery.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the protected query was created.</p>", "smithy.api#required" => {}}))
    ProtectedQuery.add_member(:sql_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQuerySQLParameters, location_name: 'sqlParameters', traits: {"smithy.api#documentation" => "<p>The protected query SQL parameters.</p>"}))
    ProtectedQuery.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the query.</p>", "smithy.api#required" => {}}))
    ProtectedQuery.add_member(:result_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryResultConfiguration, location_name: 'resultConfiguration', traits: {"smithy.api#documentation" => "<p>Contains any details needed to write the query results.</p>"}))
    ProtectedQuery.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryStatistics, location_name: 'statistics', traits: {"smithy.api#documentation" => "<p>Statistics about protected query execution.</p>"}))
    ProtectedQuery.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The result of the protected query.</p>"}))
    ProtectedQuery.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>An error thrown by the protected query.</p>"}))
    ProtectedQuery.add_member(:differential_privacy, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferentialPrivacyParameters, location_name: 'differentialPrivacy', traits: {"smithy.api#documentation" => "<p>The sensitivity parameters of the differential privacy results of the protected query.</p>"}))
    ProtectedQuery.add_member(:compute_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeConfiguration, location_name: 'computeConfiguration', traits: {"smithy.api#documentation" => "<p> The compute configuration for the protected query.</p>"}))
    ProtectedQuery.type = Types::ProtectedQuery
    ProtectedQueryDistributeOutput.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryS3Output, location_name: 's3'))
    ProtectedQueryDistributeOutput.add_member(:member_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryMemberOutputList, location_name: 'memberList', traits: {"smithy.api#documentation" => "<p> Contains the output results for each member location specified in the distribute output configuration. Each entry provides details about the result distribution to a specific collaboration member. </p>"}))
    ProtectedQueryDistributeOutput.type = Types::ProtectedQueryDistributeOutput
    ProtectedQueryDistributeOutputConfiguration.add_member(:locations, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryDistributeOutputConfigurationLocations, location_name: 'locations', traits: {"smithy.api#documentation" => "<p> A list of locations where you want to distribute the protected query results. Each location must specify either an S3 destination or a collaboration member destination.</p> <important> <p>You can't specify more than one S3 location.</p> <p>You can't specify the query runner's account as a member location.</p> <p>You must include either an S3 or member output configuration for each location, but not both.</p> </important>", "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    ProtectedQueryDistributeOutputConfiguration.type = Types::ProtectedQueryDistributeOutputConfiguration
    ProtectedQueryDistributeOutputConfigurationLocation.add_member(:s3, Types::ProtectedQueryDistributeOutputConfigurationLocation::S3, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryS3OutputConfiguration, location_name: 's3'))
    ProtectedQueryDistributeOutputConfigurationLocation.add_member(:member, Types::ProtectedQueryDistributeOutputConfigurationLocation::Member, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryMemberOutputConfiguration, location_name: 'member'))
    ProtectedQueryDistributeOutputConfigurationLocation.add_member(:unknown, Types::ProtectedQueryDistributeOutputConfigurationLocation::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedQueryDistributeOutputConfigurationLocation.type = Types::ProtectedQueryDistributeOutputConfigurationLocation
    ProtectedQueryDistributeOutputConfigurationLocations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryDistributeOutputConfigurationLocation)
    ProtectedQueryError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of why the query failed.</p>", "smithy.api#required" => {}}))
    ProtectedQueryError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>An error code for the error.</p>", "smithy.api#required" => {}}))
    ProtectedQueryError.type = Types::ProtectedQueryError
    ProtectedQueryMemberOutputConfiguration.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the account.</p>", "smithy.api#required" => {}}))
    ProtectedQueryMemberOutputConfiguration.type = Types::ProtectedQueryMemberOutputConfiguration
    ProtectedQueryMemberOutputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQuerySingleMemberOutput)
    ProtectedQueryOutput.add_member(:s3, Types::ProtectedQueryOutput::S3, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryS3Output, location_name: 's3', traits: {"smithy.api#documentation" => "<p>If present, the output for a protected query with an <code>S3</code> output type.</p>"}))
    ProtectedQueryOutput.add_member(:member_list, Types::ProtectedQueryOutput::MemberList, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryMemberOutputList, location_name: 'memberList', traits: {"smithy.api#documentation" => "<p>The list of member Amazon Web Services account(s) that received the results of the query. </p>"}))
    ProtectedQueryOutput.add_member(:distribute, Types::ProtectedQueryOutput::Distribute, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryDistributeOutput, location_name: 'distribute', traits: {"smithy.api#documentation" => "<p>Contains output information for protected queries that use a <code>distribute</code> output type. This output type lets you send query results to multiple locations - either to S3 or to collaboration members. </p> <note> <p> You can only use the <code>distribute</code> output type with the Spark analytics engine. </p> </note>"}))
    ProtectedQueryOutput.add_member(:unknown, Types::ProtectedQueryOutput::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedQueryOutput.type = Types::ProtectedQueryOutput
    ProtectedQueryOutputConfiguration.add_member(:s3, Types::ProtectedQueryOutputConfiguration::S3, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryS3OutputConfiguration, location_name: 's3', traits: {"smithy.api#documentation" => "<p>Required configuration for a protected query with an <code>s3</code> output type.</p>"}))
    ProtectedQueryOutputConfiguration.add_member(:member, Types::ProtectedQueryOutputConfiguration::Member, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryMemberOutputConfiguration, location_name: 'member', traits: {"smithy.api#documentation" => "<p> Required configuration for a protected query with a <code>member</code> output type.</p>"}))
    ProtectedQueryOutputConfiguration.add_member(:distribute, Types::ProtectedQueryOutputConfiguration::Distribute, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryDistributeOutputConfiguration, location_name: 'distribute', traits: {"smithy.api#documentation" => "<p> Required configuration for a protected query with a <code>distribute</code> output type.</p>"}))
    ProtectedQueryOutputConfiguration.add_member(:unknown, Types::ProtectedQueryOutputConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedQueryOutputConfiguration.type = Types::ProtectedQueryOutputConfiguration
    ProtectedQueryResult.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryOutput, location_name: 'output', traits: {"smithy.api#documentation" => "<p>The output of the protected query.</p>", "smithy.api#required" => {}}))
    ProtectedQueryResult.type = Types::ProtectedQueryResult
    ProtectedQueryResultConfiguration.add_member(:output_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryOutputConfiguration, location_name: 'outputConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for protected query results.</p>", "smithy.api#required" => {}}))
    ProtectedQueryResultConfiguration.type = Types::ProtectedQueryResultConfiguration
    ProtectedQueryS3Output.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The S3 location of the result.</p>", "smithy.api#required" => {}}))
    ProtectedQueryS3Output.type = Types::ProtectedQueryS3Output
    ProtectedQueryS3OutputConfiguration.add_member(:result_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultFormat, location_name: 'resultFormat', traits: {"smithy.api#documentation" => "<p>Intended file format of the result.</p>", "smithy.api#required" => {}}))
    ProtectedQueryS3OutputConfiguration.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The S3 bucket to unload the protected query results.</p>", "smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)", "smithy.api#required" => {}}))
    ProtectedQueryS3OutputConfiguration.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPrefix, location_name: 'keyPrefix', traits: {"smithy.api#documentation" => "<p>The S3 prefix to unload the protected query results.</p>"}))
    ProtectedQueryS3OutputConfiguration.add_member(:single_file_output, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'singleFileOutput', traits: {"smithy.api#documentation" => "<p>Indicates whether files should be output as a single file (<code>TRUE</code>) or output as multiple files (<code>FALSE</code>). This parameter is only supported for analyses with the Spark analytics engine.</p>"}))
    ProtectedQueryS3OutputConfiguration.type = Types::ProtectedQueryS3OutputConfiguration
    ProtectedQuerySQLParameters.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'queryString', traits: {"smithy.api#documentation" => "<p>The query string to be submitted.</p>", "smithy.api#length" => {"max" => 500000}}))
    ProtectedQuerySQLParameters.add_member(:analysis_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateArn, location_name: 'analysisTemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with the analysis template within a collaboration.</p>"}))
    ProtectedQuerySQLParameters.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMap, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The protected query SQL parameters.</p>"}))
    ProtectedQuerySQLParameters.type = Types::ProtectedQuerySQLParameters
    ProtectedQuerySingleMemberOutput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the member in the collaboration who can receive results for the query.</p>", "smithy.api#required" => {}}))
    ProtectedQuerySingleMemberOutput.type = Types::ProtectedQuerySingleMemberOutput
    ProtectedQueryStatistics.add_member(:total_duration_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'totalDurationInMillis', traits: {"smithy.api#documentation" => "<p>The duration of the protected query, from creation until query completion, in milliseconds.</p>"}))
    ProtectedQueryStatistics.add_member(:billed_resource_utilization, Smithy::Schema::Shapes::ShapeRef.new(shape: BilledResourceUtilization, location_name: 'billedResourceUtilization', traits: {"smithy.api#documentation" => "<p> The billed resource utilization.</p>"}))
    ProtectedQueryStatistics.type = Types::ProtectedQueryStatistics
    ProtectedQuerySummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the protected query.</p>", "smithy.api#required" => {}}))
    ProtectedQuerySummary.add_member(:membership_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'membershipId', traits: {"smithy.api#documentation" => "<p>The unique ID for the membership that initiated the protected query.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ProtectedQuerySummary.add_member(:membership_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipArn, location_name: 'membershipArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the membership that initiated the protected query.</p>", "smithy.api#required" => {}}))
    ProtectedQuerySummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time the protected query was created.</p>", "smithy.api#required" => {}}))
    ProtectedQuerySummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the protected query.</p>", "smithy.api#required" => {}}))
    ProtectedQuerySummary.add_member(:receiver_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiverConfigurationsList, location_name: 'receiverConfigurations', traits: {"smithy.api#default" => [], "smithy.api#documentation" => "<p> The receiver configuration.</p>", "smithy.api#required" => {}}))
    ProtectedQuerySummary.type = Types::ProtectedQuerySummary
    ProtectedQuerySummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQuerySummary)
    QueryComputePaymentConfig.add_member(:is_responsible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isResponsible', traits: {"smithy.api#documentation" => "<p>Indicates whether the collaboration creator has configured the collaboration member to pay for query compute costs (<code>TRUE</code>) or has not configured the collaboration member to pay for query compute costs (<code>FALSE</code>).</p> <p>Exactly one member can be configured to pay for query compute costs. An error is returned if the collaboration creator sets a <code>TRUE</code> value for more than one member in the collaboration. </p> <p>If the collaboration creator hasn't specified anyone as the member paying for query compute costs, then the member who can query is the default payer. An error is returned if the collaboration creator sets a <code>FALSE</code> value for the member who can query.</p>", "smithy.api#required" => {}}))
    QueryComputePaymentConfig.type = Types::QueryComputePaymentConfig
    QueryConstraint.add_member(:require_overlap, Types::QueryConstraint::RequireOverlap, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryConstraintRequireOverlap, location_name: 'requireOverlap', traits: {"smithy.api#documentation" => "<p>An array of column names that specifies which columns are required in the JOIN statement.</p>"}))
    QueryConstraint.add_member(:unknown, Types::QueryConstraint::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    QueryConstraint.type = Types::QueryConstraint
    QueryConstraintList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryConstraint)
    QueryConstraintRequireOverlap.add_member(:columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: 'columns', traits: {"smithy.api#documentation" => "<p>The columns that are required to overlap.</p>"}))
    QueryConstraintRequireOverlap.type = Types::QueryConstraintRequireOverlap
    QueryTables.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlias)
    ReceiverAccountIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    ReceiverConfiguration.add_member(:analysis_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisType, location_name: 'analysisType', traits: {"smithy.api#documentation" => "<p> The type of analysis for the protected query. The results of the query can be analyzed directly (<code>DIRECT_ANALYSIS</code>) or used as input into additional analyses (<code>ADDITIONAL_ANALYSIS</code>), such as a query that is a seed for a lookalike ML model.</p>", "smithy.api#required" => {}}))
    ReceiverConfiguration.add_member(:configuration_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationDetails, location_name: 'configurationDetails', traits: {"smithy.api#documentation" => "<p> The configuration details of the receiver configuration.</p>"}))
    ReceiverConfiguration.type = Types::ReceiverConfiguration
    ReceiverConfigurationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiverConfiguration)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The Id of the missing resource.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the missing resource.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Location.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p> The bucket name.</p>", "smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)", "smithy.api#required" => {}}))
    S3Location.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'key', traits: {"smithy.api#documentation" => "<p> The object key.</p>", "smithy.api#pattern" => "^[a-zA-Z0-9!_.*'()-/]+$", "smithy.api#required" => {}}))
    S3Location.type = Types::S3Location
    ScalarFunctionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScalarFunctions)
    Schema.add_member(:columns, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnList, location_name: 'columns', traits: {"smithy.api#documentation" => "<p>The columns for the relation that this schema represents.</p>", "smithy.api#required" => {}}))
    Schema.add_member(:partition_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnList, location_name: 'partitionKeys', traits: {"smithy.api#documentation" => "<p>The partition keys for the dataset underlying this schema.</p>", "smithy.api#required" => {}}))
    Schema.add_member(:analysis_rule_types, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleTypeList, location_name: 'analysisRuleTypes', traits: {"smithy.api#documentation" => "<p>The analysis rule types that are associated with the schema. Currently, only one entry is present.</p>", "smithy.api#required" => {}}))
    Schema.add_member(:analysis_method, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisMethod, location_name: 'analysisMethod', traits: {"smithy.api#documentation" => "<p>The analysis method for the schema. </p> <p> <code>DIRECT_QUERY</code> allows SQL queries to be run directly on this table.</p> <p> <code>DIRECT_JOB</code> allows PySpark jobs to be run directly on this table.</p> <p> <code>MULTIPLE</code> allows both SQL queries and PySpark jobs to be run directly on this table.</p>"}))
    Schema.add_member(:selected_analysis_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedAnalysisMethods, location_name: 'selectedAnalysisMethods', traits: {"smithy.api#documentation" => "<p> The selected analysis methods for the schema.</p>"}))
    Schema.add_member(:creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#documentation" => "<p>The unique account ID for the Amazon Web Services account that owns the schema.</p>", "smithy.api#required" => {}}))
    Schema.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the schema. The schema relation is referred to by this name when queried by a protected query.</p>", "smithy.api#required" => {}}))
    Schema.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique ID for the collaboration that the schema belongs to.</p>", "smithy.api#required" => {}}))
    Schema.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) for the collaboration that the schema belongs to.</p>", "smithy.api#required" => {}}))
    Schema.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TableDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the schema.</p>", "smithy.api#required" => {}}))
    Schema.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the schema was created.</p>", "smithy.api#required" => {}}))
    Schema.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The most recent time at which the schema was updated.</p>", "smithy.api#required" => {}}))
    Schema.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of schema.</p>", "smithy.api#required" => {}}))
    Schema.add_member(:schema_status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaStatusDetailList, location_name: 'schemaStatusDetails', traits: {"smithy.api#default" => [], "smithy.api#documentation" => "<p>Details about the status of the schema. Currently, only one entry is present.</p>", "smithy.api#required" => {}}))
    Schema.add_member(:schema_type_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaTypeProperties, location_name: 'schemaTypeProperties', traits: {"smithy.api#documentation" => "<p>The schema type properties.</p>"}))
    Schema.type = Types::Schema
    SchemaAnalysisRuleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRule)
    SchemaAnalysisRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the analysis rule schema that you are requesting.</p>", "smithy.api#required" => {}}))
    SchemaAnalysisRuleRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of analysis rule schema that you are requesting.</p>", "smithy.api#required" => {}}))
    SchemaAnalysisRuleRequest.type = Types::SchemaAnalysisRuleRequest
    SchemaAnalysisRuleRequestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaAnalysisRuleRequest)
    SchemaConfiguration.add_member(:differential_privacy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIFFERENTIAL_PRIVACY', traits: {"smithy.api#enumValue" => "DIFFERENTIAL_PRIVACY"}))
    SchemaConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaConfiguration)
    SchemaList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Schema)
    SchemaStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    SchemaStatus.add_member(:not_ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_READY', traits: {"smithy.api#enumValue" => "NOT_READY"}))
    SchemaStatusDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the schema, indicating if it is ready to query.</p>", "smithy.api#required" => {}}))
    SchemaStatusDetail.add_member(:reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaStatusReasonList, location_name: 'reasons', traits: {"smithy.api#documentation" => "<p>The reasons why the schema status is set to its current state.</p>"}))
    SchemaStatusDetail.add_member(:analysis_rule_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleType, location_name: 'analysisRuleType', traits: {"smithy.api#documentation" => "<p>The analysis rule type for which the schema status has been evaluated.</p>"}))
    SchemaStatusDetail.add_member(:configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaConfigurationList, location_name: 'configurations', traits: {"smithy.api#documentation" => "<p>The configuration details of the schema analysis rule for the given type.</p>"}))
    SchemaStatusDetail.add_member(:analysis_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisType, location_name: 'analysisType', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The type of analysis that can be performed on the schema.</p> <p>A schema can have an <code>analysisType</code> of <code>DIRECT_ANALYSIS</code>, <code>ADDITIONAL_ANALYSIS_FOR_AUDIENCE_GENERATION</code>, or both.</p>", "smithy.api#required" => {}}))
    SchemaStatusDetail.type = Types::SchemaStatusDetail
    SchemaStatusDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaStatusDetail)
    SchemaStatusReason.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaStatusReasonCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The schema status reason code.</p>", "smithy.api#required" => {}}))
    SchemaStatusReason.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>An explanation of the schema status reason code.</p>", "smithy.api#required" => {}}))
    SchemaStatusReason.type = Types::SchemaStatusReason
    SchemaStatusReasonCode.add_member(:analysis_rule_missing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANALYSIS_RULE_MISSING', traits: {"smithy.api#enumValue" => "ANALYSIS_RULE_MISSING"}))
    SchemaStatusReasonCode.add_member(:analysis_templates_not_configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANALYSIS_TEMPLATES_NOT_CONFIGURED', traits: {"smithy.api#enumValue" => "ANALYSIS_TEMPLATES_NOT_CONFIGURED"}))
    SchemaStatusReasonCode.add_member(:analysis_providers_not_configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANALYSIS_PROVIDERS_NOT_CONFIGURED', traits: {"smithy.api#enumValue" => "ANALYSIS_PROVIDERS_NOT_CONFIGURED"}))
    SchemaStatusReasonCode.add_member(:differential_privacy_policy_not_configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIFFERENTIAL_PRIVACY_POLICY_NOT_CONFIGURED', traits: {"smithy.api#enumValue" => "DIFFERENTIAL_PRIVACY_POLICY_NOT_CONFIGURED"}))
    SchemaStatusReasonCode.add_member(:id_mapping_table_not_populated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ID_MAPPING_TABLE_NOT_POPULATED', traits: {"smithy.api#enumValue" => "ID_MAPPING_TABLE_NOT_POPULATED"}))
    SchemaStatusReasonCode.add_member(:collaboration_analysis_rule_not_configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COLLABORATION_ANALYSIS_RULE_NOT_CONFIGURED', traits: {"smithy.api#enumValue" => "COLLABORATION_ANALYSIS_RULE_NOT_CONFIGURED"}))
    SchemaStatusReasonCode.add_member(:additional_analyses_not_configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDITIONAL_ANALYSES_NOT_CONFIGURED', traits: {"smithy.api#enumValue" => "ADDITIONAL_ANALYSES_NOT_CONFIGURED"}))
    SchemaStatusReasonCode.add_member(:result_receivers_not_configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESULT_RECEIVERS_NOT_CONFIGURED', traits: {"smithy.api#enumValue" => "RESULT_RECEIVERS_NOT_CONFIGURED"}))
    SchemaStatusReasonCode.add_member(:additional_analyses_not_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDITIONAL_ANALYSES_NOT_ALLOWED', traits: {"smithy.api#enumValue" => "ADDITIONAL_ANALYSES_NOT_ALLOWED"}))
    SchemaStatusReasonCode.add_member(:result_receivers_not_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESULT_RECEIVERS_NOT_ALLOWED', traits: {"smithy.api#enumValue" => "RESULT_RECEIVERS_NOT_ALLOWED"}))
    SchemaStatusReasonCode.add_member(:analysis_rule_types_not_compatible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANALYSIS_RULE_TYPES_NOT_COMPATIBLE', traits: {"smithy.api#enumValue" => "ANALYSIS_RULE_TYPES_NOT_COMPATIBLE"}))
    SchemaStatusReasonList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaStatusReason)
    SchemaSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlias, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the schema object.</p>", "smithy.api#required" => {}}))
    SchemaSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of schema object.</p>", "smithy.api#required" => {}}))
    SchemaSummary.add_member(:creator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'creatorAccountId', traits: {"smithy.api#documentation" => "<p>The unique account ID for the Amazon Web Services account that owns the schema.</p>", "smithy.api#required" => {}}))
    SchemaSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time the schema object was created.</p>", "smithy.api#required" => {}}))
    SchemaSummary.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time the schema object was last updated.</p>", "smithy.api#required" => {}}))
    SchemaSummary.add_member(:collaboration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'collaborationId', traits: {"smithy.api#documentation" => "<p>The unique ID for the collaboration that the schema belongs to.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    SchemaSummary.add_member(:collaboration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationArn, location_name: 'collaborationArn', traits: {"smithy.api#documentation" => "<p>The unique ARN for the collaboration that the schema belongs to.</p>", "smithy.api#required" => {}}))
    SchemaSummary.add_member(:analysis_rule_types, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleTypeList, location_name: 'analysisRuleTypes', traits: {"smithy.api#documentation" => "<p>The types of analysis rules that are associated with this schema object.</p>", "smithy.api#required" => {}}))
    SchemaSummary.add_member(:analysis_method, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisMethod, location_name: 'analysisMethod', traits: {"smithy.api#documentation" => "<p>The analysis method for the associated schema.</p> <p> <code>DIRECT_QUERY</code> allows SQL queries to be run directly on this table.</p> <p> <code>DIRECT_JOB</code> allows PySpark jobs to be run directly on this table.</p> <p> <code>MULTIPLE</code> allows both SQL queries and PySpark jobs to be run directly on this table.</p>"}))
    SchemaSummary.add_member(:selected_analysis_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedAnalysisMethods, location_name: 'selectedAnalysisMethods', traits: {"smithy.api#documentation" => "<p> The selected analysis methods for the schema.</p>"}))
    SchemaSummary.type = Types::SchemaSummary
    SchemaSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaSummary)
    SchemaType.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLE', traits: {"smithy.api#enumValue" => "TABLE"}))
    SchemaType.add_member(:id_mapping_table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ID_MAPPING_TABLE', traits: {"smithy.api#enumValue" => "ID_MAPPING_TABLE"}))
    SchemaTypeProperties.add_member(:id_mapping_table, Types::SchemaTypeProperties::IdMappingTable, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTableSchemaTypeProperties, location_name: 'idMappingTable', traits: {"smithy.api#documentation" => "<p>The ID mapping table for the schema type properties.</p>"}))
    SchemaTypeProperties.add_member(:unknown, Types::SchemaTypeProperties::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SchemaTypeProperties.type = Types::SchemaTypeProperties
    SelectedAnalysisMethod.add_member(:direct_query, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT_QUERY', traits: {"smithy.api#enumValue" => "DIRECT_QUERY"}))
    SelectedAnalysisMethod.add_member(:direct_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECT_JOB', traits: {"smithy.api#enumValue" => "DIRECT_JOB"}))
    SelectedAnalysisMethods.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedAnalysisMethod)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaName', traits: {"smithy.api#documentation" => "<p>The name of the quota.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'quotaValue', traits: {"smithy.api#documentation" => "<p>The value of the quota.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SnowflakeTableReference.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerArn, location_name: 'secretArn', traits: {"smithy.api#documentation" => "<p> The secret ARN of the Snowflake table reference.</p>", "smithy.api#required" => {}}))
    SnowflakeTableReference.add_member(:account_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowflakeAccountIdentifier, location_name: 'accountIdentifier', traits: {"smithy.api#documentation" => "<p> The account identifier for the Snowflake table reference.</p>", "smithy.api#required" => {}}))
    SnowflakeTableReference.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowflakeDatabaseName, location_name: 'databaseName', traits: {"smithy.api#documentation" => "<p> The name of the database the Snowflake table belongs to.</p>", "smithy.api#required" => {}}))
    SnowflakeTableReference.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowflakeTableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p> The name of the Snowflake table.</p>", "smithy.api#required" => {}}))
    SnowflakeTableReference.add_member(:schema_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowflakeSchemaName, location_name: 'schemaName', traits: {"smithy.api#documentation" => "<p> The schema name of the Snowflake table reference.</p>", "smithy.api#required" => {}}))
    SnowflakeTableReference.add_member(:table_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowflakeTableSchema, location_name: 'tableSchema', traits: {"smithy.api#documentation" => "<p> The schema of the Snowflake table.</p>", "smithy.api#required" => {}}))
    SnowflakeTableReference.type = Types::SnowflakeTableReference
    SnowflakeTableSchema.add_member(:v1, Types::SnowflakeTableSchema::V1, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowflakeTableSchemaList, location_name: 'v1', traits: {"smithy.api#documentation" => "<p> The schema of a Snowflake table.</p>"}))
    SnowflakeTableSchema.add_member(:unknown, Types::SnowflakeTableSchema::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SnowflakeTableSchema.type = Types::SnowflakeTableSchema
    SnowflakeTableSchemaList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SnowflakeTableSchemaV1)
    SnowflakeTableSchemaV1.add_member(:column_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: 'columnName', traits: {"smithy.api#documentation" => "<p> The column name.</p>", "smithy.api#required" => {}}))
    SnowflakeTableSchemaV1.add_member(:column_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnTypeString, location_name: 'columnType', traits: {"smithy.api#documentation" => "<p> The column's data type. Supported data types: <code>ARRAY</code>, <code>BIGINT</code>, <code>BOOLEAN</code>, <code>CHAR</code>, <code>DATE</code>, <code>DECIMAL</code>, <code>DOUBLE</code>, <code>DOUBLE PRECISION</code>, <code>FLOAT</code>, <code>FLOAT4</code>, <code>INT</code>, <code>INTEGER</code>, <code>MAP</code>, <code>NUMERIC</code>, <code>NUMBER</code>, <code>REAL</code>, <code>SMALLINT</code>, <code>STRING</code>, <code>TIMESTAMP</code>, <code>TIMESTAMP_LTZ</code>, <code>TIMESTAMP_NTZ</code>, <code>DATETIME</code>, <code>TINYINT</code>, <code>VARCHAR</code>, <code>TEXT</code>, <code>CHARACTER</code>.</p>", "smithy.api#required" => {}}))
    SnowflakeTableSchemaV1.type = Types::SnowflakeTableSchemaV1
    StartProtectedJobInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobType, location_name: 'type', traits: {"smithy.api#documentation" => "<p> The type of protected job to start.</p>", "smithy.api#required" => {}}))
    StartProtectedJobInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the membership to run this job against. Currently accepts a membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    StartProtectedJobInput.add_member(:job_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobParameters, location_name: 'jobParameters', traits: {"smithy.api#documentation" => "<p> The job parameters.</p>", "smithy.api#required" => {}}))
    StartProtectedJobInput.add_member(:result_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobResultConfigurationInput, location_name: 'resultConfiguration', traits: {"smithy.api#documentation" => "<p>The details needed to write the job results.</p>"}))
    StartProtectedJobInput.type = Types::StartProtectedJobInput
    StartProtectedJobOutput.add_member(:protected_job, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJob, location_name: 'protectedJob', traits: {"smithy.api#documentation" => "<p> The protected job.</p>", "smithy.api#required" => {}}))
    StartProtectedJobOutput.type = Types::StartProtectedJobOutput
    StartProtectedQueryOperationInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the protected query to be started.</p>", "smithy.api#required" => {}}))
    StartProtectedQueryOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the membership to run this query against. Currently accepts a membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    StartProtectedQueryOperationInput.add_member(:sql_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQuerySQLParameters, location_name: 'sqlParameters', traits: {"smithy.api#documentation" => "<p>The protected SQL query parameters.</p>", "smithy.api#required" => {}}))
    StartProtectedQueryOperationInput.add_member(:result_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryResultConfiguration, location_name: 'resultConfiguration', traits: {"smithy.api#documentation" => "<p>The details needed to write the query results.</p>"}))
    StartProtectedQueryOperationInput.add_member(:compute_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeConfiguration, location_name: 'computeConfiguration', traits: {"smithy.api#documentation" => "<p> The compute configuration for the protected query.</p>"}))
    StartProtectedQueryOperationInput.type = Types::StartProtectedQueryOperationInput
    StartProtectedQueryOperationOutput.add_member(:protected_query, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQuery, location_name: 'protectedQuery', traits: {"smithy.api#documentation" => "<p>The protected query.</p>", "smithy.api#required" => {}}))
    StartProtectedQueryOperationOutput.type = Types::StartProtectedQueryOperationOutput
    TableAliasList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlias)
    TableReference.add_member(:glue, Types::TableReference::Glue, Smithy::Schema::Shapes::ShapeRef.new(shape: GlueTableReference, location_name: 'glue', traits: {"smithy.api#documentation" => "<p>If present, a reference to the Glue table referred to by this table reference.</p>"}))
    TableReference.add_member(:snowflake, Types::TableReference::Snowflake, Smithy::Schema::Shapes::ShapeRef.new(shape: SnowflakeTableReference, location_name: 'snowflake', traits: {"smithy.api#documentation" => "<p> If present, a reference to the Snowflake table referred to by this table reference.</p>"}))
    TableReference.add_member(:athena, Types::TableReference::Athena, Smithy::Schema::Shapes::ShapeRef.new(shape: AthenaTableReference, location_name: 'athena', traits: {"smithy.api#documentation" => "<p> If present, a reference to the Athena table referred to by this table reference.</p>"}))
    TableReference.add_member(:unknown, Types::TableReference::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    TableReference.type = Types::TableReference
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CleanroomsArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with the resource you want to tag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of objects specifying each key name and value.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TargetProtectedJobStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CleanroomsArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with the resource you want to remove the tag from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>A list of key names of tags to be removed.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAnalysisTemplateOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a membership resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateAnalysisTemplateOperationInput.add_member(:analysis_template_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplateIdentifier, location_name: 'analysisTemplateIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for the analysis template resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AnalysisTemplateId"}))
    UpdateAnalysisTemplateOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A new description for the analysis template.</p>"}))
    UpdateAnalysisTemplateOperationInput.type = Types::UpdateAnalysisTemplateOperationInput
    UpdateAnalysisTemplateOperationOutput.add_member(:analysis_template, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTemplate, location_name: 'analysisTemplate', traits: {"smithy.api#documentation" => "<p>The analysis template.</p>", "smithy.api#required" => {}}))
    UpdateAnalysisTemplateOperationOutput.type = Types::UpdateAnalysisTemplateOperationOutput
    UpdateCollaborationOperationInput.add_member(:collaboration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationIdentifier, location_name: 'collaborationIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for the collaboration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    UpdateCollaborationOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A human-readable identifier provided by the collaboration owner. Display names are not unique.</p>"}))
    UpdateCollaborationOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: CollaborationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the collaboration.</p>"}))
    UpdateCollaborationOperationInput.add_member(:analytics_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyticsEngine, location_name: 'analyticsEngine', traits: {"smithy.api#documentation" => "<p>The analytics engine.</p> <note> <p>After July 16, 2025, the <code>CLEAN_ROOMS_SQL</code> parameter will no longer be available. </p> </note>"}))
    UpdateCollaborationOperationInput.type = Types::UpdateCollaborationOperationInput
    UpdateCollaborationOperationOutput.add_member(:collaboration, Smithy::Schema::Shapes::ShapeRef.new(shape: Collaboration, location_name: 'collaboration', traits: {"smithy.api#documentation" => "<p>The entire collaboration that has been updated.</p>", "smithy.api#required" => {}}))
    UpdateCollaborationOperationOutput.type = Types::UpdateCollaborationOperationOutput
    UpdateConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, location_name: 'configuredAudienceModelAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the configured audience model association that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredAudienceModelAssociationId"}))
    UpdateConfiguredAudienceModelAssociationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier of the membership that contains the configured audience model association that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateConfiguredAudienceModelAssociationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A new description for the configured audience model association.</p>"}))
    UpdateConfiguredAudienceModelAssociationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A new name for the configured audience model association.</p>"}))
    UpdateConfiguredAudienceModelAssociationInput.type = Types::UpdateConfiguredAudienceModelAssociationInput
    UpdateConfiguredAudienceModelAssociationOutput.add_member(:configured_audience_model_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociation, location_name: 'configuredAudienceModelAssociation', traits: {"smithy.api#documentation" => "<p>Details about the configured audience model association that you updated.</p>", "smithy.api#required" => {}}))
    UpdateConfiguredAudienceModelAssociationOutput.type = Types::UpdateConfiguredAudienceModelAssociationOutput
    UpdateConfiguredTableAnalysisRuleOperationInput.add_member(:configured_table_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, location_name: 'configuredTableIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier for the configured table that the analysis rule applies to. Currently accepts the configured table ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    UpdateConfiguredTableAnalysisRuleOperationInput.add_member(:analysis_rule_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, location_name: 'analysisRuleType', traits: {"smithy.api#documentation" => "<p>The analysis rule type to be updated. Configured table analysis rules are uniquely identified by their configured table identifier and analysis rule type.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfiguredTableAnalysisRuleOperationInput.add_member(:analysis_rule_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRulePolicy, location_name: 'analysisRulePolicy', traits: {"smithy.api#documentation" => "<p>The new analysis rule policy for the configured table analysis rule.</p>", "smithy.api#required" => {}}))
    UpdateConfiguredTableAnalysisRuleOperationInput.type = Types::UpdateConfiguredTableAnalysisRuleOperationInput
    UpdateConfiguredTableAnalysisRuleOperationOutput.add_member(:analysis_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRule, location_name: 'analysisRule', traits: {"smithy.api#documentation" => "<p>The entire updated analysis rule.</p>", "smithy.api#required" => {}}))
    UpdateConfiguredTableAnalysisRuleOperationOutput.type = Types::UpdateConfiguredTableAnalysisRuleOperationOutput
    UpdateConfiguredTableAssociationAnalysisRuleInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p> A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateConfiguredTableAssociationAnalysisRuleInput.add_member(:configured_table_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, location_name: 'configuredTableAssociationIdentifier', traits: {"smithy.api#documentation" => "<p> The identifier for the configured table association to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    UpdateConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleType, location_name: 'analysisRuleType', traits: {"smithy.api#documentation" => "<p> The analysis rule type that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRulePolicy, location_name: 'analysisRulePolicy', traits: {"smithy.api#documentation" => "<p> The updated analysis rule policy for the conﬁgured table association.</p>", "smithy.api#required" => {}}))
    UpdateConfiguredTableAssociationAnalysisRuleInput.type = Types::UpdateConfiguredTableAssociationAnalysisRuleInput
    UpdateConfiguredTableAssociationAnalysisRuleOutput.add_member(:analysis_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRule, location_name: 'analysisRule', traits: {"smithy.api#documentation" => "<p> The updated analysis rule for the conﬁgured table association. In the console, the <code>ConfiguredTableAssociationAnalysisRule</code> is referred to as the <i>collaboration analysis rule</i>.</p>", "smithy.api#required" => {}}))
    UpdateConfiguredTableAssociationAnalysisRuleOutput.type = Types::UpdateConfiguredTableAssociationAnalysisRuleOutput
    UpdateConfiguredTableAssociationOperationInput.add_member(:configured_table_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, location_name: 'configuredTableAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier for the configured table association to update. Currently accepts the configured table association ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    UpdateConfiguredTableAssociationOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The unique ID for the membership that the configured table association belongs to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateConfiguredTableAssociationOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TableDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A new description for the configured table association.</p>"}))
    UpdateConfiguredTableAssociationOperationInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The service will assume this role to access catalog metadata and query the table.</p>"}))
    UpdateConfiguredTableAssociationOperationInput.type = Types::UpdateConfiguredTableAssociationOperationInput
    UpdateConfiguredTableAssociationOperationOutput.add_member(:configured_table_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableAssociation, location_name: 'configuredTableAssociation', traits: {"smithy.api#documentation" => "<p>The entire updated configured table association.</p>", "smithy.api#required" => {}}))
    UpdateConfiguredTableAssociationOperationOutput.type = Types::UpdateConfiguredTableAssociationOperationOutput
    UpdateConfiguredTableOperationInput.add_member(:configured_table_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, location_name: 'configuredTableIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for the configured table to update. Currently accepts the configured table ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    UpdateConfiguredTableOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A new name for the configured table.</p>"}))
    UpdateConfiguredTableOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TableDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A new description for the configured table.</p>"}))
    UpdateConfiguredTableOperationInput.add_member(:table_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: TableReference, location_name: 'tableReference'))
    UpdateConfiguredTableOperationInput.add_member(:allowed_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedColumnList, location_name: 'allowedColumns', traits: {"smithy.api#documentation" => "<p>The columns of the underlying table that can be used by collaborations or analysis rules.</p>"}))
    UpdateConfiguredTableOperationInput.add_member(:analysis_method, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisMethod, location_name: 'analysisMethod', traits: {"smithy.api#documentation" => "<p> The analysis method for the configured table.</p> <p> <code>DIRECT_QUERY</code> allows SQL queries to be run directly on this table.</p> <p> <code>DIRECT_JOB</code> allows PySpark jobs to be run directly on this table.</p> <p> <code>MULTIPLE</code> allows both SQL queries and PySpark jobs to be run directly on this table.</p>"}))
    UpdateConfiguredTableOperationInput.add_member(:selected_analysis_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedAnalysisMethods, location_name: 'selectedAnalysisMethods', traits: {"smithy.api#documentation" => "<p> The selected analysis methods for the table configuration update.</p>"}))
    UpdateConfiguredTableOperationInput.type = Types::UpdateConfiguredTableOperationInput
    UpdateConfiguredTableOperationOutput.add_member(:configured_table, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfiguredTable, location_name: 'configuredTable', traits: {"smithy.api#documentation" => "<p>The updated configured table.</p>", "smithy.api#required" => {}}))
    UpdateConfiguredTableOperationOutput.type = Types::UpdateConfiguredTableOperationOutput
    UpdateIdMappingTableInput.add_member(:id_mapping_table_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'idMappingTableIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the ID mapping table that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdMappingTableId"}))
    UpdateIdMappingTableInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership that contains the ID mapping table that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateIdMappingTableInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A new description for the ID mapping table.</p>"}))
    UpdateIdMappingTableInput.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services KMS key.</p>"}))
    UpdateIdMappingTableInput.type = Types::UpdateIdMappingTableInput
    UpdateIdMappingTableOutput.add_member(:id_mapping_table, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingTable, location_name: 'idMappingTable', traits: {"smithy.api#documentation" => "<p>The updated ID mapping table.</p>", "smithy.api#required" => {}}))
    UpdateIdMappingTableOutput.type = Types::UpdateIdMappingTableOutput
    UpdateIdNamespaceAssociationInput.add_member(:id_namespace_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociationIdentifier, location_name: 'idNamespaceAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the ID namespace association that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdNamespaceAssociationId"}))
    UpdateIdNamespaceAssociationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership that contains the ID namespace association that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateIdNamespaceAssociationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A new name for the ID namespace association.</p>"}))
    UpdateIdNamespaceAssociationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A new description for the ID namespace association.</p>"}))
    UpdateIdNamespaceAssociationInput.add_member(:id_mapping_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IdMappingConfig, location_name: 'idMappingConfig', traits: {"smithy.api#documentation" => "<p>The configuration settings for the ID mapping table.</p>"}))
    UpdateIdNamespaceAssociationInput.type = Types::UpdateIdNamespaceAssociationInput
    UpdateIdNamespaceAssociationOutput.add_member(:id_namespace_association, Smithy::Schema::Shapes::ShapeRef.new(shape: IdNamespaceAssociation, location_name: 'idNamespaceAssociation', traits: {"smithy.api#documentation" => "<p>The updated ID namespace association.</p>", "smithy.api#required" => {}}))
    UpdateIdNamespaceAssociationOutput.type = Types::UpdateIdNamespaceAssociationOutput
    UpdateMembershipOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the membership.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateMembershipOperationInput.add_member(:query_log_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipQueryLogStatus, location_name: 'queryLogStatus', traits: {"smithy.api#documentation" => "<p>An indicator as to whether query logging has been enabled or disabled for the membership.</p> <p>When <code>ENABLED</code>, Clean Rooms logs details about queries run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>"}))
    UpdateMembershipOperationInput.add_member(:job_log_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipJobLogStatus, location_name: 'jobLogStatus', traits: {"smithy.api#documentation" => "<p>An indicator as to whether job logging has been enabled or disabled for the collaboration. </p> <p>When <code>ENABLED</code>, Clean Rooms logs details about jobs run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>"}))
    UpdateMembershipOperationInput.add_member(:default_result_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipProtectedQueryResultConfiguration, location_name: 'defaultResultConfiguration', traits: {"smithy.api#documentation" => "<p>The default protected query result configuration as specified by the member who can receive results.</p>"}))
    UpdateMembershipOperationInput.add_member(:default_job_result_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipProtectedJobResultConfiguration, location_name: 'defaultJobResultConfiguration', traits: {"smithy.api#documentation" => "<p> The default job result configuration.</p>"}))
    UpdateMembershipOperationInput.type = Types::UpdateMembershipOperationInput
    UpdateMembershipOperationOutput.add_member(:membership, Smithy::Schema::Shapes::ShapeRef.new(shape: Membership, location_name: 'membership', traits: {"smithy.api#required" => {}}))
    UpdateMembershipOperationOutput.type = Types::UpdateMembershipOperationOutput
    UpdatePrivacyBudgetTemplateInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for one of your memberships for a collaboration. The privacy budget template is updated in the collaboration that this membership belongs to. Accepts a membership ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdatePrivacyBudgetTemplateInput.add_member(:privacy_budget_template_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, location_name: 'privacyBudgetTemplateIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for your privacy budget template that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "PrivacyBudgetTemplateId"}))
    UpdatePrivacyBudgetTemplateInput.add_member(:privacy_budget_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetType, location_name: 'privacyBudgetType', traits: {"smithy.api#documentation" => "<p>Specifies the type of the privacy budget template.</p>", "smithy.api#required" => {}}))
    UpdatePrivacyBudgetTemplateInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateUpdateParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>Specifies the epsilon and noise parameters for the privacy budget template.</p>"}))
    UpdatePrivacyBudgetTemplateInput.type = Types::UpdatePrivacyBudgetTemplateInput
    UpdatePrivacyBudgetTemplateOutput.add_member(:privacy_budget_template, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivacyBudgetTemplate, location_name: 'privacyBudgetTemplate', traits: {"smithy.api#documentation" => "<p>Summary of the privacy budget template.</p>", "smithy.api#required" => {}}))
    UpdatePrivacyBudgetTemplateOutput.type = Types::UpdatePrivacyBudgetTemplateOutput
    UpdateProtectedJobInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a member of a protected job instance.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateProtectedJobInput.add_member(:protected_job_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJobIdentifier, location_name: 'protectedJobIdentifier', traits: {"smithy.api#documentation" => "<p> The identifier of the protected job to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProtectedJobInput.add_member(:target_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetProtectedJobStatus, location_name: 'targetStatus', traits: {"smithy.api#documentation" => "<p>The target status of a protected job. Used to update the execution status of a currently running job.</p>", "smithy.api#required" => {}}))
    UpdateProtectedJobInput.type = Types::UpdateProtectedJobInput
    UpdateProtectedJobOutput.add_member(:protected_job, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedJob, location_name: 'protectedJob', traits: {"smithy.api#documentation" => "<p>The protected job output.</p>", "smithy.api#required" => {}}))
    UpdateProtectedJobOutput.type = Types::UpdateProtectedJobOutput
    UpdateProtectedQueryOperationInput.add_member(:membership_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipIdentifier, location_name: 'membershipIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a member of a protected query instance.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateProtectedQueryOperationInput.add_member(:protected_query_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQueryIdentifier, location_name: 'protectedQueryIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a protected query instance.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProtectedQueryOperationInput.add_member(:target_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetProtectedQueryStatus, location_name: 'targetStatus', traits: {"smithy.api#documentation" => "<p>The target status of a query. Used to update the execution status of a currently running query.</p>", "smithy.api#required" => {}}))
    UpdateProtectedQueryOperationInput.type = Types::UpdateProtectedQueryOperationInput
    UpdateProtectedQueryOperationOutput.add_member(:protected_query, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedQuery, location_name: 'protectedQuery', traits: {"smithy.api#documentation" => "<p>The protected query output.</p>", "smithy.api#required" => {}}))
    UpdateProtectedQueryOperationOutput.type = Types::UpdateProtectedQueryOperationOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>A reason code for the exception.</p>"}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>Validation errors for specific input parameters.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the input parameter.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message for the input validation error.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    WorkerComputeConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerComputeType, location_name: 'type', traits: {"smithy.api#documentation" => "<p> The worker compute configuration type.</p>"}))
    WorkerComputeConfiguration.add_member(:number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'number', traits: {"smithy.api#documentation" => "<p> The number of workers.</p>", "smithy.api#range" => {"min" => 2, "max" => 400}}))
    WorkerComputeConfiguration.type = Types::WorkerComputeConfiguration
    WorkerComputeType.add_member(:cr1_x, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CR1X', traits: {"smithy.api#enumValue" => "CR.1X"}))
    WorkerComputeType.add_member(:cr4_x, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CR4X', traits: {"smithy.api#enumValue" => "CR.4X"}))

    AWSBastionControlPlaneServiceLambda = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cleanrooms#AWSBastionControlPlaneServiceLambda"
      service.name = "AWSBastionControlPlaneServiceLambda"
      service.version = "2022-02-17"
      service.traits = {"aws.api#service" => {"sdkId" => "CleanRooms", "arnNamespace" => "cleanrooms", "cloudTrailEventSource" => "cleanrooms.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "cleanrooms"}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "AWS Clean Rooms Service"}
      service.add_operation(:batch_get_collaboration_analysis_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#BatchGetCollaborationAnalysisTemplate"
        operation.name = "BatchGetCollaborationAnalysisTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCollaborationAnalysisTemplateOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCollaborationAnalysisTemplateOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of multiple analysis tempaltes within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/collaborations/{collaborationIdentifier}/batch-analysistemplates"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#BatchGetSchema"
        operation.name = "BatchGetSchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetSchemaOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetSchemaOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of schemas", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/collaborations/{collaborationIdentifier}/batch-schema"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_schema_analysis_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#BatchGetSchemaAnalysisRule"
        operation.name = "BatchGetSchemaAnalysisRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetSchemaAnalysisRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetSchemaAnalysisRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view analysis rules associated with schemas", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/collaborations/{collaborationIdentifier}/batch-schema-analysis-rule"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_analysis_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateAnalysisTemplate"
        operation.name = "CreateAnalysisTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnalysisTemplateOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnalysisTemplateOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a new analysis template", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/analysistemplates"}}
      end)
      service.add_operation(:create_collaboration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateCollaboration"
        operation.name = "CreateCollaboration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCollaborationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCollaborationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a new collaboration, a shared data collaboration environment", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/collaborations"}}
      end)
      service.add_operation(:create_configured_audience_model_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateConfiguredAudienceModelAssociation"
        operation.name = "CreateConfiguredAudienceModelAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredAudienceModelAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredAudienceModelAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to link a configured audience model with a collaboration by creating a new association", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations"}}
      end)
      service.add_operation(:create_configured_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateConfiguredTable"
        operation.name = "CreateConfiguredTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredTableOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredTableOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a new configured table", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/configuredTables"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_configured_table_analysis_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateConfiguredTableAnalysisRule"
        operation.name = "CreateConfiguredTableAnalysisRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredTableAnalysisRuleOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredTableAnalysisRuleOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create analysis rules for configured tables", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/configuredTables/{configuredTableIdentifier}/analysisRule"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_configured_table_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateConfiguredTableAssociation"
        operation.name = "CreateConfiguredTableAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredTableAssociationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredTableAssociationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to link a configured table with a collaboration by creating a new association", "aws.iam#requiredActions" => ["iam:PassRole"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations"}}
      end)
      service.add_operation(:create_configured_table_association_analysis_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateConfiguredTableAssociationAnalysisRule"
        operation.name = "CreateConfiguredTableAssociationAnalysisRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredTableAssociationAnalysisRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfiguredTableAssociationAnalysisRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create analysis rules for configured table association"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_id_mapping_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateIdMappingTable"
        operation.name = "CreateIdMappingTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdMappingTableInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdMappingTableOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to link an id mapping workflow with a collaboration by creating a new id mapping table", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/idmappingtables"}}
      end)
      service.add_operation(:create_id_namespace_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateIdNamespaceAssociation"
        operation.name = "CreateIdNamespaceAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdNamespaceAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdNamespaceAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to link an AWS Entity Resolution Id Namespace with a collaboration by creating a new association", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/idnamespaceassociations"}}
      end)
      service.add_operation(:create_membership, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateMembership"
        operation.name = "CreateMembership"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMembershipOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMembershipOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to join collaborations by creating a membership", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships"}}
      end)
      service.add_operation(:create_privacy_budget_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreatePrivacyBudgetTemplate"
        operation.name = "CreatePrivacyBudgetTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePrivacyBudgetTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePrivacyBudgetTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a new privacy budget template", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/privacybudgettemplates"}}
      end)
      service.add_operation(:delete_analysis_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteAnalysisTemplate"
        operation.name = "DeleteAnalysisTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnalysisTemplateOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnalysisTemplateOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove an analysis template from a collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_collaboration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteCollaboration"
        operation.name = "DeleteCollaboration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCollaborationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCollaborationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete an existing collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/collaborations/{collaborationIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_configured_audience_model_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteConfiguredAudienceModelAssociation"
        operation.name = "DeleteConfiguredAudienceModelAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfiguredAudienceModelAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfiguredAudienceModelAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove a configured audience model association from a collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_configured_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteConfiguredTable"
        operation.name = "DeleteConfiguredTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfiguredTableOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfiguredTableOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete a configured table", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/configuredTables/{configuredTableIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_configured_table_analysis_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteConfiguredTableAnalysisRule"
        operation.name = "DeleteConfiguredTableAnalysisRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfiguredTableAnalysisRuleOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfiguredTableAnalysisRuleOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete an existing analysis rule", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_configured_table_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteConfiguredTableAssociation"
        operation.name = "DeleteConfiguredTableAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfiguredTableAssociationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfiguredTableAssociationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove a configured table association from a collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_configured_table_association_analysis_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteConfiguredTableAssociationAnalysisRule"
        operation.name = "DeleteConfiguredTableAssociationAnalysisRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfiguredTableAssociationAnalysisRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfiguredTableAssociationAnalysisRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an existing configured table association analysis rule"}, "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_id_mapping_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteIdMappingTable"
        operation.name = "DeleteIdMappingTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdMappingTableInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdMappingTableOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove an id mapping table from a collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_id_namespace_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteIdNamespaceAssociation"
        operation.name = "DeleteIdNamespaceAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdNamespaceAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdNamespaceAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove an Id Namespace Association from a collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteMember"
        operation.name = "DeleteMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMemberOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMemberOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete members from a collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/collaborations/{collaborationIdentifier}/member/{accountId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_membership, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteMembership"
        operation.name = "DeleteMembership"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMembershipOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMembershipOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to leave collaborations by deleting a membership", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_privacy_budget_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeletePrivacyBudgetTemplate"
        operation.name = "DeletePrivacyBudgetTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePrivacyBudgetTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePrivacyBudgetTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove a privacy budget from a collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_analysis_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetAnalysisTemplate"
        operation.name = "GetAnalysisTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnalysisTemplateOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnalysisTemplateOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get an analysis template", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_collaboration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetCollaboration"
        operation.name = "GetCollaboration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_collaboration_analysis_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetCollaborationAnalysisTemplate"
        operation.name = "GetCollaborationAnalysisTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationAnalysisTemplateOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationAnalysisTemplateOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get an analysis template within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/analysistemplates/{analysisTemplateArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_collaboration_configured_audience_model_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetCollaborationConfiguredAudienceModelAssociation"
        operation.name = "GetCollaborationConfiguredAudienceModelAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationConfiguredAudienceModelAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationConfiguredAudienceModelAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get a configured audience model within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_collaboration_id_namespace_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetCollaborationIdNamespaceAssociation"
        operation.name = "GetCollaborationIdNamespaceAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationIdNamespaceAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationIdNamespaceAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get id namespace association within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_collaboration_privacy_budget_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetCollaborationPrivacyBudgetTemplate"
        operation.name = "GetCollaborationPrivacyBudgetTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationPrivacyBudgetTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCollaborationPrivacyBudgetTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get a privacy budget template within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configured_audience_model_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetConfiguredAudienceModelAssociation"
        operation.name = "GetConfiguredAudienceModelAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredAudienceModelAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredAudienceModelAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of a configured audience model association", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configured_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetConfiguredTable"
        operation.name = "GetConfiguredTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredTableOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredTableOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details for a configured table", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/configuredTables/{configuredTableIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configured_table_analysis_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetConfiguredTableAnalysisRule"
        operation.name = "GetConfiguredTableAnalysisRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredTableAnalysisRuleOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredTableAnalysisRuleOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get analysis rules for a configured table", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configured_table_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetConfiguredTableAssociation"
        operation.name = "GetConfiguredTableAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredTableAssociationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredTableAssociationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of a configured table association", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configured_table_association_analysis_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetConfiguredTableAssociationAnalysisRule"
        operation.name = "GetConfiguredTableAssociationAnalysisRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredTableAssociationAnalysisRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfiguredTableAssociationAnalysisRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get analysis rules for a configured table association"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_id_mapping_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetIdMappingTable"
        operation.name = "GetIdMappingTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdMappingTableInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdMappingTableOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of an id mapping table", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_id_namespace_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetIdNamespaceAssociation"
        operation.name = "GetIdNamespaceAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdNamespaceAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdNamespaceAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of an id namespace association", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_membership, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetMembership"
        operation.name = "GetMembership"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMembershipOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMembershipOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details about a membership", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_privacy_budget_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetPrivacyBudgetTemplate"
        operation.name = "GetPrivacyBudgetTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPrivacyBudgetTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPrivacyBudgetTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get a privacy budget template", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_protected_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetProtectedJob"
        operation.name = "GetProtectedJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProtectedJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProtectedJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a protected job"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/protectedJobs/{protectedJobIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_protected_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetProtectedQuery"
        operation.name = "GetProtectedQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProtectedQueryOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProtectedQueryOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get a protected query", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/protectedQueries/{protectedQueryIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_schema, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetSchema"
        operation.name = "GetSchema"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSchemaOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSchemaOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of a schema", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/schemas/{name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_schema_analysis_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetSchemaAnalysisRule"
        operation.name = "GetSchemaAnalysisRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSchemaAnalysisRuleOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSchemaAnalysisRuleOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view analysis rules associated with a schema", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/schemas/{name}/analysisRule/{type}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_analysis_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListAnalysisTemplates"
        operation.name = "ListAnalysisTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnalysisTemplatesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnalysisTemplatesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list analysis templates", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/analysistemplates"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAnalysisTemplates.new
      end)
      service.add_operation(:list_collaboration_analysis_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListCollaborationAnalysisTemplates"
        operation.name = "ListCollaborationAnalysisTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationAnalysisTemplatesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationAnalysisTemplatesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list analysis templates within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/analysistemplates"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationAnalysisTemplates.new
      end)
      service.add_operation(:list_collaboration_configured_audience_model_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListCollaborationConfiguredAudienceModelAssociations"
        operation.name = "ListCollaborationConfiguredAudienceModelAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationConfiguredAudienceModelAssociationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationConfiguredAudienceModelAssociationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list configured audience associations within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/configuredaudiencemodelassociations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationConfiguredAudienceModelAssociations.new
      end)
      service.add_operation(:list_collaboration_id_namespace_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListCollaborationIdNamespaceAssociations"
        operation.name = "ListCollaborationIdNamespaceAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationIdNamespaceAssociationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationIdNamespaceAssociationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list id namespace within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/idnamespaceassociations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationIdNamespaceAssociations.new
      end)
      service.add_operation(:list_collaboration_privacy_budget_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListCollaborationPrivacyBudgetTemplates"
        operation.name = "ListCollaborationPrivacyBudgetTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationPrivacyBudgetTemplatesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationPrivacyBudgetTemplatesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list collaboration privacy budget templates", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/privacybudgettemplates"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationPrivacyBudgetTemplates.new
      end)
      service.add_operation(:list_collaboration_privacy_budgets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListCollaborationPrivacyBudgets"
        operation.name = "ListCollaborationPrivacyBudgets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationPrivacyBudgetsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationPrivacyBudgetsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list collaboration privacy budgets", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/privacybudgets"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationPrivacyBudgets.new
      end)
      service.add_operation(:list_collaborations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListCollaborations"
        operation.name = "ListCollaborations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollaborationsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list available collaborations", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborations.new
      end)
      service.add_operation(:list_configured_audience_model_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListConfiguredAudienceModelAssociations"
        operation.name = "ListConfiguredAudienceModelAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfiguredAudienceModelAssociationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfiguredAudienceModelAssociationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list available configured audience model associations for a membership", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConfiguredAudienceModelAssociations.new
      end)
      service.add_operation(:list_configured_table_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListConfiguredTableAssociations"
        operation.name = "ListConfiguredTableAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfiguredTableAssociationsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfiguredTableAssociationsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list available configured table associations for a membership", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConfiguredTableAssociations.new
      end)
      service.add_operation(:list_configured_tables, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListConfiguredTables"
        operation.name = "ListConfiguredTables"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfiguredTablesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfiguredTablesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list available configured tables", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/configuredTables"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConfiguredTables.new
      end)
      service.add_operation(:list_id_mapping_tables, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListIdMappingTables"
        operation.name = "ListIdMappingTables"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdMappingTablesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdMappingTablesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list available id mapping tables for a membership", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/idmappingtables"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIdMappingTables.new
      end)
      service.add_operation(:list_id_namespace_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListIdNamespaceAssociations"
        operation.name = "ListIdNamespaceAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdNamespaceAssociationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdNamespaceAssociationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list entity resolution data associations for a membership", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/idnamespaceassociations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIdNamespaceAssociations.new
      end)
      service.add_operation(:list_members, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListMembers"
        operation.name = "ListMembers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list the members of a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/members"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMembers.new
      end)
      service.add_operation(:list_memberships, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListMemberships"
        operation.name = "ListMemberships"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembershipsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembershipsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list available memberships", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMemberships.new
      end)
      service.add_operation(:list_privacy_budget_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListPrivacyBudgetTemplates"
        operation.name = "ListPrivacyBudgetTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrivacyBudgetTemplatesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrivacyBudgetTemplatesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list privacy budget templates", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/privacybudgettemplates"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPrivacyBudgetTemplates.new
      end)
      service.add_operation(:list_privacy_budgets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListPrivacyBudgets"
        operation.name = "ListPrivacyBudgets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrivacyBudgetsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrivacyBudgetsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "List Privacy Budgets", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/privacybudgets"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPrivacyBudgets.new
      end)
      service.add_operation(:list_protected_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListProtectedJobs"
        operation.name = "ListProtectedJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectedJobsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectedJobsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list protected jobs"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/protectedJobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProtectedJobs.new
      end)
      service.add_operation(:list_protected_queries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListProtectedQueries"
        operation.name = "ListProtectedQueries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectedQueriesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectedQueriesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list protected queries", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/protectedQueries"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProtectedQueries.new
      end)
      service.add_operation(:list_schemas, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListSchemas"
        operation.name = "ListSchemas"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchemasOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchemasOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view available schemas for a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/schemas"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSchemas.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:populate_id_mapping_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#PopulateIdMappingTable"
        operation.name = "PopulateIdMappingTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PopulateIdMappingTableInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PopulateIdMappingTableOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to link an id mapping workflow with a collaboration by creating a new table", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}/populate"}}
      end)
      service.add_operation(:preview_privacy_impact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#PreviewPrivacyImpact"
        operation.name = "PreviewPrivacyImpact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PreviewPrivacyImpactInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PreviewPrivacyImpactOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to preview a new privacy impacting change", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/previewprivacyimpact"}}
      end)
      service.add_operation(:start_protected_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#StartProtectedJob"
        operation.name = "StartProtectedJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartProtectedJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartProtectedJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to start protected jobs"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/protectedJobs"}}
      end)
      service.add_operation(:start_protected_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#StartProtectedQuery"
        operation.name = "StartProtectedQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartProtectedQueryOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartProtectedQueryOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to start protected queries", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/protectedQueries"}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_analysis_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateAnalysisTemplate"
        operation.name = "UpdateAnalysisTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnalysisTemplateOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnalysisTemplateOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update an analysis template", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}"}}
      end)
      service.add_operation(:update_collaboration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateCollaboration"
        operation.name = "UpdateCollaboration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCollaborationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCollaborationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update details of the collaboration", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/collaborations/{collaborationIdentifier}"}}
      end)
      service.add_operation(:update_configured_audience_model_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateConfiguredAudienceModelAssociation"
        operation.name = "UpdateConfiguredAudienceModelAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfiguredAudienceModelAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfiguredAudienceModelAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update a configured audience model association", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"}}
      end)
      service.add_operation(:update_configured_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateConfiguredTable"
        operation.name = "UpdateConfiguredTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfiguredTableOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfiguredTableOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update an existing configured table", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/configuredTables/{configuredTableIdentifier}"}}
      end)
      service.add_operation(:update_configured_table_analysis_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateConfiguredTableAnalysisRule"
        operation.name = "UpdateConfiguredTableAnalysisRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfiguredTableAnalysisRuleOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfiguredTableAnalysisRuleOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view update analysis rules for a configured table", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"}}
      end)
      service.add_operation(:update_configured_table_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateConfiguredTableAssociation"
        operation.name = "UpdateConfiguredTableAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfiguredTableAssociationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfiguredTableAssociationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update a configured table association", "aws.iam#requiredActions" => ["iam:PassRole"], "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"}}
      end)
      service.add_operation(:update_configured_table_association_analysis_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateConfiguredTableAssociationAnalysisRule"
        operation.name = "UpdateConfiguredTableAssociationAnalysisRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfiguredTableAssociationAnalysisRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfiguredTableAssociationAnalysisRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update analysis rules for a configured table association"}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}"}}
      end)
      service.add_operation(:update_id_mapping_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateIdMappingTable"
        operation.name = "UpdateIdMappingTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdMappingTableInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdMappingTableOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update an id mapping table", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}"}}
      end)
      service.add_operation(:update_id_namespace_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateIdNamespaceAssociation"
        operation.name = "UpdateIdNamespaceAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdNamespaceAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdNamespaceAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update a entity resolution input association", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"}}
      end)
      service.add_operation(:update_membership, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateMembership"
        operation.name = "UpdateMembership"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMembershipOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMembershipOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update details of a membership", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}"}}
      end)
      service.add_operation(:update_privacy_budget_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdatePrivacyBudgetTemplate"
        operation.name = "UpdatePrivacyBudgetTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePrivacyBudgetTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePrivacyBudgetTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update a privacy budget template", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"}}
      end)
      service.add_operation(:update_protected_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateProtectedJob"
        operation.name = "UpdateProtectedJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProtectedJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProtectedJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update protected jobs"}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/protectedJobs/{protectedJobIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_protected_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateProtectedQuery"
        operation.name = "UpdateProtectedQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProtectedQueryOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProtectedQueryOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update protected queries", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/protectedQueries/{protectedQueryIdentifier}"}, "smithy.api#idempotent" => {}}
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
