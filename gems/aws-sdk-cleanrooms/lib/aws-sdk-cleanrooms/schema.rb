# frozen_string_literal: true

# This is generated code!

module Aws::CleanRooms
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessBudget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AccessBudget", name: "AccessBudget")
    AccessBudgetDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AccessBudgetDetails", name: "AccessBudgetDetails")
    AccessBudgetDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AccessBudgetDetailsList", name: "AccessBudgetDetailsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    AccessBudgetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#AccessBudgetType", name: "AccessBudgetType")
    AccessBudgetsPrivacyTemplateParametersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AccessBudgetsPrivacyTemplateParametersInput", name: "AccessBudgetsPrivacyTemplateParametersInput")
    AccessBudgetsPrivacyTemplateParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AccessBudgetsPrivacyTemplateParametersOutput", name: "AccessBudgetsPrivacyTemplateParametersOutput")
    AccessBudgetsPrivacyTemplateUpdateParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AccessBudgetsPrivacyTemplateUpdateParameters", name: "AccessBudgetsPrivacyTemplateUpdateParameters")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#AccessDeniedExceptionReason", name: "AccessDeniedExceptionReason", traits: {"smithy.api#enum" => [{"value" => "INSUFFICIENT_PERMISSIONS", "name" => "INSUFFICIENT_PERMISSIONS"}]})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d+$"})
    AdditionalAnalyses = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#AdditionalAnalyses", name: "AdditionalAnalyses")
    AdditionalAnalysesResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#AdditionalAnalysesResourceArn", name: "AdditionalAnalysesResourceArn", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:([\\d]{12}|\\*):membership\\/[\\*\\d\\w-]+\\/configuredaudiencemodelassociation\\/[\\*\\d\\w-]+$|^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:([0-9]{12}|\\*):membership\\/[\\*\\d\\w-]+\\/configured-model-algorithm-association\\/([-a-zA-Z0-9_\\/.]+|\\*)$"})
    AggregateColumn = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AggregateColumn", name: "AggregateColumn")
    AggregateColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AggregateColumnList", name: "AggregateColumnList")
    AggregateFunctionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#AggregateFunctionName", name: "AggregateFunctionName", traits: {"smithy.api#enum" => [{"name" => "SUM", "value" => "SUM"}, {"name" => "SUM_DISTINCT", "value" => "SUM_DISTINCT"}, {"name" => "COUNT", "value" => "COUNT"}, {"name" => "COUNT_DISTINCT", "value" => "COUNT_DISTINCT"}, {"name" => "AVG", "value" => "AVG"}]})
    AggregationConstraint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AggregationConstraint", name: "AggregationConstraint")
    AggregationConstraints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AggregationConstraints", name: "AggregationConstraints", traits: {"smithy.api#length" => {"min" => 1}})
    AggregationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#AggregationType", name: "AggregationType", traits: {"smithy.api#enum" => [{"name" => "COUNT_DISTINCT", "value" => "COUNT_DISTINCT"}]})
    AllowedAdditionalAnalyses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AllowedAdditionalAnalyses", name: "AllowedAdditionalAnalyses", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    AllowedAnalysesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AllowedAnalysesList", name: "AllowedAnalysesList")
    AllowedAnalysisProviderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AllowedAnalysisProviderList", name: "AllowedAnalysisProviderList")
    AllowedColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AllowedColumnList", name: "AllowedColumnList", traits: {"smithy.api#length" => {"min" => 1}})
    AllowedResultReceivers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AllowedResultReceivers", name: "AllowedResultReceivers")
    AllowedResultRegions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AllowedResultRegions", name: "AllowedResultRegions", traits: {"smithy.api#uniqueItems" => {}})
    AnalysisFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#AnalysisFormat", name: "AnalysisFormat")
    AnalysisMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#AnalysisMethod", name: "AnalysisMethod")
    AnalysisParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AnalysisParameter", name: "AnalysisParameter", traits: {"smithy.api#sensitive" => {}})
    AnalysisParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AnalysisParameterList", name: "AnalysisParameterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AnalysisRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AnalysisRule", name: "AnalysisRule")
    AnalysisRuleAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AnalysisRuleAggregation", name: "AnalysisRuleAggregation")
    AnalysisRuleColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AnalysisRuleColumnList", name: "AnalysisRuleColumnList")
    AnalysisRuleColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#AnalysisRuleColumnName", name: "AnalysisRuleColumnName", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[a-z0-9_](([a-z0-9_ ]+-)*([a-z0-9_ ]+))?$"})
    AnalysisRuleColumnNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AnalysisRuleColumnNameList", name: "AnalysisRuleColumnNameList")
    AnalysisRuleCustom = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AnalysisRuleCustom", name: "AnalysisRuleCustom")
    AnalysisRuleIdMappingTable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AnalysisRuleIdMappingTable", name: "AnalysisRuleIdMappingTable")
    AnalysisRuleList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AnalysisRuleList", name: "AnalysisRuleList")
    AnalysisRulePolicy = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#AnalysisRulePolicy", name: "AnalysisRulePolicy")
    AnalysisRulePolicyV1 = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#AnalysisRulePolicyV1", name: "AnalysisRulePolicyV1")
    AnalysisRuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#AnalysisRuleType", name: "AnalysisRuleType")
    AnalysisRuleTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AnalysisRuleTypeList", name: "AnalysisRuleTypeList")
    AnalysisSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AnalysisSchema", name: "AnalysisSchema")
    AnalysisSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#AnalysisSource", name: "AnalysisSource")
    AnalysisSourceMetadata = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#AnalysisSourceMetadata", name: "AnalysisSourceMetadata")
    AnalysisTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplate", name: "AnalysisTemplate")
    AnalysisTemplateArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateArn", name: "AnalysisTemplateArn", traits: {"smithy.api#length" => {"max" => 200}, "smithy.api#pattern" => "^arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/analysistemplate/[\\d\\w-]+$"})
    AnalysisTemplateArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateArnList", name: "AnalysisTemplateArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AnalysisTemplateArnOrQueryWildcard = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateArnOrQueryWildcard", name: "AnalysisTemplateArnOrQueryWildcard", traits: {"smithy.api#length" => {"max" => 200}, "smithy.api#pattern" => "^(ANY_QUERY|ANY_JOB|arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/analysistemplate/[\\d\\w-]+)$"})
    AnalysisTemplateArtifact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateArtifact", name: "AnalysisTemplateArtifact")
    AnalysisTemplateArtifactList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateArtifactList", name: "AnalysisTemplateArtifactList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AnalysisTemplateArtifactMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateArtifactMetadata", name: "AnalysisTemplateArtifactMetadata")
    AnalysisTemplateArtifacts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateArtifacts", name: "AnalysisTemplateArtifacts")
    AnalysisTemplateIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateIdentifier", name: "AnalysisTemplateIdentifier", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    AnalysisTemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateSummary", name: "AnalysisTemplateSummary")
    AnalysisTemplateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateSummaryList", name: "AnalysisTemplateSummaryList")
    AnalysisTemplateText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateText", name: "AnalysisTemplateText", traits: {"smithy.api#length" => {"min" => 0, "max" => 90000}, "smithy.api#sensitive" => {}})
    AnalysisTemplateValidationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateValidationStatus", name: "AnalysisTemplateValidationStatus")
    AnalysisTemplateValidationStatusDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateValidationStatusDetail", name: "AnalysisTemplateValidationStatusDetail")
    AnalysisTemplateValidationStatusDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateValidationStatusDetailList", name: "AnalysisTemplateValidationStatusDetailList")
    AnalysisTemplateValidationStatusReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateValidationStatusReason", name: "AnalysisTemplateValidationStatusReason")
    AnalysisTemplateValidationStatusReasonList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateValidationStatusReasonList", name: "AnalysisTemplateValidationStatusReasonList")
    AnalysisTemplateValidationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#AnalysisTemplateValidationType", name: "AnalysisTemplateValidationType")
    AnalysisType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#AnalysisType", name: "AnalysisType")
    AnalyticsEngine = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#AnalyticsEngine", name: "AnalyticsEngine")
    AthenaDatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#AthenaDatabaseName", name: "AthenaDatabaseName", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_]+-)*([a-zA-Z0-9_]+))?$"})
    AthenaOutputLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#AthenaOutputLocation", name: "AthenaOutputLocation", traits: {"smithy.api#length" => {"min" => 8, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9.-]{3,63}(.*)$"})
    AthenaTableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#AthenaTableName", name: "AthenaTableName", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_]+)*([a-zA-Z0-9_]+))?$"})
    AthenaTableReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#AthenaTableReference", name: "AthenaTableReference")
    AthenaWorkGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#AthenaWorkGroup", name: "AthenaWorkGroup", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([a-zA-Z0-9._-])*$"})
    AutoApprovedChangeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#AutoApprovedChangeType", name: "AutoApprovedChangeType")
    AutoApprovedChangeTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#AutoApprovedChangeTypeList", name: "AutoApprovedChangeTypeList", traits: {"smithy.api#uniqueItems" => {}})
    AutoRefreshMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#AutoRefreshMode", name: "AutoRefreshMode")
    BatchGetCollaborationAnalysisTemplateError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#BatchGetCollaborationAnalysisTemplateError", name: "BatchGetCollaborationAnalysisTemplateError")
    BatchGetCollaborationAnalysisTemplateErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#BatchGetCollaborationAnalysisTemplateErrorList", name: "BatchGetCollaborationAnalysisTemplateErrorList", traits: {"smithy.api#length" => {"max" => 10}})
    BatchGetCollaborationAnalysisTemplateOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#BatchGetCollaborationAnalysisTemplateOperationInput", name: "BatchGetCollaborationAnalysisTemplateOperationInput")
    BatchGetCollaborationAnalysisTemplateOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#BatchGetCollaborationAnalysisTemplateOperationOutput", name: "BatchGetCollaborationAnalysisTemplateOperationOutput")
    BatchGetSchemaAnalysisRuleError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#BatchGetSchemaAnalysisRuleError", name: "BatchGetSchemaAnalysisRuleError")
    BatchGetSchemaAnalysisRuleErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#BatchGetSchemaAnalysisRuleErrorList", name: "BatchGetSchemaAnalysisRuleErrorList", traits: {"smithy.api#length" => {"max" => 25}})
    BatchGetSchemaAnalysisRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#BatchGetSchemaAnalysisRuleInput", name: "BatchGetSchemaAnalysisRuleInput")
    BatchGetSchemaAnalysisRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#BatchGetSchemaAnalysisRuleOutput", name: "BatchGetSchemaAnalysisRuleOutput")
    BatchGetSchemaError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#BatchGetSchemaError", name: "BatchGetSchemaError")
    BatchGetSchemaErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#BatchGetSchemaErrorList", name: "BatchGetSchemaErrorList", traits: {"smithy.api#length" => {"max" => 25}})
    BatchGetSchemaOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#BatchGetSchemaOperationInput", name: "BatchGetSchemaOperationInput")
    BatchGetSchemaOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#BatchGetSchemaOperationOutput", name: "BatchGetSchemaOperationOutput")
    BilledJobResourceUtilization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#BilledJobResourceUtilization", name: "BilledJobResourceUtilization")
    BilledResourceUtilization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#BilledResourceUtilization", name: "BilledResourceUtilization")
    Budget = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cleanrooms#Budget", name: "Budget", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000}})
    BudgetParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#BudgetParameter", name: "BudgetParameter")
    BudgetParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#BudgetParameters", name: "BudgetParameters", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    BudgetedResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#BudgetedResourceArn", name: "BudgetedResourceArn", traits: {"smithy.api#length" => {"max" => 200}, "smithy.api#pattern" => "^arn:aws:[\\w]+:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/configuredtableassociation/[\\d\\w-]+$"})
    Change = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#Change", name: "Change")
    ChangeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ChangeInput", name: "ChangeInput")
    ChangeInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ChangeInputList", name: "ChangeInputList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    ChangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ChangeList", name: "ChangeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    ChangeRequestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#ChangeRequestStatus", name: "ChangeRequestStatus")
    ChangeSpecification = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ChangeSpecification", name: "ChangeSpecification")
    ChangeSpecificationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#ChangeSpecificationType", name: "ChangeSpecificationType")
    ChangeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#ChangeType", name: "ChangeType")
    ChangeTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ChangeTypeList", name: "ChangeTypeList", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#uniqueItems" => {}})
    CleanroomsArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#CleanroomsArn", name: "CleanroomsArn", traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:[\\d\\w/-]+$"})
    Collaboration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#Collaboration", name: "Collaboration")
    CollaborationAnalysisTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CollaborationAnalysisTemplate", name: "CollaborationAnalysisTemplate")
    CollaborationAnalysisTemplateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#CollaborationAnalysisTemplateList", name: "CollaborationAnalysisTemplateList", traits: {"smithy.api#length" => {"max" => 10}})
    CollaborationAnalysisTemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CollaborationAnalysisTemplateSummary", name: "CollaborationAnalysisTemplateSummary")
    CollaborationAnalysisTemplateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#CollaborationAnalysisTemplateSummaryList", name: "CollaborationAnalysisTemplateSummaryList")
    CollaborationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#CollaborationArn", name: "CollaborationArn", traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^arn:aws:[\\w]+:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:collaboration/[\\d\\w-]+$"})
    CollaborationChangeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CollaborationChangeRequest", name: "CollaborationChangeRequest")
    CollaborationChangeRequestIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#CollaborationChangeRequestIdentifier", name: "CollaborationChangeRequestIdentifier", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    CollaborationChangeRequestSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CollaborationChangeRequestSummary", name: "CollaborationChangeRequestSummary")
    CollaborationChangeRequestSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#CollaborationChangeRequestSummaryList", name: "CollaborationChangeRequestSummaryList")
    CollaborationConfiguredAudienceModelAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CollaborationConfiguredAudienceModelAssociation", name: "CollaborationConfiguredAudienceModelAssociation")
    CollaborationConfiguredAudienceModelAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CollaborationConfiguredAudienceModelAssociationSummary", name: "CollaborationConfiguredAudienceModelAssociationSummary")
    CollaborationConfiguredAudienceModelAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#CollaborationConfiguredAudienceModelAssociationSummaryList", name: "CollaborationConfiguredAudienceModelAssociationSummaryList")
    CollaborationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#CollaborationDescription", name: "CollaborationDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t\\r\\n]*$"})
    CollaborationIdNamespaceAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CollaborationIdNamespaceAssociation", name: "CollaborationIdNamespaceAssociation")
    CollaborationIdNamespaceAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CollaborationIdNamespaceAssociationSummary", name: "CollaborationIdNamespaceAssociationSummary")
    CollaborationIdNamespaceAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#CollaborationIdNamespaceAssociationSummaryList", name: "CollaborationIdNamespaceAssociationSummaryList")
    CollaborationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#CollaborationIdentifier", name: "CollaborationIdentifier", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    CollaborationJobLogStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#CollaborationJobLogStatus", name: "CollaborationJobLogStatus")
    CollaborationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#CollaborationName", name: "CollaborationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t]*$"})
    CollaborationPrivacyBudgetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CollaborationPrivacyBudgetSummary", name: "CollaborationPrivacyBudgetSummary")
    CollaborationPrivacyBudgetSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#CollaborationPrivacyBudgetSummaryList", name: "CollaborationPrivacyBudgetSummaryList")
    CollaborationPrivacyBudgetTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CollaborationPrivacyBudgetTemplate", name: "CollaborationPrivacyBudgetTemplate")
    CollaborationPrivacyBudgetTemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CollaborationPrivacyBudgetTemplateSummary", name: "CollaborationPrivacyBudgetTemplateSummary")
    CollaborationPrivacyBudgetTemplateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#CollaborationPrivacyBudgetTemplateSummaryList", name: "CollaborationPrivacyBudgetTemplateSummaryList")
    CollaborationQueryLogStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#CollaborationQueryLogStatus", name: "CollaborationQueryLogStatus")
    CollaborationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CollaborationSummary", name: "CollaborationSummary")
    CollaborationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#CollaborationSummaryList", name: "CollaborationSummaryList")
    Column = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#Column", name: "Column")
    ColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ColumnList", name: "ColumnList")
    ColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ColumnName", name: "ColumnName", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-z0-9_](([a-z0-9_ ]+-)*([a-z0-9_ ]+))?$"})
    ColumnTypeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ColumnTypeString", name: "ColumnTypeString", traits: {"smithy.api#length" => {"max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t]*$"})
    CommercialRegion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#CommercialRegion", name: "CommercialRegion")
    ComputeConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ComputeConfiguration", name: "ComputeConfiguration")
    ConfigurationDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ConfigurationDetails", name: "ConfigurationDetails")
    ConfiguredAudienceModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ConfiguredAudienceModelArn", name: "ConfiguredAudienceModelArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:[0-9]{12}:configured-audience-model/[-a-zA-Z0-9_/.]+$"})
    ConfiguredAudienceModelAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConfiguredAudienceModelAssociation", name: "ConfiguredAudienceModelAssociation")
    ConfiguredAudienceModelAssociationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ConfiguredAudienceModelAssociationArn", name: "ConfiguredAudienceModelAssociationArn", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/configuredaudiencemodelassociation/[\\d\\w-]+$"})
    ConfiguredAudienceModelAssociationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ConfiguredAudienceModelAssociationIdentifier", name: "ConfiguredAudienceModelAssociationIdentifier", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ConfiguredAudienceModelAssociationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ConfiguredAudienceModelAssociationName", name: "ConfiguredAudienceModelAssociationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t]*$"})
    ConfiguredAudienceModelAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConfiguredAudienceModelAssociationSummary", name: "ConfiguredAudienceModelAssociationSummary")
    ConfiguredAudienceModelAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ConfiguredAudienceModelAssociationSummaryList", name: "ConfiguredAudienceModelAssociationSummaryList")
    ConfiguredTable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTable", name: "ConfiguredTable")
    ConfiguredTableAnalysisRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAnalysisRule", name: "ConfiguredTableAnalysisRule")
    ConfiguredTableAnalysisRulePolicy = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAnalysisRulePolicy", name: "ConfiguredTableAnalysisRulePolicy")
    ConfiguredTableAnalysisRulePolicyV1 = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAnalysisRulePolicyV1", name: "ConfiguredTableAnalysisRulePolicyV1")
    ConfiguredTableAnalysisRuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAnalysisRuleType", name: "ConfiguredTableAnalysisRuleType")
    ConfiguredTableAnalysisRuleTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAnalysisRuleTypeList", name: "ConfiguredTableAnalysisRuleTypeList")
    ConfiguredTableArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableArn", name: "ConfiguredTableArn", traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^arn:aws:[\\w]+:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:configuredtable/[\\d\\w-]+$"})
    ConfiguredTableAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAssociation", name: "ConfiguredTableAssociation")
    ConfiguredTableAssociationAnalysisRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRule", name: "ConfiguredTableAssociationAnalysisRule")
    ConfiguredTableAssociationAnalysisRuleAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRuleAggregation", name: "ConfiguredTableAssociationAnalysisRuleAggregation")
    ConfiguredTableAssociationAnalysisRuleCustom = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRuleCustom", name: "ConfiguredTableAssociationAnalysisRuleCustom")
    ConfiguredTableAssociationAnalysisRuleList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRuleList", name: "ConfiguredTableAssociationAnalysisRuleList")
    ConfiguredTableAssociationAnalysisRulePolicy = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRulePolicy", name: "ConfiguredTableAssociationAnalysisRulePolicy")
    ConfiguredTableAssociationAnalysisRulePolicyV1 = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRulePolicyV1", name: "ConfiguredTableAssociationAnalysisRulePolicyV1")
    ConfiguredTableAssociationAnalysisRuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRuleType", name: "ConfiguredTableAssociationAnalysisRuleType")
    ConfiguredTableAssociationAnalysisRuleTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAssociationAnalysisRuleTypeList", name: "ConfiguredTableAssociationAnalysisRuleTypeList")
    ConfiguredTableAssociationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAssociationArn", name: "ConfiguredTableAssociationArn", traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^arn:aws:[\\w]+:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:configuredtableassociation/[\\d\\w-]+/[\\d\\w-]+$"})
    ConfiguredTableAssociationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAssociationIdentifier", name: "ConfiguredTableAssociationIdentifier", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ConfiguredTableAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAssociationSummary", name: "ConfiguredTableAssociationSummary")
    ConfiguredTableAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableAssociationSummaryList", name: "ConfiguredTableAssociationSummaryList")
    ConfiguredTableIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableIdentifier", name: "ConfiguredTableIdentifier", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ConfiguredTableSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableSummary", name: "ConfiguredTableSummary")
    ConfiguredTableSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ConfiguredTableSummaryList", name: "ConfiguredTableSummaryList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ConflictExceptionReason", name: "ConflictExceptionReason", traits: {"smithy.api#enum" => [{"value" => "ALREADY_EXISTS", "name" => "ALREADY_EXISTS"}, {"value" => "SUBRESOURCES_EXIST", "name" => "SUBRESOURCES_EXIST"}, {"value" => "INVALID_STATE", "name" => "INVALID_STATE"}]})
    ConsolidatedPolicy = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ConsolidatedPolicy", name: "ConsolidatedPolicy")
    ConsolidatedPolicyAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConsolidatedPolicyAggregation", name: "ConsolidatedPolicyAggregation")
    ConsolidatedPolicyCustom = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConsolidatedPolicyCustom", name: "ConsolidatedPolicyCustom")
    ConsolidatedPolicyList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ConsolidatedPolicyList", name: "ConsolidatedPolicyList")
    ConsolidatedPolicyV1 = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ConsolidatedPolicyV1", name: "ConsolidatedPolicyV1")
    CreateAnalysisTemplateOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateAnalysisTemplateOperationInput", name: "CreateAnalysisTemplateOperationInput")
    CreateAnalysisTemplateOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateAnalysisTemplateOperationOutput", name: "CreateAnalysisTemplateOperationOutput")
    CreateCollaborationChangeRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateCollaborationChangeRequestInput", name: "CreateCollaborationChangeRequestInput")
    CreateCollaborationChangeRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateCollaborationChangeRequestOutput", name: "CreateCollaborationChangeRequestOutput")
    CreateCollaborationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateCollaborationOperationInput", name: "CreateCollaborationOperationInput")
    CreateCollaborationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateCollaborationOperationOutput", name: "CreateCollaborationOperationOutput")
    CreateConfiguredAudienceModelAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateConfiguredAudienceModelAssociationInput", name: "CreateConfiguredAudienceModelAssociationInput")
    CreateConfiguredAudienceModelAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateConfiguredAudienceModelAssociationOutput", name: "CreateConfiguredAudienceModelAssociationOutput")
    CreateConfiguredTableAnalysisRuleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateConfiguredTableAnalysisRuleOperationInput", name: "CreateConfiguredTableAnalysisRuleOperationInput")
    CreateConfiguredTableAnalysisRuleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateConfiguredTableAnalysisRuleOperationOutput", name: "CreateConfiguredTableAnalysisRuleOperationOutput")
    CreateConfiguredTableAssociationAnalysisRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateConfiguredTableAssociationAnalysisRuleInput", name: "CreateConfiguredTableAssociationAnalysisRuleInput")
    CreateConfiguredTableAssociationAnalysisRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateConfiguredTableAssociationAnalysisRuleOutput", name: "CreateConfiguredTableAssociationAnalysisRuleOutput")
    CreateConfiguredTableAssociationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateConfiguredTableAssociationOperationInput", name: "CreateConfiguredTableAssociationOperationInput")
    CreateConfiguredTableAssociationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateConfiguredTableAssociationOperationOutput", name: "CreateConfiguredTableAssociationOperationOutput")
    CreateConfiguredTableOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateConfiguredTableOperationInput", name: "CreateConfiguredTableOperationInput")
    CreateConfiguredTableOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateConfiguredTableOperationOutput", name: "CreateConfiguredTableOperationOutput")
    CreateIdMappingTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateIdMappingTableInput", name: "CreateIdMappingTableInput")
    CreateIdMappingTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateIdMappingTableOutput", name: "CreateIdMappingTableOutput")
    CreateIdNamespaceAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateIdNamespaceAssociationInput", name: "CreateIdNamespaceAssociationInput")
    CreateIdNamespaceAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateIdNamespaceAssociationOutput", name: "CreateIdNamespaceAssociationOutput")
    CreateMembershipOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateMembershipOperationInput", name: "CreateMembershipOperationInput")
    CreateMembershipOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreateMembershipOperationOutput", name: "CreateMembershipOperationOutput")
    CreatePrivacyBudgetTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreatePrivacyBudgetTemplateInput", name: "CreatePrivacyBudgetTemplateInput")
    CreatePrivacyBudgetTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#CreatePrivacyBudgetTemplateOutput", name: "CreatePrivacyBudgetTemplateOutput")
    CustomMLMemberAbilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#CustomMLMemberAbilities", name: "CustomMLMemberAbilities", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#uniqueItems" => {}})
    CustomMLMemberAbility = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#CustomMLMemberAbility", name: "CustomMLMemberAbility")
    DataEncryptionMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DataEncryptionMetadata", name: "DataEncryptionMetadata")
    DeleteAnalysisTemplateOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteAnalysisTemplateOperationInput", name: "DeleteAnalysisTemplateOperationInput")
    DeleteAnalysisTemplateOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteAnalysisTemplateOperationOutput", name: "DeleteAnalysisTemplateOperationOutput")
    DeleteCollaborationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteCollaborationOperationInput", name: "DeleteCollaborationOperationInput")
    DeleteCollaborationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteCollaborationOperationOutput", name: "DeleteCollaborationOperationOutput")
    DeleteConfiguredAudienceModelAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteConfiguredAudienceModelAssociationInput", name: "DeleteConfiguredAudienceModelAssociationInput")
    DeleteConfiguredAudienceModelAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteConfiguredAudienceModelAssociationOutput", name: "DeleteConfiguredAudienceModelAssociationOutput")
    DeleteConfiguredTableAnalysisRuleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteConfiguredTableAnalysisRuleOperationInput", name: "DeleteConfiguredTableAnalysisRuleOperationInput")
    DeleteConfiguredTableAnalysisRuleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteConfiguredTableAnalysisRuleOperationOutput", name: "DeleteConfiguredTableAnalysisRuleOperationOutput")
    DeleteConfiguredTableAssociationAnalysisRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteConfiguredTableAssociationAnalysisRuleInput", name: "DeleteConfiguredTableAssociationAnalysisRuleInput")
    DeleteConfiguredTableAssociationAnalysisRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteConfiguredTableAssociationAnalysisRuleOutput", name: "DeleteConfiguredTableAssociationAnalysisRuleOutput")
    DeleteConfiguredTableAssociationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteConfiguredTableAssociationOperationInput", name: "DeleteConfiguredTableAssociationOperationInput")
    DeleteConfiguredTableAssociationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteConfiguredTableAssociationOperationOutput", name: "DeleteConfiguredTableAssociationOperationOutput")
    DeleteConfiguredTableOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteConfiguredTableOperationInput", name: "DeleteConfiguredTableOperationInput")
    DeleteConfiguredTableOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteConfiguredTableOperationOutput", name: "DeleteConfiguredTableOperationOutput")
    DeleteIdMappingTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteIdMappingTableInput", name: "DeleteIdMappingTableInput")
    DeleteIdMappingTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteIdMappingTableOutput", name: "DeleteIdMappingTableOutput")
    DeleteIdNamespaceAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteIdNamespaceAssociationInput", name: "DeleteIdNamespaceAssociationInput")
    DeleteIdNamespaceAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteIdNamespaceAssociationOutput", name: "DeleteIdNamespaceAssociationOutput")
    DeleteMemberOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteMemberOperationInput", name: "DeleteMemberOperationInput")
    DeleteMemberOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteMemberOperationOutput", name: "DeleteMemberOperationOutput")
    DeleteMembershipOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteMembershipOperationInput", name: "DeleteMembershipOperationInput")
    DeleteMembershipOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeleteMembershipOperationOutput", name: "DeleteMembershipOperationOutput")
    DeletePrivacyBudgetTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeletePrivacyBudgetTemplateInput", name: "DeletePrivacyBudgetTemplateInput")
    DeletePrivacyBudgetTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DeletePrivacyBudgetTemplateOutput", name: "DeletePrivacyBudgetTemplateOutput")
    DifferentialPrivacyAggregationExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyAggregationExpression", name: "DifferentialPrivacyAggregationExpression", traits: {"smithy.api#length" => {"min" => 1}})
    DifferentialPrivacyAggregationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyAggregationType", name: "DifferentialPrivacyAggregationType")
    DifferentialPrivacyColumn = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyColumn", name: "DifferentialPrivacyColumn")
    DifferentialPrivacyColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyColumnList", name: "DifferentialPrivacyColumnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DifferentialPrivacyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyConfiguration", name: "DifferentialPrivacyConfiguration")
    DifferentialPrivacyParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyParameters", name: "DifferentialPrivacyParameters")
    DifferentialPrivacyPreviewAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyPreviewAggregation", name: "DifferentialPrivacyPreviewAggregation")
    DifferentialPrivacyPreviewAggregationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyPreviewAggregationList", name: "DifferentialPrivacyPreviewAggregationList")
    DifferentialPrivacyPreviewParametersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyPreviewParametersInput", name: "DifferentialPrivacyPreviewParametersInput")
    DifferentialPrivacyPrivacyBudget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyPrivacyBudget", name: "DifferentialPrivacyPrivacyBudget")
    DifferentialPrivacyPrivacyBudgetAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyPrivacyBudgetAggregation", name: "DifferentialPrivacyPrivacyBudgetAggregation")
    DifferentialPrivacyPrivacyBudgetAggregationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyPrivacyBudgetAggregationList", name: "DifferentialPrivacyPrivacyBudgetAggregationList")
    DifferentialPrivacyPrivacyImpact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyPrivacyImpact", name: "DifferentialPrivacyPrivacyImpact")
    DifferentialPrivacySensitivityParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacySensitivityParameters", name: "DifferentialPrivacySensitivityParameters")
    DifferentialPrivacySensitivityParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacySensitivityParametersList", name: "DifferentialPrivacySensitivityParametersList")
    DifferentialPrivacyTemplateParametersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyTemplateParametersInput", name: "DifferentialPrivacyTemplateParametersInput")
    DifferentialPrivacyTemplateParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyTemplateParametersOutput", name: "DifferentialPrivacyTemplateParametersOutput")
    DifferentialPrivacyTemplateUpdateParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DifferentialPrivacyTemplateUpdateParameters", name: "DifferentialPrivacyTemplateUpdateParameters")
    DirectAnalysisConfigurationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#DirectAnalysisConfigurationDetails", name: "DirectAnalysisConfigurationDetails")
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#DisplayName", name: "DisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t]*$"})
    Epsilon = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cleanrooms#Epsilon", name: "Epsilon", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ErrorMessageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ErrorMessageConfiguration", name: "ErrorMessageConfiguration")
    ErrorMessageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#ErrorMessageType", name: "ErrorMessageType")
    FilterableMemberStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#FilterableMemberStatus", name: "FilterableMemberStatus", traits: {"smithy.api#enum" => [{"name" => "INVITED", "value" => "INVITED"}, {"name" => "ACTIVE", "value" => "ACTIVE"}]})
    GenericResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#GenericResourceName", name: "GenericResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t]*$"})
    GetAnalysisTemplateOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetAnalysisTemplateOperationInput", name: "GetAnalysisTemplateOperationInput")
    GetAnalysisTemplateOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetAnalysisTemplateOperationOutput", name: "GetAnalysisTemplateOperationOutput")
    GetCollaborationAnalysisTemplateOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetCollaborationAnalysisTemplateOperationInput", name: "GetCollaborationAnalysisTemplateOperationInput")
    GetCollaborationAnalysisTemplateOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetCollaborationAnalysisTemplateOperationOutput", name: "GetCollaborationAnalysisTemplateOperationOutput")
    GetCollaborationChangeRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetCollaborationChangeRequestInput", name: "GetCollaborationChangeRequestInput")
    GetCollaborationChangeRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetCollaborationChangeRequestOutput", name: "GetCollaborationChangeRequestOutput")
    GetCollaborationConfiguredAudienceModelAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetCollaborationConfiguredAudienceModelAssociationInput", name: "GetCollaborationConfiguredAudienceModelAssociationInput")
    GetCollaborationConfiguredAudienceModelAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetCollaborationConfiguredAudienceModelAssociationOutput", name: "GetCollaborationConfiguredAudienceModelAssociationOutput")
    GetCollaborationIdNamespaceAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetCollaborationIdNamespaceAssociationInput", name: "GetCollaborationIdNamespaceAssociationInput")
    GetCollaborationIdNamespaceAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetCollaborationIdNamespaceAssociationOutput", name: "GetCollaborationIdNamespaceAssociationOutput")
    GetCollaborationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetCollaborationOperationInput", name: "GetCollaborationOperationInput")
    GetCollaborationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetCollaborationOperationOutput", name: "GetCollaborationOperationOutput")
    GetCollaborationPrivacyBudgetTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetCollaborationPrivacyBudgetTemplateInput", name: "GetCollaborationPrivacyBudgetTemplateInput")
    GetCollaborationPrivacyBudgetTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetCollaborationPrivacyBudgetTemplateOutput", name: "GetCollaborationPrivacyBudgetTemplateOutput")
    GetConfiguredAudienceModelAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetConfiguredAudienceModelAssociationInput", name: "GetConfiguredAudienceModelAssociationInput")
    GetConfiguredAudienceModelAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetConfiguredAudienceModelAssociationOutput", name: "GetConfiguredAudienceModelAssociationOutput")
    GetConfiguredTableAnalysisRuleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetConfiguredTableAnalysisRuleOperationInput", name: "GetConfiguredTableAnalysisRuleOperationInput")
    GetConfiguredTableAnalysisRuleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetConfiguredTableAnalysisRuleOperationOutput", name: "GetConfiguredTableAnalysisRuleOperationOutput")
    GetConfiguredTableAssociationAnalysisRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetConfiguredTableAssociationAnalysisRuleInput", name: "GetConfiguredTableAssociationAnalysisRuleInput")
    GetConfiguredTableAssociationAnalysisRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetConfiguredTableAssociationAnalysisRuleOutput", name: "GetConfiguredTableAssociationAnalysisRuleOutput")
    GetConfiguredTableAssociationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetConfiguredTableAssociationOperationInput", name: "GetConfiguredTableAssociationOperationInput")
    GetConfiguredTableAssociationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetConfiguredTableAssociationOperationOutput", name: "GetConfiguredTableAssociationOperationOutput")
    GetConfiguredTableOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetConfiguredTableOperationInput", name: "GetConfiguredTableOperationInput")
    GetConfiguredTableOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetConfiguredTableOperationOutput", name: "GetConfiguredTableOperationOutput")
    GetIdMappingTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetIdMappingTableInput", name: "GetIdMappingTableInput")
    GetIdMappingTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetIdMappingTableOutput", name: "GetIdMappingTableOutput")
    GetIdNamespaceAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetIdNamespaceAssociationInput", name: "GetIdNamespaceAssociationInput")
    GetIdNamespaceAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetIdNamespaceAssociationOutput", name: "GetIdNamespaceAssociationOutput")
    GetMembershipOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetMembershipOperationInput", name: "GetMembershipOperationInput")
    GetMembershipOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetMembershipOperationOutput", name: "GetMembershipOperationOutput")
    GetPrivacyBudgetTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetPrivacyBudgetTemplateInput", name: "GetPrivacyBudgetTemplateInput")
    GetPrivacyBudgetTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetPrivacyBudgetTemplateOutput", name: "GetPrivacyBudgetTemplateOutput")
    GetProtectedJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetProtectedJobInput", name: "GetProtectedJobInput")
    GetProtectedJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetProtectedJobOutput", name: "GetProtectedJobOutput")
    GetProtectedQueryOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetProtectedQueryOperationInput", name: "GetProtectedQueryOperationInput")
    GetProtectedQueryOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetProtectedQueryOperationOutput", name: "GetProtectedQueryOperationOutput")
    GetSchemaAnalysisRuleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetSchemaAnalysisRuleOperationInput", name: "GetSchemaAnalysisRuleOperationInput")
    GetSchemaAnalysisRuleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetSchemaAnalysisRuleOperationOutput", name: "GetSchemaAnalysisRuleOperationOutput")
    GetSchemaOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetSchemaOperationInput", name: "GetSchemaOperationInput")
    GetSchemaOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GetSchemaOperationOutput", name: "GetSchemaOperationOutput")
    GlueDatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#GlueDatabaseName", name: "GlueDatabaseName", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_]+-)*([a-zA-Z0-9_]+))?$"})
    GlueTableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#GlueTableName", name: "GlueTableName", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$"})
    GlueTableReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#GlueTableReference", name: "GlueTableReference")
    Hash = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#Hash", name: "Hash")
    HashList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#HashList", name: "HashList")
    IdMappingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#IdMappingConfig", name: "IdMappingConfig")
    IdMappingTable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#IdMappingTable", name: "IdMappingTable")
    IdMappingTableArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#IdMappingTableArn", name: "IdMappingTableArn", traits: {"smithy.api#length" => {"max" => 200}, "smithy.api#pattern" => "^arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/idmappingtable/[\\d\\w-]+$"})
    IdMappingTableInputReferenceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#IdMappingTableInputReferenceArn", name: "IdMappingTableInputReferenceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn):entityresolution:.*:[0-9]+:(idmappingworkflow/.*)$"})
    IdMappingTableInputReferenceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#IdMappingTableInputReferenceConfig", name: "IdMappingTableInputReferenceConfig")
    IdMappingTableInputReferenceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#IdMappingTableInputReferenceProperties", name: "IdMappingTableInputReferenceProperties")
    IdMappingTableInputSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#IdMappingTableInputSource", name: "IdMappingTableInputSource")
    IdMappingTableInputSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#IdMappingTableInputSourceList", name: "IdMappingTableInputSourceList", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    IdMappingTableSchemaTypeProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#IdMappingTableSchemaTypeProperties", name: "IdMappingTableSchemaTypeProperties")
    IdMappingTableSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#IdMappingTableSummary", name: "IdMappingTableSummary")
    IdMappingTableSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#IdMappingTableSummaryList", name: "IdMappingTableSummaryList")
    IdMappingWorkflowsSupported = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#IdMappingWorkflowsSupported", name: "IdMappingWorkflowsSupported")
    IdNamespaceAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#IdNamespaceAssociation", name: "IdNamespaceAssociation")
    IdNamespaceAssociationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#IdNamespaceAssociationArn", name: "IdNamespaceAssociationArn", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/idnamespaceassociation/[\\d\\w-]+$"})
    IdNamespaceAssociationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#IdNamespaceAssociationIdentifier", name: "IdNamespaceAssociationIdentifier", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    IdNamespaceAssociationInputReferenceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#IdNamespaceAssociationInputReferenceArn", name: "IdNamespaceAssociationInputReferenceArn", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^arn:aws:entityresolution:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:idnamespace/[\\d\\w-]+$"})
    IdNamespaceAssociationInputReferenceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#IdNamespaceAssociationInputReferenceConfig", name: "IdNamespaceAssociationInputReferenceConfig")
    IdNamespaceAssociationInputReferenceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#IdNamespaceAssociationInputReferenceProperties", name: "IdNamespaceAssociationInputReferenceProperties")
    IdNamespaceAssociationInputReferencePropertiesSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#IdNamespaceAssociationInputReferencePropertiesSummary", name: "IdNamespaceAssociationInputReferencePropertiesSummary")
    IdNamespaceAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#IdNamespaceAssociationSummary", name: "IdNamespaceAssociationSummary")
    IdNamespaceAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#IdNamespaceAssociationSummaryList", name: "IdNamespaceAssociationSummaryList")
    IdNamespaceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#IdNamespaceType", name: "IdNamespaceType")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobComputePaymentConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#JobComputePaymentConfig", name: "JobComputePaymentConfig")
    JobType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#JobType", name: "JobType")
    JoinOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#JoinOperator", name: "JoinOperator", traits: {"smithy.api#enum" => [{"name" => "OR", "value" => "OR"}, {"name" => "AND", "value" => "AND"}]})
    JoinOperatorsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#JoinOperatorsList", name: "JoinOperatorsList", traits: {"smithy.api#length" => {"max" => 2}})
    JoinRequiredOption = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#JoinRequiredOption", name: "JoinRequiredOption", traits: {"smithy.api#enum" => [{"name" => "QUERY_RUNNER", "value" => "QUERY_RUNNER"}]})
    KMSKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#KMSKeyArn", name: "KMSKeyArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:kms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:key/[a-zA-Z0-9-]+$"})
    KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#KeyPrefix", name: "KeyPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\w!.=*/-]*$"})
    ListAnalysisTemplatesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListAnalysisTemplatesOperationInput", name: "ListAnalysisTemplatesOperationInput")
    ListAnalysisTemplatesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListAnalysisTemplatesOperationOutput", name: "ListAnalysisTemplatesOperationOutput")
    ListCollaborationAnalysisTemplatesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListCollaborationAnalysisTemplatesOperationInput", name: "ListCollaborationAnalysisTemplatesOperationInput")
    ListCollaborationAnalysisTemplatesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListCollaborationAnalysisTemplatesOperationOutput", name: "ListCollaborationAnalysisTemplatesOperationOutput")
    ListCollaborationChangeRequestsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListCollaborationChangeRequestsInput", name: "ListCollaborationChangeRequestsInput")
    ListCollaborationChangeRequestsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListCollaborationChangeRequestsOutput", name: "ListCollaborationChangeRequestsOutput")
    ListCollaborationConfiguredAudienceModelAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListCollaborationConfiguredAudienceModelAssociationsInput", name: "ListCollaborationConfiguredAudienceModelAssociationsInput")
    ListCollaborationConfiguredAudienceModelAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListCollaborationConfiguredAudienceModelAssociationsOutput", name: "ListCollaborationConfiguredAudienceModelAssociationsOutput")
    ListCollaborationIdNamespaceAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListCollaborationIdNamespaceAssociationsInput", name: "ListCollaborationIdNamespaceAssociationsInput")
    ListCollaborationIdNamespaceAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListCollaborationIdNamespaceAssociationsOutput", name: "ListCollaborationIdNamespaceAssociationsOutput")
    ListCollaborationPrivacyBudgetTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListCollaborationPrivacyBudgetTemplatesInput", name: "ListCollaborationPrivacyBudgetTemplatesInput")
    ListCollaborationPrivacyBudgetTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListCollaborationPrivacyBudgetTemplatesOutput", name: "ListCollaborationPrivacyBudgetTemplatesOutput")
    ListCollaborationPrivacyBudgetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListCollaborationPrivacyBudgetsInput", name: "ListCollaborationPrivacyBudgetsInput")
    ListCollaborationPrivacyBudgetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListCollaborationPrivacyBudgetsOutput", name: "ListCollaborationPrivacyBudgetsOutput")
    ListCollaborationsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListCollaborationsOperationInput", name: "ListCollaborationsOperationInput")
    ListCollaborationsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListCollaborationsOperationOutput", name: "ListCollaborationsOperationOutput")
    ListConfiguredAudienceModelAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListConfiguredAudienceModelAssociationsInput", name: "ListConfiguredAudienceModelAssociationsInput")
    ListConfiguredAudienceModelAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListConfiguredAudienceModelAssociationsOutput", name: "ListConfiguredAudienceModelAssociationsOutput")
    ListConfiguredTableAssociationsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListConfiguredTableAssociationsOperationInput", name: "ListConfiguredTableAssociationsOperationInput")
    ListConfiguredTableAssociationsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListConfiguredTableAssociationsOperationOutput", name: "ListConfiguredTableAssociationsOperationOutput")
    ListConfiguredTablesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListConfiguredTablesOperationInput", name: "ListConfiguredTablesOperationInput")
    ListConfiguredTablesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListConfiguredTablesOperationOutput", name: "ListConfiguredTablesOperationOutput")
    ListIdMappingTablesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListIdMappingTablesInput", name: "ListIdMappingTablesInput")
    ListIdMappingTablesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListIdMappingTablesOutput", name: "ListIdMappingTablesOutput")
    ListIdNamespaceAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListIdNamespaceAssociationsInput", name: "ListIdNamespaceAssociationsInput")
    ListIdNamespaceAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListIdNamespaceAssociationsOutput", name: "ListIdNamespaceAssociationsOutput")
    ListMembersOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListMembersOperationInput", name: "ListMembersOperationInput")
    ListMembersOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListMembersOperationOutput", name: "ListMembersOperationOutput")
    ListMembershipsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListMembershipsOperationInput", name: "ListMembershipsOperationInput")
    ListMembershipsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListMembershipsOperationOutput", name: "ListMembershipsOperationOutput")
    ListPrivacyBudgetTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListPrivacyBudgetTemplatesInput", name: "ListPrivacyBudgetTemplatesInput")
    ListPrivacyBudgetTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListPrivacyBudgetTemplatesOutput", name: "ListPrivacyBudgetTemplatesOutput")
    ListPrivacyBudgetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListPrivacyBudgetsInput", name: "ListPrivacyBudgetsInput")
    ListPrivacyBudgetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListPrivacyBudgetsOutput", name: "ListPrivacyBudgetsOutput")
    ListProtectedJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListProtectedJobsInput", name: "ListProtectedJobsInput")
    ListProtectedJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListProtectedJobsOutput", name: "ListProtectedJobsOutput")
    ListProtectedQueriesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListProtectedQueriesOperationInput", name: "ListProtectedQueriesOperationInput")
    ListProtectedQueriesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListProtectedQueriesOperationOutput", name: "ListProtectedQueriesOperationOutput")
    ListSchemasOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListSchemasOperationInput", name: "ListSchemasOperationInput")
    ListSchemasOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListSchemasOperationOutput", name: "ListSchemasOperationOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MLMemberAbilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#MLMemberAbilities", name: "MLMemberAbilities")
    MLPaymentConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#MLPaymentConfig", name: "MLPaymentConfig")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cleanrooms#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MemberAbilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#MemberAbilities", name: "MemberAbilities", traits: {"smithy.api#uniqueItems" => {}})
    MemberAbility = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#MemberAbility", name: "MemberAbility")
    MemberChangeSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#MemberChangeSpecification", name: "MemberChangeSpecification")
    MemberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#MemberList", name: "MemberList", traits: {"smithy.api#length" => {"min" => 0, "max" => 9}})
    MemberSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#MemberSpecification", name: "MemberSpecification")
    MemberStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#MemberStatus", name: "MemberStatus", traits: {"smithy.api#enum" => [{"name" => "INVITED", "value" => "INVITED"}, {"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "LEFT", "value" => "LEFT"}, {"name" => "REMOVED", "value" => "REMOVED"}]})
    MemberSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#MemberSummary", name: "MemberSummary")
    MemberSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#MemberSummaryList", name: "MemberSummaryList")
    Membership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#Membership", name: "Membership")
    MembershipArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#MembershipArn", name: "MembershipArn", traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^arn:aws:[\\w]+:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+$"})
    MembershipIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#MembershipIdentifier", name: "MembershipIdentifier", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    MembershipJobComputePaymentConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#MembershipJobComputePaymentConfig", name: "MembershipJobComputePaymentConfig")
    MembershipJobLogStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#MembershipJobLogStatus", name: "MembershipJobLogStatus")
    MembershipMLPaymentConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#MembershipMLPaymentConfig", name: "MembershipMLPaymentConfig")
    MembershipModelInferencePaymentConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#MembershipModelInferencePaymentConfig", name: "MembershipModelInferencePaymentConfig")
    MembershipModelTrainingPaymentConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#MembershipModelTrainingPaymentConfig", name: "MembershipModelTrainingPaymentConfig")
    MembershipPaymentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#MembershipPaymentConfiguration", name: "MembershipPaymentConfiguration")
    MembershipProtectedJobOutputConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#MembershipProtectedJobOutputConfiguration", name: "MembershipProtectedJobOutputConfiguration")
    MembershipProtectedJobResultConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#MembershipProtectedJobResultConfiguration", name: "MembershipProtectedJobResultConfiguration")
    MembershipProtectedQueryOutputConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#MembershipProtectedQueryOutputConfiguration", name: "MembershipProtectedQueryOutputConfiguration")
    MembershipProtectedQueryResultConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#MembershipProtectedQueryResultConfiguration", name: "MembershipProtectedQueryResultConfiguration")
    MembershipQueryComputePaymentConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#MembershipQueryComputePaymentConfig", name: "MembershipQueryComputePaymentConfig")
    MembershipQueryLogStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#MembershipQueryLogStatus", name: "MembershipQueryLogStatus")
    MembershipStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#MembershipStatus", name: "MembershipStatus", traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "REMOVED", "value" => "REMOVED"}, {"name" => "COLLABORATION_DELETED", "value" => "COLLABORATION_DELETED"}]})
    MembershipSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#MembershipSummary", name: "MembershipSummary")
    MembershipSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#MembershipSummaryList", name: "MembershipSummaryList")
    ModelInferencePaymentConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ModelInferencePaymentConfig", name: "ModelInferencePaymentConfig")
    ModelTrainingPaymentConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ModelTrainingPaymentConfig", name: "ModelTrainingPaymentConfig")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"max" => 10240}})
    ParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cleanrooms#ParameterMap", name: "ParameterMap")
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ParameterName", name: "ParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z_]+$"})
    ParameterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#ParameterType", name: "ParameterType")
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ParameterValue", name: "ParameterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    PaymentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#PaymentConfiguration", name: "PaymentConfiguration")
    PopulateIdMappingTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#PopulateIdMappingTableInput", name: "PopulateIdMappingTableInput")
    PopulateIdMappingTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#PopulateIdMappingTableOutput", name: "PopulateIdMappingTableOutput")
    PreviewPrivacyImpactInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#PreviewPrivacyImpactInput", name: "PreviewPrivacyImpactInput")
    PreviewPrivacyImpactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#PreviewPrivacyImpactOutput", name: "PreviewPrivacyImpactOutput")
    PreviewPrivacyImpactParametersInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#PreviewPrivacyImpactParametersInput", name: "PreviewPrivacyImpactParametersInput")
    PrivacyBudget = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#PrivacyBudget", name: "PrivacyBudget")
    PrivacyBudgetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#PrivacyBudgetSummary", name: "PrivacyBudgetSummary")
    PrivacyBudgetSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#PrivacyBudgetSummaryList", name: "PrivacyBudgetSummaryList")
    PrivacyBudgetTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#PrivacyBudgetTemplate", name: "PrivacyBudgetTemplate")
    PrivacyBudgetTemplateArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#PrivacyBudgetTemplateArn", name: "PrivacyBudgetTemplateArn", traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^arn:aws:[\\w]+:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:privacybudgettemplate/[\\d\\w-]+$"})
    PrivacyBudgetTemplateAutoRefresh = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#PrivacyBudgetTemplateAutoRefresh", name: "PrivacyBudgetTemplateAutoRefresh")
    PrivacyBudgetTemplateIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#PrivacyBudgetTemplateIdentifier", name: "PrivacyBudgetTemplateIdentifier", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    PrivacyBudgetTemplateParametersInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#PrivacyBudgetTemplateParametersInput", name: "PrivacyBudgetTemplateParametersInput")
    PrivacyBudgetTemplateParametersOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#PrivacyBudgetTemplateParametersOutput", name: "PrivacyBudgetTemplateParametersOutput")
    PrivacyBudgetTemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#PrivacyBudgetTemplateSummary", name: "PrivacyBudgetTemplateSummary")
    PrivacyBudgetTemplateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#PrivacyBudgetTemplateSummaryList", name: "PrivacyBudgetTemplateSummaryList")
    PrivacyBudgetTemplateUpdateParameters = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#PrivacyBudgetTemplateUpdateParameters", name: "PrivacyBudgetTemplateUpdateParameters")
    PrivacyBudgetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#PrivacyBudgetType", name: "PrivacyBudgetType")
    PrivacyImpact = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#PrivacyImpact", name: "PrivacyImpact")
    ProtectedJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJob", name: "ProtectedJob")
    ProtectedJobAnalysisType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobAnalysisType", name: "ProtectedJobAnalysisType")
    ProtectedJobComputeConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobComputeConfiguration", name: "ProtectedJobComputeConfiguration")
    ProtectedJobConfigurationDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobConfigurationDetails", name: "ProtectedJobConfigurationDetails")
    ProtectedJobDirectAnalysisConfigurationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobDirectAnalysisConfigurationDetails", name: "ProtectedJobDirectAnalysisConfigurationDetails")
    ProtectedJobError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobError", name: "ProtectedJobError")
    ProtectedJobIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobIdentifier", name: "ProtectedJobIdentifier", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ProtectedJobMemberOutputConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobMemberOutputConfigurationInput", name: "ProtectedJobMemberOutputConfigurationInput")
    ProtectedJobMemberOutputConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobMemberOutputConfigurationOutput", name: "ProtectedJobMemberOutputConfigurationOutput")
    ProtectedJobMemberOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobMemberOutputList", name: "ProtectedJobMemberOutputList")
    ProtectedJobOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobOutput", name: "ProtectedJobOutput")
    ProtectedJobOutputConfigurationInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobOutputConfigurationInput", name: "ProtectedJobOutputConfigurationInput")
    ProtectedJobOutputConfigurationOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobOutputConfigurationOutput", name: "ProtectedJobOutputConfigurationOutput")
    ProtectedJobParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobParameters", name: "ProtectedJobParameters")
    ProtectedJobReceiverAccountIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobReceiverAccountIds", name: "ProtectedJobReceiverAccountIds")
    ProtectedJobReceiverConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobReceiverConfiguration", name: "ProtectedJobReceiverConfiguration")
    ProtectedJobReceiverConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobReceiverConfigurations", name: "ProtectedJobReceiverConfigurations")
    ProtectedJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobResult", name: "ProtectedJobResult")
    ProtectedJobResultConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobResultConfigurationInput", name: "ProtectedJobResultConfigurationInput")
    ProtectedJobResultConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobResultConfigurationOutput", name: "ProtectedJobResultConfigurationOutput")
    ProtectedJobS3Output = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobS3Output", name: "ProtectedJobS3Output")
    ProtectedJobS3OutputConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobS3OutputConfigurationInput", name: "ProtectedJobS3OutputConfigurationInput")
    ProtectedJobS3OutputConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobS3OutputConfigurationOutput", name: "ProtectedJobS3OutputConfigurationOutput")
    ProtectedJobSingleMemberOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobSingleMemberOutput", name: "ProtectedJobSingleMemberOutput")
    ProtectedJobStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobStatistics", name: "ProtectedJobStatistics")
    ProtectedJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobStatus", name: "ProtectedJobStatus")
    ProtectedJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobSummary", name: "ProtectedJobSummary")
    ProtectedJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobSummaryList", name: "ProtectedJobSummaryList")
    ProtectedJobType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobType", name: "ProtectedJobType")
    ProtectedJobWorkerComputeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobWorkerComputeConfiguration", name: "ProtectedJobWorkerComputeConfiguration")
    ProtectedJobWorkerComputeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#ProtectedJobWorkerComputeType", name: "ProtectedJobWorkerComputeType")
    ProtectedQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedQuery", name: "ProtectedQuery")
    ProtectedQueryDistributeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryDistributeOutput", name: "ProtectedQueryDistributeOutput")
    ProtectedQueryDistributeOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryDistributeOutputConfiguration", name: "ProtectedQueryDistributeOutputConfiguration")
    ProtectedQueryDistributeOutputConfigurationLocation = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryDistributeOutputConfigurationLocation", name: "ProtectedQueryDistributeOutputConfigurationLocation")
    ProtectedQueryDistributeOutputConfigurationLocations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryDistributeOutputConfigurationLocations", name: "ProtectedQueryDistributeOutputConfigurationLocations")
    ProtectedQueryError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryError", name: "ProtectedQueryError")
    ProtectedQueryIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryIdentifier", name: "ProtectedQueryIdentifier", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ProtectedQueryMemberOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryMemberOutputConfiguration", name: "ProtectedQueryMemberOutputConfiguration")
    ProtectedQueryMemberOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryMemberOutputList", name: "ProtectedQueryMemberOutputList")
    ProtectedQueryOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryOutput", name: "ProtectedQueryOutput")
    ProtectedQueryOutputConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryOutputConfiguration", name: "ProtectedQueryOutputConfiguration")
    ProtectedQueryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryResult", name: "ProtectedQueryResult")
    ProtectedQueryResultConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryResultConfiguration", name: "ProtectedQueryResultConfiguration")
    ProtectedQueryS3Output = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryS3Output", name: "ProtectedQueryS3Output")
    ProtectedQueryS3OutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryS3OutputConfiguration", name: "ProtectedQueryS3OutputConfiguration")
    ProtectedQuerySQLParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedQuerySQLParameters", name: "ProtectedQuerySQLParameters", traits: {"smithy.api#sensitive" => {}})
    ProtectedQuerySingleMemberOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedQuerySingleMemberOutput", name: "ProtectedQuerySingleMemberOutput")
    ProtectedQueryStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryStatistics", name: "ProtectedQueryStatistics")
    ProtectedQueryStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryStatus", name: "ProtectedQueryStatus", traits: {"smithy.api#enum" => [{"name" => "SUBMITTED", "value" => "SUBMITTED"}, {"name" => "STARTED", "value" => "STARTED"}, {"name" => "CANCELLED", "value" => "CANCELLED"}, {"name" => "CANCELLING", "value" => "CANCELLING"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "SUCCESS", "value" => "SUCCESS"}, {"name" => "TIMED_OUT", "value" => "TIMED_OUT"}]})
    ProtectedQuerySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ProtectedQuerySummary", name: "ProtectedQuerySummary")
    ProtectedQuerySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ProtectedQuerySummaryList", name: "ProtectedQuerySummaryList")
    ProtectedQueryType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ProtectedQueryType", name: "ProtectedQueryType", traits: {"smithy.api#enum" => [{"name" => "SQL", "value" => "SQL"}]})
    QueryComputePaymentConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#QueryComputePaymentConfig", name: "QueryComputePaymentConfig")
    QueryConstraint = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#QueryConstraint", name: "QueryConstraint")
    QueryConstraintList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#QueryConstraintList", name: "QueryConstraintList", traits: {"smithy.api#length" => {"max" => 1}})
    QueryConstraintRequireOverlap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#QueryConstraintRequireOverlap", name: "QueryConstraintRequireOverlap")
    QueryTables = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#QueryTables", name: "QueryTables")
    ReceiverAccountIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ReceiverAccountIds", name: "ReceiverAccountIds")
    ReceiverConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ReceiverConfiguration", name: "ReceiverConfiguration")
    ReceiverConfigurationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ReceiverConfigurationsList", name: "ReceiverConfigurationsList")
    RemainingBudget = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cleanrooms#RemainingBudget", name: "RemainingBudget", traits: {"smithy.api#range" => {"min" => 0}})
    ResourceAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ResourceAlias", name: "ResourceAlias", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$"})
    ResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ResourceDescription", name: "ResourceDescription", traits: {"smithy.api#length" => {"max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t\\r\\n]*$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ResourceType", name: "ResourceType", traits: {"smithy.api#enum" => [{"value" => "CONFIGURED_TABLE", "name" => "CONFIGURED_TABLE"}, {"value" => "COLLABORATION", "name" => "COLLABORATION"}, {"value" => "MEMBERSHIP", "name" => "MEMBERSHIP"}, {"value" => "CONFIGURED_TABLE_ASSOCIATION", "name" => "CONFIGURED_TABLE_ASSOCIATION"}]})
    ResultFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ResultFormat", name: "ResultFormat", traits: {"smithy.api#enum" => [{"name" => "CSV", "value" => "CSV"}, {"name" => "PARQUET", "value" => "PARQUET"}]})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 32, "max" => 512}, "smithy.api#pattern" => "^arn:aws:iam::[\\w]+:role/[\\w+=./@-]+$"})
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#S3Location", name: "S3Location")
    ScalarFunctions = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ScalarFunctions", name: "ScalarFunctions", traits: {"smithy.api#enum" => [{"name" => "ABS", "value" => "ABS"}, {"name" => "CAST", "value" => "CAST"}, {"name" => "CEILING", "value" => "CEILING"}, {"name" => "COALESCE", "value" => "COALESCE"}, {"name" => "CONVERT", "value" => "CONVERT"}, {"name" => "CURRENT_DATE", "value" => "CURRENT_DATE"}, {"name" => "DATEADD", "value" => "DATEADD"}, {"name" => "EXTRACT", "value" => "EXTRACT"}, {"name" => "FLOOR", "value" => "FLOOR"}, {"name" => "GETDATE", "value" => "GETDATE"}, {"name" => "LN", "value" => "LN"}, {"name" => "LOG", "value" => "LOG"}, {"name" => "LOWER", "value" => "LOWER"}, {"name" => "ROUND", "value" => "ROUND"}, {"name" => "RTRIM", "value" => "RTRIM"}, {"name" => "SQRT", "value" => "SQRT"}, {"name" => "SUBSTRING", "value" => "SUBSTRING"}, {"name" => "TO_CHAR", "value" => "TO_CHAR"}, {"name" => "TO_DATE", "value" => "TO_DATE"}, {"name" => "TO_NUMBER", "value" => "TO_NUMBER"}, {"name" => "TO_TIMESTAMP", "value" => "TO_TIMESTAMP"}, {"name" => "TRIM", "value" => "TRIM"}, {"name" => "TRUNC", "value" => "TRUNC"}, {"name" => "UPPER", "value" => "UPPER"}]})
    ScalarFunctionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ScalarFunctionsList", name: "ScalarFunctionsList")
    Schema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#Schema", name: "Schema")
    SchemaAnalysisRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#SchemaAnalysisRuleList", name: "SchemaAnalysisRuleList", traits: {"smithy.api#length" => {"max" => 25}})
    SchemaAnalysisRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#SchemaAnalysisRuleRequest", name: "SchemaAnalysisRuleRequest")
    SchemaAnalysisRuleRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#SchemaAnalysisRuleRequestList", name: "SchemaAnalysisRuleRequestList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    SchemaConfiguration = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#SchemaConfiguration", name: "SchemaConfiguration")
    SchemaConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#SchemaConfigurationList", name: "SchemaConfigurationList")
    SchemaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#SchemaList", name: "SchemaList", traits: {"smithy.api#length" => {"max" => 25}})
    SchemaResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#SchemaResourceArn", name: "SchemaResourceArn", traits: {"smithy.api#length" => {"max" => 200}, "smithy.api#pattern" => "^arn:aws:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership\\/[\\d\\w-]+\\/(configuredtableassociation|idmappingtable)\\/[\\d\\w-]+$"})
    SchemaStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#SchemaStatus", name: "SchemaStatus")
    SchemaStatusDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#SchemaStatusDetail", name: "SchemaStatusDetail")
    SchemaStatusDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#SchemaStatusDetailList", name: "SchemaStatusDetailList")
    SchemaStatusReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#SchemaStatusReason", name: "SchemaStatusReason")
    SchemaStatusReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#SchemaStatusReasonCode", name: "SchemaStatusReasonCode")
    SchemaStatusReasonList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#SchemaStatusReasonList", name: "SchemaStatusReasonList")
    SchemaSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#SchemaSummary", name: "SchemaSummary")
    SchemaSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#SchemaSummaryList", name: "SchemaSummaryList")
    SchemaType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#SchemaType", name: "SchemaType")
    SchemaTypeProperties = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#SchemaTypeProperties", name: "SchemaTypeProperties")
    SecretsManagerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#SecretsManagerArn", name: "SecretsManagerArn", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^arn:aws:secretsmanager:[a-z]{2}-[a-z]+-[0-9]:\\d{12}:secret:.*$"})
    SelectedAnalysisMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#SelectedAnalysisMethod", name: "SelectedAnalysisMethod")
    SelectedAnalysisMethods = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#SelectedAnalysisMethods", name: "SelectedAnalysisMethods")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SnowflakeAccountIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#SnowflakeAccountIdentifier", name: "SnowflakeAccountIdentifier", traits: {"smithy.api#length" => {"min" => 3, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{N}\\p{Pc}\\p{Pd}\\p{Zs}.]+$"})
    SnowflakeDatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#SnowflakeDatabaseName", name: "SnowflakeDatabaseName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{N}\\p{Pc}\\p{Pd}\\p{Zs}]+$"})
    SnowflakeSchemaName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#SnowflakeSchemaName", name: "SnowflakeSchemaName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{N}\\p{Pc}\\p{Pd}\\p{Zs}]+$"})
    SnowflakeTableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#SnowflakeTableName", name: "SnowflakeTableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{N}\\p{Pc}\\p{Pd}\\p{Zs}]+$"})
    SnowflakeTableReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#SnowflakeTableReference", name: "SnowflakeTableReference")
    SnowflakeTableSchema = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#SnowflakeTableSchema", name: "SnowflakeTableSchema")
    SnowflakeTableSchemaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#SnowflakeTableSchemaList", name: "SnowflakeTableSchemaList", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    SnowflakeTableSchemaV1 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#SnowflakeTableSchemaV1", name: "SnowflakeTableSchemaV1")
    StartProtectedJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#StartProtectedJobInput", name: "StartProtectedJobInput")
    StartProtectedJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#StartProtectedJobOutput", name: "StartProtectedJobOutput")
    StartProtectedQueryOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#StartProtectedQueryOperationInput", name: "StartProtectedQueryOperationInput")
    StartProtectedQueryOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#StartProtectedQueryOperationOutput", name: "StartProtectedQueryOperationOutput")
    SupportedS3Region = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#SupportedS3Region", name: "SupportedS3Region")
    TableAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#TableAlias", name: "TableAlias", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$"})
    TableAliasList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#TableAliasList", name: "TableAliasList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    TableDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#TableDescription", name: "TableDescription", traits: {"smithy.api#length" => {"max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t\\r\\n]*$"})
    TableReference = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cleanrooms#TableReference", name: "TableReference")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#TagKeys", name: "TagKeys")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cleanrooms#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetProtectedJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#TargetProtectedJobStatus", name: "TargetProtectedJobStatus")
    TargetProtectedQueryStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#TargetProtectedQueryStatus", name: "TargetProtectedQueryStatus", traits: {"smithy.api#enum" => [{"name" => "CANCELLED", "value" => "CANCELLED"}]})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#UUID", name: "UUID", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateAnalysisTemplateOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateAnalysisTemplateOperationInput", name: "UpdateAnalysisTemplateOperationInput")
    UpdateAnalysisTemplateOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateAnalysisTemplateOperationOutput", name: "UpdateAnalysisTemplateOperationOutput")
    UpdateCollaborationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateCollaborationOperationInput", name: "UpdateCollaborationOperationInput")
    UpdateCollaborationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateCollaborationOperationOutput", name: "UpdateCollaborationOperationOutput")
    UpdateConfiguredAudienceModelAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateConfiguredAudienceModelAssociationInput", name: "UpdateConfiguredAudienceModelAssociationInput")
    UpdateConfiguredAudienceModelAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateConfiguredAudienceModelAssociationOutput", name: "UpdateConfiguredAudienceModelAssociationOutput")
    UpdateConfiguredTableAnalysisRuleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateConfiguredTableAnalysisRuleOperationInput", name: "UpdateConfiguredTableAnalysisRuleOperationInput")
    UpdateConfiguredTableAnalysisRuleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateConfiguredTableAnalysisRuleOperationOutput", name: "UpdateConfiguredTableAnalysisRuleOperationOutput")
    UpdateConfiguredTableAssociationAnalysisRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateConfiguredTableAssociationAnalysisRuleInput", name: "UpdateConfiguredTableAssociationAnalysisRuleInput")
    UpdateConfiguredTableAssociationAnalysisRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateConfiguredTableAssociationAnalysisRuleOutput", name: "UpdateConfiguredTableAssociationAnalysisRuleOutput")
    UpdateConfiguredTableAssociationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateConfiguredTableAssociationOperationInput", name: "UpdateConfiguredTableAssociationOperationInput")
    UpdateConfiguredTableAssociationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateConfiguredTableAssociationOperationOutput", name: "UpdateConfiguredTableAssociationOperationOutput")
    UpdateConfiguredTableOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateConfiguredTableOperationInput", name: "UpdateConfiguredTableOperationInput")
    UpdateConfiguredTableOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateConfiguredTableOperationOutput", name: "UpdateConfiguredTableOperationOutput")
    UpdateIdMappingTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateIdMappingTableInput", name: "UpdateIdMappingTableInput")
    UpdateIdMappingTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateIdMappingTableOutput", name: "UpdateIdMappingTableOutput")
    UpdateIdNamespaceAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateIdNamespaceAssociationInput", name: "UpdateIdNamespaceAssociationInput")
    UpdateIdNamespaceAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateIdNamespaceAssociationOutput", name: "UpdateIdNamespaceAssociationOutput")
    UpdateMembershipOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateMembershipOperationInput", name: "UpdateMembershipOperationInput")
    UpdateMembershipOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateMembershipOperationOutput", name: "UpdateMembershipOperationOutput")
    UpdatePrivacyBudgetTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdatePrivacyBudgetTemplateInput", name: "UpdatePrivacyBudgetTemplateInput")
    UpdatePrivacyBudgetTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdatePrivacyBudgetTemplateOutput", name: "UpdatePrivacyBudgetTemplateOutput")
    UpdateProtectedJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateProtectedJobInput", name: "UpdateProtectedJobInput")
    UpdateProtectedJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateProtectedJobOutput", name: "UpdateProtectedJobOutput")
    UpdateProtectedQueryOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateProtectedQueryOperationInput", name: "UpdateProtectedQueryOperationInput")
    UpdateProtectedQueryOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#UpdateProtectedQueryOperationOutput", name: "UpdateProtectedQueryOperationOutput")
    UsersNoisePerQuery = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cleanrooms#UsersNoisePerQuery", name: "UsersNoisePerQuery", traits: {"smithy.api#range" => {"min" => 10, "max" => 100}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cleanrooms#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cleanrooms#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "FIELD_VALIDATION_FAILED", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "INVALID_CONFIGURATION", "name" => "INVALID_CONFIGURATION"}, {"value" => "INVALID_QUERY", "name" => "INVALID_QUERY"}, {"value" => "IAM_SYNCHRONIZATION_DELAY", "name" => "IAM_SYNCHRONIZATION_DELAY"}]})
    WorkerComputeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cleanrooms#WorkerComputeConfiguration", name: "WorkerComputeConfiguration")
    WorkerComputeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cleanrooms#WorkerComputeType", name: "WorkerComputeType")

    AccessBudget.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetedResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    AccessBudget.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessBudgetDetailsList, name: "details", traits: {"smithy.api#required" => {}}))
    AccessBudget.add_member(:aggregate_remaining_budget, ::Smithy::Schema::Shapes::MemberShape.new(target: RemainingBudget, name: "aggregateRemainingBudget", traits: {"smithy.api#required" => {}}))
    AccessBudget.type = Types::AccessBudget
    AccessBudgetDetails.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    AccessBudgetDetails.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    AccessBudgetDetails.add_member(:remaining_budget, ::Smithy::Schema::Shapes::MemberShape.new(target: RemainingBudget, name: "remainingBudget", traits: {"smithy.api#required" => {}}))
    AccessBudgetDetails.add_member(:budget, ::Smithy::Schema::Shapes::MemberShape.new(target: Budget, name: "budget", traits: {"smithy.api#required" => {}}))
    AccessBudgetDetails.add_member(:budget_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessBudgetType, name: "budgetType", traits: {"smithy.api#required" => {}}))
    AccessBudgetDetails.add_member(:auto_refresh, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRefreshMode, name: "autoRefresh"))
    AccessBudgetDetails.type = Types::AccessBudgetDetails
    AccessBudgetDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessBudgetDetails, name: "member"))
    AccessBudgetType.add_member(:calendar_day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CALENDAR_DAY", traits: {"smithy.api#enumValue" => "CALENDAR_DAY"}))
    AccessBudgetType.add_member(:calendar_month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CALENDAR_MONTH", traits: {"smithy.api#enumValue" => "CALENDAR_MONTH"}))
    AccessBudgetType.add_member(:calendar_week, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CALENDAR_WEEK", traits: {"smithy.api#enumValue" => "CALENDAR_WEEK"}))
    AccessBudgetType.add_member(:lifetime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIFETIME", traits: {"smithy.api#enumValue" => "LIFETIME"}))
    AccessBudgetsPrivacyTemplateParametersInput.add_member(:budget_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetParameters, name: "budgetParameters", traits: {"smithy.api#required" => {}}))
    AccessBudgetsPrivacyTemplateParametersInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetedResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    AccessBudgetsPrivacyTemplateParametersInput.type = Types::AccessBudgetsPrivacyTemplateParametersInput
    AccessBudgetsPrivacyTemplateParametersOutput.add_member(:budget_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetParameters, name: "budgetParameters", traits: {"smithy.api#required" => {}}))
    AccessBudgetsPrivacyTemplateParametersOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetedResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    AccessBudgetsPrivacyTemplateParametersOutput.type = Types::AccessBudgetsPrivacyTemplateParametersOutput
    AccessBudgetsPrivacyTemplateUpdateParameters.add_member(:budget_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetParameters, name: "budgetParameters", traits: {"smithy.api#required" => {}}))
    AccessBudgetsPrivacyTemplateUpdateParameters.type = Types::AccessBudgetsPrivacyTemplateUpdateParameters
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedExceptionReason, name: "reason"))
    AccessDeniedException.type = Types::AccessDeniedException
    AdditionalAnalyses.add_member(:allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOWED", traits: {"smithy.api#enumValue" => "ALLOWED"}))
    AdditionalAnalyses.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "REQUIRED"}))
    AdditionalAnalyses.add_member(:not_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_ALLOWED", traits: {"smithy.api#enumValue" => "NOT_ALLOWED"}))
    AggregateColumn.add_member(:column_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnNameList, name: "columnNames", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    AggregateColumn.add_member(:function, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateFunctionName, name: "function", traits: {"smithy.api#required" => {}}))
    AggregateColumn.type = Types::AggregateColumn
    AggregateColumnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateColumn, name: "member"))
    AggregationConstraint.add_member(:column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnName, name: "columnName", traits: {"smithy.api#required" => {}}))
    AggregationConstraint.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minimum", traits: {"smithy.api#range" => {"min" => 2, "max" => 100000}, "smithy.api#required" => {}}))
    AggregationConstraint.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationType, name: "type", traits: {"smithy.api#required" => {}}))
    AggregationConstraint.type = Types::AggregationConstraint
    AggregationConstraints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationConstraint, name: "member"))
    AllowedAdditionalAnalyses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAnalysesResourceArn, name: "member"))
    AllowedAnalysesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArnOrQueryWildcard, name: "member"))
    AllowedAnalysisProviderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AllowedColumnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "member"))
    AllowedResultReceivers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AllowedResultRegions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedS3Region, name: "member"))
    AnalysisFormat.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQL", traits: {"smithy.api#enumValue" => "SQL"}))
    AnalysisFormat.add_member(:pyspark_1_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PYSPARK_1_0", traits: {"smithy.api#enumValue" => "PYSPARK_1_0"}))
    AnalysisMethod.add_member(:direct_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT_QUERY", traits: {"smithy.api#enumValue" => "DIRECT_QUERY"}))
    AnalysisMethod.add_member(:direct_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT_JOB", traits: {"smithy.api#enumValue" => "DIRECT_JOB"}))
    AnalysisMethod.add_member(:multiple, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTIPLE", traits: {"smithy.api#enumValue" => "MULTIPLE"}))
    AnalysisParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, name: "name", traits: {"smithy.api#required" => {}}))
    AnalysisParameter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterType, name: "type", traits: {"smithy.api#required" => {}}))
    AnalysisParameter.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "defaultValue"))
    AnalysisParameter.type = Types::AnalysisParameter
    AnalysisParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisParameter, name: "member"))
    AnalysisRule.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    AnalysisRule.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleType, name: "type", traits: {"smithy.api#required" => {}}))
    AnalysisRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAlias, name: "name", traits: {"smithy.api#required" => {}}))
    AnalysisRule.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    AnalysisRule.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    AnalysisRule.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRulePolicy, name: "policy", traits: {"smithy.api#required" => {}}))
    AnalysisRule.add_member(:collaboration_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRulePolicy, name: "collaborationPolicy"))
    AnalysisRule.add_member(:consolidated_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsolidatedPolicy, name: "consolidatedPolicy"))
    AnalysisRule.type = Types::AnalysisRule
    AnalysisRuleAggregation.add_member(:aggregate_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateColumnList, name: "aggregateColumns", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    AnalysisRuleAggregation.add_member(:join_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnList, name: "joinColumns", traits: {"smithy.api#required" => {}}))
    AnalysisRuleAggregation.add_member(:join_required, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinRequiredOption, name: "joinRequired"))
    AnalysisRuleAggregation.add_member(:allowed_join_operators, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinOperatorsList, name: "allowedJoinOperators"))
    AnalysisRuleAggregation.add_member(:dimension_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnList, name: "dimensionColumns", traits: {"smithy.api#required" => {}}))
    AnalysisRuleAggregation.add_member(:scalar_functions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalarFunctionsList, name: "scalarFunctions", traits: {"smithy.api#required" => {}}))
    AnalysisRuleAggregation.add_member(:output_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationConstraints, name: "outputConstraints", traits: {"smithy.api#required" => {}}))
    AnalysisRuleAggregation.add_member(:additional_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAnalyses, name: "additionalAnalyses"))
    AnalysisRuleAggregation.type = Types::AnalysisRuleAggregation
    AnalysisRuleColumnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnName, name: "member"))
    AnalysisRuleColumnNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnName, name: "member"))
    AnalysisRuleCustom.add_member(:allowed_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedAnalysesList, name: "allowedAnalyses", traits: {"smithy.api#length" => {"min" => 0}, "smithy.api#required" => {}}))
    AnalysisRuleCustom.add_member(:allowed_analysis_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedAnalysisProviderList, name: "allowedAnalysisProviders", traits: {"smithy.api#length" => {"min" => 0}}))
    AnalysisRuleCustom.add_member(:additional_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAnalyses, name: "additionalAnalyses"))
    AnalysisRuleCustom.add_member(:disallowed_output_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnList, name: "disallowedOutputColumns"))
    AnalysisRuleCustom.add_member(:differential_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyConfiguration, name: "differentialPrivacy"))
    AnalysisRuleCustom.type = Types::AnalysisRuleCustom
    AnalysisRuleIdMappingTable.add_member(:join_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnList, name: "joinColumns", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#required" => {}}))
    AnalysisRuleIdMappingTable.add_member(:query_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryConstraintList, name: "queryConstraints", traits: {"smithy.api#required" => {}}))
    AnalysisRuleIdMappingTable.add_member(:dimension_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnList, name: "dimensionColumns"))
    AnalysisRuleIdMappingTable.type = Types::AnalysisRuleIdMappingTable
    AnalysisRuleList.add_member(:join_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnList, name: "joinColumns", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    AnalysisRuleList.add_member(:allowed_join_operators, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinOperatorsList, name: "allowedJoinOperators"))
    AnalysisRuleList.add_member(:list_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnList, name: "listColumns", traits: {"smithy.api#required" => {}}))
    AnalysisRuleList.add_member(:additional_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAnalyses, name: "additionalAnalyses"))
    AnalysisRuleList.type = Types::AnalysisRuleList
    AnalysisRulePolicy.add_member(:v1, Types::AnalysisRulePolicy::V1, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRulePolicyV1, name: "v1"))
    AnalysisRulePolicy.add_member(:unknown, Types::AnalysisRulePolicy::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AnalysisRulePolicy.type = Types::AnalysisRulePolicy
    AnalysisRulePolicyV1.add_member(:list, Types::AnalysisRulePolicyV1::List, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleList, name: "list"))
    AnalysisRulePolicyV1.add_member(:aggregation, Types::AnalysisRulePolicyV1::Aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleAggregation, name: "aggregation"))
    AnalysisRulePolicyV1.add_member(:custom, Types::AnalysisRulePolicyV1::Custom, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleCustom, name: "custom"))
    AnalysisRulePolicyV1.add_member(:id_mapping_table, Types::AnalysisRulePolicyV1::IdMappingTable, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleIdMappingTable, name: "idMappingTable"))
    AnalysisRulePolicyV1.add_member(:unknown, Types::AnalysisRulePolicyV1::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AnalysisRulePolicyV1.type = Types::AnalysisRulePolicyV1
    AnalysisRuleType.add_member(:aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGGREGATION", traits: {"smithy.api#enumValue" => "AGGREGATION"}))
    AnalysisRuleType.add_member(:list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIST", traits: {"smithy.api#enumValue" => "LIST"}))
    AnalysisRuleType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    AnalysisRuleType.add_member(:id_mapping_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ID_MAPPING_TABLE", traits: {"smithy.api#enumValue" => "ID_MAPPING_TABLE"}))
    AnalysisRuleTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleType, name: "member"))
    AnalysisSchema.add_member(:referenced_tables, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTables, name: "referencedTables"))
    AnalysisSchema.type = Types::AnalysisSchema
    AnalysisSource.add_member(:text, Types::AnalysisSource::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateText, name: "text"))
    AnalysisSource.add_member(:artifacts, Types::AnalysisSource::Artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArtifacts, name: "artifacts"))
    AnalysisSource.add_member(:unknown, Types::AnalysisSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AnalysisSource.type = Types::AnalysisSource
    AnalysisSourceMetadata.add_member(:artifacts, Types::AnalysisSourceMetadata::Artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArtifactMetadata, name: "artifacts"))
    AnalysisSourceMetadata.add_member(:unknown, Types::AnalysisSourceMetadata::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AnalysisSourceMetadata.type = Types::AnalysisSourceMetadata
    AnalysisTemplate.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateIdentifier, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AnalysisTemplateId"}))
    AnalysisTemplate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArn, name: "arn", traits: {"smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "membershipId", traits: {"smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    AnalysisTemplate.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceAlias, name: "name", traits: {"smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisSchema, name: "schema", traits: {"smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisFormat, name: "format", traits: {"smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisSource, name: "source", traits: {"smithy.api#required" => {}}))
    AnalysisTemplate.add_member(:source_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisSourceMetadata, name: "sourceMetadata"))
    AnalysisTemplate.add_member(:analysis_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisParameterList, name: "analysisParameters"))
    AnalysisTemplate.add_member(:validations, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateValidationStatusDetailList, name: "validations"))
    AnalysisTemplate.add_member(:error_message_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageConfiguration, name: "errorMessageConfiguration"))
    AnalysisTemplate.type = Types::AnalysisTemplate
    AnalysisTemplateArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArn, name: "member"))
    AnalysisTemplateArtifact.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "location", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateArtifact.type = Types::AnalysisTemplateArtifact
    AnalysisTemplateArtifactList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArtifact, name: "member"))
    AnalysisTemplateArtifactMetadata.add_member(:entry_point_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: Hash, name: "entryPointHash", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateArtifactMetadata.add_member(:additional_artifact_hashes, ::Smithy::Schema::Shapes::MemberShape.new(target: HashList, name: "additionalArtifactHashes"))
    AnalysisTemplateArtifactMetadata.type = Types::AnalysisTemplateArtifactMetadata
    AnalysisTemplateArtifacts.add_member(:entry_point, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArtifact, name: "entryPoint", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateArtifacts.add_member(:additional_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArtifactList, name: "additionalArtifacts"))
    AnalysisTemplateArtifacts.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateArtifacts.type = Types::AnalysisTemplateArtifacts
    AnalysisTemplateSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArn, name: "arn", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateIdentifier, name: "id", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceAlias, name: "name", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "membershipId", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    AnalysisTemplateSummary.type = Types::AnalysisTemplateSummary
    AnalysisTemplateSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateSummary, name: "member"))
    AnalysisTemplateValidationStatus.add_member(:valid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALID", traits: {"smithy.api#enumValue" => "VALID"}))
    AnalysisTemplateValidationStatus.add_member(:invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID", traits: {"smithy.api#enumValue" => "INVALID"}))
    AnalysisTemplateValidationStatus.add_member(:unable_to_validate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNABLE_TO_VALIDATE", traits: {"smithy.api#enumValue" => "UNABLE_TO_VALIDATE"}))
    AnalysisTemplateValidationStatusDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateValidationType, name: "type", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateValidationStatusDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateValidationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateValidationStatusDetail.add_member(:reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateValidationStatusReasonList, name: "reasons"))
    AnalysisTemplateValidationStatusDetail.type = Types::AnalysisTemplateValidationStatusDetail
    AnalysisTemplateValidationStatusDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateValidationStatusDetail, name: "member"))
    AnalysisTemplateValidationStatusReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AnalysisTemplateValidationStatusReason.type = Types::AnalysisTemplateValidationStatusReason
    AnalysisTemplateValidationStatusReasonList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateValidationStatusReason, name: "member"))
    AnalysisTemplateValidationType.add_member(:differential_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIFFERENTIAL_PRIVACY", traits: {"smithy.api#enumValue" => "DIFFERENTIAL_PRIVACY"}))
    AnalysisType.add_member(:direct_analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT_ANALYSIS", traits: {"smithy.api#enumValue" => "DIRECT_ANALYSIS"}))
    AnalysisType.add_member(:additional_analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDITIONAL_ANALYSIS", traits: {"smithy.api#enumValue" => "ADDITIONAL_ANALYSIS"}))
    AnalyticsEngine.add_member(:spark, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPARK", traits: {"smithy.api#enumValue" => "SPARK"}))
    AnalyticsEngine.add_member(:clean_rooms_sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLEAN_ROOMS_SQL", traits: {"smithy.api#enumValue" => "CLEAN_ROOMS_SQL"}))
    AthenaTableReference.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: CommercialRegion, name: "region"))
    AthenaTableReference.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: AthenaWorkGroup, name: "workGroup", traits: {"smithy.api#required" => {}}))
    AthenaTableReference.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: AthenaOutputLocation, name: "outputLocation"))
    AthenaTableReference.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AthenaDatabaseName, name: "databaseName", traits: {"smithy.api#required" => {}}))
    AthenaTableReference.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AthenaTableName, name: "tableName", traits: {"smithy.api#required" => {}}))
    AthenaTableReference.type = Types::AthenaTableReference
    AutoApprovedChangeType.add_member(:add_member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD_MEMBER", traits: {"smithy.api#enumValue" => "ADD_MEMBER"}))
    AutoApprovedChangeTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoApprovedChangeType, name: "member"))
    AutoRefreshMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoRefreshMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    BatchGetCollaborationAnalysisTemplateError.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArn, name: "arn", traits: {"smithy.api#required" => {}}))
    BatchGetCollaborationAnalysisTemplateError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code", traits: {"smithy.api#required" => {}}))
    BatchGetCollaborationAnalysisTemplateError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    BatchGetCollaborationAnalysisTemplateError.type = Types::BatchGetCollaborationAnalysisTemplateError
    BatchGetCollaborationAnalysisTemplateErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetCollaborationAnalysisTemplateError, name: "member"))
    BatchGetCollaborationAnalysisTemplateOperationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    BatchGetCollaborationAnalysisTemplateOperationInput.add_member(:analysis_template_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArnList, name: "analysisTemplateArns", traits: {"smithy.api#required" => {}}))
    BatchGetCollaborationAnalysisTemplateOperationInput.type = Types::BatchGetCollaborationAnalysisTemplateOperationInput
    BatchGetCollaborationAnalysisTemplateOperationOutput.add_member(:collaboration_analysis_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationAnalysisTemplateList, name: "collaborationAnalysisTemplates", traits: {"smithy.api#required" => {}}))
    BatchGetCollaborationAnalysisTemplateOperationOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetCollaborationAnalysisTemplateErrorList, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchGetCollaborationAnalysisTemplateOperationOutput.type = Types::BatchGetCollaborationAnalysisTemplateOperationOutput
    BatchGetSchemaAnalysisRuleError.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAlias, name: "name", traits: {"smithy.api#required" => {}}))
    BatchGetSchemaAnalysisRuleError.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleType, name: "type", traits: {"smithy.api#required" => {}}))
    BatchGetSchemaAnalysisRuleError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code", traits: {"smithy.api#required" => {}}))
    BatchGetSchemaAnalysisRuleError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    BatchGetSchemaAnalysisRuleError.type = Types::BatchGetSchemaAnalysisRuleError
    BatchGetSchemaAnalysisRuleErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetSchemaAnalysisRuleError, name: "member"))
    BatchGetSchemaAnalysisRuleInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    BatchGetSchemaAnalysisRuleInput.add_member(:schema_analysis_rule_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaAnalysisRuleRequestList, name: "schemaAnalysisRuleRequests", traits: {"smithy.api#required" => {}}))
    BatchGetSchemaAnalysisRuleInput.type = Types::BatchGetSchemaAnalysisRuleInput
    BatchGetSchemaAnalysisRuleOutput.add_member(:analysis_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaAnalysisRuleList, name: "analysisRules", traits: {"smithy.api#required" => {}}))
    BatchGetSchemaAnalysisRuleOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetSchemaAnalysisRuleErrorList, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchGetSchemaAnalysisRuleOutput.type = Types::BatchGetSchemaAnalysisRuleOutput
    BatchGetSchemaError.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAlias, name: "name", traits: {"smithy.api#required" => {}}))
    BatchGetSchemaError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code", traits: {"smithy.api#required" => {}}))
    BatchGetSchemaError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    BatchGetSchemaError.type = Types::BatchGetSchemaError
    BatchGetSchemaErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetSchemaError, name: "member"))
    BatchGetSchemaOperationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    BatchGetSchemaOperationInput.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAliasList, name: "names", traits: {"smithy.api#required" => {}}))
    BatchGetSchemaOperationInput.type = Types::BatchGetSchemaOperationInput
    BatchGetSchemaOperationOutput.add_member(:schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaList, name: "schemas", traits: {"smithy.api#required" => {}}))
    BatchGetSchemaOperationOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetSchemaErrorList, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchGetSchemaOperationOutput.type = Types::BatchGetSchemaOperationOutput
    BilledJobResourceUtilization.add_member(:units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "units", traits: {"smithy.api#required" => {}}))
    BilledJobResourceUtilization.type = Types::BilledJobResourceUtilization
    BilledResourceUtilization.add_member(:units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "units", traits: {"smithy.api#required" => {}}))
    BilledResourceUtilization.type = Types::BilledResourceUtilization
    BudgetParameter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessBudgetType, name: "type", traits: {"smithy.api#required" => {}}))
    BudgetParameter.add_member(:budget, ::Smithy::Schema::Shapes::MemberShape.new(target: Budget, name: "budget", traits: {"smithy.api#required" => {}}))
    BudgetParameter.add_member(:auto_refresh, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRefreshMode, name: "autoRefresh"))
    BudgetParameter.type = Types::BudgetParameter
    BudgetParameters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetParameter, name: "member"))
    Change.add_member(:specification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSpecificationType, name: "specificationType", traits: {"smithy.api#required" => {}}))
    Change.add_member(:specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSpecification, name: "specification", traits: {"smithy.api#required" => {}}))
    Change.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeTypeList, name: "types", traits: {"smithy.api#required" => {}}))
    Change.type = Types::Change
    ChangeInput.add_member(:specification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSpecificationType, name: "specificationType", traits: {"smithy.api#required" => {}}))
    ChangeInput.add_member(:specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeSpecification, name: "specification", traits: {"smithy.api#required" => {}}))
    ChangeInput.type = Types::ChangeInput
    ChangeInputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeInput, name: "member"))
    ChangeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Change, name: "member"))
    ChangeRequestStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ChangeRequestStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    ChangeRequestStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ChangeRequestStatus.add_member(:denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENIED", traits: {"smithy.api#enumValue" => "DENIED"}))
    ChangeRequestStatus.add_member(:committed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMITTED", traits: {"smithy.api#enumValue" => "COMMITTED"}))
    ChangeSpecification.add_member(:member, Types::ChangeSpecification::Member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberChangeSpecification, name: "member"))
    ChangeSpecification.add_member(:unknown, Types::ChangeSpecification::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ChangeSpecification.type = Types::ChangeSpecification
    ChangeSpecificationType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER", traits: {"smithy.api#enumValue" => "MEMBER"}))
    ChangeType.add_member(:add_member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD_MEMBER", traits: {"smithy.api#enumValue" => "ADD_MEMBER"}))
    ChangeTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeType, name: "member"))
    Collaboration.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    Collaboration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    Collaboration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationName, name: "name", traits: {"smithy.api#required" => {}}))
    Collaboration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationDescription, name: "description"))
    Collaboration.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "creatorAccountId", traits: {"smithy.api#required" => {}}))
    Collaboration.add_member(:creator_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "creatorDisplayName", traits: {"smithy.api#required" => {}}))
    Collaboration.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    Collaboration.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    Collaboration.add_member(:member_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberStatus, name: "memberStatus", traits: {"smithy.api#required" => {}}))
    Collaboration.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "membershipId"))
    Collaboration.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn"))
    Collaboration.add_member(:data_encryption_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DataEncryptionMetadata, name: "dataEncryptionMetadata"))
    Collaboration.add_member(:query_log_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationQueryLogStatus, name: "queryLogStatus", traits: {"smithy.api#required" => {}}))
    Collaboration.add_member(:job_log_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationJobLogStatus, name: "jobLogStatus"))
    Collaboration.add_member(:analytics_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsEngine, name: "analyticsEngine"))
    Collaboration.add_member(:auto_approved_change_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoApprovedChangeTypeList, name: "autoApprovedChangeTypes"))
    Collaboration.add_member(:allowed_result_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedResultRegions, name: "allowedResultRegions"))
    Collaboration.type = Types::Collaboration
    CollaborationAnalysisTemplate.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateIdentifier, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AnalysisTemplateId"}))
    CollaborationAnalysisTemplate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CollaborationAnalysisTemplate.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "creatorAccountId", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceAlias, name: "name", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisSchema, name: "schema", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisFormat, name: "format", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplate.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisSource, name: "source"))
    CollaborationAnalysisTemplate.add_member(:source_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisSourceMetadata, name: "sourceMetadata"))
    CollaborationAnalysisTemplate.add_member(:analysis_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisParameterList, name: "analysisParameters"))
    CollaborationAnalysisTemplate.add_member(:validations, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateValidationStatusDetailList, name: "validations"))
    CollaborationAnalysisTemplate.add_member(:error_message_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageConfiguration, name: "errorMessageConfiguration"))
    CollaborationAnalysisTemplate.type = Types::CollaborationAnalysisTemplate
    CollaborationAnalysisTemplateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationAnalysisTemplate, name: "member"))
    CollaborationAnalysisTemplateSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateIdentifier, name: "id", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceAlias, name: "name", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "creatorAccountId", traits: {"smithy.api#required" => {}}))
    CollaborationAnalysisTemplateSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CollaborationAnalysisTemplateSummary.type = Types::CollaborationAnalysisTemplateSummary
    CollaborationAnalysisTemplateSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationAnalysisTemplateSummary, name: "member"))
    CollaborationChangeRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}}))
    CollaborationChangeRequest.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    CollaborationChangeRequest.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    CollaborationChangeRequest.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    CollaborationChangeRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeRequestStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CollaborationChangeRequest.add_member(:is_auto_approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutoApproved", traits: {"smithy.api#required" => {}}))
    CollaborationChangeRequest.add_member(:changes, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeList, name: "changes", traits: {"smithy.api#required" => {}}))
    CollaborationChangeRequest.type = Types::CollaborationChangeRequest
    CollaborationChangeRequestSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}}))
    CollaborationChangeRequestSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    CollaborationChangeRequestSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    CollaborationChangeRequestSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    CollaborationChangeRequestSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeRequestStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CollaborationChangeRequestSummary.add_member(:is_auto_approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isAutoApproved", traits: {"smithy.api#required" => {}}))
    CollaborationChangeRequestSummary.add_member(:changes, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeList, name: "changes", traits: {"smithy.api#required" => {}}))
    CollaborationChangeRequestSummary.type = Types::CollaborationChangeRequestSummary
    CollaborationChangeRequestSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationChangeRequestSummary, name: "member"))
    CollaborationConfiguredAudienceModelAssociation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationIdentifier, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredAudienceModelAssociationId"}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelArn, name: "configuredAudienceModelArn", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationName, name: "name", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CollaborationConfiguredAudienceModelAssociation.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "creatorAccountId", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociation.type = Types::CollaborationConfiguredAudienceModelAssociation
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationIdentifier, name: "id", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationName, name: "name", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "creatorAccountId", traits: {"smithy.api#required" => {}}))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CollaborationConfiguredAudienceModelAssociationSummary.type = Types::CollaborationConfiguredAudienceModelAssociationSummary
    CollaborationConfiguredAudienceModelAssociationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationConfiguredAudienceModelAssociationSummary, name: "member"))
    CollaborationIdNamespaceAssociation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationIdentifier, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdNamespaceAssociationId"}))
    CollaborationIdNamespaceAssociation.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CollaborationIdNamespaceAssociation.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "creatorAccountId", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:input_reference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationInputReferenceConfig, name: "inputReferenceConfig", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:input_reference_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationInputReferenceProperties, name: "inputReferenceProperties", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociation.add_member(:id_mapping_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingConfig, name: "idMappingConfig"))
    CollaborationIdNamespaceAssociation.type = Types::CollaborationIdNamespaceAssociation
    CollaborationIdNamespaceAssociationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationIdentifier, name: "id", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "creatorAccountId", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:input_reference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationInputReferenceConfig, name: "inputReferenceConfig", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CollaborationIdNamespaceAssociationSummary.add_member(:input_reference_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationInputReferencePropertiesSummary, name: "inputReferenceProperties", traits: {"smithy.api#required" => {}}))
    CollaborationIdNamespaceAssociationSummary.type = Types::CollaborationIdNamespaceAssociationSummary
    CollaborationIdNamespaceAssociationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdNamespaceAssociationSummary, name: "member"))
    CollaborationJobLogStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    CollaborationJobLogStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CollaborationPrivacyBudgetSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:privacy_budget_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateIdentifier, name: "privacyBudgetTemplateId", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:privacy_budget_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateArn, name: "privacyBudgetTemplateArn", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "creatorAccountId", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetType, name: "type", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.add_member(:budget, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudget, name: "budget", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetSummary.type = Types::CollaborationPrivacyBudgetSummary
    CollaborationPrivacyBudgetSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationPrivacyBudgetSummary, name: "member"))
    CollaborationPrivacyBudgetTemplate.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateIdentifier, name: "id", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "creatorAccountId", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:privacy_budget_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetType, name: "privacyBudgetType", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:auto_refresh, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateAutoRefresh, name: "autoRefresh", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateParametersOutput, name: "parameters", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplate.type = Types::CollaborationPrivacyBudgetTemplate
    CollaborationPrivacyBudgetTemplateSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateIdentifier, name: "id", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "creatorAccountId", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:privacy_budget_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetType, name: "privacyBudgetType", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    CollaborationPrivacyBudgetTemplateSummary.type = Types::CollaborationPrivacyBudgetTemplateSummary
    CollaborationPrivacyBudgetTemplateSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationPrivacyBudgetTemplateSummary, name: "member"))
    CollaborationQueryLogStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    CollaborationQueryLogStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CollaborationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    CollaborationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CollaborationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationName, name: "name", traits: {"smithy.api#required" => {}}))
    CollaborationSummary.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "creatorAccountId", traits: {"smithy.api#required" => {}}))
    CollaborationSummary.add_member(:creator_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "creatorDisplayName", traits: {"smithy.api#required" => {}}))
    CollaborationSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    CollaborationSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    CollaborationSummary.add_member(:member_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberStatus, name: "memberStatus", traits: {"smithy.api#required" => {}}))
    CollaborationSummary.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "membershipId"))
    CollaborationSummary.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn"))
    CollaborationSummary.add_member(:analytics_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsEngine, name: "analyticsEngine"))
    CollaborationSummary.type = Types::CollaborationSummary
    CollaborationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationSummary, name: "member"))
    Column.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "name", traits: {"smithy.api#required" => {}}))
    Column.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnTypeString, name: "type", traits: {"smithy.api#required" => {}}))
    Column.type = Types::Column
    ColumnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Column, name: "member"))
    CommercialRegion.add_member(:us_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_WEST_1", traits: {"smithy.api#enumValue" => "us-west-1"}))
    CommercialRegion.add_member(:us_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_WEST_2", traits: {"smithy.api#enumValue" => "us-west-2"}))
    CommercialRegion.add_member(:us_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_EAST_1", traits: {"smithy.api#enumValue" => "us-east-1"}))
    CommercialRegion.add_member(:us_east_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_EAST_2", traits: {"smithy.api#enumValue" => "us-east-2"}))
    CommercialRegion.add_member(:af_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AF_SOUTH_1", traits: {"smithy.api#enumValue" => "af-south-1"}))
    CommercialRegion.add_member(:ap_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_EAST_1", traits: {"smithy.api#enumValue" => "ap-east-1"}))
    CommercialRegion.add_member(:ap_south_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTH_2", traits: {"smithy.api#enumValue" => "ap-south-2"}))
    CommercialRegion.add_member(:ap_southeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_1", traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    CommercialRegion.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_2", traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    CommercialRegion.add_member(:ap_southeast_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_3", traits: {"smithy.api#enumValue" => "ap-southeast-3"}))
    CommercialRegion.add_member(:ap_southeast_5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_5", traits: {"smithy.api#enumValue" => "ap-southeast-5"}))
    CommercialRegion.add_member(:ap_southeast_4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_4", traits: {"smithy.api#enumValue" => "ap-southeast-4"}))
    CommercialRegion.add_member(:ap_southeast_7, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_7", traits: {"smithy.api#enumValue" => "ap-southeast-7"}))
    CommercialRegion.add_member(:ap_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTH_1", traits: {"smithy.api#enumValue" => "ap-south-1"}))
    CommercialRegion.add_member(:ap_northeast_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_NORTHEAST_3", traits: {"smithy.api#enumValue" => "ap-northeast-3"}))
    CommercialRegion.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_NORTHEAST_1", traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    CommercialRegion.add_member(:ap_northeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_NORTHEAST_2", traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    CommercialRegion.add_member(:ca_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_CENTRAL_1", traits: {"smithy.api#enumValue" => "ca-central-1"}))
    CommercialRegion.add_member(:ca_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_WEST_1", traits: {"smithy.api#enumValue" => "ca-west-1"}))
    CommercialRegion.add_member(:eu_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_SOUTH_1", traits: {"smithy.api#enumValue" => "eu-south-1"}))
    CommercialRegion.add_member(:eu_west_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_WEST_3", traits: {"smithy.api#enumValue" => "eu-west-3"}))
    CommercialRegion.add_member(:eu_south_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_SOUTH_2", traits: {"smithy.api#enumValue" => "eu-south-2"}))
    CommercialRegion.add_member(:eu_central_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_CENTRAL_2", traits: {"smithy.api#enumValue" => "eu-central-2"}))
    CommercialRegion.add_member(:eu_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_CENTRAL_1", traits: {"smithy.api#enumValue" => "eu-central-1"}))
    CommercialRegion.add_member(:eu_north_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_NORTH_1", traits: {"smithy.api#enumValue" => "eu-north-1"}))
    CommercialRegion.add_member(:eu_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_WEST_1", traits: {"smithy.api#enumValue" => "eu-west-1"}))
    CommercialRegion.add_member(:eu_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_WEST_2", traits: {"smithy.api#enumValue" => "eu-west-2"}))
    CommercialRegion.add_member(:me_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ME_SOUTH_1", traits: {"smithy.api#enumValue" => "me-south-1"}))
    CommercialRegion.add_member(:me_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ME_CENTRAL_1", traits: {"smithy.api#enumValue" => "me-central-1"}))
    CommercialRegion.add_member(:il_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IL_CENTRAL_1", traits: {"smithy.api#enumValue" => "il-central-1"}))
    CommercialRegion.add_member(:sa_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SA_EAST_1", traits: {"smithy.api#enumValue" => "sa-east-1"}))
    CommercialRegion.add_member(:mx_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MX_CENTRAL_1", traits: {"smithy.api#enumValue" => "mx-central-1"}))
    CommercialRegion.add_member(:ap_east_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_EAST_2", traits: {"smithy.api#enumValue" => "ap-east-2"}))
    ComputeConfiguration.add_member(:worker, Types::ComputeConfiguration::Worker, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerComputeConfiguration, name: "worker"))
    ComputeConfiguration.add_member(:unknown, Types::ComputeConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ComputeConfiguration.type = Types::ComputeConfiguration
    ConfigurationDetails.add_member(:direct_analysis_configuration_details, Types::ConfigurationDetails::DirectAnalysisConfigurationDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectAnalysisConfigurationDetails, name: "directAnalysisConfigurationDetails"))
    ConfigurationDetails.add_member(:unknown, Types::ConfigurationDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConfigurationDetails.type = Types::ConfigurationDetails
    ConfiguredAudienceModelAssociation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationIdentifier, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredAudienceModelAssociationId"}))
    ConfiguredAudienceModelAssociation.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelArn, name: "configuredAudienceModelArn", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "membershipId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ConfiguredAudienceModelAssociation.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationName, name: "name", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:manage_resource_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "manageResourcePolicies", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    ConfiguredAudienceModelAssociation.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociation.type = Types::ConfiguredAudienceModelAssociation
    ConfiguredAudienceModelAssociationSummary.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ConfiguredAudienceModelAssociationSummary.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredAudienceModelAssociationId"}))
    ConfiguredAudienceModelAssociationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationName, name: "name", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelArn, name: "configuredAudienceModelArn", traits: {"smithy.api#required" => {}}))
    ConfiguredAudienceModelAssociationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    ConfiguredAudienceModelAssociationSummary.type = Types::ConfiguredAudienceModelAssociationSummary
    ConfiguredAudienceModelAssociationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationSummary, name: "member"))
    ConfiguredTable.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    ConfiguredTable.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ConfiguredTable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "name", traits: {"smithy.api#required" => {}}))
    ConfiguredTable.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TableDescription, name: "description"))
    ConfiguredTable.add_member(:table_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: TableReference, name: "tableReference", traits: {"smithy.api#required" => {}}))
    ConfiguredTable.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    ConfiguredTable.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    ConfiguredTable.add_member(:analysis_rule_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRuleTypeList, name: "analysisRuleTypes", traits: {"smithy.api#required" => {}}))
    ConfiguredTable.add_member(:analysis_method, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisMethod, name: "analysisMethod", traits: {"smithy.api#required" => {}}))
    ConfiguredTable.add_member(:allowed_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedColumnList, name: "allowedColumns", traits: {"smithy.api#required" => {}}))
    ConfiguredTable.add_member(:selected_analysis_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedAnalysisMethods, name: "selectedAnalysisMethods"))
    ConfiguredTable.type = Types::ConfiguredTable
    ConfiguredTableAnalysisRule.add_member(:configured_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "configuredTableId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    ConfiguredTableAnalysisRule.add_member(:configured_table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableArn, name: "configuredTableArn", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAnalysisRule.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRulePolicy, name: "policy", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAnalysisRule.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRuleType, name: "type", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAnalysisRule.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAnalysisRule.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAnalysisRule.type = Types::ConfiguredTableAnalysisRule
    ConfiguredTableAnalysisRulePolicy.add_member(:v1, Types::ConfiguredTableAnalysisRulePolicy::V1, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRulePolicyV1, name: "v1"))
    ConfiguredTableAnalysisRulePolicy.add_member(:unknown, Types::ConfiguredTableAnalysisRulePolicy::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConfiguredTableAnalysisRulePolicy.type = Types::ConfiguredTableAnalysisRulePolicy
    ConfiguredTableAnalysisRulePolicyV1.add_member(:list, Types::ConfiguredTableAnalysisRulePolicyV1::List, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleList, name: "list"))
    ConfiguredTableAnalysisRulePolicyV1.add_member(:aggregation, Types::ConfiguredTableAnalysisRulePolicyV1::Aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleAggregation, name: "aggregation"))
    ConfiguredTableAnalysisRulePolicyV1.add_member(:custom, Types::ConfiguredTableAnalysisRulePolicyV1::Custom, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleCustom, name: "custom"))
    ConfiguredTableAnalysisRulePolicyV1.add_member(:unknown, Types::ConfiguredTableAnalysisRulePolicyV1::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConfiguredTableAnalysisRulePolicyV1.type = Types::ConfiguredTableAnalysisRulePolicyV1
    ConfiguredTableAnalysisRuleType.add_member(:aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGGREGATION", traits: {"smithy.api#enumValue" => "AGGREGATION"}))
    ConfiguredTableAnalysisRuleType.add_member(:list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIST", traits: {"smithy.api#enumValue" => "LIST"}))
    ConfiguredTableAnalysisRuleType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ConfiguredTableAnalysisRuleTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRuleType, name: "member"))
    ConfiguredTableAssociation.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    ConfiguredTableAssociation.add_member(:configured_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "configuredTableId", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociation.add_member(:configured_table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableArn, name: "configuredTableArn", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociation.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "membershipId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ConfiguredTableAssociation.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociation.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAlias, name: "name", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TableDescription, name: "description"))
    ConfiguredTableAssociation.add_member(:analysis_rule_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRuleTypeList, name: "analysisRuleTypes"))
    ConfiguredTableAssociation.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociation.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociation.type = Types::ConfiguredTableAssociation
    ConfiguredTableAssociationAnalysisRule.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ConfiguredTableAssociationAnalysisRule.add_member(:configured_table_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationIdentifier, name: "configuredTableAssociationId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    ConfiguredTableAssociationAnalysisRule.add_member(:configured_table_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationArn, name: "configuredTableAssociationArn", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociationAnalysisRule.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRulePolicy, name: "policy", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociationAnalysisRule.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRuleType, name: "type", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociationAnalysisRule.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociationAnalysisRule.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociationAnalysisRule.type = Types::ConfiguredTableAssociationAnalysisRule
    ConfiguredTableAssociationAnalysisRuleAggregation.add_member(:allowed_result_receivers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedResultReceivers, name: "allowedResultReceivers"))
    ConfiguredTableAssociationAnalysisRuleAggregation.add_member(:allowed_additional_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedAdditionalAnalyses, name: "allowedAdditionalAnalyses"))
    ConfiguredTableAssociationAnalysisRuleAggregation.type = Types::ConfiguredTableAssociationAnalysisRuleAggregation
    ConfiguredTableAssociationAnalysisRuleCustom.add_member(:allowed_result_receivers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedResultReceivers, name: "allowedResultReceivers"))
    ConfiguredTableAssociationAnalysisRuleCustom.add_member(:allowed_additional_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedAdditionalAnalyses, name: "allowedAdditionalAnalyses"))
    ConfiguredTableAssociationAnalysisRuleCustom.type = Types::ConfiguredTableAssociationAnalysisRuleCustom
    ConfiguredTableAssociationAnalysisRuleList.add_member(:allowed_result_receivers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedResultReceivers, name: "allowedResultReceivers"))
    ConfiguredTableAssociationAnalysisRuleList.add_member(:allowed_additional_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedAdditionalAnalyses, name: "allowedAdditionalAnalyses"))
    ConfiguredTableAssociationAnalysisRuleList.type = Types::ConfiguredTableAssociationAnalysisRuleList
    ConfiguredTableAssociationAnalysisRulePolicy.add_member(:v1, Types::ConfiguredTableAssociationAnalysisRulePolicy::V1, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRulePolicyV1, name: "v1"))
    ConfiguredTableAssociationAnalysisRulePolicy.add_member(:unknown, Types::ConfiguredTableAssociationAnalysisRulePolicy::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConfiguredTableAssociationAnalysisRulePolicy.type = Types::ConfiguredTableAssociationAnalysisRulePolicy
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member(:list, Types::ConfiguredTableAssociationAnalysisRulePolicyV1::List, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRuleList, name: "list"))
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member(:aggregation, Types::ConfiguredTableAssociationAnalysisRulePolicyV1::Aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRuleAggregation, name: "aggregation"))
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member(:custom, Types::ConfiguredTableAssociationAnalysisRulePolicyV1::Custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRuleCustom, name: "custom"))
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member(:unknown, Types::ConfiguredTableAssociationAnalysisRulePolicyV1::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConfiguredTableAssociationAnalysisRulePolicyV1.type = Types::ConfiguredTableAssociationAnalysisRulePolicyV1
    ConfiguredTableAssociationAnalysisRuleType.add_member(:aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGGREGATION", traits: {"smithy.api#enumValue" => "AGGREGATION"}))
    ConfiguredTableAssociationAnalysisRuleType.add_member(:list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIST", traits: {"smithy.api#enumValue" => "LIST"}))
    ConfiguredTableAssociationAnalysisRuleType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ConfiguredTableAssociationAnalysisRuleTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRuleType, name: "member"))
    ConfiguredTableAssociationSummary.add_member(:configured_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "configuredTableId", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociationSummary.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ConfiguredTableAssociationSummary.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAlias, name: "name", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociationSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociationSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    ConfiguredTableAssociationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ConfiguredTableAssociationSummary.add_member(:analysis_rule_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRuleTypeList, name: "analysisRuleTypes"))
    ConfiguredTableAssociationSummary.type = Types::ConfiguredTableAssociationSummary
    ConfiguredTableAssociationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationSummary, name: "member"))
    ConfiguredTableSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableIdentifier, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    ConfiguredTableSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ConfiguredTableSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "name", traits: {"smithy.api#required" => {}}))
    ConfiguredTableSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    ConfiguredTableSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    ConfiguredTableSummary.add_member(:analysis_rule_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRuleTypeList, name: "analysisRuleTypes", traits: {"smithy.api#required" => {}}))
    ConfiguredTableSummary.add_member(:analysis_method, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisMethod, name: "analysisMethod", traits: {"smithy.api#required" => {}}))
    ConfiguredTableSummary.add_member(:selected_analysis_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedAnalysisMethods, name: "selectedAnalysisMethods"))
    ConfiguredTableSummary.type = Types::ConfiguredTableSummary
    ConfiguredTableSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableSummary, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ConflictException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictExceptionReason, name: "reason"))
    ConflictException.type = Types::ConflictException
    ConsolidatedPolicy.add_member(:v1, Types::ConsolidatedPolicy::V1, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsolidatedPolicyV1, name: "v1"))
    ConsolidatedPolicy.add_member(:unknown, Types::ConsolidatedPolicy::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConsolidatedPolicy.type = Types::ConsolidatedPolicy
    ConsolidatedPolicyAggregation.add_member(:aggregate_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateColumnList, name: "aggregateColumns", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    ConsolidatedPolicyAggregation.add_member(:join_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnList, name: "joinColumns", traits: {"smithy.api#required" => {}}))
    ConsolidatedPolicyAggregation.add_member(:join_required, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinRequiredOption, name: "joinRequired"))
    ConsolidatedPolicyAggregation.add_member(:allowed_join_operators, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinOperatorsList, name: "allowedJoinOperators"))
    ConsolidatedPolicyAggregation.add_member(:dimension_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnList, name: "dimensionColumns", traits: {"smithy.api#required" => {}}))
    ConsolidatedPolicyAggregation.add_member(:scalar_functions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalarFunctionsList, name: "scalarFunctions", traits: {"smithy.api#required" => {}}))
    ConsolidatedPolicyAggregation.add_member(:output_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationConstraints, name: "outputConstraints", traits: {"smithy.api#required" => {}}))
    ConsolidatedPolicyAggregation.add_member(:additional_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAnalyses, name: "additionalAnalyses"))
    ConsolidatedPolicyAggregation.add_member(:allowed_result_receivers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedResultReceivers, name: "allowedResultReceivers"))
    ConsolidatedPolicyAggregation.add_member(:allowed_additional_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedAdditionalAnalyses, name: "allowedAdditionalAnalyses"))
    ConsolidatedPolicyAggregation.type = Types::ConsolidatedPolicyAggregation
    ConsolidatedPolicyCustom.add_member(:allowed_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedAnalysesList, name: "allowedAnalyses", traits: {"smithy.api#length" => {"min" => 0}, "smithy.api#required" => {}}))
    ConsolidatedPolicyCustom.add_member(:allowed_analysis_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedAnalysisProviderList, name: "allowedAnalysisProviders", traits: {"smithy.api#length" => {"min" => 0}}))
    ConsolidatedPolicyCustom.add_member(:additional_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAnalyses, name: "additionalAnalyses"))
    ConsolidatedPolicyCustom.add_member(:disallowed_output_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnList, name: "disallowedOutputColumns"))
    ConsolidatedPolicyCustom.add_member(:differential_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyConfiguration, name: "differentialPrivacy"))
    ConsolidatedPolicyCustom.add_member(:allowed_result_receivers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedResultReceivers, name: "allowedResultReceivers"))
    ConsolidatedPolicyCustom.add_member(:allowed_additional_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedAdditionalAnalyses, name: "allowedAdditionalAnalyses"))
    ConsolidatedPolicyCustom.type = Types::ConsolidatedPolicyCustom
    ConsolidatedPolicyList.add_member(:join_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnList, name: "joinColumns", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    ConsolidatedPolicyList.add_member(:allowed_join_operators, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinOperatorsList, name: "allowedJoinOperators"))
    ConsolidatedPolicyList.add_member(:list_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnList, name: "listColumns", traits: {"smithy.api#required" => {}}))
    ConsolidatedPolicyList.add_member(:additional_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAnalyses, name: "additionalAnalyses"))
    ConsolidatedPolicyList.add_member(:allowed_result_receivers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedResultReceivers, name: "allowedResultReceivers"))
    ConsolidatedPolicyList.add_member(:allowed_additional_analyses, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedAdditionalAnalyses, name: "allowedAdditionalAnalyses"))
    ConsolidatedPolicyList.type = Types::ConsolidatedPolicyList
    ConsolidatedPolicyV1.add_member(:list, Types::ConsolidatedPolicyV1::List, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsolidatedPolicyList, name: "list"))
    ConsolidatedPolicyV1.add_member(:aggregation, Types::ConsolidatedPolicyV1::Aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsolidatedPolicyAggregation, name: "aggregation"))
    ConsolidatedPolicyV1.add_member(:custom, Types::ConsolidatedPolicyV1::Custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsolidatedPolicyCustom, name: "custom"))
    ConsolidatedPolicyV1.add_member(:unknown, Types::ConsolidatedPolicyV1::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConsolidatedPolicyV1.type = Types::ConsolidatedPolicyV1
    CreateAnalysisTemplateOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CreateAnalysisTemplateOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    CreateAnalysisTemplateOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAlias, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAnalysisTemplateOperationInput.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisFormat, name: "format", traits: {"smithy.api#required" => {}}))
    CreateAnalysisTemplateOperationInput.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisSource, name: "source", traits: {"smithy.api#required" => {}}))
    CreateAnalysisTemplateOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateAnalysisTemplateOperationInput.add_member(:analysis_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisParameterList, name: "analysisParameters"))
    CreateAnalysisTemplateOperationInput.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisSchema, name: "schema"))
    CreateAnalysisTemplateOperationInput.add_member(:error_message_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageConfiguration, name: "errorMessageConfiguration"))
    CreateAnalysisTemplateOperationInput.type = Types::CreateAnalysisTemplateOperationInput
    CreateAnalysisTemplateOperationOutput.add_member(:analysis_template, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplate, name: "analysisTemplate", traits: {"smithy.api#required" => {}}))
    CreateAnalysisTemplateOperationOutput.type = Types::CreateAnalysisTemplateOperationOutput
    CreateCollaborationChangeRequestInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    CreateCollaborationChangeRequestInput.add_member(:changes, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeInputList, name: "changes", traits: {"smithy.api#required" => {}}))
    CreateCollaborationChangeRequestInput.type = Types::CreateCollaborationChangeRequestInput
    CreateCollaborationChangeRequestOutput.add_member(:collaboration_change_request, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationChangeRequest, name: "collaborationChangeRequest", traits: {"smithy.api#required" => {}}))
    CreateCollaborationChangeRequestOutput.type = Types::CreateCollaborationChangeRequestOutput
    CreateCollaborationOperationInput.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberList, name: "members", traits: {"smithy.api#required" => {}}))
    CreateCollaborationOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateCollaborationOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationDescription, name: "description", traits: {"smithy.api#required" => {}}))
    CreateCollaborationOperationInput.add_member(:creator_member_abilities, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAbilities, name: "creatorMemberAbilities", traits: {"smithy.api#required" => {}}))
    CreateCollaborationOperationInput.add_member(:creator_ml_member_abilities, ::Smithy::Schema::Shapes::MemberShape.new(target: MLMemberAbilities, name: "creatorMLMemberAbilities"))
    CreateCollaborationOperationInput.add_member(:creator_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "creatorDisplayName", traits: {"smithy.api#required" => {}}))
    CreateCollaborationOperationInput.add_member(:data_encryption_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DataEncryptionMetadata, name: "dataEncryptionMetadata"))
    CreateCollaborationOperationInput.add_member(:query_log_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationQueryLogStatus, name: "queryLogStatus", traits: {"smithy.api#required" => {}}))
    CreateCollaborationOperationInput.add_member(:job_log_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationJobLogStatus, name: "jobLogStatus"))
    CreateCollaborationOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateCollaborationOperationInput.add_member(:creator_payment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentConfiguration, name: "creatorPaymentConfiguration"))
    CreateCollaborationOperationInput.add_member(:analytics_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsEngine, name: "analyticsEngine"))
    CreateCollaborationOperationInput.add_member(:auto_approved_change_request_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoApprovedChangeTypeList, name: "autoApprovedChangeRequestTypes"))
    CreateCollaborationOperationInput.add_member(:allowed_result_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedResultRegions, name: "allowedResultRegions"))
    CreateCollaborationOperationInput.type = Types::CreateCollaborationOperationInput
    CreateCollaborationOperationOutput.add_member(:collaboration, ::Smithy::Schema::Shapes::MemberShape.new(target: Collaboration, name: "collaboration", traits: {"smithy.api#required" => {}}))
    CreateCollaborationOperationOutput.type = Types::CreateCollaborationOperationOutput
    CreateConfiguredAudienceModelAssociationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    CreateConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelArn, name: "configuredAudienceModelArn", traits: {"smithy.api#required" => {}}))
    CreateConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationName, name: "configuredAudienceModelAssociationName", traits: {"smithy.api#required" => {}}))
    CreateConfiguredAudienceModelAssociationInput.add_member(:manage_resource_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "manageResourcePolicies", traits: {"smithy.api#required" => {}}))
    CreateConfiguredAudienceModelAssociationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateConfiguredAudienceModelAssociationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CreateConfiguredAudienceModelAssociationInput.type = Types::CreateConfiguredAudienceModelAssociationInput
    CreateConfiguredAudienceModelAssociationOutput.add_member(:configured_audience_model_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociation, name: "configuredAudienceModelAssociation", traits: {"smithy.api#required" => {}}))
    CreateConfiguredAudienceModelAssociationOutput.type = Types::CreateConfiguredAudienceModelAssociationOutput
    CreateConfiguredTableAnalysisRuleOperationInput.add_member(:configured_table_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableIdentifier, name: "configuredTableIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    CreateConfiguredTableAnalysisRuleOperationInput.add_member(:analysis_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRuleType, name: "analysisRuleType", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableAnalysisRuleOperationInput.add_member(:analysis_rule_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRulePolicy, name: "analysisRulePolicy", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableAnalysisRuleOperationInput.type = Types::CreateConfiguredTableAnalysisRuleOperationInput
    CreateConfiguredTableAnalysisRuleOperationOutput.add_member(:analysis_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRule, name: "analysisRule", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableAnalysisRuleOperationOutput.type = Types::CreateConfiguredTableAnalysisRuleOperationOutput
    CreateConfiguredTableAssociationAnalysisRuleInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    CreateConfiguredTableAssociationAnalysisRuleInput.add_member(:configured_table_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationIdentifier, name: "configuredTableAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    CreateConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRuleType, name: "analysisRuleType", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRulePolicy, name: "analysisRulePolicy", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableAssociationAnalysisRuleInput.type = Types::CreateConfiguredTableAssociationAnalysisRuleInput
    CreateConfiguredTableAssociationAnalysisRuleOutput.add_member(:analysis_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRule, name: "analysisRule", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableAssociationAnalysisRuleOutput.type = Types::CreateConfiguredTableAssociationAnalysisRuleOutput
    CreateConfiguredTableAssociationOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAlias, name: "name", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableAssociationOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TableDescription, name: "description"))
    CreateConfiguredTableAssociationOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    CreateConfiguredTableAssociationOperationInput.add_member(:configured_table_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableIdentifier, name: "configuredTableIdentifier", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableAssociationOperationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableAssociationOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateConfiguredTableAssociationOperationInput.type = Types::CreateConfiguredTableAssociationOperationInput
    CreateConfiguredTableAssociationOperationOutput.add_member(:configured_table_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociation, name: "configuredTableAssociation", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableAssociationOperationOutput.type = Types::CreateConfiguredTableAssociationOperationOutput
    CreateConfiguredTableOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TableDescription, name: "description"))
    CreateConfiguredTableOperationInput.add_member(:table_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: TableReference, name: "tableReference", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableOperationInput.add_member(:allowed_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedColumnList, name: "allowedColumns", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableOperationInput.add_member(:analysis_method, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisMethod, name: "analysisMethod", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableOperationInput.add_member(:selected_analysis_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedAnalysisMethods, name: "selectedAnalysisMethods"))
    CreateConfiguredTableOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateConfiguredTableOperationInput.type = Types::CreateConfiguredTableOperationInput
    CreateConfiguredTableOperationOutput.add_member(:configured_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTable, name: "configuredTable", traits: {"smithy.api#required" => {}}))
    CreateConfiguredTableOperationOutput.type = Types::CreateConfiguredTableOperationOutput
    CreateIdMappingTableInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    CreateIdMappingTableInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceAlias, name: "name", traits: {"smithy.api#required" => {}}))
    CreateIdMappingTableInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CreateIdMappingTableInput.add_member(:input_reference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTableInputReferenceConfig, name: "inputReferenceConfig", traits: {"smithy.api#required" => {}}))
    CreateIdMappingTableInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateIdMappingTableInput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "kmsKeyArn"))
    CreateIdMappingTableInput.type = Types::CreateIdMappingTableInput
    CreateIdMappingTableOutput.add_member(:id_mapping_table, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTable, name: "idMappingTable", traits: {"smithy.api#required" => {}}))
    CreateIdMappingTableOutput.type = Types::CreateIdMappingTableOutput
    CreateIdNamespaceAssociationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    CreateIdNamespaceAssociationInput.add_member(:input_reference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationInputReferenceConfig, name: "inputReferenceConfig", traits: {"smithy.api#required" => {}}))
    CreateIdNamespaceAssociationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateIdNamespaceAssociationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateIdNamespaceAssociationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CreateIdNamespaceAssociationInput.add_member(:id_mapping_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingConfig, name: "idMappingConfig"))
    CreateIdNamespaceAssociationInput.type = Types::CreateIdNamespaceAssociationInput
    CreateIdNamespaceAssociationOutput.add_member(:id_namespace_association, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociation, name: "idNamespaceAssociation", traits: {"smithy.api#required" => {}}))
    CreateIdNamespaceAssociationOutput.type = Types::CreateIdNamespaceAssociationOutput
    CreateMembershipOperationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#required" => {}}))
    CreateMembershipOperationInput.add_member(:query_log_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipQueryLogStatus, name: "queryLogStatus", traits: {"smithy.api#required" => {}}))
    CreateMembershipOperationInput.add_member(:job_log_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipJobLogStatus, name: "jobLogStatus"))
    CreateMembershipOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateMembershipOperationInput.add_member(:default_result_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipProtectedQueryResultConfiguration, name: "defaultResultConfiguration"))
    CreateMembershipOperationInput.add_member(:default_job_result_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipProtectedJobResultConfiguration, name: "defaultJobResultConfiguration"))
    CreateMembershipOperationInput.add_member(:payment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipPaymentConfiguration, name: "paymentConfiguration"))
    CreateMembershipOperationInput.type = Types::CreateMembershipOperationInput
    CreateMembershipOperationOutput.add_member(:membership, ::Smithy::Schema::Shapes::MemberShape.new(target: Membership, name: "membership", traits: {"smithy.api#required" => {}}))
    CreateMembershipOperationOutput.type = Types::CreateMembershipOperationOutput
    CreatePrivacyBudgetTemplateInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "membershipIdentifier"}))
    CreatePrivacyBudgetTemplateInput.add_member(:auto_refresh, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateAutoRefresh, name: "autoRefresh"))
    CreatePrivacyBudgetTemplateInput.add_member(:privacy_budget_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetType, name: "privacyBudgetType", traits: {"smithy.api#required" => {}}))
    CreatePrivacyBudgetTemplateInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateParametersInput, name: "parameters", traits: {"smithy.api#required" => {}}))
    CreatePrivacyBudgetTemplateInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreatePrivacyBudgetTemplateInput.type = Types::CreatePrivacyBudgetTemplateInput
    CreatePrivacyBudgetTemplateOutput.add_member(:privacy_budget_template, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplate, name: "privacyBudgetTemplate", traits: {"smithy.api#required" => {}}))
    CreatePrivacyBudgetTemplateOutput.type = Types::CreatePrivacyBudgetTemplateOutput
    CustomMLMemberAbilities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMLMemberAbility, name: "member"))
    CustomMLMemberAbility.add_member(:can_receive_model_output, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAN_RECEIVE_MODEL_OUTPUT", traits: {"smithy.api#enumValue" => "CAN_RECEIVE_MODEL_OUTPUT"}))
    CustomMLMemberAbility.add_member(:can_receive_inference_output, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAN_RECEIVE_INFERENCE_OUTPUT", traits: {"smithy.api#enumValue" => "CAN_RECEIVE_INFERENCE_OUTPUT"}))
    DataEncryptionMetadata.add_member(:allow_cleartext, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "allowCleartext", traits: {"smithy.api#required" => {}}))
    DataEncryptionMetadata.add_member(:allow_duplicates, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "allowDuplicates", traits: {"smithy.api#required" => {}}))
    DataEncryptionMetadata.add_member(:allow_joins_on_columns_with_different_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "allowJoinsOnColumnsWithDifferentNames", traits: {"smithy.api#required" => {}}))
    DataEncryptionMetadata.add_member(:preserve_nulls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "preserveNulls", traits: {"smithy.api#required" => {}}))
    DataEncryptionMetadata.type = Types::DataEncryptionMetadata
    DeleteAnalysisTemplateOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeleteAnalysisTemplateOperationInput.add_member(:analysis_template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateIdentifier, name: "analysisTemplateIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AnalysisTemplateId"}))
    DeleteAnalysisTemplateOperationInput.type = Types::DeleteAnalysisTemplateOperationInput
    DeleteAnalysisTemplateOperationOutput.type = Types::DeleteAnalysisTemplateOperationOutput
    DeleteCollaborationOperationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    DeleteCollaborationOperationInput.type = Types::DeleteCollaborationOperationInput
    DeleteCollaborationOperationOutput.type = Types::DeleteCollaborationOperationOutput
    DeleteConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationIdentifier, name: "configuredAudienceModelAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredAudienceModelAssociationId"}))
    DeleteConfiguredAudienceModelAssociationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeleteConfiguredAudienceModelAssociationInput.type = Types::DeleteConfiguredAudienceModelAssociationInput
    DeleteConfiguredAudienceModelAssociationOutput.type = Types::DeleteConfiguredAudienceModelAssociationOutput
    DeleteConfiguredTableAnalysisRuleOperationInput.add_member(:configured_table_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableIdentifier, name: "configuredTableIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    DeleteConfiguredTableAnalysisRuleOperationInput.add_member(:analysis_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRuleType, name: "analysisRuleType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfiguredTableAnalysisRuleOperationInput.type = Types::DeleteConfiguredTableAnalysisRuleOperationInput
    DeleteConfiguredTableAnalysisRuleOperationOutput.type = Types::DeleteConfiguredTableAnalysisRuleOperationOutput
    DeleteConfiguredTableAssociationAnalysisRuleInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeleteConfiguredTableAssociationAnalysisRuleInput.add_member(:configured_table_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationIdentifier, name: "configuredTableAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    DeleteConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRuleType, name: "analysisRuleType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfiguredTableAssociationAnalysisRuleInput.type = Types::DeleteConfiguredTableAssociationAnalysisRuleInput
    DeleteConfiguredTableAssociationAnalysisRuleOutput.type = Types::DeleteConfiguredTableAssociationAnalysisRuleOutput
    DeleteConfiguredTableAssociationOperationInput.add_member(:configured_table_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationIdentifier, name: "configuredTableAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    DeleteConfiguredTableAssociationOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeleteConfiguredTableAssociationOperationInput.type = Types::DeleteConfiguredTableAssociationOperationInput
    DeleteConfiguredTableAssociationOperationOutput.type = Types::DeleteConfiguredTableAssociationOperationOutput
    DeleteConfiguredTableOperationInput.add_member(:configured_table_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableIdentifier, name: "configuredTableIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    DeleteConfiguredTableOperationInput.type = Types::DeleteConfiguredTableOperationInput
    DeleteConfiguredTableOperationOutput.type = Types::DeleteConfiguredTableOperationOutput
    DeleteIdMappingTableInput.add_member(:id_mapping_table_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "idMappingTableIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdMappingTableId"}))
    DeleteIdMappingTableInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeleteIdMappingTableInput.type = Types::DeleteIdMappingTableInput
    DeleteIdMappingTableOutput.type = Types::DeleteIdMappingTableOutput
    DeleteIdNamespaceAssociationInput.add_member(:id_namespace_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationIdentifier, name: "idNamespaceAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdNamespaceAssociationId"}))
    DeleteIdNamespaceAssociationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeleteIdNamespaceAssociationInput.type = Types::DeleteIdNamespaceAssociationInput
    DeleteIdNamespaceAssociationOutput.type = Types::DeleteIdNamespaceAssociationOutput
    DeleteMemberOperationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    DeleteMemberOperationInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMemberOperationInput.type = Types::DeleteMemberOperationInput
    DeleteMemberOperationOutput.type = Types::DeleteMemberOperationOutput
    DeleteMembershipOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeleteMembershipOperationInput.type = Types::DeleteMembershipOperationInput
    DeleteMembershipOperationOutput.type = Types::DeleteMembershipOperationOutput
    DeletePrivacyBudgetTemplateInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    DeletePrivacyBudgetTemplateInput.add_member(:privacy_budget_template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateIdentifier, name: "privacyBudgetTemplateIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "PrivacyBudgetTemplateId"}))
    DeletePrivacyBudgetTemplateInput.type = Types::DeletePrivacyBudgetTemplateInput
    DeletePrivacyBudgetTemplateOutput.type = Types::DeletePrivacyBudgetTemplateOutput
    DifferentialPrivacyAggregationType.add_member(:avg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVG", traits: {"smithy.api#enumValue" => "AVG"}))
    DifferentialPrivacyAggregationType.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    DifferentialPrivacyAggregationType.add_member(:count_distinct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT_DISTINCT", traits: {"smithy.api#enumValue" => "COUNT_DISTINCT"}))
    DifferentialPrivacyAggregationType.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUM", traits: {"smithy.api#enumValue" => "SUM"}))
    DifferentialPrivacyAggregationType.add_member(:stddev, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STDDEV", traits: {"smithy.api#enumValue" => "STDDEV"}))
    DifferentialPrivacyColumn.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacyColumn.type = Types::DifferentialPrivacyColumn
    DifferentialPrivacyColumnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyColumn, name: "member"))
    DifferentialPrivacyConfiguration.add_member(:columns, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyColumnList, name: "columns", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacyConfiguration.type = Types::DifferentialPrivacyConfiguration
    DifferentialPrivacyParameters.add_member(:sensitivity_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacySensitivityParametersList, name: "sensitivityParameters", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacyParameters.type = Types::DifferentialPrivacyParameters
    DifferentialPrivacyPreviewAggregation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyAggregationType, name: "type", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacyPreviewAggregation.add_member(:max_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxCount", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    DifferentialPrivacyPreviewAggregation.type = Types::DifferentialPrivacyPreviewAggregation
    DifferentialPrivacyPreviewAggregationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyPreviewAggregation, name: "member"))
    DifferentialPrivacyPreviewParametersInput.add_member(:epsilon, ::Smithy::Schema::Shapes::MemberShape.new(target: Epsilon, name: "epsilon", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacyPreviewParametersInput.add_member(:users_noise_per_query, ::Smithy::Schema::Shapes::MemberShape.new(target: UsersNoisePerQuery, name: "usersNoisePerQuery", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacyPreviewParametersInput.type = Types::DifferentialPrivacyPreviewParametersInput
    DifferentialPrivacyPrivacyBudget.add_member(:aggregations, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyPrivacyBudgetAggregationList, name: "aggregations", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacyPrivacyBudget.add_member(:epsilon, ::Smithy::Schema::Shapes::MemberShape.new(target: Epsilon, name: "epsilon", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacyPrivacyBudget.type = Types::DifferentialPrivacyPrivacyBudget
    DifferentialPrivacyPrivacyBudgetAggregation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyAggregationType, name: "type", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacyPrivacyBudgetAggregation.add_member(:max_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxCount", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    DifferentialPrivacyPrivacyBudgetAggregation.add_member(:remaining_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "remainingCount", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    DifferentialPrivacyPrivacyBudgetAggregation.type = Types::DifferentialPrivacyPrivacyBudgetAggregation
    DifferentialPrivacyPrivacyBudgetAggregationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyPrivacyBudgetAggregation, name: "member"))
    DifferentialPrivacyPrivacyImpact.add_member(:aggregations, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyPreviewAggregationList, name: "aggregations", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacyPrivacyImpact.type = Types::DifferentialPrivacyPrivacyImpact
    DifferentialPrivacySensitivityParameters.add_member(:aggregation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyAggregationType, name: "aggregationType", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacySensitivityParameters.add_member(:aggregation_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyAggregationExpression, name: "aggregationExpression", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacySensitivityParameters.add_member(:user_contribution_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "userContributionLimit", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    DifferentialPrivacySensitivityParameters.add_member(:min_column_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "minColumnValue"))
    DifferentialPrivacySensitivityParameters.add_member(:max_column_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "maxColumnValue"))
    DifferentialPrivacySensitivityParameters.type = Types::DifferentialPrivacySensitivityParameters
    DifferentialPrivacySensitivityParametersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacySensitivityParameters, name: "member"))
    DifferentialPrivacyTemplateParametersInput.add_member(:epsilon, ::Smithy::Schema::Shapes::MemberShape.new(target: Epsilon, name: "epsilon", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacyTemplateParametersInput.add_member(:users_noise_per_query, ::Smithy::Schema::Shapes::MemberShape.new(target: UsersNoisePerQuery, name: "usersNoisePerQuery", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacyTemplateParametersInput.type = Types::DifferentialPrivacyTemplateParametersInput
    DifferentialPrivacyTemplateParametersOutput.add_member(:epsilon, ::Smithy::Schema::Shapes::MemberShape.new(target: Epsilon, name: "epsilon", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacyTemplateParametersOutput.add_member(:users_noise_per_query, ::Smithy::Schema::Shapes::MemberShape.new(target: UsersNoisePerQuery, name: "usersNoisePerQuery", traits: {"smithy.api#required" => {}}))
    DifferentialPrivacyTemplateParametersOutput.type = Types::DifferentialPrivacyTemplateParametersOutput
    DifferentialPrivacyTemplateUpdateParameters.add_member(:epsilon, ::Smithy::Schema::Shapes::MemberShape.new(target: Epsilon, name: "epsilon"))
    DifferentialPrivacyTemplateUpdateParameters.add_member(:users_noise_per_query, ::Smithy::Schema::Shapes::MemberShape.new(target: UsersNoisePerQuery, name: "usersNoisePerQuery"))
    DifferentialPrivacyTemplateUpdateParameters.type = Types::DifferentialPrivacyTemplateUpdateParameters
    DirectAnalysisConfigurationDetails.add_member(:receiver_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverAccountIds, name: "receiverAccountIds"))
    DirectAnalysisConfigurationDetails.type = Types::DirectAnalysisConfigurationDetails
    ErrorMessageConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessageType, name: "type", traits: {"smithy.api#required" => {}}))
    ErrorMessageConfiguration.type = Types::ErrorMessageConfiguration
    ErrorMessageType.add_member(:detailed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETAILED", traits: {"smithy.api#enumValue" => "DETAILED"}))
    GetAnalysisTemplateOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetAnalysisTemplateOperationInput.add_member(:analysis_template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateIdentifier, name: "analysisTemplateIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AnalysisTemplateId"}))
    GetAnalysisTemplateOperationInput.type = Types::GetAnalysisTemplateOperationInput
    GetAnalysisTemplateOperationOutput.add_member(:analysis_template, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplate, name: "analysisTemplate", traits: {"smithy.api#required" => {}}))
    GetAnalysisTemplateOperationOutput.type = Types::GetAnalysisTemplateOperationOutput
    GetCollaborationAnalysisTemplateOperationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetCollaborationAnalysisTemplateOperationInput.add_member(:analysis_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArn, name: "analysisTemplateArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AnalysisTemplateArn"}))
    GetCollaborationAnalysisTemplateOperationInput.type = Types::GetCollaborationAnalysisTemplateOperationInput
    GetCollaborationAnalysisTemplateOperationOutput.add_member(:collaboration_analysis_template, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationAnalysisTemplate, name: "collaborationAnalysisTemplate", traits: {"smithy.api#required" => {}}))
    GetCollaborationAnalysisTemplateOperationOutput.type = Types::GetCollaborationAnalysisTemplateOperationOutput
    GetCollaborationChangeRequestInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetCollaborationChangeRequestInput.add_member(:change_request_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationChangeRequestIdentifier, name: "changeRequestIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCollaborationChangeRequestInput.type = Types::GetCollaborationChangeRequestInput
    GetCollaborationChangeRequestOutput.add_member(:collaboration_change_request, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationChangeRequest, name: "collaborationChangeRequest", traits: {"smithy.api#required" => {}}))
    GetCollaborationChangeRequestOutput.type = Types::GetCollaborationChangeRequestOutput
    GetCollaborationConfiguredAudienceModelAssociationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetCollaborationConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationIdentifier, name: "configuredAudienceModelAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredAudienceModelAssociationId"}))
    GetCollaborationConfiguredAudienceModelAssociationInput.type = Types::GetCollaborationConfiguredAudienceModelAssociationInput
    GetCollaborationConfiguredAudienceModelAssociationOutput.add_member(:collaboration_configured_audience_model_association, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationConfiguredAudienceModelAssociation, name: "collaborationConfiguredAudienceModelAssociation", traits: {"smithy.api#required" => {}}))
    GetCollaborationConfiguredAudienceModelAssociationOutput.type = Types::GetCollaborationConfiguredAudienceModelAssociationOutput
    GetCollaborationIdNamespaceAssociationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetCollaborationIdNamespaceAssociationInput.add_member(:id_namespace_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationIdentifier, name: "idNamespaceAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdNamespaceAssociationId"}))
    GetCollaborationIdNamespaceAssociationInput.type = Types::GetCollaborationIdNamespaceAssociationInput
    GetCollaborationIdNamespaceAssociationOutput.add_member(:collaboration_id_namespace_association, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdNamespaceAssociation, name: "collaborationIdNamespaceAssociation", traits: {"smithy.api#required" => {}}))
    GetCollaborationIdNamespaceAssociationOutput.type = Types::GetCollaborationIdNamespaceAssociationOutput
    GetCollaborationOperationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetCollaborationOperationInput.type = Types::GetCollaborationOperationInput
    GetCollaborationOperationOutput.add_member(:collaboration, ::Smithy::Schema::Shapes::MemberShape.new(target: Collaboration, name: "collaboration", traits: {"smithy.api#required" => {}}))
    GetCollaborationOperationOutput.type = Types::GetCollaborationOperationOutput
    GetCollaborationPrivacyBudgetTemplateInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetCollaborationPrivacyBudgetTemplateInput.add_member(:privacy_budget_template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateIdentifier, name: "privacyBudgetTemplateIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "PrivacyBudgetTemplateId"}))
    GetCollaborationPrivacyBudgetTemplateInput.type = Types::GetCollaborationPrivacyBudgetTemplateInput
    GetCollaborationPrivacyBudgetTemplateOutput.add_member(:collaboration_privacy_budget_template, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationPrivacyBudgetTemplate, name: "collaborationPrivacyBudgetTemplate", traits: {"smithy.api#required" => {}}))
    GetCollaborationPrivacyBudgetTemplateOutput.type = Types::GetCollaborationPrivacyBudgetTemplateOutput
    GetConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationIdentifier, name: "configuredAudienceModelAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredAudienceModelAssociationId"}))
    GetConfiguredAudienceModelAssociationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetConfiguredAudienceModelAssociationInput.type = Types::GetConfiguredAudienceModelAssociationInput
    GetConfiguredAudienceModelAssociationOutput.add_member(:configured_audience_model_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociation, name: "configuredAudienceModelAssociation", traits: {"smithy.api#required" => {}}))
    GetConfiguredAudienceModelAssociationOutput.type = Types::GetConfiguredAudienceModelAssociationOutput
    GetConfiguredTableAnalysisRuleOperationInput.add_member(:configured_table_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableIdentifier, name: "configuredTableIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    GetConfiguredTableAnalysisRuleOperationInput.add_member(:analysis_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRuleType, name: "analysisRuleType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfiguredTableAnalysisRuleOperationInput.type = Types::GetConfiguredTableAnalysisRuleOperationInput
    GetConfiguredTableAnalysisRuleOperationOutput.add_member(:analysis_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRule, name: "analysisRule", traits: {"smithy.api#required" => {}}))
    GetConfiguredTableAnalysisRuleOperationOutput.type = Types::GetConfiguredTableAnalysisRuleOperationOutput
    GetConfiguredTableAssociationAnalysisRuleInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetConfiguredTableAssociationAnalysisRuleInput.add_member(:configured_table_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationIdentifier, name: "configuredTableAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    GetConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRuleType, name: "analysisRuleType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfiguredTableAssociationAnalysisRuleInput.type = Types::GetConfiguredTableAssociationAnalysisRuleInput
    GetConfiguredTableAssociationAnalysisRuleOutput.add_member(:analysis_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRule, name: "analysisRule", traits: {"smithy.api#required" => {}}))
    GetConfiguredTableAssociationAnalysisRuleOutput.type = Types::GetConfiguredTableAssociationAnalysisRuleOutput
    GetConfiguredTableAssociationOperationInput.add_member(:configured_table_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationIdentifier, name: "configuredTableAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    GetConfiguredTableAssociationOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetConfiguredTableAssociationOperationInput.type = Types::GetConfiguredTableAssociationOperationInput
    GetConfiguredTableAssociationOperationOutput.add_member(:configured_table_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociation, name: "configuredTableAssociation", traits: {"smithy.api#required" => {}}))
    GetConfiguredTableAssociationOperationOutput.type = Types::GetConfiguredTableAssociationOperationOutput
    GetConfiguredTableOperationInput.add_member(:configured_table_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableIdentifier, name: "configuredTableIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    GetConfiguredTableOperationInput.type = Types::GetConfiguredTableOperationInput
    GetConfiguredTableOperationOutput.add_member(:configured_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTable, name: "configuredTable", traits: {"smithy.api#required" => {}}))
    GetConfiguredTableOperationOutput.type = Types::GetConfiguredTableOperationOutput
    GetIdMappingTableInput.add_member(:id_mapping_table_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "idMappingTableIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdMappingTableId"}))
    GetIdMappingTableInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetIdMappingTableInput.type = Types::GetIdMappingTableInput
    GetIdMappingTableOutput.add_member(:id_mapping_table, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTable, name: "idMappingTable", traits: {"smithy.api#required" => {}}))
    GetIdMappingTableOutput.type = Types::GetIdMappingTableOutput
    GetIdNamespaceAssociationInput.add_member(:id_namespace_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationIdentifier, name: "idNamespaceAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdNamespaceAssociationId"}))
    GetIdNamespaceAssociationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetIdNamespaceAssociationInput.type = Types::GetIdNamespaceAssociationInput
    GetIdNamespaceAssociationOutput.add_member(:id_namespace_association, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociation, name: "idNamespaceAssociation", traits: {"smithy.api#required" => {}}))
    GetIdNamespaceAssociationOutput.type = Types::GetIdNamespaceAssociationOutput
    GetMembershipOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetMembershipOperationInput.type = Types::GetMembershipOperationInput
    GetMembershipOperationOutput.add_member(:membership, ::Smithy::Schema::Shapes::MemberShape.new(target: Membership, name: "membership", traits: {"smithy.api#required" => {}}))
    GetMembershipOperationOutput.type = Types::GetMembershipOperationOutput
    GetPrivacyBudgetTemplateInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetPrivacyBudgetTemplateInput.add_member(:privacy_budget_template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateIdentifier, name: "privacyBudgetTemplateIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "PrivacyBudgetTemplateId"}))
    GetPrivacyBudgetTemplateInput.type = Types::GetPrivacyBudgetTemplateInput
    GetPrivacyBudgetTemplateOutput.add_member(:privacy_budget_template, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplate, name: "privacyBudgetTemplate", traits: {"smithy.api#required" => {}}))
    GetPrivacyBudgetTemplateOutput.type = Types::GetPrivacyBudgetTemplateOutput
    GetProtectedJobInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetProtectedJobInput.add_member(:protected_job_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobIdentifier, name: "protectedJobIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProtectedJobInput.type = Types::GetProtectedJobInput
    GetProtectedJobOutput.add_member(:protected_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJob, name: "protectedJob", traits: {"smithy.api#required" => {}}))
    GetProtectedJobOutput.type = Types::GetProtectedJobOutput
    GetProtectedQueryOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    GetProtectedQueryOperationInput.add_member(:protected_query_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryIdentifier, name: "protectedQueryIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProtectedQueryOperationInput.type = Types::GetProtectedQueryOperationInput
    GetProtectedQueryOperationOutput.add_member(:protected_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQuery, name: "protectedQuery", traits: {"smithy.api#required" => {}}))
    GetProtectedQueryOperationOutput.type = Types::GetProtectedQueryOperationOutput
    GetSchemaAnalysisRuleOperationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetSchemaAnalysisRuleOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAlias, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSchemaAnalysisRuleOperationInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleType, name: "type", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSchemaAnalysisRuleOperationInput.type = Types::GetSchemaAnalysisRuleOperationInput
    GetSchemaAnalysisRuleOperationOutput.add_member(:analysis_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRule, name: "analysisRule", traits: {"smithy.api#required" => {}}))
    GetSchemaAnalysisRuleOperationOutput.type = Types::GetSchemaAnalysisRuleOperationOutput
    GetSchemaOperationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    GetSchemaOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAlias, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSchemaOperationInput.type = Types::GetSchemaOperationInput
    GetSchemaOperationOutput.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: Schema, name: "schema", traits: {"smithy.api#required" => {}}))
    GetSchemaOperationOutput.type = Types::GetSchemaOperationOutput
    GlueTableReference.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: CommercialRegion, name: "region"))
    GlueTableReference.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueTableName, name: "tableName", traits: {"smithy.api#required" => {}}))
    GlueTableReference.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueDatabaseName, name: "databaseName", traits: {"smithy.api#required" => {}}))
    GlueTableReference.type = Types::GlueTableReference
    Hash.add_member(:sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sha256"))
    Hash.type = Types::Hash
    HashList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Hash, name: "member"))
    IdMappingConfig.add_member(:allow_use_as_dimension_column, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "allowUseAsDimensionColumn", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    IdMappingConfig.type = Types::IdMappingConfig
    IdMappingTable.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdMappingTableId"}))
    IdMappingTable.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTableArn, name: "arn", traits: {"smithy.api#required" => {}}))
    IdMappingTable.add_member(:input_reference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTableInputReferenceConfig, name: "inputReferenceConfig", traits: {"smithy.api#required" => {}}))
    IdMappingTable.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "membershipId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    IdMappingTable.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    IdMappingTable.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    IdMappingTable.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    IdMappingTable.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    IdMappingTable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceAlias, name: "name", traits: {"smithy.api#required" => {}}))
    IdMappingTable.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    IdMappingTable.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    IdMappingTable.add_member(:input_reference_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTableInputReferenceProperties, name: "inputReferenceProperties", traits: {"smithy.api#required" => {}}))
    IdMappingTable.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "kmsKeyArn"))
    IdMappingTable.type = Types::IdMappingTable
    IdMappingTableInputReferenceConfig.add_member(:input_reference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTableInputReferenceArn, name: "inputReferenceArn", traits: {"smithy.api#required" => {}}))
    IdMappingTableInputReferenceConfig.add_member(:manage_resource_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "manageResourcePolicies", traits: {"smithy.api#required" => {}}))
    IdMappingTableInputReferenceConfig.type = Types::IdMappingTableInputReferenceConfig
    IdMappingTableInputReferenceProperties.add_member(:id_mapping_table_input_source, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTableInputSourceList, name: "idMappingTableInputSource", traits: {"smithy.api#required" => {}}))
    IdMappingTableInputReferenceProperties.type = Types::IdMappingTableInputReferenceProperties
    IdMappingTableInputSource.add_member(:id_namespace_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "idNamespaceAssociationId", traits: {"smithy.api#required" => {}}))
    IdMappingTableInputSource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceType, name: "type", traits: {"smithy.api#required" => {}}))
    IdMappingTableInputSource.type = Types::IdMappingTableInputSource
    IdMappingTableInputSourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTableInputSource, name: "member"))
    IdMappingTableSchemaTypeProperties.add_member(:id_mapping_table_input_source, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTableInputSourceList, name: "idMappingTableInputSource", traits: {"smithy.api#required" => {}}))
    IdMappingTableSchemaTypeProperties.type = Types::IdMappingTableSchemaTypeProperties
    IdMappingTableSummary.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    IdMappingTableSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    IdMappingTableSummary.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    IdMappingTableSummary.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    IdMappingTableSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    IdMappingTableSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    IdMappingTableSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdMappingTableId"}))
    IdMappingTableSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTableArn, name: "arn", traits: {"smithy.api#required" => {}}))
    IdMappingTableSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    IdMappingTableSummary.add_member(:input_reference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTableInputReferenceConfig, name: "inputReferenceConfig", traits: {"smithy.api#required" => {}}))
    IdMappingTableSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceAlias, name: "name", traits: {"smithy.api#required" => {}}))
    IdMappingTableSummary.type = Types::IdMappingTableSummary
    IdMappingTableSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTableSummary, name: "member"))
    IdMappingWorkflowsSupported.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "member"))
    IdNamespaceAssociation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationIdentifier, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdNamespaceAssociationIdentifier"}))
    IdNamespaceAssociation.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "membershipId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    IdNamespaceAssociation.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    IdNamespaceAssociation.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:input_reference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationInputReferenceConfig, name: "inputReferenceConfig", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:input_reference_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationInputReferenceProperties, name: "inputReferenceProperties", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociation.add_member(:id_mapping_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingConfig, name: "idMappingConfig"))
    IdNamespaceAssociation.type = Types::IdNamespaceAssociation
    IdNamespaceAssociationInputReferenceConfig.add_member(:input_reference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationInputReferenceArn, name: "inputReferenceArn", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociationInputReferenceConfig.add_member(:manage_resource_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "manageResourcePolicies", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociationInputReferenceConfig.type = Types::IdNamespaceAssociationInputReferenceConfig
    IdNamespaceAssociationInputReferenceProperties.add_member(:id_namespace_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceType, name: "idNamespaceType", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociationInputReferenceProperties.add_member(:id_mapping_workflows_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingWorkflowsSupported, name: "idMappingWorkflowsSupported", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociationInputReferenceProperties.type = Types::IdNamespaceAssociationInputReferenceProperties
    IdNamespaceAssociationInputReferencePropertiesSummary.add_member(:id_namespace_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceType, name: "idNamespaceType", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociationInputReferencePropertiesSummary.type = Types::IdNamespaceAssociationInputReferencePropertiesSummary
    IdNamespaceAssociationSummary.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    IdNamespaceAssociationSummary.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdNamespaceAssociationId"}))
    IdNamespaceAssociationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:input_reference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationInputReferenceConfig, name: "inputReferenceConfig", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    IdNamespaceAssociationSummary.add_member(:input_reference_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationInputReferencePropertiesSummary, name: "inputReferenceProperties", traits: {"smithy.api#required" => {}}))
    IdNamespaceAssociationSummary.type = Types::IdNamespaceAssociationSummary
    IdNamespaceAssociationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationSummary, name: "member"))
    IdNamespaceType.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE", traits: {"smithy.api#enumValue" => "SOURCE"}))
    IdNamespaceType.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET", traits: {"smithy.api#enumValue" => "TARGET"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    JobComputePaymentConfig.add_member(:is_responsible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isResponsible", traits: {"smithy.api#required" => {}}))
    JobComputePaymentConfig.type = Types::JobComputePaymentConfig
    JobType.add_member(:batch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BATCH", traits: {"smithy.api#enumValue" => "BATCH"}))
    JobType.add_member(:incremental, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCREMENTAL", traits: {"smithy.api#enumValue" => "INCREMENTAL"}))
    JobType.add_member(:delete_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_ONLY", traits: {"smithy.api#enumValue" => "DELETE_ONLY"}))
    JoinOperatorsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinOperator, name: "member"))
    ListAnalysisTemplatesOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAnalysisTemplatesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAnalysisTemplatesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAnalysisTemplatesOperationInput.type = Types::ListAnalysisTemplatesOperationInput
    ListAnalysisTemplatesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListAnalysisTemplatesOperationOutput.add_member(:analysis_template_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateSummaryList, name: "analysisTemplateSummaries", traits: {"smithy.api#required" => {}}))
    ListAnalysisTemplatesOperationOutput.type = Types::ListAnalysisTemplatesOperationOutput
    ListCollaborationAnalysisTemplatesOperationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListCollaborationAnalysisTemplatesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationAnalysisTemplatesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationAnalysisTemplatesOperationInput.type = Types::ListCollaborationAnalysisTemplatesOperationInput
    ListCollaborationAnalysisTemplatesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListCollaborationAnalysisTemplatesOperationOutput.add_member(:collaboration_analysis_template_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationAnalysisTemplateSummaryList, name: "collaborationAnalysisTemplateSummaries", traits: {"smithy.api#required" => {}}))
    ListCollaborationAnalysisTemplatesOperationOutput.type = Types::ListCollaborationAnalysisTemplatesOperationOutput
    ListCollaborationChangeRequestsInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListCollaborationChangeRequestsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeRequestStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListCollaborationChangeRequestsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationChangeRequestsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationChangeRequestsInput.type = Types::ListCollaborationChangeRequestsInput
    ListCollaborationChangeRequestsOutput.add_member(:collaboration_change_request_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationChangeRequestSummaryList, name: "collaborationChangeRequestSummaries", traits: {"smithy.api#required" => {}}))
    ListCollaborationChangeRequestsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListCollaborationChangeRequestsOutput.type = Types::ListCollaborationChangeRequestsOutput
    ListCollaborationConfiguredAudienceModelAssociationsInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListCollaborationConfiguredAudienceModelAssociationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationConfiguredAudienceModelAssociationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationConfiguredAudienceModelAssociationsInput.type = Types::ListCollaborationConfiguredAudienceModelAssociationsInput
    ListCollaborationConfiguredAudienceModelAssociationsOutput.add_member(:collaboration_configured_audience_model_association_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationConfiguredAudienceModelAssociationSummaryList, name: "collaborationConfiguredAudienceModelAssociationSummaries", traits: {"smithy.api#required" => {}}))
    ListCollaborationConfiguredAudienceModelAssociationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListCollaborationConfiguredAudienceModelAssociationsOutput.type = Types::ListCollaborationConfiguredAudienceModelAssociationsOutput
    ListCollaborationIdNamespaceAssociationsInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListCollaborationIdNamespaceAssociationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationIdNamespaceAssociationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationIdNamespaceAssociationsInput.type = Types::ListCollaborationIdNamespaceAssociationsInput
    ListCollaborationIdNamespaceAssociationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListCollaborationIdNamespaceAssociationsOutput.add_member(:collaboration_id_namespace_association_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdNamespaceAssociationSummaryList, name: "collaborationIdNamespaceAssociationSummaries", traits: {"smithy.api#required" => {}}))
    ListCollaborationIdNamespaceAssociationsOutput.type = Types::ListCollaborationIdNamespaceAssociationsOutput
    ListCollaborationPrivacyBudgetTemplatesInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListCollaborationPrivacyBudgetTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationPrivacyBudgetTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationPrivacyBudgetTemplatesInput.type = Types::ListCollaborationPrivacyBudgetTemplatesInput
    ListCollaborationPrivacyBudgetTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListCollaborationPrivacyBudgetTemplatesOutput.add_member(:collaboration_privacy_budget_template_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationPrivacyBudgetTemplateSummaryList, name: "collaborationPrivacyBudgetTemplateSummaries", traits: {"smithy.api#required" => {}}))
    ListCollaborationPrivacyBudgetTemplatesOutput.type = Types::ListCollaborationPrivacyBudgetTemplatesOutput
    ListCollaborationPrivacyBudgetsInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListCollaborationPrivacyBudgetsInput.add_member(:privacy_budget_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetType, name: "privacyBudgetType", traits: {"smithy.api#httpQuery" => "privacyBudgetType", "smithy.api#required" => {}}))
    ListCollaborationPrivacyBudgetsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationPrivacyBudgetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationPrivacyBudgetsInput.add_member(:access_budget_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetedResourceArn, name: "accessBudgetResourceArn", traits: {"smithy.api#httpQuery" => "accessBudgetResourceArn"}))
    ListCollaborationPrivacyBudgetsInput.type = Types::ListCollaborationPrivacyBudgetsInput
    ListCollaborationPrivacyBudgetsOutput.add_member(:collaboration_privacy_budget_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationPrivacyBudgetSummaryList, name: "collaborationPrivacyBudgetSummaries", traits: {"smithy.api#required" => {}}))
    ListCollaborationPrivacyBudgetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListCollaborationPrivacyBudgetsOutput.type = Types::ListCollaborationPrivacyBudgetsOutput
    ListCollaborationsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCollaborationsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCollaborationsOperationInput.add_member(:member_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterableMemberStatus, name: "memberStatus", traits: {"smithy.api#httpQuery" => "memberStatus"}))
    ListCollaborationsOperationInput.type = Types::ListCollaborationsOperationInput
    ListCollaborationsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListCollaborationsOperationOutput.add_member(:collaboration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationSummaryList, name: "collaborationList", traits: {"smithy.api#required" => {}}))
    ListCollaborationsOperationOutput.type = Types::ListCollaborationsOperationOutput
    ListConfiguredAudienceModelAssociationsInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConfiguredAudienceModelAssociationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListConfiguredAudienceModelAssociationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListConfiguredAudienceModelAssociationsInput.type = Types::ListConfiguredAudienceModelAssociationsInput
    ListConfiguredAudienceModelAssociationsOutput.add_member(:configured_audience_model_association_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationSummaryList, name: "configuredAudienceModelAssociationSummaries", traits: {"smithy.api#required" => {}}))
    ListConfiguredAudienceModelAssociationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListConfiguredAudienceModelAssociationsOutput.type = Types::ListConfiguredAudienceModelAssociationsOutput
    ListConfiguredTableAssociationsOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConfiguredTableAssociationsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListConfiguredTableAssociationsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListConfiguredTableAssociationsOperationInput.type = Types::ListConfiguredTableAssociationsOperationInput
    ListConfiguredTableAssociationsOperationOutput.add_member(:configured_table_association_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationSummaryList, name: "configuredTableAssociationSummaries", traits: {"smithy.api#required" => {}}))
    ListConfiguredTableAssociationsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListConfiguredTableAssociationsOperationOutput.type = Types::ListConfiguredTableAssociationsOperationOutput
    ListConfiguredTablesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListConfiguredTablesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListConfiguredTablesOperationInput.type = Types::ListConfiguredTablesOperationInput
    ListConfiguredTablesOperationOutput.add_member(:configured_table_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableSummaryList, name: "configuredTableSummaries", traits: {"smithy.api#required" => {}}))
    ListConfiguredTablesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListConfiguredTablesOperationOutput.type = Types::ListConfiguredTablesOperationOutput
    ListIdMappingTablesInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIdMappingTablesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIdMappingTablesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListIdMappingTablesInput.type = Types::ListIdMappingTablesInput
    ListIdMappingTablesOutput.add_member(:id_mapping_table_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTableSummaryList, name: "idMappingTableSummaries", traits: {"smithy.api#required" => {}}))
    ListIdMappingTablesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListIdMappingTablesOutput.type = Types::ListIdMappingTablesOutput
    ListIdNamespaceAssociationsInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIdNamespaceAssociationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIdNamespaceAssociationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListIdNamespaceAssociationsInput.type = Types::ListIdNamespaceAssociationsInput
    ListIdNamespaceAssociationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListIdNamespaceAssociationsOutput.add_member(:id_namespace_association_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationSummaryList, name: "idNamespaceAssociationSummaries", traits: {"smithy.api#required" => {}}))
    ListIdNamespaceAssociationsOutput.type = Types::ListIdNamespaceAssociationsOutput
    ListMembersOperationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListMembersOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMembersOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMembersOperationInput.type = Types::ListMembersOperationInput
    ListMembersOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListMembersOperationOutput.add_member(:member_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberSummaryList, name: "memberSummaries", traits: {"smithy.api#required" => {}}))
    ListMembersOperationOutput.type = Types::ListMembersOperationOutput
    ListMembershipsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMembershipsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMembershipsOperationInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListMembershipsOperationInput.type = Types::ListMembershipsOperationInput
    ListMembershipsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListMembershipsOperationOutput.add_member(:membership_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipSummaryList, name: "membershipSummaries", traits: {"smithy.api#required" => {}}))
    ListMembershipsOperationOutput.type = Types::ListMembershipsOperationOutput
    ListPrivacyBudgetTemplatesInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPrivacyBudgetTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPrivacyBudgetTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPrivacyBudgetTemplatesInput.type = Types::ListPrivacyBudgetTemplatesInput
    ListPrivacyBudgetTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListPrivacyBudgetTemplatesOutput.add_member(:privacy_budget_template_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateSummaryList, name: "privacyBudgetTemplateSummaries", traits: {"smithy.api#required" => {}}))
    ListPrivacyBudgetTemplatesOutput.type = Types::ListPrivacyBudgetTemplatesOutput
    ListPrivacyBudgetsInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ListPrivacyBudgetsInput.add_member(:privacy_budget_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetType, name: "privacyBudgetType", traits: {"smithy.api#httpQuery" => "privacyBudgetType", "smithy.api#required" => {}}))
    ListPrivacyBudgetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPrivacyBudgetsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPrivacyBudgetsInput.add_member(:access_budget_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetedResourceArn, name: "accessBudgetResourceArn", traits: {"smithy.api#httpQuery" => "accessBudgetResourceArn"}))
    ListPrivacyBudgetsInput.type = Types::ListPrivacyBudgetsInput
    ListPrivacyBudgetsOutput.add_member(:privacy_budget_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetSummaryList, name: "privacyBudgetSummaries", traits: {"smithy.api#required" => {}}))
    ListPrivacyBudgetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListPrivacyBudgetsOutput.type = Types::ListPrivacyBudgetsOutput
    ListProtectedJobsInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ListProtectedJobsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListProtectedJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProtectedJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProtectedJobsInput.type = Types::ListProtectedJobsInput
    ListProtectedJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListProtectedJobsOutput.add_member(:protected_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobSummaryList, name: "protectedJobs", traits: {"smithy.api#required" => {}}))
    ListProtectedJobsOutput.type = Types::ListProtectedJobsOutput
    ListProtectedQueriesOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ListProtectedQueriesOperationInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListProtectedQueriesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProtectedQueriesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProtectedQueriesOperationInput.type = Types::ListProtectedQueriesOperationInput
    ListProtectedQueriesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListProtectedQueriesOperationOutput.add_member(:protected_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQuerySummaryList, name: "protectedQueries", traits: {"smithy.api#required" => {}}))
    ListProtectedQueriesOperationOutput.type = Types::ListProtectedQueriesOperationOutput
    ListSchemasOperationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    ListSchemasOperationInput.add_member(:schema_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaType, name: "schemaType", traits: {"smithy.api#httpQuery" => "schemaType"}))
    ListSchemasOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSchemasOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSchemasOperationInput.type = Types::ListSchemasOperationInput
    ListSchemasOperationOutput.add_member(:schema_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaSummaryList, name: "schemaSummaries", traits: {"smithy.api#required" => {}}))
    ListSchemasOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSchemasOperationOutput.type = Types::ListSchemasOperationOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CleanroomsArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MLMemberAbilities.add_member(:custom_ml_member_abilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMLMemberAbilities, name: "customMLMemberAbilities", traits: {"smithy.api#required" => {}}))
    MLMemberAbilities.type = Types::MLMemberAbilities
    MLPaymentConfig.add_member(:model_training, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelTrainingPaymentConfig, name: "modelTraining"))
    MLPaymentConfig.add_member(:model_inference, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelInferencePaymentConfig, name: "modelInference"))
    MLPaymentConfig.type = Types::MLPaymentConfig
    MemberAbilities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAbility, name: "member"))
    MemberAbility.add_member(:can_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAN_QUERY", traits: {"smithy.api#enumValue" => "CAN_QUERY"}))
    MemberAbility.add_member(:can_receive_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAN_RECEIVE_RESULTS", traits: {"smithy.api#enumValue" => "CAN_RECEIVE_RESULTS"}))
    MemberAbility.add_member(:can_run_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAN_RUN_JOB", traits: {"smithy.api#enumValue" => "CAN_RUN_JOB"}))
    MemberChangeSpecification.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    MemberChangeSpecification.add_member(:member_abilities, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAbilities, name: "memberAbilities", traits: {"smithy.api#required" => {}}))
    MemberChangeSpecification.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "displayName"))
    MemberChangeSpecification.type = Types::MemberChangeSpecification
    MemberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberSpecification, name: "member"))
    MemberSpecification.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    MemberSpecification.add_member(:member_abilities, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAbilities, name: "memberAbilities", traits: {"smithy.api#required" => {}}))
    MemberSpecification.add_member(:ml_member_abilities, ::Smithy::Schema::Shapes::MemberShape.new(target: MLMemberAbilities, name: "mlMemberAbilities"))
    MemberSpecification.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "displayName", traits: {"smithy.api#required" => {}}))
    MemberSpecification.add_member(:payment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentConfiguration, name: "paymentConfiguration"))
    MemberSpecification.type = Types::MemberSpecification
    MemberSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AccountId"}))
    MemberSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberStatus, name: "status", traits: {"smithy.api#required" => {}}))
    MemberSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "displayName", traits: {"smithy.api#required" => {}}))
    MemberSummary.add_member(:abilities, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAbilities, name: "abilities", traits: {"smithy.api#required" => {}}))
    MemberSummary.add_member(:ml_abilities, ::Smithy::Schema::Shapes::MemberShape.new(target: MLMemberAbilities, name: "mlAbilities"))
    MemberSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    MemberSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    MemberSummary.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "membershipId"))
    MemberSummary.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn"))
    MemberSummary.add_member(:payment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentConfiguration, name: "paymentConfiguration", traits: {"smithy.api#required" => {}}))
    MemberSummary.type = Types::MemberSummary
    MemberSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberSummary, name: "member"))
    Membership.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    Membership.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "arn", traits: {"smithy.api#required" => {}}))
    Membership.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    Membership.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    Membership.add_member(:collaboration_creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "collaborationCreatorAccountId", traits: {"smithy.api#required" => {}}))
    Membership.add_member(:collaboration_creator_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "collaborationCreatorDisplayName", traits: {"smithy.api#required" => {}}))
    Membership.add_member(:collaboration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationName, name: "collaborationName", traits: {"smithy.api#required" => {}}))
    Membership.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    Membership.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    Membership.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipStatus, name: "status", traits: {"smithy.api#required" => {}}))
    Membership.add_member(:member_abilities, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAbilities, name: "memberAbilities", traits: {"smithy.api#required" => {}}))
    Membership.add_member(:ml_member_abilities, ::Smithy::Schema::Shapes::MemberShape.new(target: MLMemberAbilities, name: "mlMemberAbilities"))
    Membership.add_member(:query_log_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipQueryLogStatus, name: "queryLogStatus", traits: {"smithy.api#required" => {}}))
    Membership.add_member(:job_log_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipJobLogStatus, name: "jobLogStatus"))
    Membership.add_member(:default_result_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipProtectedQueryResultConfiguration, name: "defaultResultConfiguration"))
    Membership.add_member(:default_job_result_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipProtectedJobResultConfiguration, name: "defaultJobResultConfiguration"))
    Membership.add_member(:payment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipPaymentConfiguration, name: "paymentConfiguration", traits: {"smithy.api#required" => {}}))
    Membership.type = Types::Membership
    MembershipJobComputePaymentConfig.add_member(:is_responsible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isResponsible", traits: {"smithy.api#required" => {}}))
    MembershipJobComputePaymentConfig.type = Types::MembershipJobComputePaymentConfig
    MembershipJobLogStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    MembershipJobLogStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    MembershipMLPaymentConfig.add_member(:model_training, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipModelTrainingPaymentConfig, name: "modelTraining"))
    MembershipMLPaymentConfig.add_member(:model_inference, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipModelInferencePaymentConfig, name: "modelInference"))
    MembershipMLPaymentConfig.type = Types::MembershipMLPaymentConfig
    MembershipModelInferencePaymentConfig.add_member(:is_responsible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isResponsible", traits: {"smithy.api#required" => {}}))
    MembershipModelInferencePaymentConfig.type = Types::MembershipModelInferencePaymentConfig
    MembershipModelTrainingPaymentConfig.add_member(:is_responsible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isResponsible", traits: {"smithy.api#required" => {}}))
    MembershipModelTrainingPaymentConfig.type = Types::MembershipModelTrainingPaymentConfig
    MembershipPaymentConfiguration.add_member(:query_compute, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipQueryComputePaymentConfig, name: "queryCompute", traits: {"smithy.api#required" => {}}))
    MembershipPaymentConfiguration.add_member(:machine_learning, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipMLPaymentConfig, name: "machineLearning"))
    MembershipPaymentConfiguration.add_member(:job_compute, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipJobComputePaymentConfig, name: "jobCompute"))
    MembershipPaymentConfiguration.type = Types::MembershipPaymentConfiguration
    MembershipProtectedJobOutputConfiguration.add_member(:s3, Types::MembershipProtectedJobOutputConfiguration::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobS3OutputConfigurationInput, name: "s3"))
    MembershipProtectedJobOutputConfiguration.add_member(:unknown, Types::MembershipProtectedJobOutputConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MembershipProtectedJobOutputConfiguration.type = Types::MembershipProtectedJobOutputConfiguration
    MembershipProtectedJobResultConfiguration.add_member(:output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipProtectedJobOutputConfiguration, name: "outputConfiguration", traits: {"smithy.api#required" => {}}))
    MembershipProtectedJobResultConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    MembershipProtectedJobResultConfiguration.type = Types::MembershipProtectedJobResultConfiguration
    MembershipProtectedQueryOutputConfiguration.add_member(:s3, Types::MembershipProtectedQueryOutputConfiguration::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryS3OutputConfiguration, name: "s3"))
    MembershipProtectedQueryOutputConfiguration.add_member(:unknown, Types::MembershipProtectedQueryOutputConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MembershipProtectedQueryOutputConfiguration.type = Types::MembershipProtectedQueryOutputConfiguration
    MembershipProtectedQueryResultConfiguration.add_member(:output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipProtectedQueryOutputConfiguration, name: "outputConfiguration", traits: {"smithy.api#required" => {}}))
    MembershipProtectedQueryResultConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    MembershipProtectedQueryResultConfiguration.type = Types::MembershipProtectedQueryResultConfiguration
    MembershipQueryComputePaymentConfig.add_member(:is_responsible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isResponsible", traits: {"smithy.api#required" => {}}))
    MembershipQueryComputePaymentConfig.type = Types::MembershipQueryComputePaymentConfig
    MembershipQueryLogStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    MembershipQueryLogStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    MembershipSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    MembershipSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "arn", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:collaboration_creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "collaborationCreatorAccountId", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:collaboration_creator_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "collaborationCreatorDisplayName", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:collaboration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationName, name: "collaborationName", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipStatus, name: "status", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:member_abilities, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAbilities, name: "memberAbilities", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:ml_member_abilities, ::Smithy::Schema::Shapes::MemberShape.new(target: MLMemberAbilities, name: "mlMemberAbilities"))
    MembershipSummary.add_member(:payment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipPaymentConfiguration, name: "paymentConfiguration", traits: {"smithy.api#required" => {}}))
    MembershipSummary.type = Types::MembershipSummary
    MembershipSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipSummary, name: "member"))
    ModelInferencePaymentConfig.add_member(:is_responsible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isResponsible", traits: {"smithy.api#required" => {}}))
    ModelInferencePaymentConfig.type = Types::ModelInferencePaymentConfig
    ModelTrainingPaymentConfig.add_member(:is_responsible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isResponsible", traits: {"smithy.api#required" => {}}))
    ModelTrainingPaymentConfig.type = Types::ModelTrainingPaymentConfig
    ParameterMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, name: "key"))
    ParameterMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "value"))
    ParameterType.add_member(:smallint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMALLINT", traits: {"smithy.api#enumValue" => "SMALLINT"}))
    ParameterType.add_member(:integer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGER", traits: {"smithy.api#enumValue" => "INTEGER"}))
    ParameterType.add_member(:bigint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BIGINT", traits: {"smithy.api#enumValue" => "BIGINT"}))
    ParameterType.add_member(:decimal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DECIMAL", traits: {"smithy.api#enumValue" => "DECIMAL"}))
    ParameterType.add_member(:real, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REAL", traits: {"smithy.api#enumValue" => "REAL"}))
    ParameterType.add_member(:double_precision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOUBLE_PRECISION", traits: {"smithy.api#enumValue" => "DOUBLE_PRECISION"}))
    ParameterType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    ParameterType.add_member(:char, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHAR", traits: {"smithy.api#enumValue" => "CHAR"}))
    ParameterType.add_member(:varchar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VARCHAR", traits: {"smithy.api#enumValue" => "VARCHAR"}))
    ParameterType.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATE", traits: {"smithy.api#enumValue" => "DATE"}))
    ParameterType.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMP", traits: {"smithy.api#enumValue" => "TIMESTAMP"}))
    ParameterType.add_member(:timestamptz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMPTZ", traits: {"smithy.api#enumValue" => "TIMESTAMPTZ"}))
    ParameterType.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME", traits: {"smithy.api#enumValue" => "TIME"}))
    ParameterType.add_member(:timetz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMETZ", traits: {"smithy.api#enumValue" => "TIMETZ"}))
    ParameterType.add_member(:varbyte, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VARBYTE", traits: {"smithy.api#enumValue" => "VARBYTE"}))
    ParameterType.add_member(:binary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BINARY", traits: {"smithy.api#enumValue" => "BINARY"}))
    ParameterType.add_member(:byte, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTE", traits: {"smithy.api#enumValue" => "BYTE"}))
    ParameterType.add_member(:character, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHARACTER", traits: {"smithy.api#enumValue" => "CHARACTER"}))
    ParameterType.add_member(:double, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOUBLE", traits: {"smithy.api#enumValue" => "DOUBLE"}))
    ParameterType.add_member(:float, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOAT", traits: {"smithy.api#enumValue" => "FLOAT"}))
    ParameterType.add_member(:int, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INT", traits: {"smithy.api#enumValue" => "INT"}))
    ParameterType.add_member(:long, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LONG", traits: {"smithy.api#enumValue" => "LONG"}))
    ParameterType.add_member(:numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC", traits: {"smithy.api#enumValue" => "NUMERIC"}))
    ParameterType.add_member(:short, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHORT", traits: {"smithy.api#enumValue" => "SHORT"}))
    ParameterType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    ParameterType.add_member(:timestamp_ltz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMP_LTZ", traits: {"smithy.api#enumValue" => "TIMESTAMP_LTZ"}))
    ParameterType.add_member(:timestamp_ntz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTAMP_NTZ", traits: {"smithy.api#enumValue" => "TIMESTAMP_NTZ"}))
    ParameterType.add_member(:tinyint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TINYINT", traits: {"smithy.api#enumValue" => "TINYINT"}))
    PaymentConfiguration.add_member(:query_compute, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryComputePaymentConfig, name: "queryCompute", traits: {"smithy.api#required" => {}}))
    PaymentConfiguration.add_member(:machine_learning, ::Smithy::Schema::Shapes::MemberShape.new(target: MLPaymentConfig, name: "machineLearning"))
    PaymentConfiguration.add_member(:job_compute, ::Smithy::Schema::Shapes::MemberShape.new(target: JobComputePaymentConfig, name: "jobCompute"))
    PaymentConfiguration.type = Types::PaymentConfiguration
    PopulateIdMappingTableInput.add_member(:id_mapping_table_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "idMappingTableIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdMappingTableId"}))
    PopulateIdMappingTableInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    PopulateIdMappingTableInput.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "jobType"))
    PopulateIdMappingTableInput.type = Types::PopulateIdMappingTableInput
    PopulateIdMappingTableOutput.add_member(:id_mapping_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "idMappingJobId", traits: {"smithy.api#required" => {}}))
    PopulateIdMappingTableOutput.type = Types::PopulateIdMappingTableOutput
    PreviewPrivacyImpactInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    PreviewPrivacyImpactInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PreviewPrivacyImpactParametersInput, name: "parameters", traits: {"smithy.api#required" => {}}))
    PreviewPrivacyImpactInput.type = Types::PreviewPrivacyImpactInput
    PreviewPrivacyImpactOutput.add_member(:privacy_impact, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyImpact, name: "privacyImpact", traits: {"smithy.api#required" => {}}))
    PreviewPrivacyImpactOutput.type = Types::PreviewPrivacyImpactOutput
    PreviewPrivacyImpactParametersInput.add_member(:differential_privacy, Types::PreviewPrivacyImpactParametersInput::DifferentialPrivacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyPreviewParametersInput, name: "differentialPrivacy"))
    PreviewPrivacyImpactParametersInput.add_member(:unknown, Types::PreviewPrivacyImpactParametersInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PreviewPrivacyImpactParametersInput.type = Types::PreviewPrivacyImpactParametersInput
    PrivacyBudget.add_member(:differential_privacy, Types::PrivacyBudget::DifferentialPrivacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyPrivacyBudget, name: "differentialPrivacy"))
    PrivacyBudget.add_member(:access_budget, Types::PrivacyBudget::AccessBudget, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessBudget, name: "accessBudget"))
    PrivacyBudget.add_member(:unknown, Types::PrivacyBudget::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PrivacyBudget.type = Types::PrivacyBudget
    PrivacyBudgetSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:privacy_budget_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateIdentifier, name: "privacyBudgetTemplateId", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:privacy_budget_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateArn, name: "privacyBudgetTemplateArn", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipId", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetType, name: "type", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetSummary.add_member(:budget, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudget, name: "budget", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetSummary.type = Types::PrivacyBudgetSummary
    PrivacyBudgetSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetSummary, name: "member"))
    PrivacyBudgetTemplate.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateIdentifier, name: "id", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateArn, name: "arn", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "membershipId", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:privacy_budget_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetType, name: "privacyBudgetType", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:auto_refresh, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateAutoRefresh, name: "autoRefresh", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplate.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateParametersOutput, name: "parameters", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplate.type = Types::PrivacyBudgetTemplate
    PrivacyBudgetTemplateAutoRefresh.add_member(:calendar_month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CALENDAR_MONTH", traits: {"smithy.api#enumValue" => "CALENDAR_MONTH"}))
    PrivacyBudgetTemplateAutoRefresh.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    PrivacyBudgetTemplateParametersInput.add_member(:differential_privacy, Types::PrivacyBudgetTemplateParametersInput::DifferentialPrivacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyTemplateParametersInput, name: "differentialPrivacy"))
    PrivacyBudgetTemplateParametersInput.add_member(:access_budget, Types::PrivacyBudgetTemplateParametersInput::AccessBudget, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessBudgetsPrivacyTemplateParametersInput, name: "accessBudget"))
    PrivacyBudgetTemplateParametersInput.add_member(:unknown, Types::PrivacyBudgetTemplateParametersInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PrivacyBudgetTemplateParametersInput.type = Types::PrivacyBudgetTemplateParametersInput
    PrivacyBudgetTemplateParametersOutput.add_member(:differential_privacy, Types::PrivacyBudgetTemplateParametersOutput::DifferentialPrivacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyTemplateParametersOutput, name: "differentialPrivacy"))
    PrivacyBudgetTemplateParametersOutput.add_member(:access_budget, Types::PrivacyBudgetTemplateParametersOutput::AccessBudget, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessBudgetsPrivacyTemplateParametersOutput, name: "accessBudget"))
    PrivacyBudgetTemplateParametersOutput.add_member(:unknown, Types::PrivacyBudgetTemplateParametersOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PrivacyBudgetTemplateParametersOutput.type = Types::PrivacyBudgetTemplateParametersOutput
    PrivacyBudgetTemplateSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateIdentifier, name: "id", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateArn, name: "arn", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "membershipId", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:privacy_budget_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetType, name: "privacyBudgetType", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    PrivacyBudgetTemplateSummary.type = Types::PrivacyBudgetTemplateSummary
    PrivacyBudgetTemplateSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateSummary, name: "member"))
    PrivacyBudgetTemplateUpdateParameters.add_member(:differential_privacy, Types::PrivacyBudgetTemplateUpdateParameters::DifferentialPrivacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyTemplateUpdateParameters, name: "differentialPrivacy"))
    PrivacyBudgetTemplateUpdateParameters.add_member(:access_budget, Types::PrivacyBudgetTemplateUpdateParameters::AccessBudget, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessBudgetsPrivacyTemplateUpdateParameters, name: "accessBudget"))
    PrivacyBudgetTemplateUpdateParameters.add_member(:unknown, Types::PrivacyBudgetTemplateUpdateParameters::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PrivacyBudgetTemplateUpdateParameters.type = Types::PrivacyBudgetTemplateUpdateParameters
    PrivacyBudgetType.add_member(:differential_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIFFERENTIAL_PRIVACY", traits: {"smithy.api#enumValue" => "DIFFERENTIAL_PRIVACY"}))
    PrivacyBudgetType.add_member(:access_budget, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_BUDGET", traits: {"smithy.api#enumValue" => "ACCESS_BUDGET"}))
    PrivacyImpact.add_member(:differential_privacy, Types::PrivacyImpact::DifferentialPrivacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyPrivacyImpact, name: "differentialPrivacy"))
    PrivacyImpact.add_member(:unknown, Types::PrivacyImpact::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PrivacyImpact.type = Types::PrivacyImpact
    ProtectedJob.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobIdentifier, name: "id", traits: {"smithy.api#required" => {}}))
    ProtectedJob.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ProtectedJob.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    ProtectedJob.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    ProtectedJob.add_member(:job_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobParameters, name: "jobParameters"))
    ProtectedJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ProtectedJob.add_member(:result_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobResultConfigurationOutput, name: "resultConfiguration"))
    ProtectedJob.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobStatistics, name: "statistics"))
    ProtectedJob.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobResult, name: "result"))
    ProtectedJob.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobError, name: "error"))
    ProtectedJob.add_member(:compute_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobComputeConfiguration, name: "computeConfiguration"))
    ProtectedJob.type = Types::ProtectedJob
    ProtectedJobAnalysisType.add_member(:direct_analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT_ANALYSIS", traits: {"smithy.api#enumValue" => "DIRECT_ANALYSIS"}))
    ProtectedJobComputeConfiguration.add_member(:worker, Types::ProtectedJobComputeConfiguration::Worker, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobWorkerComputeConfiguration, name: "worker"))
    ProtectedJobComputeConfiguration.add_member(:unknown, Types::ProtectedJobComputeConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedJobComputeConfiguration.type = Types::ProtectedJobComputeConfiguration
    ProtectedJobConfigurationDetails.add_member(:direct_analysis_configuration_details, Types::ProtectedJobConfigurationDetails::DirectAnalysisConfigurationDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobDirectAnalysisConfigurationDetails, name: "directAnalysisConfigurationDetails"))
    ProtectedJobConfigurationDetails.add_member(:unknown, Types::ProtectedJobConfigurationDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedJobConfigurationDetails.type = Types::ProtectedJobConfigurationDetails
    ProtectedJobDirectAnalysisConfigurationDetails.add_member(:receiver_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobReceiverAccountIds, name: "receiverAccountIds"))
    ProtectedJobDirectAnalysisConfigurationDetails.type = Types::ProtectedJobDirectAnalysisConfigurationDetails
    ProtectedJobError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ProtectedJobError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code", traits: {"smithy.api#required" => {}}))
    ProtectedJobError.type = Types::ProtectedJobError
    ProtectedJobMemberOutputConfigurationInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    ProtectedJobMemberOutputConfigurationInput.type = Types::ProtectedJobMemberOutputConfigurationInput
    ProtectedJobMemberOutputConfigurationOutput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    ProtectedJobMemberOutputConfigurationOutput.type = Types::ProtectedJobMemberOutputConfigurationOutput
    ProtectedJobMemberOutputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobSingleMemberOutput, name: "member"))
    ProtectedJobOutput.add_member(:s3, Types::ProtectedJobOutput::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobS3Output, name: "s3"))
    ProtectedJobOutput.add_member(:member_list, Types::ProtectedJobOutput::MemberList, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobMemberOutputList, name: "memberList"))
    ProtectedJobOutput.add_member(:unknown, Types::ProtectedJobOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedJobOutput.type = Types::ProtectedJobOutput
    ProtectedJobOutputConfigurationInput.add_member(:member, Types::ProtectedJobOutputConfigurationInput::Member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobMemberOutputConfigurationInput, name: "member"))
    ProtectedJobOutputConfigurationInput.add_member(:unknown, Types::ProtectedJobOutputConfigurationInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedJobOutputConfigurationInput.type = Types::ProtectedJobOutputConfigurationInput
    ProtectedJobOutputConfigurationOutput.add_member(:s3, Types::ProtectedJobOutputConfigurationOutput::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobS3OutputConfigurationOutput, name: "s3"))
    ProtectedJobOutputConfigurationOutput.add_member(:member, Types::ProtectedJobOutputConfigurationOutput::Member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobMemberOutputConfigurationOutput, name: "member"))
    ProtectedJobOutputConfigurationOutput.add_member(:unknown, Types::ProtectedJobOutputConfigurationOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedJobOutputConfigurationOutput.type = Types::ProtectedJobOutputConfigurationOutput
    ProtectedJobParameters.add_member(:analysis_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArn, name: "analysisTemplateArn"))
    ProtectedJobParameters.type = Types::ProtectedJobParameters
    ProtectedJobReceiverAccountIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    ProtectedJobReceiverConfiguration.add_member(:analysis_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobAnalysisType, name: "analysisType", traits: {"smithy.api#required" => {}}))
    ProtectedJobReceiverConfiguration.add_member(:configuration_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobConfigurationDetails, name: "configurationDetails"))
    ProtectedJobReceiverConfiguration.type = Types::ProtectedJobReceiverConfiguration
    ProtectedJobReceiverConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobReceiverConfiguration, name: "member"))
    ProtectedJobResult.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobOutput, name: "output", traits: {"smithy.api#required" => {}}))
    ProtectedJobResult.type = Types::ProtectedJobResult
    ProtectedJobResultConfigurationInput.add_member(:output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobOutputConfigurationInput, name: "outputConfiguration", traits: {"smithy.api#required" => {}}))
    ProtectedJobResultConfigurationInput.type = Types::ProtectedJobResultConfigurationInput
    ProtectedJobResultConfigurationOutput.add_member(:output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobOutputConfigurationOutput, name: "outputConfiguration", traits: {"smithy.api#required" => {}}))
    ProtectedJobResultConfigurationOutput.type = Types::ProtectedJobResultConfigurationOutput
    ProtectedJobS3Output.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "location", traits: {"smithy.api#required" => {}}))
    ProtectedJobS3Output.type = Types::ProtectedJobS3Output
    ProtectedJobS3OutputConfigurationInput.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)", "smithy.api#required" => {}}))
    ProtectedJobS3OutputConfigurationInput.add_member(:key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPrefix, name: "keyPrefix"))
    ProtectedJobS3OutputConfigurationInput.type = Types::ProtectedJobS3OutputConfigurationInput
    ProtectedJobS3OutputConfigurationOutput.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)", "smithy.api#required" => {}}))
    ProtectedJobS3OutputConfigurationOutput.add_member(:key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPrefix, name: "keyPrefix"))
    ProtectedJobS3OutputConfigurationOutput.type = Types::ProtectedJobS3OutputConfigurationOutput
    ProtectedJobSingleMemberOutput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    ProtectedJobSingleMemberOutput.type = Types::ProtectedJobSingleMemberOutput
    ProtectedJobStatistics.add_member(:total_duration_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "totalDurationInMillis"))
    ProtectedJobStatistics.add_member(:billed_resource_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: BilledJobResourceUtilization, name: "billedResourceUtilization"))
    ProtectedJobStatistics.type = Types::ProtectedJobStatistics
    ProtectedJobStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    ProtectedJobStatus.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTED", traits: {"smithy.api#enumValue" => "STARTED"}))
    ProtectedJobStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ProtectedJobStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLING", traits: {"smithy.api#enumValue" => "CANCELLING"}))
    ProtectedJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ProtectedJobStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ProtectedJobSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}}))
    ProtectedJobSummary.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ProtectedJobSummary.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    ProtectedJobSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    ProtectedJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ProtectedJobSummary.add_member(:receiver_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobReceiverConfigurations, name: "receiverConfigurations", traits: {"smithy.api#default" => [], "smithy.api#required" => {}}))
    ProtectedJobSummary.type = Types::ProtectedJobSummary
    ProtectedJobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobSummary, name: "member"))
    ProtectedJobType.add_member(:pyspark, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PYSPARK", traits: {"smithy.api#enumValue" => "PYSPARK"}))
    ProtectedJobWorkerComputeConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobWorkerComputeType, name: "type", traits: {"smithy.api#required" => {}}))
    ProtectedJobWorkerComputeConfiguration.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "number", traits: {"smithy.api#range" => {"min" => 4, "max" => 128}, "smithy.api#required" => {}}))
    ProtectedJobWorkerComputeConfiguration.type = Types::ProtectedJobWorkerComputeConfiguration
    ProtectedJobWorkerComputeType.add_member(:cr1_x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CR1X", traits: {"smithy.api#enumValue" => "CR.1X"}))
    ProtectedJobWorkerComputeType.add_member(:cr4_x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CR4X", traits: {"smithy.api#enumValue" => "CR.4X"}))
    ProtectedQuery.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}}))
    ProtectedQuery.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "membershipId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ProtectedQuery.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    ProtectedQuery.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    ProtectedQuery.add_member(:sql_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQuerySQLParameters, name: "sqlParameters"))
    ProtectedQuery.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ProtectedQuery.add_member(:result_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryResultConfiguration, name: "resultConfiguration"))
    ProtectedQuery.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryStatistics, name: "statistics"))
    ProtectedQuery.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryResult, name: "result"))
    ProtectedQuery.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryError, name: "error"))
    ProtectedQuery.add_member(:differential_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferentialPrivacyParameters, name: "differentialPrivacy"))
    ProtectedQuery.add_member(:compute_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeConfiguration, name: "computeConfiguration"))
    ProtectedQuery.type = Types::ProtectedQuery
    ProtectedQueryDistributeOutput.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryS3Output, name: "s3"))
    ProtectedQueryDistributeOutput.add_member(:member_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryMemberOutputList, name: "memberList"))
    ProtectedQueryDistributeOutput.type = Types::ProtectedQueryDistributeOutput
    ProtectedQueryDistributeOutputConfiguration.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryDistributeOutputConfigurationLocations, name: "locations", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    ProtectedQueryDistributeOutputConfiguration.type = Types::ProtectedQueryDistributeOutputConfiguration
    ProtectedQueryDistributeOutputConfigurationLocation.add_member(:s3, Types::ProtectedQueryDistributeOutputConfigurationLocation::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryS3OutputConfiguration, name: "s3"))
    ProtectedQueryDistributeOutputConfigurationLocation.add_member(:member, Types::ProtectedQueryDistributeOutputConfigurationLocation::Member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryMemberOutputConfiguration, name: "member"))
    ProtectedQueryDistributeOutputConfigurationLocation.add_member(:unknown, Types::ProtectedQueryDistributeOutputConfigurationLocation::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedQueryDistributeOutputConfigurationLocation.type = Types::ProtectedQueryDistributeOutputConfigurationLocation
    ProtectedQueryDistributeOutputConfigurationLocations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryDistributeOutputConfigurationLocation, name: "member"))
    ProtectedQueryError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ProtectedQueryError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code", traits: {"smithy.api#required" => {}}))
    ProtectedQueryError.type = Types::ProtectedQueryError
    ProtectedQueryMemberOutputConfiguration.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    ProtectedQueryMemberOutputConfiguration.type = Types::ProtectedQueryMemberOutputConfiguration
    ProtectedQueryMemberOutputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQuerySingleMemberOutput, name: "member"))
    ProtectedQueryOutput.add_member(:s3, Types::ProtectedQueryOutput::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryS3Output, name: "s3"))
    ProtectedQueryOutput.add_member(:member_list, Types::ProtectedQueryOutput::MemberList, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryMemberOutputList, name: "memberList"))
    ProtectedQueryOutput.add_member(:distribute, Types::ProtectedQueryOutput::Distribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryDistributeOutput, name: "distribute"))
    ProtectedQueryOutput.add_member(:unknown, Types::ProtectedQueryOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedQueryOutput.type = Types::ProtectedQueryOutput
    ProtectedQueryOutputConfiguration.add_member(:s3, Types::ProtectedQueryOutputConfiguration::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryS3OutputConfiguration, name: "s3"))
    ProtectedQueryOutputConfiguration.add_member(:member, Types::ProtectedQueryOutputConfiguration::Member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryMemberOutputConfiguration, name: "member"))
    ProtectedQueryOutputConfiguration.add_member(:distribute, Types::ProtectedQueryOutputConfiguration::Distribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryDistributeOutputConfiguration, name: "distribute"))
    ProtectedQueryOutputConfiguration.add_member(:unknown, Types::ProtectedQueryOutputConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ProtectedQueryOutputConfiguration.type = Types::ProtectedQueryOutputConfiguration
    ProtectedQueryResult.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryOutput, name: "output", traits: {"smithy.api#required" => {}}))
    ProtectedQueryResult.type = Types::ProtectedQueryResult
    ProtectedQueryResultConfiguration.add_member(:output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryOutputConfiguration, name: "outputConfiguration", traits: {"smithy.api#required" => {}}))
    ProtectedQueryResultConfiguration.type = Types::ProtectedQueryResultConfiguration
    ProtectedQueryS3Output.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "location", traits: {"smithy.api#required" => {}}))
    ProtectedQueryS3Output.type = Types::ProtectedQueryS3Output
    ProtectedQueryS3OutputConfiguration.add_member(:result_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultFormat, name: "resultFormat", traits: {"smithy.api#required" => {}}))
    ProtectedQueryS3OutputConfiguration.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)", "smithy.api#required" => {}}))
    ProtectedQueryS3OutputConfiguration.add_member(:key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPrefix, name: "keyPrefix"))
    ProtectedQueryS3OutputConfiguration.add_member(:single_file_output, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "singleFileOutput"))
    ProtectedQueryS3OutputConfiguration.type = Types::ProtectedQueryS3OutputConfiguration
    ProtectedQuerySQLParameters.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "queryString", traits: {"smithy.api#length" => {"max" => 500000}}))
    ProtectedQuerySQLParameters.add_member(:analysis_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateArn, name: "analysisTemplateArn"))
    ProtectedQuerySQLParameters.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterMap, name: "parameters"))
    ProtectedQuerySQLParameters.type = Types::ProtectedQuerySQLParameters
    ProtectedQuerySingleMemberOutput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    ProtectedQuerySingleMemberOutput.type = Types::ProtectedQuerySingleMemberOutput
    ProtectedQueryStatistics.add_member(:total_duration_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "totalDurationInMillis"))
    ProtectedQueryStatistics.add_member(:billed_resource_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: BilledResourceUtilization, name: "billedResourceUtilization"))
    ProtectedQueryStatistics.type = Types::ProtectedQueryStatistics
    ProtectedQuerySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "id", traits: {"smithy.api#required" => {}}))
    ProtectedQuerySummary.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "membershipId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    ProtectedQuerySummary.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipArn, name: "membershipArn", traits: {"smithy.api#required" => {}}))
    ProtectedQuerySummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    ProtectedQuerySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ProtectedQuerySummary.add_member(:receiver_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverConfigurationsList, name: "receiverConfigurations", traits: {"smithy.api#default" => [], "smithy.api#required" => {}}))
    ProtectedQuerySummary.type = Types::ProtectedQuerySummary
    ProtectedQuerySummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQuerySummary, name: "member"))
    QueryComputePaymentConfig.add_member(:is_responsible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isResponsible", traits: {"smithy.api#required" => {}}))
    QueryComputePaymentConfig.type = Types::QueryComputePaymentConfig
    QueryConstraint.add_member(:require_overlap, Types::QueryConstraint::RequireOverlap, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryConstraintRequireOverlap, name: "requireOverlap"))
    QueryConstraint.add_member(:unknown, Types::QueryConstraint::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    QueryConstraint.type = Types::QueryConstraint
    QueryConstraintList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryConstraint, name: "member"))
    QueryConstraintRequireOverlap.add_member(:columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleColumnList, name: "columns"))
    QueryConstraintRequireOverlap.type = Types::QueryConstraintRequireOverlap
    QueryTables.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAlias, name: "member"))
    ReceiverAccountIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    ReceiverConfiguration.add_member(:analysis_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisType, name: "analysisType", traits: {"smithy.api#required" => {}}))
    ReceiverConfiguration.add_member(:configuration_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationDetails, name: "configurationDetails"))
    ReceiverConfiguration.type = Types::ReceiverConfiguration
    ReceiverConfigurationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverConfiguration, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Location.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)", "smithy.api#required" => {}}))
    S3Location.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9!_.*'()-/]+$", "smithy.api#required" => {}}))
    S3Location.type = Types::S3Location
    ScalarFunctionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalarFunctions, name: "member"))
    Schema.add_member(:columns, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnList, name: "columns", traits: {"smithy.api#required" => {}}))
    Schema.add_member(:partition_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnList, name: "partitionKeys", traits: {"smithy.api#required" => {}}))
    Schema.add_member(:analysis_rule_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleTypeList, name: "analysisRuleTypes", traits: {"smithy.api#required" => {}}))
    Schema.add_member(:analysis_method, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisMethod, name: "analysisMethod"))
    Schema.add_member(:selected_analysis_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedAnalysisMethods, name: "selectedAnalysisMethods"))
    Schema.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "creatorAccountId", traits: {"smithy.api#required" => {}}))
    Schema.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAlias, name: "name", traits: {"smithy.api#required" => {}}))
    Schema.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}}))
    Schema.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    Schema.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TableDescription, name: "description", traits: {"smithy.api#required" => {}}))
    Schema.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    Schema.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    Schema.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaType, name: "type", traits: {"smithy.api#required" => {}}))
    Schema.add_member(:schema_status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaStatusDetailList, name: "schemaStatusDetails", traits: {"smithy.api#default" => [], "smithy.api#required" => {}}))
    Schema.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaResourceArn, name: "resourceArn"))
    Schema.add_member(:schema_type_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaTypeProperties, name: "schemaTypeProperties"))
    Schema.type = Types::Schema
    SchemaAnalysisRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRule, name: "member"))
    SchemaAnalysisRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAlias, name: "name", traits: {"smithy.api#required" => {}}))
    SchemaAnalysisRuleRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleType, name: "type", traits: {"smithy.api#required" => {}}))
    SchemaAnalysisRuleRequest.type = Types::SchemaAnalysisRuleRequest
    SchemaAnalysisRuleRequestList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaAnalysisRuleRequest, name: "member"))
    SchemaConfiguration.add_member(:differential_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIFFERENTIAL_PRIVACY", traits: {"smithy.api#enumValue" => "DIFFERENTIAL_PRIVACY"}))
    SchemaConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaConfiguration, name: "member"))
    SchemaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Schema, name: "member"))
    SchemaStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    SchemaStatus.add_member(:not_ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_READY", traits: {"smithy.api#enumValue" => "NOT_READY"}))
    SchemaStatusDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaStatus, name: "status", traits: {"smithy.api#required" => {}}))
    SchemaStatusDetail.add_member(:reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaStatusReasonList, name: "reasons"))
    SchemaStatusDetail.add_member(:analysis_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleType, name: "analysisRuleType"))
    SchemaStatusDetail.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaConfigurationList, name: "configurations"))
    SchemaStatusDetail.add_member(:analysis_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisType, name: "analysisType", traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    SchemaStatusDetail.type = Types::SchemaStatusDetail
    SchemaStatusDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaStatusDetail, name: "member"))
    SchemaStatusReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaStatusReasonCode, name: "code", traits: {"smithy.api#required" => {}}))
    SchemaStatusReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    SchemaStatusReason.type = Types::SchemaStatusReason
    SchemaStatusReasonCode.add_member(:analysis_rule_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANALYSIS_RULE_MISSING", traits: {"smithy.api#enumValue" => "ANALYSIS_RULE_MISSING"}))
    SchemaStatusReasonCode.add_member(:analysis_templates_not_configured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANALYSIS_TEMPLATES_NOT_CONFIGURED", traits: {"smithy.api#enumValue" => "ANALYSIS_TEMPLATES_NOT_CONFIGURED"}))
    SchemaStatusReasonCode.add_member(:analysis_providers_not_configured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANALYSIS_PROVIDERS_NOT_CONFIGURED", traits: {"smithy.api#enumValue" => "ANALYSIS_PROVIDERS_NOT_CONFIGURED"}))
    SchemaStatusReasonCode.add_member(:differential_privacy_policy_not_configured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIFFERENTIAL_PRIVACY_POLICY_NOT_CONFIGURED", traits: {"smithy.api#enumValue" => "DIFFERENTIAL_PRIVACY_POLICY_NOT_CONFIGURED"}))
    SchemaStatusReasonCode.add_member(:id_mapping_table_not_populated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ID_MAPPING_TABLE_NOT_POPULATED", traits: {"smithy.api#enumValue" => "ID_MAPPING_TABLE_NOT_POPULATED"}))
    SchemaStatusReasonCode.add_member(:collaboration_analysis_rule_not_configured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COLLABORATION_ANALYSIS_RULE_NOT_CONFIGURED", traits: {"smithy.api#enumValue" => "COLLABORATION_ANALYSIS_RULE_NOT_CONFIGURED"}))
    SchemaStatusReasonCode.add_member(:additional_analyses_not_configured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDITIONAL_ANALYSES_NOT_CONFIGURED", traits: {"smithy.api#enumValue" => "ADDITIONAL_ANALYSES_NOT_CONFIGURED"}))
    SchemaStatusReasonCode.add_member(:result_receivers_not_configured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESULT_RECEIVERS_NOT_CONFIGURED", traits: {"smithy.api#enumValue" => "RESULT_RECEIVERS_NOT_CONFIGURED"}))
    SchemaStatusReasonCode.add_member(:additional_analyses_not_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDITIONAL_ANALYSES_NOT_ALLOWED", traits: {"smithy.api#enumValue" => "ADDITIONAL_ANALYSES_NOT_ALLOWED"}))
    SchemaStatusReasonCode.add_member(:result_receivers_not_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESULT_RECEIVERS_NOT_ALLOWED", traits: {"smithy.api#enumValue" => "RESULT_RECEIVERS_NOT_ALLOWED"}))
    SchemaStatusReasonCode.add_member(:analysis_rule_types_not_compatible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANALYSIS_RULE_TYPES_NOT_COMPATIBLE", traits: {"smithy.api#enumValue" => "ANALYSIS_RULE_TYPES_NOT_COMPATIBLE"}))
    SchemaStatusReasonList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaStatusReason, name: "member"))
    SchemaSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAlias, name: "name", traits: {"smithy.api#required" => {}}))
    SchemaSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaType, name: "type", traits: {"smithy.api#required" => {}}))
    SchemaSummary.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "creatorAccountId", traits: {"smithy.api#required" => {}}))
    SchemaSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createTime", traits: {"smithy.api#required" => {}}))
    SchemaSummary.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updateTime", traits: {"smithy.api#required" => {}}))
    SchemaSummary.add_member(:collaboration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "collaborationId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    SchemaSummary.add_member(:collaboration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationArn, name: "collaborationArn", traits: {"smithy.api#required" => {}}))
    SchemaSummary.add_member(:analysis_rule_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleTypeList, name: "analysisRuleTypes", traits: {"smithy.api#required" => {}}))
    SchemaSummary.add_member(:analysis_method, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisMethod, name: "analysisMethod"))
    SchemaSummary.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaResourceArn, name: "resourceArn"))
    SchemaSummary.add_member(:selected_analysis_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedAnalysisMethods, name: "selectedAnalysisMethods"))
    SchemaSummary.type = Types::SchemaSummary
    SchemaSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaSummary, name: "member"))
    SchemaType.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLE", traits: {"smithy.api#enumValue" => "TABLE"}))
    SchemaType.add_member(:id_mapping_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ID_MAPPING_TABLE", traits: {"smithy.api#enumValue" => "ID_MAPPING_TABLE"}))
    SchemaTypeProperties.add_member(:id_mapping_table, Types::SchemaTypeProperties::IdMappingTable, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTableSchemaTypeProperties, name: "idMappingTable"))
    SchemaTypeProperties.add_member(:unknown, Types::SchemaTypeProperties::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SchemaTypeProperties.type = Types::SchemaTypeProperties
    SelectedAnalysisMethod.add_member(:direct_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT_QUERY", traits: {"smithy.api#enumValue" => "DIRECT_QUERY"}))
    SelectedAnalysisMethod.add_member(:direct_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT_JOB", traits: {"smithy.api#enumValue" => "DIRECT_JOB"}))
    SelectedAnalysisMethods.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedAnalysisMethod, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaName", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "quotaValue", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SnowflakeTableReference.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerArn, name: "secretArn", traits: {"smithy.api#required" => {}}))
    SnowflakeTableReference.add_member(:account_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeAccountIdentifier, name: "accountIdentifier", traits: {"smithy.api#required" => {}}))
    SnowflakeTableReference.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeDatabaseName, name: "databaseName", traits: {"smithy.api#required" => {}}))
    SnowflakeTableReference.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeTableName, name: "tableName", traits: {"smithy.api#required" => {}}))
    SnowflakeTableReference.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeSchemaName, name: "schemaName", traits: {"smithy.api#required" => {}}))
    SnowflakeTableReference.add_member(:table_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeTableSchema, name: "tableSchema", traits: {"smithy.api#required" => {}}))
    SnowflakeTableReference.type = Types::SnowflakeTableReference
    SnowflakeTableSchema.add_member(:v1, Types::SnowflakeTableSchema::V1, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeTableSchemaList, name: "v1"))
    SnowflakeTableSchema.add_member(:unknown, Types::SnowflakeTableSchema::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SnowflakeTableSchema.type = Types::SnowflakeTableSchema
    SnowflakeTableSchemaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeTableSchemaV1, name: "member"))
    SnowflakeTableSchemaV1.add_member(:column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "columnName", traits: {"smithy.api#required" => {}}))
    SnowflakeTableSchemaV1.add_member(:column_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnTypeString, name: "columnType", traits: {"smithy.api#required" => {}}))
    SnowflakeTableSchemaV1.type = Types::SnowflakeTableSchemaV1
    StartProtectedJobInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobType, name: "type", traits: {"smithy.api#required" => {}}))
    StartProtectedJobInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    StartProtectedJobInput.add_member(:job_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobParameters, name: "jobParameters", traits: {"smithy.api#required" => {}}))
    StartProtectedJobInput.add_member(:result_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobResultConfigurationInput, name: "resultConfiguration"))
    StartProtectedJobInput.add_member(:compute_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobComputeConfiguration, name: "computeConfiguration"))
    StartProtectedJobInput.type = Types::StartProtectedJobInput
    StartProtectedJobOutput.add_member(:protected_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJob, name: "protectedJob", traits: {"smithy.api#required" => {}}))
    StartProtectedJobOutput.type = Types::StartProtectedJobOutput
    StartProtectedQueryOperationInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryType, name: "type", traits: {"smithy.api#required" => {}}))
    StartProtectedQueryOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    StartProtectedQueryOperationInput.add_member(:sql_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQuerySQLParameters, name: "sqlParameters", traits: {"smithy.api#required" => {}}))
    StartProtectedQueryOperationInput.add_member(:result_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryResultConfiguration, name: "resultConfiguration"))
    StartProtectedQueryOperationInput.add_member(:compute_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeConfiguration, name: "computeConfiguration"))
    StartProtectedQueryOperationInput.type = Types::StartProtectedQueryOperationInput
    StartProtectedQueryOperationOutput.add_member(:protected_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQuery, name: "protectedQuery", traits: {"smithy.api#required" => {}}))
    StartProtectedQueryOperationOutput.type = Types::StartProtectedQueryOperationOutput
    SupportedS3Region.add_member(:us_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_WEST_1", traits: {"smithy.api#enumValue" => "us-west-1"}))
    SupportedS3Region.add_member(:us_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_WEST_2", traits: {"smithy.api#enumValue" => "us-west-2"}))
    SupportedS3Region.add_member(:us_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_EAST_1", traits: {"smithy.api#enumValue" => "us-east-1"}))
    SupportedS3Region.add_member(:us_east_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_EAST_2", traits: {"smithy.api#enumValue" => "us-east-2"}))
    SupportedS3Region.add_member(:af_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AF_SOUTH_1", traits: {"smithy.api#enumValue" => "af-south-1"}))
    SupportedS3Region.add_member(:ap_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_EAST_1", traits: {"smithy.api#enumValue" => "ap-east-1"}))
    SupportedS3Region.add_member(:ap_east_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_EAST_2", traits: {"smithy.api#enumValue" => "ap-east-2"}))
    SupportedS3Region.add_member(:ap_south_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTH_2", traits: {"smithy.api#enumValue" => "ap-south-2"}))
    SupportedS3Region.add_member(:ap_southeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_1", traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    SupportedS3Region.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_2", traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    SupportedS3Region.add_member(:ap_southeast_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_3", traits: {"smithy.api#enumValue" => "ap-southeast-3"}))
    SupportedS3Region.add_member(:ap_southeast_5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_5", traits: {"smithy.api#enumValue" => "ap-southeast-5"}))
    SupportedS3Region.add_member(:ap_southeast_4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_4", traits: {"smithy.api#enumValue" => "ap-southeast-4"}))
    SupportedS3Region.add_member(:ap_southeast_7, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_7", traits: {"smithy.api#enumValue" => "ap-southeast-7"}))
    SupportedS3Region.add_member(:ap_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTH_1", traits: {"smithy.api#enumValue" => "ap-south-1"}))
    SupportedS3Region.add_member(:ap_northeast_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_NORTHEAST_3", traits: {"smithy.api#enumValue" => "ap-northeast-3"}))
    SupportedS3Region.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_NORTHEAST_1", traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    SupportedS3Region.add_member(:ap_northeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_NORTHEAST_2", traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    SupportedS3Region.add_member(:ca_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_CENTRAL_1", traits: {"smithy.api#enumValue" => "ca-central-1"}))
    SupportedS3Region.add_member(:ca_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_WEST_1", traits: {"smithy.api#enumValue" => "ca-west-1"}))
    SupportedS3Region.add_member(:eu_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_SOUTH_1", traits: {"smithy.api#enumValue" => "eu-south-1"}))
    SupportedS3Region.add_member(:eu_west_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_WEST_3", traits: {"smithy.api#enumValue" => "eu-west-3"}))
    SupportedS3Region.add_member(:eu_south_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_SOUTH_2", traits: {"smithy.api#enumValue" => "eu-south-2"}))
    SupportedS3Region.add_member(:eu_central_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_CENTRAL_2", traits: {"smithy.api#enumValue" => "eu-central-2"}))
    SupportedS3Region.add_member(:eu_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_CENTRAL_1", traits: {"smithy.api#enumValue" => "eu-central-1"}))
    SupportedS3Region.add_member(:eu_north_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_NORTH_1", traits: {"smithy.api#enumValue" => "eu-north-1"}))
    SupportedS3Region.add_member(:eu_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_WEST_1", traits: {"smithy.api#enumValue" => "eu-west-1"}))
    SupportedS3Region.add_member(:eu_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_WEST_2", traits: {"smithy.api#enumValue" => "eu-west-2"}))
    SupportedS3Region.add_member(:me_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ME_SOUTH_1", traits: {"smithy.api#enumValue" => "me-south-1"}))
    SupportedS3Region.add_member(:me_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ME_CENTRAL_1", traits: {"smithy.api#enumValue" => "me-central-1"}))
    SupportedS3Region.add_member(:il_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IL_CENTRAL_1", traits: {"smithy.api#enumValue" => "il-central-1"}))
    SupportedS3Region.add_member(:sa_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SA_EAST_1", traits: {"smithy.api#enumValue" => "sa-east-1"}))
    SupportedS3Region.add_member(:mx_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MX_CENTRAL_1", traits: {"smithy.api#enumValue" => "mx-central-1"}))
    TableAliasList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAlias, name: "member"))
    TableReference.add_member(:glue, Types::TableReference::Glue, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueTableReference, name: "glue"))
    TableReference.add_member(:snowflake, Types::TableReference::Snowflake, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeTableReference, name: "snowflake"))
    TableReference.add_member(:athena, Types::TableReference::Athena, ::Smithy::Schema::Shapes::MemberShape.new(target: AthenaTableReference, name: "athena"))
    TableReference.add_member(:unknown, Types::TableReference::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TableReference.type = Types::TableReference
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CleanroomsArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TargetProtectedJobStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CleanroomsArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAnalysisTemplateOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateAnalysisTemplateOperationInput.add_member(:analysis_template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplateIdentifier, name: "analysisTemplateIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AnalysisTemplateId"}))
    UpdateAnalysisTemplateOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    UpdateAnalysisTemplateOperationInput.type = Types::UpdateAnalysisTemplateOperationInput
    UpdateAnalysisTemplateOperationOutput.add_member(:analysis_template, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTemplate, name: "analysisTemplate", traits: {"smithy.api#required" => {}}))
    UpdateAnalysisTemplateOperationOutput.type = Types::UpdateAnalysisTemplateOperationOutput
    UpdateCollaborationOperationInput.add_member(:collaboration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationIdentifier, name: "collaborationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CollaborationId"}))
    UpdateCollaborationOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationName, name: "name"))
    UpdateCollaborationOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CollaborationDescription, name: "description"))
    UpdateCollaborationOperationInput.add_member(:analytics_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsEngine, name: "analyticsEngine"))
    UpdateCollaborationOperationInput.type = Types::UpdateCollaborationOperationInput
    UpdateCollaborationOperationOutput.add_member(:collaboration, ::Smithy::Schema::Shapes::MemberShape.new(target: Collaboration, name: "collaboration", traits: {"smithy.api#required" => {}}))
    UpdateCollaborationOperationOutput.type = Types::UpdateCollaborationOperationOutput
    UpdateConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationIdentifier, name: "configuredAudienceModelAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredAudienceModelAssociationId"}))
    UpdateConfiguredAudienceModelAssociationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateConfiguredAudienceModelAssociationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    UpdateConfiguredAudienceModelAssociationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociationName, name: "name"))
    UpdateConfiguredAudienceModelAssociationInput.type = Types::UpdateConfiguredAudienceModelAssociationInput
    UpdateConfiguredAudienceModelAssociationOutput.add_member(:configured_audience_model_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredAudienceModelAssociation, name: "configuredAudienceModelAssociation", traits: {"smithy.api#required" => {}}))
    UpdateConfiguredAudienceModelAssociationOutput.type = Types::UpdateConfiguredAudienceModelAssociationOutput
    UpdateConfiguredTableAnalysisRuleOperationInput.add_member(:configured_table_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableIdentifier, name: "configuredTableIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    UpdateConfiguredTableAnalysisRuleOperationInput.add_member(:analysis_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRuleType, name: "analysisRuleType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfiguredTableAnalysisRuleOperationInput.add_member(:analysis_rule_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRulePolicy, name: "analysisRulePolicy", traits: {"smithy.api#required" => {}}))
    UpdateConfiguredTableAnalysisRuleOperationInput.type = Types::UpdateConfiguredTableAnalysisRuleOperationInput
    UpdateConfiguredTableAnalysisRuleOperationOutput.add_member(:analysis_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAnalysisRule, name: "analysisRule", traits: {"smithy.api#required" => {}}))
    UpdateConfiguredTableAnalysisRuleOperationOutput.type = Types::UpdateConfiguredTableAnalysisRuleOperationOutput
    UpdateConfiguredTableAssociationAnalysisRuleInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateConfiguredTableAssociationAnalysisRuleInput.add_member(:configured_table_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationIdentifier, name: "configuredTableAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    UpdateConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRuleType, name: "analysisRuleType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRulePolicy, name: "analysisRulePolicy", traits: {"smithy.api#required" => {}}))
    UpdateConfiguredTableAssociationAnalysisRuleInput.type = Types::UpdateConfiguredTableAssociationAnalysisRuleInput
    UpdateConfiguredTableAssociationAnalysisRuleOutput.add_member(:analysis_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationAnalysisRule, name: "analysisRule", traits: {"smithy.api#required" => {}}))
    UpdateConfiguredTableAssociationAnalysisRuleOutput.type = Types::UpdateConfiguredTableAssociationAnalysisRuleOutput
    UpdateConfiguredTableAssociationOperationInput.add_member(:configured_table_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociationIdentifier, name: "configuredTableAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableAssociationId"}))
    UpdateConfiguredTableAssociationOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateConfiguredTableAssociationOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TableDescription, name: "description"))
    UpdateConfiguredTableAssociationOperationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    UpdateConfiguredTableAssociationOperationInput.type = Types::UpdateConfiguredTableAssociationOperationInput
    UpdateConfiguredTableAssociationOperationOutput.add_member(:configured_table_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableAssociation, name: "configuredTableAssociation", traits: {"smithy.api#required" => {}}))
    UpdateConfiguredTableAssociationOperationOutput.type = Types::UpdateConfiguredTableAssociationOperationOutput
    UpdateConfiguredTableOperationInput.add_member(:configured_table_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTableIdentifier, name: "configuredTableIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ConfiguredTableId"}))
    UpdateConfiguredTableOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "name"))
    UpdateConfiguredTableOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TableDescription, name: "description"))
    UpdateConfiguredTableOperationInput.add_member(:table_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: TableReference, name: "tableReference"))
    UpdateConfiguredTableOperationInput.add_member(:allowed_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedColumnList, name: "allowedColumns"))
    UpdateConfiguredTableOperationInput.add_member(:analysis_method, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisMethod, name: "analysisMethod"))
    UpdateConfiguredTableOperationInput.add_member(:selected_analysis_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedAnalysisMethods, name: "selectedAnalysisMethods"))
    UpdateConfiguredTableOperationInput.type = Types::UpdateConfiguredTableOperationInput
    UpdateConfiguredTableOperationOutput.add_member(:configured_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfiguredTable, name: "configuredTable", traits: {"smithy.api#required" => {}}))
    UpdateConfiguredTableOperationOutput.type = Types::UpdateConfiguredTableOperationOutput
    UpdateIdMappingTableInput.add_member(:id_mapping_table_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "idMappingTableIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdMappingTableId"}))
    UpdateIdMappingTableInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateIdMappingTableInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    UpdateIdMappingTableInput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "kmsKeyArn"))
    UpdateIdMappingTableInput.type = Types::UpdateIdMappingTableInput
    UpdateIdMappingTableOutput.add_member(:id_mapping_table, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingTable, name: "idMappingTable", traits: {"smithy.api#required" => {}}))
    UpdateIdMappingTableOutput.type = Types::UpdateIdMappingTableOutput
    UpdateIdNamespaceAssociationInput.add_member(:id_namespace_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociationIdentifier, name: "idNamespaceAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "IdNamespaceAssociationId"}))
    UpdateIdNamespaceAssociationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateIdNamespaceAssociationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericResourceName, name: "name"))
    UpdateIdNamespaceAssociationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    UpdateIdNamespaceAssociationInput.add_member(:id_mapping_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdMappingConfig, name: "idMappingConfig"))
    UpdateIdNamespaceAssociationInput.type = Types::UpdateIdNamespaceAssociationInput
    UpdateIdNamespaceAssociationOutput.add_member(:id_namespace_association, ::Smithy::Schema::Shapes::MemberShape.new(target: IdNamespaceAssociation, name: "idNamespaceAssociation", traits: {"smithy.api#required" => {}}))
    UpdateIdNamespaceAssociationOutput.type = Types::UpdateIdNamespaceAssociationOutput
    UpdateMembershipOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateMembershipOperationInput.add_member(:query_log_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipQueryLogStatus, name: "queryLogStatus"))
    UpdateMembershipOperationInput.add_member(:job_log_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipJobLogStatus, name: "jobLogStatus"))
    UpdateMembershipOperationInput.add_member(:default_result_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipProtectedQueryResultConfiguration, name: "defaultResultConfiguration"))
    UpdateMembershipOperationInput.add_member(:default_job_result_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipProtectedJobResultConfiguration, name: "defaultJobResultConfiguration"))
    UpdateMembershipOperationInput.type = Types::UpdateMembershipOperationInput
    UpdateMembershipOperationOutput.add_member(:membership, ::Smithy::Schema::Shapes::MemberShape.new(target: Membership, name: "membership", traits: {"smithy.api#required" => {}}))
    UpdateMembershipOperationOutput.type = Types::UpdateMembershipOperationOutput
    UpdatePrivacyBudgetTemplateInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdatePrivacyBudgetTemplateInput.add_member(:privacy_budget_template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateIdentifier, name: "privacyBudgetTemplateIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "PrivacyBudgetTemplateId"}))
    UpdatePrivacyBudgetTemplateInput.add_member(:privacy_budget_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetType, name: "privacyBudgetType", traits: {"smithy.api#required" => {}}))
    UpdatePrivacyBudgetTemplateInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplateUpdateParameters, name: "parameters"))
    UpdatePrivacyBudgetTemplateInput.type = Types::UpdatePrivacyBudgetTemplateInput
    UpdatePrivacyBudgetTemplateOutput.add_member(:privacy_budget_template, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivacyBudgetTemplate, name: "privacyBudgetTemplate", traits: {"smithy.api#required" => {}}))
    UpdatePrivacyBudgetTemplateOutput.type = Types::UpdatePrivacyBudgetTemplateOutput
    UpdateProtectedJobInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateProtectedJobInput.add_member(:protected_job_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJobIdentifier, name: "protectedJobIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProtectedJobInput.add_member(:target_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetProtectedJobStatus, name: "targetStatus", traits: {"smithy.api#required" => {}}))
    UpdateProtectedJobInput.type = Types::UpdateProtectedJobInput
    UpdateProtectedJobOutput.add_member(:protected_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedJob, name: "protectedJob", traits: {"smithy.api#required" => {}}))
    UpdateProtectedJobOutput.type = Types::UpdateProtectedJobOutput
    UpdateProtectedQueryOperationInput.add_member(:membership_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipIdentifier, name: "membershipIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "MembershipId"}))
    UpdateProtectedQueryOperationInput.add_member(:protected_query_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQueryIdentifier, name: "protectedQueryIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProtectedQueryOperationInput.add_member(:target_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetProtectedQueryStatus, name: "targetStatus", traits: {"smithy.api#required" => {}}))
    UpdateProtectedQueryOperationInput.type = Types::UpdateProtectedQueryOperationInput
    UpdateProtectedQueryOperationOutput.add_member(:protected_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedQuery, name: "protectedQuery", traits: {"smithy.api#required" => {}}))
    UpdateProtectedQueryOperationOutput.type = Types::UpdateProtectedQueryOperationOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    WorkerComputeConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerComputeType, name: "type"))
    WorkerComputeConfiguration.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "number", traits: {"smithy.api#range" => {"min" => 2, "max" => 400}}))
    WorkerComputeConfiguration.type = Types::WorkerComputeConfiguration
    WorkerComputeType.add_member(:cr1_x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CR1X", traits: {"smithy.api#enumValue" => "CR.1X"}))
    WorkerComputeType.add_member(:cr4_x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CR4X", traits: {"smithy.api#enumValue" => "CR.4X"}))

    AWSBastionControlPlaneServiceLambda = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cleanrooms#AWSBastionControlPlaneServiceLambda"
      service.name = "AWSBastionControlPlaneServiceLambda"
      service.version = "2022-02-17"
      service.traits = {"aws.api#service" => {"sdkId" => "CleanRooms", "arnNamespace" => "cleanrooms", "cloudTrailEventSource" => "cleanrooms.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "cleanrooms"}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "AWS Clean Rooms Service"}
      service.add_operation(:batch_get_collaboration_analysis_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#BatchGetCollaborationAnalysisTemplate"
        operation.name = "BatchGetCollaborationAnalysisTemplate"
        operation.input = BatchGetCollaborationAnalysisTemplateOperationInput
        operation.output = BatchGetCollaborationAnalysisTemplateOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of multiple analysis tempaltes within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/collaborations/{collaborationIdentifier}/batch-analysistemplates"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#BatchGetSchema"
        operation.name = "BatchGetSchema"
        operation.input = BatchGetSchemaOperationInput
        operation.output = BatchGetSchemaOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of schemas", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/collaborations/{collaborationIdentifier}/batch-schema"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_schema_analysis_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#BatchGetSchemaAnalysisRule"
        operation.name = "BatchGetSchemaAnalysisRule"
        operation.input = BatchGetSchemaAnalysisRuleInput
        operation.output = BatchGetSchemaAnalysisRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view analysis rules associated with schemas", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/collaborations/{collaborationIdentifier}/batch-schema-analysis-rule"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_analysis_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateAnalysisTemplate"
        operation.name = "CreateAnalysisTemplate"
        operation.input = CreateAnalysisTemplateOperationInput
        operation.output = CreateAnalysisTemplateOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a new analysis template", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/analysistemplates"}}
      end)
      service.add_operation(:create_collaboration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateCollaboration"
        operation.name = "CreateCollaboration"
        operation.input = CreateCollaborationOperationInput
        operation.output = CreateCollaborationOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a new collaboration, a shared data collaboration environment", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/collaborations"}}
      end)
      service.add_operation(:create_collaboration_change_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateCollaborationChangeRequest"
        operation.name = "CreateCollaborationChangeRequest"
        operation.input = CreateCollaborationChangeRequestInput
        operation.output = CreateCollaborationChangeRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/collaborations/{collaborationIdentifier}/changeRequests"}}
      end)
      service.add_operation(:create_configured_audience_model_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateConfiguredAudienceModelAssociation"
        operation.name = "CreateConfiguredAudienceModelAssociation"
        operation.input = CreateConfiguredAudienceModelAssociationInput
        operation.output = CreateConfiguredAudienceModelAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to link a configured audience model with a collaboration by creating a new association", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations"}}
      end)
      service.add_operation(:create_configured_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateConfiguredTable"
        operation.name = "CreateConfiguredTable"
        operation.input = CreateConfiguredTableOperationInput
        operation.output = CreateConfiguredTableOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a new configured table", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/configuredTables"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_configured_table_analysis_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateConfiguredTableAnalysisRule"
        operation.name = "CreateConfiguredTableAnalysisRule"
        operation.input = CreateConfiguredTableAnalysisRuleOperationInput
        operation.output = CreateConfiguredTableAnalysisRuleOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create analysis rules for configured tables", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/configuredTables/{configuredTableIdentifier}/analysisRule"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_configured_table_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateConfiguredTableAssociation"
        operation.name = "CreateConfiguredTableAssociation"
        operation.input = CreateConfiguredTableAssociationOperationInput
        operation.output = CreateConfiguredTableAssociationOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to link a configured table with a collaboration by creating a new association", "aws.iam#requiredActions" => ["iam:PassRole"], "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations"}}
      end)
      service.add_operation(:create_configured_table_association_analysis_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateConfiguredTableAssociationAnalysisRule"
        operation.name = "CreateConfiguredTableAssociationAnalysisRule"
        operation.input = CreateConfiguredTableAssociationAnalysisRuleInput
        operation.output = CreateConfiguredTableAssociationAnalysisRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create analysis rules for configured table association"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_id_mapping_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateIdMappingTable"
        operation.name = "CreateIdMappingTable"
        operation.input = CreateIdMappingTableInput
        operation.output = CreateIdMappingTableOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to link an id mapping workflow with a collaboration by creating a new id mapping table", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/idmappingtables"}}
      end)
      service.add_operation(:create_id_namespace_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateIdNamespaceAssociation"
        operation.name = "CreateIdNamespaceAssociation"
        operation.input = CreateIdNamespaceAssociationInput
        operation.output = CreateIdNamespaceAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to link an AWS Entity Resolution Id Namespace with a collaboration by creating a new association", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/idnamespaceassociations"}}
      end)
      service.add_operation(:create_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreateMembership"
        operation.name = "CreateMembership"
        operation.input = CreateMembershipOperationInput
        operation.output = CreateMembershipOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to join collaborations by creating a membership", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships"}}
      end)
      service.add_operation(:create_privacy_budget_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#CreatePrivacyBudgetTemplate"
        operation.name = "CreatePrivacyBudgetTemplate"
        operation.input = CreatePrivacyBudgetTemplateInput
        operation.output = CreatePrivacyBudgetTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a new privacy budget template", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/privacybudgettemplates"}}
      end)
      service.add_operation(:delete_analysis_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteAnalysisTemplate"
        operation.name = "DeleteAnalysisTemplate"
        operation.input = DeleteAnalysisTemplateOperationInput
        operation.output = DeleteAnalysisTemplateOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove an analysis template from a collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_collaboration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteCollaboration"
        operation.name = "DeleteCollaboration"
        operation.input = DeleteCollaborationOperationInput
        operation.output = DeleteCollaborationOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete an existing collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/collaborations/{collaborationIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_configured_audience_model_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteConfiguredAudienceModelAssociation"
        operation.name = "DeleteConfiguredAudienceModelAssociation"
        operation.input = DeleteConfiguredAudienceModelAssociationInput
        operation.output = DeleteConfiguredAudienceModelAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove a configured audience model association from a collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_configured_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteConfiguredTable"
        operation.name = "DeleteConfiguredTable"
        operation.input = DeleteConfiguredTableOperationInput
        operation.output = DeleteConfiguredTableOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete a configured table", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/configuredTables/{configuredTableIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_configured_table_analysis_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteConfiguredTableAnalysisRule"
        operation.name = "DeleteConfiguredTableAnalysisRule"
        operation.input = DeleteConfiguredTableAnalysisRuleOperationInput
        operation.output = DeleteConfiguredTableAnalysisRuleOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete an existing analysis rule", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_configured_table_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteConfiguredTableAssociation"
        operation.name = "DeleteConfiguredTableAssociation"
        operation.input = DeleteConfiguredTableAssociationOperationInput
        operation.output = DeleteConfiguredTableAssociationOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove a configured table association from a collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_configured_table_association_analysis_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteConfiguredTableAssociationAnalysisRule"
        operation.name = "DeleteConfiguredTableAssociationAnalysisRule"
        operation.input = DeleteConfiguredTableAssociationAnalysisRuleInput
        operation.output = DeleteConfiguredTableAssociationAnalysisRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an existing configured table association analysis rule"}, "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_id_mapping_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteIdMappingTable"
        operation.name = "DeleteIdMappingTable"
        operation.input = DeleteIdMappingTableInput
        operation.output = DeleteIdMappingTableOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove an id mapping table from a collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_id_namespace_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteIdNamespaceAssociation"
        operation.name = "DeleteIdNamespaceAssociation"
        operation.input = DeleteIdNamespaceAssociationInput
        operation.output = DeleteIdNamespaceAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove an Id Namespace Association from a collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteMember"
        operation.name = "DeleteMember"
        operation.input = DeleteMemberOperationInput
        operation.output = DeleteMemberOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete members from a collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/collaborations/{collaborationIdentifier}/member/{accountId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeleteMembership"
        operation.name = "DeleteMembership"
        operation.input = DeleteMembershipOperationInput
        operation.output = DeleteMembershipOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to leave collaborations by deleting a membership", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_privacy_budget_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#DeletePrivacyBudgetTemplate"
        operation.name = "DeletePrivacyBudgetTemplate"
        operation.input = DeletePrivacyBudgetTemplateInput
        operation.output = DeletePrivacyBudgetTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove a privacy budget from a collaboration", "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_analysis_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetAnalysisTemplate"
        operation.name = "GetAnalysisTemplate"
        operation.input = GetAnalysisTemplateOperationInput
        operation.output = GetAnalysisTemplateOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get an analysis template", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_collaboration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetCollaboration"
        operation.name = "GetCollaboration"
        operation.input = GetCollaborationOperationInput
        operation.output = GetCollaborationOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_collaboration_analysis_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetCollaborationAnalysisTemplate"
        operation.name = "GetCollaborationAnalysisTemplate"
        operation.input = GetCollaborationAnalysisTemplateOperationInput
        operation.output = GetCollaborationAnalysisTemplateOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get an analysis template within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/analysistemplates/{analysisTemplateArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_collaboration_change_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetCollaborationChangeRequest"
        operation.name = "GetCollaborationChangeRequest"
        operation.input = GetCollaborationChangeRequestInput
        operation.output = GetCollaborationChangeRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/changeRequests/{changeRequestIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_collaboration_configured_audience_model_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetCollaborationConfiguredAudienceModelAssociation"
        operation.name = "GetCollaborationConfiguredAudienceModelAssociation"
        operation.input = GetCollaborationConfiguredAudienceModelAssociationInput
        operation.output = GetCollaborationConfiguredAudienceModelAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get a configured audience model within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_collaboration_id_namespace_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetCollaborationIdNamespaceAssociation"
        operation.name = "GetCollaborationIdNamespaceAssociation"
        operation.input = GetCollaborationIdNamespaceAssociationInput
        operation.output = GetCollaborationIdNamespaceAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get id namespace association within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_collaboration_privacy_budget_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetCollaborationPrivacyBudgetTemplate"
        operation.name = "GetCollaborationPrivacyBudgetTemplate"
        operation.input = GetCollaborationPrivacyBudgetTemplateInput
        operation.output = GetCollaborationPrivacyBudgetTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get a privacy budget template within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configured_audience_model_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetConfiguredAudienceModelAssociation"
        operation.name = "GetConfiguredAudienceModelAssociation"
        operation.input = GetConfiguredAudienceModelAssociationInput
        operation.output = GetConfiguredAudienceModelAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of a configured audience model association", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configured_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetConfiguredTable"
        operation.name = "GetConfiguredTable"
        operation.input = GetConfiguredTableOperationInput
        operation.output = GetConfiguredTableOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details for a configured table", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/configuredTables/{configuredTableIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configured_table_analysis_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetConfiguredTableAnalysisRule"
        operation.name = "GetConfiguredTableAnalysisRule"
        operation.input = GetConfiguredTableAnalysisRuleOperationInput
        operation.output = GetConfiguredTableAnalysisRuleOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get analysis rules for a configured table", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configured_table_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetConfiguredTableAssociation"
        operation.name = "GetConfiguredTableAssociation"
        operation.input = GetConfiguredTableAssociationOperationInput
        operation.output = GetConfiguredTableAssociationOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of a configured table association", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configured_table_association_analysis_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetConfiguredTableAssociationAnalysisRule"
        operation.name = "GetConfiguredTableAssociationAnalysisRule"
        operation.input = GetConfiguredTableAssociationAnalysisRuleInput
        operation.output = GetConfiguredTableAssociationAnalysisRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get analysis rules for a configured table association"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_id_mapping_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetIdMappingTable"
        operation.name = "GetIdMappingTable"
        operation.input = GetIdMappingTableInput
        operation.output = GetIdMappingTableOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of an id mapping table", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_id_namespace_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetIdNamespaceAssociation"
        operation.name = "GetIdNamespaceAssociation"
        operation.input = GetIdNamespaceAssociationInput
        operation.output = GetIdNamespaceAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of an id namespace association", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetMembership"
        operation.name = "GetMembership"
        operation.input = GetMembershipOperationInput
        operation.output = GetMembershipOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details about a membership", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_privacy_budget_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetPrivacyBudgetTemplate"
        operation.name = "GetPrivacyBudgetTemplate"
        operation.input = GetPrivacyBudgetTemplateInput
        operation.output = GetPrivacyBudgetTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get a privacy budget template", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_protected_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetProtectedJob"
        operation.name = "GetProtectedJob"
        operation.input = GetProtectedJobInput
        operation.output = GetProtectedJobOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a protected job"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/protectedJobs/{protectedJobIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_protected_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetProtectedQuery"
        operation.name = "GetProtectedQuery"
        operation.input = GetProtectedQueryOperationInput
        operation.output = GetProtectedQueryOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get a protected query", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/protectedQueries/{protectedQueryIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetSchema"
        operation.name = "GetSchema"
        operation.input = GetSchemaOperationInput
        operation.output = GetSchemaOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view details of a schema", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/schemas/{name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_schema_analysis_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#GetSchemaAnalysisRule"
        operation.name = "GetSchemaAnalysisRule"
        operation.input = GetSchemaAnalysisRuleOperationInput
        operation.output = GetSchemaAnalysisRuleOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view analysis rules associated with a schema", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/schemas/{name}/analysisRule/{type}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_analysis_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListAnalysisTemplates"
        operation.name = "ListAnalysisTemplates"
        operation.input = ListAnalysisTemplatesOperationInput
        operation.output = ListAnalysisTemplatesOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list analysis templates", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/analysistemplates"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAnalysisTemplates.new
      end)
      service.add_operation(:list_collaboration_analysis_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListCollaborationAnalysisTemplates"
        operation.name = "ListCollaborationAnalysisTemplates"
        operation.input = ListCollaborationAnalysisTemplatesOperationInput
        operation.output = ListCollaborationAnalysisTemplatesOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list analysis templates within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/analysistemplates"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationAnalysisTemplates.new
      end)
      service.add_operation(:list_collaboration_change_requests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListCollaborationChangeRequests"
        operation.name = "ListCollaborationChangeRequests"
        operation.input = ListCollaborationChangeRequestsInput
        operation.output = ListCollaborationChangeRequestsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/changeRequests"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationChangeRequests.new
      end)
      service.add_operation(:list_collaboration_configured_audience_model_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListCollaborationConfiguredAudienceModelAssociations"
        operation.name = "ListCollaborationConfiguredAudienceModelAssociations"
        operation.input = ListCollaborationConfiguredAudienceModelAssociationsInput
        operation.output = ListCollaborationConfiguredAudienceModelAssociationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list configured audience associations within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/configuredaudiencemodelassociations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationConfiguredAudienceModelAssociations.new
      end)
      service.add_operation(:list_collaboration_id_namespace_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListCollaborationIdNamespaceAssociations"
        operation.name = "ListCollaborationIdNamespaceAssociations"
        operation.input = ListCollaborationIdNamespaceAssociationsInput
        operation.output = ListCollaborationIdNamespaceAssociationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list id namespace within a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/idnamespaceassociations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationIdNamespaceAssociations.new
      end)
      service.add_operation(:list_collaboration_privacy_budget_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListCollaborationPrivacyBudgetTemplates"
        operation.name = "ListCollaborationPrivacyBudgetTemplates"
        operation.input = ListCollaborationPrivacyBudgetTemplatesInput
        operation.output = ListCollaborationPrivacyBudgetTemplatesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list collaboration privacy budget templates", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/privacybudgettemplates"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationPrivacyBudgetTemplates.new
      end)
      service.add_operation(:list_collaboration_privacy_budgets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListCollaborationPrivacyBudgets"
        operation.name = "ListCollaborationPrivacyBudgets"
        operation.input = ListCollaborationPrivacyBudgetsInput
        operation.output = ListCollaborationPrivacyBudgetsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list collaboration privacy budgets", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/privacybudgets"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborationPrivacyBudgets.new
      end)
      service.add_operation(:list_collaborations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListCollaborations"
        operation.name = "ListCollaborations"
        operation.input = ListCollaborationsOperationInput
        operation.output = ListCollaborationsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list available collaborations", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollaborations.new
      end)
      service.add_operation(:list_configured_audience_model_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListConfiguredAudienceModelAssociations"
        operation.name = "ListConfiguredAudienceModelAssociations"
        operation.input = ListConfiguredAudienceModelAssociationsInput
        operation.output = ListConfiguredAudienceModelAssociationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list available configured audience model associations for a membership", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConfiguredAudienceModelAssociations.new
      end)
      service.add_operation(:list_configured_table_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListConfiguredTableAssociations"
        operation.name = "ListConfiguredTableAssociations"
        operation.input = ListConfiguredTableAssociationsOperationInput
        operation.output = ListConfiguredTableAssociationsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list available configured table associations for a membership", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConfiguredTableAssociations.new
      end)
      service.add_operation(:list_configured_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListConfiguredTables"
        operation.name = "ListConfiguredTables"
        operation.input = ListConfiguredTablesOperationInput
        operation.output = ListConfiguredTablesOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list available configured tables", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/configuredTables"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConfiguredTables.new
      end)
      service.add_operation(:list_id_mapping_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListIdMappingTables"
        operation.name = "ListIdMappingTables"
        operation.input = ListIdMappingTablesInput
        operation.output = ListIdMappingTablesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list available id mapping tables for a membership", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/idmappingtables"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIdMappingTables.new
      end)
      service.add_operation(:list_id_namespace_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListIdNamespaceAssociations"
        operation.name = "ListIdNamespaceAssociations"
        operation.input = ListIdNamespaceAssociationsInput
        operation.output = ListIdNamespaceAssociationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list entity resolution data associations for a membership", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/idnamespaceassociations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIdNamespaceAssociations.new
      end)
      service.add_operation(:list_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListMembers"
        operation.name = "ListMembers"
        operation.input = ListMembersOperationInput
        operation.output = ListMembersOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list the members of a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/members"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMembers.new
      end)
      service.add_operation(:list_memberships, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListMemberships"
        operation.name = "ListMemberships"
        operation.input = ListMembershipsOperationInput
        operation.output = ListMembershipsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list available memberships", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMemberships.new
      end)
      service.add_operation(:list_privacy_budget_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListPrivacyBudgetTemplates"
        operation.name = "ListPrivacyBudgetTemplates"
        operation.input = ListPrivacyBudgetTemplatesInput
        operation.output = ListPrivacyBudgetTemplatesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list privacy budget templates", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/privacybudgettemplates"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPrivacyBudgetTemplates.new
      end)
      service.add_operation(:list_privacy_budgets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListPrivacyBudgets"
        operation.name = "ListPrivacyBudgets"
        operation.input = ListPrivacyBudgetsInput
        operation.output = ListPrivacyBudgetsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "List Privacy Budgets", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/privacybudgets"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPrivacyBudgets.new
      end)
      service.add_operation(:list_protected_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListProtectedJobs"
        operation.name = "ListProtectedJobs"
        operation.input = ListProtectedJobsInput
        operation.output = ListProtectedJobsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list protected jobs"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/protectedJobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProtectedJobs.new
      end)
      service.add_operation(:list_protected_queries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListProtectedQueries"
        operation.name = "ListProtectedQueries"
        operation.input = ListProtectedQueriesOperationInput
        operation.output = ListProtectedQueriesOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list protected queries", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/memberships/{membershipIdentifier}/protectedQueries"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProtectedQueries.new
      end)
      service.add_operation(:list_schemas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListSchemas"
        operation.name = "ListSchemas"
        operation.input = ListSchemasOperationInput
        operation.output = ListSchemasOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view available schemas for a collaboration", "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/collaborations/{collaborationIdentifier}/schemas"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSchemas.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:populate_id_mapping_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#PopulateIdMappingTable"
        operation.name = "PopulateIdMappingTable"
        operation.input = PopulateIdMappingTableInput
        operation.output = PopulateIdMappingTableOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to link an id mapping workflow with a collaboration by creating a new table", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}/populate"}}
      end)
      service.add_operation(:preview_privacy_impact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#PreviewPrivacyImpact"
        operation.name = "PreviewPrivacyImpact"
        operation.input = PreviewPrivacyImpactInput
        operation.output = PreviewPrivacyImpactOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to preview a new privacy impacting change", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/previewprivacyimpact"}}
      end)
      service.add_operation(:start_protected_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#StartProtectedJob"
        operation.name = "StartProtectedJob"
        operation.input = StartProtectedJobInput
        operation.output = StartProtectedJobOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to start protected jobs"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/protectedJobs"}}
      end)
      service.add_operation(:start_protected_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#StartProtectedQuery"
        operation.name = "StartProtectedQuery"
        operation.input = StartProtectedQueryOperationInput
        operation.output = StartProtectedQueryOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to start protected queries", "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/memberships/{membershipIdentifier}/protectedQueries"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_analysis_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateAnalysisTemplate"
        operation.name = "UpdateAnalysisTemplate"
        operation.input = UpdateAnalysisTemplateOperationInput
        operation.output = UpdateAnalysisTemplateOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update an analysis template", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}"}}
      end)
      service.add_operation(:update_collaboration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateCollaboration"
        operation.name = "UpdateCollaboration"
        operation.input = UpdateCollaborationOperationInput
        operation.output = UpdateCollaborationOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update details of the collaboration", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/collaborations/{collaborationIdentifier}"}}
      end)
      service.add_operation(:update_configured_audience_model_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateConfiguredAudienceModelAssociation"
        operation.name = "UpdateConfiguredAudienceModelAssociation"
        operation.input = UpdateConfiguredAudienceModelAssociationInput
        operation.output = UpdateConfiguredAudienceModelAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update a configured audience model association", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"}}
      end)
      service.add_operation(:update_configured_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateConfiguredTable"
        operation.name = "UpdateConfiguredTable"
        operation.input = UpdateConfiguredTableOperationInput
        operation.output = UpdateConfiguredTableOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update an existing configured table", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/configuredTables/{configuredTableIdentifier}"}}
      end)
      service.add_operation(:update_configured_table_analysis_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateConfiguredTableAnalysisRule"
        operation.name = "UpdateConfiguredTableAnalysisRule"
        operation.input = UpdateConfiguredTableAnalysisRuleOperationInput
        operation.output = UpdateConfiguredTableAnalysisRuleOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view update analysis rules for a configured table", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"}}
      end)
      service.add_operation(:update_configured_table_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateConfiguredTableAssociation"
        operation.name = "UpdateConfiguredTableAssociation"
        operation.input = UpdateConfiguredTableAssociationOperationInput
        operation.output = UpdateConfiguredTableAssociationOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update a configured table association", "aws.iam#requiredActions" => ["iam:PassRole"], "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"}}
      end)
      service.add_operation(:update_configured_table_association_analysis_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateConfiguredTableAssociationAnalysisRule"
        operation.name = "UpdateConfiguredTableAssociationAnalysisRule"
        operation.input = UpdateConfiguredTableAssociationAnalysisRuleInput
        operation.output = UpdateConfiguredTableAssociationAnalysisRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update analysis rules for a configured table association"}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}"}}
      end)
      service.add_operation(:update_id_mapping_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateIdMappingTable"
        operation.name = "UpdateIdMappingTable"
        operation.input = UpdateIdMappingTableInput
        operation.output = UpdateIdMappingTableOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update an id mapping table", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}"}}
      end)
      service.add_operation(:update_id_namespace_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateIdNamespaceAssociation"
        operation.name = "UpdateIdNamespaceAssociation"
        operation.input = UpdateIdNamespaceAssociationInput
        operation.output = UpdateIdNamespaceAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update a entity resolution input association", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"}}
      end)
      service.add_operation(:update_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateMembership"
        operation.name = "UpdateMembership"
        operation.input = UpdateMembershipOperationInput
        operation.output = UpdateMembershipOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update details of a membership", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}"}}
      end)
      service.add_operation(:update_privacy_budget_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdatePrivacyBudgetTemplate"
        operation.name = "UpdatePrivacyBudgetTemplate"
        operation.input = UpdatePrivacyBudgetTemplateInput
        operation.output = UpdatePrivacyBudgetTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update a privacy budget template", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"}}
      end)
      service.add_operation(:update_protected_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateProtectedJob"
        operation.name = "UpdateProtectedJob"
        operation.input = UpdateProtectedJobInput
        operation.output = UpdateProtectedJobOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update protected jobs"}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/protectedJobs/{protectedJobIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_protected_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cleanrooms#UpdateProtectedQuery"
        operation.name = "UpdateProtectedQuery"
        operation.input = UpdateProtectedQueryOperationInput
        operation.output = UpdateProtectedQueryOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update protected queries", "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/memberships/{membershipIdentifier}/protectedQueries/{protectedQueryIdentifier}"}, "smithy.api#idempotent" => {}}
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
