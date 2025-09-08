# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CleanRooms
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedExceptionReason = Shapes::StringShape.new(name: 'AccessDeniedExceptionReason')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AdditionalAnalyses = Shapes::StringShape.new(name: 'AdditionalAnalyses')
    AdditionalAnalysesResourceArn = Shapes::StringShape.new(name: 'AdditionalAnalysesResourceArn')
    AggregateColumn = Shapes::StructureShape.new(name: 'AggregateColumn')
    AggregateColumnColumnNamesList = Shapes::ListShape.new(name: 'AggregateColumnColumnNamesList')
    AggregateFunctionName = Shapes::StringShape.new(name: 'AggregateFunctionName')
    AggregationConstraint = Shapes::StructureShape.new(name: 'AggregationConstraint')
    AggregationConstraintMinimumInteger = Shapes::IntegerShape.new(name: 'AggregationConstraintMinimumInteger')
    AggregationConstraints = Shapes::ListShape.new(name: 'AggregationConstraints')
    AggregationType = Shapes::StringShape.new(name: 'AggregationType')
    AllowedAdditionalAnalyses = Shapes::ListShape.new(name: 'AllowedAdditionalAnalyses')
    AllowedColumnList = Shapes::ListShape.new(name: 'AllowedColumnList')
    AllowedResultReceivers = Shapes::ListShape.new(name: 'AllowedResultReceivers')
    AnalysisFormat = Shapes::StringShape.new(name: 'AnalysisFormat')
    AnalysisMethod = Shapes::StringShape.new(name: 'AnalysisMethod')
    AnalysisParameter = Shapes::StructureShape.new(name: 'AnalysisParameter')
    AnalysisParameterList = Shapes::ListShape.new(name: 'AnalysisParameterList')
    AnalysisRule = Shapes::StructureShape.new(name: 'AnalysisRule')
    AnalysisRuleAggregation = Shapes::StructureShape.new(name: 'AnalysisRuleAggregation')
    AnalysisRuleAggregationAggregateColumnsList = Shapes::ListShape.new(name: 'AnalysisRuleAggregationAggregateColumnsList')
    AnalysisRuleColumnList = Shapes::ListShape.new(name: 'AnalysisRuleColumnList')
    AnalysisRuleColumnName = Shapes::StringShape.new(name: 'AnalysisRuleColumnName')
    AnalysisRuleCustom = Shapes::StructureShape.new(name: 'AnalysisRuleCustom')
    AnalysisRuleCustomAllowedAnalysesList = Shapes::ListShape.new(name: 'AnalysisRuleCustomAllowedAnalysesList')
    AnalysisRuleCustomAllowedAnalysisProvidersList = Shapes::ListShape.new(name: 'AnalysisRuleCustomAllowedAnalysisProvidersList')
    AnalysisRuleIdMappingTable = Shapes::StructureShape.new(name: 'AnalysisRuleIdMappingTable')
    AnalysisRuleIdMappingTableJoinColumnsList = Shapes::ListShape.new(name: 'AnalysisRuleIdMappingTableJoinColumnsList')
    AnalysisRuleList = Shapes::StructureShape.new(name: 'AnalysisRuleList')
    AnalysisRuleListJoinColumnsList = Shapes::ListShape.new(name: 'AnalysisRuleListJoinColumnsList')
    AnalysisRulePolicy = Shapes::UnionShape.new(name: 'AnalysisRulePolicy')
    AnalysisRulePolicyV1 = Shapes::UnionShape.new(name: 'AnalysisRulePolicyV1')
    AnalysisRuleType = Shapes::StringShape.new(name: 'AnalysisRuleType')
    AnalysisRuleTypeList = Shapes::ListShape.new(name: 'AnalysisRuleTypeList')
    AnalysisSchema = Shapes::StructureShape.new(name: 'AnalysisSchema')
    AnalysisSource = Shapes::UnionShape.new(name: 'AnalysisSource')
    AnalysisSourceMetadata = Shapes::UnionShape.new(name: 'AnalysisSourceMetadata')
    AnalysisTemplate = Shapes::StructureShape.new(name: 'AnalysisTemplate')
    AnalysisTemplateArn = Shapes::StringShape.new(name: 'AnalysisTemplateArn')
    AnalysisTemplateArnList = Shapes::ListShape.new(name: 'AnalysisTemplateArnList')
    AnalysisTemplateArnOrQueryWildcard = Shapes::StringShape.new(name: 'AnalysisTemplateArnOrQueryWildcard')
    AnalysisTemplateArtifact = Shapes::StructureShape.new(name: 'AnalysisTemplateArtifact')
    AnalysisTemplateArtifactList = Shapes::ListShape.new(name: 'AnalysisTemplateArtifactList')
    AnalysisTemplateArtifactMetadata = Shapes::StructureShape.new(name: 'AnalysisTemplateArtifactMetadata')
    AnalysisTemplateArtifacts = Shapes::StructureShape.new(name: 'AnalysisTemplateArtifacts')
    AnalysisTemplateIdentifier = Shapes::StringShape.new(name: 'AnalysisTemplateIdentifier')
    AnalysisTemplateSummary = Shapes::StructureShape.new(name: 'AnalysisTemplateSummary')
    AnalysisTemplateSummaryList = Shapes::ListShape.new(name: 'AnalysisTemplateSummaryList')
    AnalysisTemplateText = Shapes::StringShape.new(name: 'AnalysisTemplateText')
    AnalysisTemplateValidationStatus = Shapes::StringShape.new(name: 'AnalysisTemplateValidationStatus')
    AnalysisTemplateValidationStatusDetail = Shapes::StructureShape.new(name: 'AnalysisTemplateValidationStatusDetail')
    AnalysisTemplateValidationStatusDetailList = Shapes::ListShape.new(name: 'AnalysisTemplateValidationStatusDetailList')
    AnalysisTemplateValidationStatusReason = Shapes::StructureShape.new(name: 'AnalysisTemplateValidationStatusReason')
    AnalysisTemplateValidationStatusReasonList = Shapes::ListShape.new(name: 'AnalysisTemplateValidationStatusReasonList')
    AnalysisTemplateValidationType = Shapes::StringShape.new(name: 'AnalysisTemplateValidationType')
    AnalysisType = Shapes::StringShape.new(name: 'AnalysisType')
    AnalyticsEngine = Shapes::StringShape.new(name: 'AnalyticsEngine')
    AthenaDatabaseName = Shapes::StringShape.new(name: 'AthenaDatabaseName')
    AthenaOutputLocation = Shapes::StringShape.new(name: 'AthenaOutputLocation')
    AthenaTableName = Shapes::StringShape.new(name: 'AthenaTableName')
    AthenaTableReference = Shapes::StructureShape.new(name: 'AthenaTableReference')
    AthenaWorkGroup = Shapes::StringShape.new(name: 'AthenaWorkGroup')
    AutoApprovedChangeType = Shapes::StringShape.new(name: 'AutoApprovedChangeType')
    AutoApprovedChangeTypeList = Shapes::ListShape.new(name: 'AutoApprovedChangeTypeList')
    BatchGetCollaborationAnalysisTemplateError = Shapes::StructureShape.new(name: 'BatchGetCollaborationAnalysisTemplateError')
    BatchGetCollaborationAnalysisTemplateErrorList = Shapes::ListShape.new(name: 'BatchGetCollaborationAnalysisTemplateErrorList')
    BatchGetCollaborationAnalysisTemplateInput = Shapes::StructureShape.new(name: 'BatchGetCollaborationAnalysisTemplateInput')
    BatchGetCollaborationAnalysisTemplateOutput = Shapes::StructureShape.new(name: 'BatchGetCollaborationAnalysisTemplateOutput')
    BatchGetSchemaAnalysisRuleError = Shapes::StructureShape.new(name: 'BatchGetSchemaAnalysisRuleError')
    BatchGetSchemaAnalysisRuleErrorList = Shapes::ListShape.new(name: 'BatchGetSchemaAnalysisRuleErrorList')
    BatchGetSchemaAnalysisRuleInput = Shapes::StructureShape.new(name: 'BatchGetSchemaAnalysisRuleInput')
    BatchGetSchemaAnalysisRuleOutput = Shapes::StructureShape.new(name: 'BatchGetSchemaAnalysisRuleOutput')
    BatchGetSchemaError = Shapes::StructureShape.new(name: 'BatchGetSchemaError')
    BatchGetSchemaErrorList = Shapes::ListShape.new(name: 'BatchGetSchemaErrorList')
    BatchGetSchemaInput = Shapes::StructureShape.new(name: 'BatchGetSchemaInput')
    BatchGetSchemaOutput = Shapes::StructureShape.new(name: 'BatchGetSchemaOutput')
    BilledJobResourceUtilization = Shapes::StructureShape.new(name: 'BilledJobResourceUtilization')
    BilledResourceUtilization = Shapes::StructureShape.new(name: 'BilledResourceUtilization')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Change = Shapes::StructureShape.new(name: 'Change')
    ChangeInput = Shapes::StructureShape.new(name: 'ChangeInput')
    ChangeInputList = Shapes::ListShape.new(name: 'ChangeInputList')
    ChangeList = Shapes::ListShape.new(name: 'ChangeList')
    ChangeRequestStatus = Shapes::StringShape.new(name: 'ChangeRequestStatus')
    ChangeSpecification = Shapes::UnionShape.new(name: 'ChangeSpecification')
    ChangeSpecificationType = Shapes::StringShape.new(name: 'ChangeSpecificationType')
    ChangeType = Shapes::StringShape.new(name: 'ChangeType')
    ChangeTypeList = Shapes::ListShape.new(name: 'ChangeTypeList')
    CleanroomsArn = Shapes::StringShape.new(name: 'CleanroomsArn')
    Collaboration = Shapes::StructureShape.new(name: 'Collaboration')
    CollaborationAnalysisTemplate = Shapes::StructureShape.new(name: 'CollaborationAnalysisTemplate')
    CollaborationAnalysisTemplateList = Shapes::ListShape.new(name: 'CollaborationAnalysisTemplateList')
    CollaborationAnalysisTemplateSummary = Shapes::StructureShape.new(name: 'CollaborationAnalysisTemplateSummary')
    CollaborationAnalysisTemplateSummaryList = Shapes::ListShape.new(name: 'CollaborationAnalysisTemplateSummaryList')
    CollaborationArn = Shapes::StringShape.new(name: 'CollaborationArn')
    CollaborationChangeRequest = Shapes::StructureShape.new(name: 'CollaborationChangeRequest')
    CollaborationChangeRequestIdentifier = Shapes::StringShape.new(name: 'CollaborationChangeRequestIdentifier')
    CollaborationChangeRequestSummary = Shapes::StructureShape.new(name: 'CollaborationChangeRequestSummary')
    CollaborationChangeRequestSummaryList = Shapes::ListShape.new(name: 'CollaborationChangeRequestSummaryList')
    CollaborationConfiguredAudienceModelAssociation = Shapes::StructureShape.new(name: 'CollaborationConfiguredAudienceModelAssociation')
    CollaborationConfiguredAudienceModelAssociationSummary = Shapes::StructureShape.new(name: 'CollaborationConfiguredAudienceModelAssociationSummary')
    CollaborationConfiguredAudienceModelAssociationSummaryList = Shapes::ListShape.new(name: 'CollaborationConfiguredAudienceModelAssociationSummaryList')
    CollaborationDescription = Shapes::StringShape.new(name: 'CollaborationDescription')
    CollaborationIdNamespaceAssociation = Shapes::StructureShape.new(name: 'CollaborationIdNamespaceAssociation')
    CollaborationIdNamespaceAssociationSummary = Shapes::StructureShape.new(name: 'CollaborationIdNamespaceAssociationSummary')
    CollaborationIdNamespaceAssociationSummaryList = Shapes::ListShape.new(name: 'CollaborationIdNamespaceAssociationSummaryList')
    CollaborationIdentifier = Shapes::StringShape.new(name: 'CollaborationIdentifier')
    CollaborationJobLogStatus = Shapes::StringShape.new(name: 'CollaborationJobLogStatus')
    CollaborationName = Shapes::StringShape.new(name: 'CollaborationName')
    CollaborationPrivacyBudgetSummary = Shapes::StructureShape.new(name: 'CollaborationPrivacyBudgetSummary')
    CollaborationPrivacyBudgetSummaryList = Shapes::ListShape.new(name: 'CollaborationPrivacyBudgetSummaryList')
    CollaborationPrivacyBudgetTemplate = Shapes::StructureShape.new(name: 'CollaborationPrivacyBudgetTemplate')
    CollaborationPrivacyBudgetTemplateSummary = Shapes::StructureShape.new(name: 'CollaborationPrivacyBudgetTemplateSummary')
    CollaborationPrivacyBudgetTemplateSummaryList = Shapes::ListShape.new(name: 'CollaborationPrivacyBudgetTemplateSummaryList')
    CollaborationQueryLogStatus = Shapes::StringShape.new(name: 'CollaborationQueryLogStatus')
    CollaborationSummary = Shapes::StructureShape.new(name: 'CollaborationSummary')
    CollaborationSummaryList = Shapes::ListShape.new(name: 'CollaborationSummaryList')
    Column = Shapes::StructureShape.new(name: 'Column')
    ColumnList = Shapes::ListShape.new(name: 'ColumnList')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ColumnTypeString = Shapes::StringShape.new(name: 'ColumnTypeString')
    ComputeConfiguration = Shapes::UnionShape.new(name: 'ComputeConfiguration')
    ConfigurationDetails = Shapes::UnionShape.new(name: 'ConfigurationDetails')
    ConfiguredAudienceModelArn = Shapes::StringShape.new(name: 'ConfiguredAudienceModelArn')
    ConfiguredAudienceModelAssociation = Shapes::StructureShape.new(name: 'ConfiguredAudienceModelAssociation')
    ConfiguredAudienceModelAssociationArn = Shapes::StringShape.new(name: 'ConfiguredAudienceModelAssociationArn')
    ConfiguredAudienceModelAssociationIdentifier = Shapes::StringShape.new(name: 'ConfiguredAudienceModelAssociationIdentifier')
    ConfiguredAudienceModelAssociationName = Shapes::StringShape.new(name: 'ConfiguredAudienceModelAssociationName')
    ConfiguredAudienceModelAssociationSummary = Shapes::StructureShape.new(name: 'ConfiguredAudienceModelAssociationSummary')
    ConfiguredAudienceModelAssociationSummaryList = Shapes::ListShape.new(name: 'ConfiguredAudienceModelAssociationSummaryList')
    ConfiguredTable = Shapes::StructureShape.new(name: 'ConfiguredTable')
    ConfiguredTableAnalysisRule = Shapes::StructureShape.new(name: 'ConfiguredTableAnalysisRule')
    ConfiguredTableAnalysisRulePolicy = Shapes::UnionShape.new(name: 'ConfiguredTableAnalysisRulePolicy')
    ConfiguredTableAnalysisRulePolicyV1 = Shapes::UnionShape.new(name: 'ConfiguredTableAnalysisRulePolicyV1')
    ConfiguredTableAnalysisRuleType = Shapes::StringShape.new(name: 'ConfiguredTableAnalysisRuleType')
    ConfiguredTableAnalysisRuleTypeList = Shapes::ListShape.new(name: 'ConfiguredTableAnalysisRuleTypeList')
    ConfiguredTableArn = Shapes::StringShape.new(name: 'ConfiguredTableArn')
    ConfiguredTableAssociation = Shapes::StructureShape.new(name: 'ConfiguredTableAssociation')
    ConfiguredTableAssociationAnalysisRule = Shapes::StructureShape.new(name: 'ConfiguredTableAssociationAnalysisRule')
    ConfiguredTableAssociationAnalysisRuleAggregation = Shapes::StructureShape.new(name: 'ConfiguredTableAssociationAnalysisRuleAggregation')
    ConfiguredTableAssociationAnalysisRuleCustom = Shapes::StructureShape.new(name: 'ConfiguredTableAssociationAnalysisRuleCustom')
    ConfiguredTableAssociationAnalysisRuleList = Shapes::StructureShape.new(name: 'ConfiguredTableAssociationAnalysisRuleList')
    ConfiguredTableAssociationAnalysisRulePolicy = Shapes::UnionShape.new(name: 'ConfiguredTableAssociationAnalysisRulePolicy')
    ConfiguredTableAssociationAnalysisRulePolicyV1 = Shapes::UnionShape.new(name: 'ConfiguredTableAssociationAnalysisRulePolicyV1')
    ConfiguredTableAssociationAnalysisRuleType = Shapes::StringShape.new(name: 'ConfiguredTableAssociationAnalysisRuleType')
    ConfiguredTableAssociationAnalysisRuleTypeList = Shapes::ListShape.new(name: 'ConfiguredTableAssociationAnalysisRuleTypeList')
    ConfiguredTableAssociationArn = Shapes::StringShape.new(name: 'ConfiguredTableAssociationArn')
    ConfiguredTableAssociationIdentifier = Shapes::StringShape.new(name: 'ConfiguredTableAssociationIdentifier')
    ConfiguredTableAssociationSummary = Shapes::StructureShape.new(name: 'ConfiguredTableAssociationSummary')
    ConfiguredTableAssociationSummaryList = Shapes::ListShape.new(name: 'ConfiguredTableAssociationSummaryList')
    ConfiguredTableIdentifier = Shapes::StringShape.new(name: 'ConfiguredTableIdentifier')
    ConfiguredTableSummary = Shapes::StructureShape.new(name: 'ConfiguredTableSummary')
    ConfiguredTableSummaryList = Shapes::ListShape.new(name: 'ConfiguredTableSummaryList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionReason = Shapes::StringShape.new(name: 'ConflictExceptionReason')
    ConsolidatedPolicy = Shapes::UnionShape.new(name: 'ConsolidatedPolicy')
    ConsolidatedPolicyAggregation = Shapes::StructureShape.new(name: 'ConsolidatedPolicyAggregation')
    ConsolidatedPolicyAggregationAggregateColumnsList = Shapes::ListShape.new(name: 'ConsolidatedPolicyAggregationAggregateColumnsList')
    ConsolidatedPolicyCustom = Shapes::StructureShape.new(name: 'ConsolidatedPolicyCustom')
    ConsolidatedPolicyCustomAllowedAnalysesList = Shapes::ListShape.new(name: 'ConsolidatedPolicyCustomAllowedAnalysesList')
    ConsolidatedPolicyCustomAllowedAnalysisProvidersList = Shapes::ListShape.new(name: 'ConsolidatedPolicyCustomAllowedAnalysisProvidersList')
    ConsolidatedPolicyList = Shapes::StructureShape.new(name: 'ConsolidatedPolicyList')
    ConsolidatedPolicyListJoinColumnsList = Shapes::ListShape.new(name: 'ConsolidatedPolicyListJoinColumnsList')
    ConsolidatedPolicyV1 = Shapes::UnionShape.new(name: 'ConsolidatedPolicyV1')
    CreateAnalysisTemplateInput = Shapes::StructureShape.new(name: 'CreateAnalysisTemplateInput')
    CreateAnalysisTemplateOutput = Shapes::StructureShape.new(name: 'CreateAnalysisTemplateOutput')
    CreateCollaborationChangeRequestInput = Shapes::StructureShape.new(name: 'CreateCollaborationChangeRequestInput')
    CreateCollaborationChangeRequestOutput = Shapes::StructureShape.new(name: 'CreateCollaborationChangeRequestOutput')
    CreateCollaborationInput = Shapes::StructureShape.new(name: 'CreateCollaborationInput')
    CreateCollaborationOutput = Shapes::StructureShape.new(name: 'CreateCollaborationOutput')
    CreateConfiguredAudienceModelAssociationInput = Shapes::StructureShape.new(name: 'CreateConfiguredAudienceModelAssociationInput')
    CreateConfiguredAudienceModelAssociationOutput = Shapes::StructureShape.new(name: 'CreateConfiguredAudienceModelAssociationOutput')
    CreateConfiguredTableAnalysisRuleInput = Shapes::StructureShape.new(name: 'CreateConfiguredTableAnalysisRuleInput')
    CreateConfiguredTableAnalysisRuleOutput = Shapes::StructureShape.new(name: 'CreateConfiguredTableAnalysisRuleOutput')
    CreateConfiguredTableAssociationAnalysisRuleInput = Shapes::StructureShape.new(name: 'CreateConfiguredTableAssociationAnalysisRuleInput')
    CreateConfiguredTableAssociationAnalysisRuleOutput = Shapes::StructureShape.new(name: 'CreateConfiguredTableAssociationAnalysisRuleOutput')
    CreateConfiguredTableAssociationInput = Shapes::StructureShape.new(name: 'CreateConfiguredTableAssociationInput')
    CreateConfiguredTableAssociationOutput = Shapes::StructureShape.new(name: 'CreateConfiguredTableAssociationOutput')
    CreateConfiguredTableInput = Shapes::StructureShape.new(name: 'CreateConfiguredTableInput')
    CreateConfiguredTableOutput = Shapes::StructureShape.new(name: 'CreateConfiguredTableOutput')
    CreateIdMappingTableInput = Shapes::StructureShape.new(name: 'CreateIdMappingTableInput')
    CreateIdMappingTableOutput = Shapes::StructureShape.new(name: 'CreateIdMappingTableOutput')
    CreateIdNamespaceAssociationInput = Shapes::StructureShape.new(name: 'CreateIdNamespaceAssociationInput')
    CreateIdNamespaceAssociationOutput = Shapes::StructureShape.new(name: 'CreateIdNamespaceAssociationOutput')
    CreateMembershipInput = Shapes::StructureShape.new(name: 'CreateMembershipInput')
    CreateMembershipOutput = Shapes::StructureShape.new(name: 'CreateMembershipOutput')
    CreatePrivacyBudgetTemplateInput = Shapes::StructureShape.new(name: 'CreatePrivacyBudgetTemplateInput')
    CreatePrivacyBudgetTemplateOutput = Shapes::StructureShape.new(name: 'CreatePrivacyBudgetTemplateOutput')
    CustomMLMemberAbilities = Shapes::ListShape.new(name: 'CustomMLMemberAbilities')
    CustomMLMemberAbility = Shapes::StringShape.new(name: 'CustomMLMemberAbility')
    DataEncryptionMetadata = Shapes::StructureShape.new(name: 'DataEncryptionMetadata')
    DeleteAnalysisTemplateInput = Shapes::StructureShape.new(name: 'DeleteAnalysisTemplateInput')
    DeleteAnalysisTemplateOutput = Shapes::StructureShape.new(name: 'DeleteAnalysisTemplateOutput')
    DeleteCollaborationInput = Shapes::StructureShape.new(name: 'DeleteCollaborationInput')
    DeleteCollaborationOutput = Shapes::StructureShape.new(name: 'DeleteCollaborationOutput')
    DeleteConfiguredAudienceModelAssociationInput = Shapes::StructureShape.new(name: 'DeleteConfiguredAudienceModelAssociationInput')
    DeleteConfiguredAudienceModelAssociationOutput = Shapes::StructureShape.new(name: 'DeleteConfiguredAudienceModelAssociationOutput')
    DeleteConfiguredTableAnalysisRuleInput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableAnalysisRuleInput')
    DeleteConfiguredTableAnalysisRuleOutput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableAnalysisRuleOutput')
    DeleteConfiguredTableAssociationAnalysisRuleInput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableAssociationAnalysisRuleInput')
    DeleteConfiguredTableAssociationAnalysisRuleOutput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableAssociationAnalysisRuleOutput')
    DeleteConfiguredTableAssociationInput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableAssociationInput')
    DeleteConfiguredTableAssociationOutput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableAssociationOutput')
    DeleteConfiguredTableInput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableInput')
    DeleteConfiguredTableOutput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableOutput')
    DeleteIdMappingTableInput = Shapes::StructureShape.new(name: 'DeleteIdMappingTableInput')
    DeleteIdMappingTableOutput = Shapes::StructureShape.new(name: 'DeleteIdMappingTableOutput')
    DeleteIdNamespaceAssociationInput = Shapes::StructureShape.new(name: 'DeleteIdNamespaceAssociationInput')
    DeleteIdNamespaceAssociationOutput = Shapes::StructureShape.new(name: 'DeleteIdNamespaceAssociationOutput')
    DeleteMemberInput = Shapes::StructureShape.new(name: 'DeleteMemberInput')
    DeleteMemberOutput = Shapes::StructureShape.new(name: 'DeleteMemberOutput')
    DeleteMembershipInput = Shapes::StructureShape.new(name: 'DeleteMembershipInput')
    DeleteMembershipOutput = Shapes::StructureShape.new(name: 'DeleteMembershipOutput')
    DeletePrivacyBudgetTemplateInput = Shapes::StructureShape.new(name: 'DeletePrivacyBudgetTemplateInput')
    DeletePrivacyBudgetTemplateOutput = Shapes::StructureShape.new(name: 'DeletePrivacyBudgetTemplateOutput')
    DifferentialPrivacyAggregationExpression = Shapes::StringShape.new(name: 'DifferentialPrivacyAggregationExpression')
    DifferentialPrivacyAggregationType = Shapes::StringShape.new(name: 'DifferentialPrivacyAggregationType')
    DifferentialPrivacyColumn = Shapes::StructureShape.new(name: 'DifferentialPrivacyColumn')
    DifferentialPrivacyColumnList = Shapes::ListShape.new(name: 'DifferentialPrivacyColumnList')
    DifferentialPrivacyConfiguration = Shapes::StructureShape.new(name: 'DifferentialPrivacyConfiguration')
    DifferentialPrivacyParameters = Shapes::StructureShape.new(name: 'DifferentialPrivacyParameters')
    DifferentialPrivacyPreviewAggregation = Shapes::StructureShape.new(name: 'DifferentialPrivacyPreviewAggregation')
    DifferentialPrivacyPreviewAggregationList = Shapes::ListShape.new(name: 'DifferentialPrivacyPreviewAggregationList')
    DifferentialPrivacyPreviewAggregationMaxCountInteger = Shapes::IntegerShape.new(name: 'DifferentialPrivacyPreviewAggregationMaxCountInteger')
    DifferentialPrivacyPreviewParametersInput = Shapes::StructureShape.new(name: 'DifferentialPrivacyPreviewParametersInput')
    DifferentialPrivacyPrivacyBudget = Shapes::StructureShape.new(name: 'DifferentialPrivacyPrivacyBudget')
    DifferentialPrivacyPrivacyBudgetAggregation = Shapes::StructureShape.new(name: 'DifferentialPrivacyPrivacyBudgetAggregation')
    DifferentialPrivacyPrivacyBudgetAggregationList = Shapes::ListShape.new(name: 'DifferentialPrivacyPrivacyBudgetAggregationList')
    DifferentialPrivacyPrivacyBudgetAggregationMaxCountInteger = Shapes::IntegerShape.new(name: 'DifferentialPrivacyPrivacyBudgetAggregationMaxCountInteger')
    DifferentialPrivacyPrivacyBudgetAggregationRemainingCountInteger = Shapes::IntegerShape.new(name: 'DifferentialPrivacyPrivacyBudgetAggregationRemainingCountInteger')
    DifferentialPrivacyPrivacyImpact = Shapes::StructureShape.new(name: 'DifferentialPrivacyPrivacyImpact')
    DifferentialPrivacySensitivityParameters = Shapes::StructureShape.new(name: 'DifferentialPrivacySensitivityParameters')
    DifferentialPrivacySensitivityParametersList = Shapes::ListShape.new(name: 'DifferentialPrivacySensitivityParametersList')
    DifferentialPrivacySensitivityParametersUserContributionLimitInteger = Shapes::IntegerShape.new(name: 'DifferentialPrivacySensitivityParametersUserContributionLimitInteger')
    DifferentialPrivacyTemplateParametersInput = Shapes::StructureShape.new(name: 'DifferentialPrivacyTemplateParametersInput')
    DifferentialPrivacyTemplateParametersOutput = Shapes::StructureShape.new(name: 'DifferentialPrivacyTemplateParametersOutput')
    DifferentialPrivacyTemplateUpdateParameters = Shapes::StructureShape.new(name: 'DifferentialPrivacyTemplateUpdateParameters')
    DirectAnalysisConfigurationDetails = Shapes::StructureShape.new(name: 'DirectAnalysisConfigurationDetails')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    Double = Shapes::FloatShape.new(name: 'Double')
    Epsilon = Shapes::IntegerShape.new(name: 'Epsilon')
    ErrorMessageConfiguration = Shapes::StructureShape.new(name: 'ErrorMessageConfiguration')
    ErrorMessageType = Shapes::StringShape.new(name: 'ErrorMessageType')
    FilterableMemberStatus = Shapes::StringShape.new(name: 'FilterableMemberStatus')
    Float = Shapes::FloatShape.new(name: 'Float')
    GenericResourceName = Shapes::StringShape.new(name: 'GenericResourceName')
    GetAnalysisTemplateInput = Shapes::StructureShape.new(name: 'GetAnalysisTemplateInput')
    GetAnalysisTemplateOutput = Shapes::StructureShape.new(name: 'GetAnalysisTemplateOutput')
    GetCollaborationAnalysisTemplateInput = Shapes::StructureShape.new(name: 'GetCollaborationAnalysisTemplateInput')
    GetCollaborationAnalysisTemplateOutput = Shapes::StructureShape.new(name: 'GetCollaborationAnalysisTemplateOutput')
    GetCollaborationChangeRequestInput = Shapes::StructureShape.new(name: 'GetCollaborationChangeRequestInput')
    GetCollaborationChangeRequestOutput = Shapes::StructureShape.new(name: 'GetCollaborationChangeRequestOutput')
    GetCollaborationConfiguredAudienceModelAssociationInput = Shapes::StructureShape.new(name: 'GetCollaborationConfiguredAudienceModelAssociationInput')
    GetCollaborationConfiguredAudienceModelAssociationOutput = Shapes::StructureShape.new(name: 'GetCollaborationConfiguredAudienceModelAssociationOutput')
    GetCollaborationIdNamespaceAssociationInput = Shapes::StructureShape.new(name: 'GetCollaborationIdNamespaceAssociationInput')
    GetCollaborationIdNamespaceAssociationOutput = Shapes::StructureShape.new(name: 'GetCollaborationIdNamespaceAssociationOutput')
    GetCollaborationInput = Shapes::StructureShape.new(name: 'GetCollaborationInput')
    GetCollaborationOutput = Shapes::StructureShape.new(name: 'GetCollaborationOutput')
    GetCollaborationPrivacyBudgetTemplateInput = Shapes::StructureShape.new(name: 'GetCollaborationPrivacyBudgetTemplateInput')
    GetCollaborationPrivacyBudgetTemplateOutput = Shapes::StructureShape.new(name: 'GetCollaborationPrivacyBudgetTemplateOutput')
    GetConfiguredAudienceModelAssociationInput = Shapes::StructureShape.new(name: 'GetConfiguredAudienceModelAssociationInput')
    GetConfiguredAudienceModelAssociationOutput = Shapes::StructureShape.new(name: 'GetConfiguredAudienceModelAssociationOutput')
    GetConfiguredTableAnalysisRuleInput = Shapes::StructureShape.new(name: 'GetConfiguredTableAnalysisRuleInput')
    GetConfiguredTableAnalysisRuleOutput = Shapes::StructureShape.new(name: 'GetConfiguredTableAnalysisRuleOutput')
    GetConfiguredTableAssociationAnalysisRuleInput = Shapes::StructureShape.new(name: 'GetConfiguredTableAssociationAnalysisRuleInput')
    GetConfiguredTableAssociationAnalysisRuleOutput = Shapes::StructureShape.new(name: 'GetConfiguredTableAssociationAnalysisRuleOutput')
    GetConfiguredTableAssociationInput = Shapes::StructureShape.new(name: 'GetConfiguredTableAssociationInput')
    GetConfiguredTableAssociationOutput = Shapes::StructureShape.new(name: 'GetConfiguredTableAssociationOutput')
    GetConfiguredTableInput = Shapes::StructureShape.new(name: 'GetConfiguredTableInput')
    GetConfiguredTableOutput = Shapes::StructureShape.new(name: 'GetConfiguredTableOutput')
    GetIdMappingTableInput = Shapes::StructureShape.new(name: 'GetIdMappingTableInput')
    GetIdMappingTableOutput = Shapes::StructureShape.new(name: 'GetIdMappingTableOutput')
    GetIdNamespaceAssociationInput = Shapes::StructureShape.new(name: 'GetIdNamespaceAssociationInput')
    GetIdNamespaceAssociationOutput = Shapes::StructureShape.new(name: 'GetIdNamespaceAssociationOutput')
    GetMembershipInput = Shapes::StructureShape.new(name: 'GetMembershipInput')
    GetMembershipOutput = Shapes::StructureShape.new(name: 'GetMembershipOutput')
    GetPrivacyBudgetTemplateInput = Shapes::StructureShape.new(name: 'GetPrivacyBudgetTemplateInput')
    GetPrivacyBudgetTemplateOutput = Shapes::StructureShape.new(name: 'GetPrivacyBudgetTemplateOutput')
    GetProtectedJobInput = Shapes::StructureShape.new(name: 'GetProtectedJobInput')
    GetProtectedJobOutput = Shapes::StructureShape.new(name: 'GetProtectedJobOutput')
    GetProtectedQueryInput = Shapes::StructureShape.new(name: 'GetProtectedQueryInput')
    GetProtectedQueryOutput = Shapes::StructureShape.new(name: 'GetProtectedQueryOutput')
    GetSchemaAnalysisRuleInput = Shapes::StructureShape.new(name: 'GetSchemaAnalysisRuleInput')
    GetSchemaAnalysisRuleOutput = Shapes::StructureShape.new(name: 'GetSchemaAnalysisRuleOutput')
    GetSchemaInput = Shapes::StructureShape.new(name: 'GetSchemaInput')
    GetSchemaOutput = Shapes::StructureShape.new(name: 'GetSchemaOutput')
    GlueDatabaseName = Shapes::StringShape.new(name: 'GlueDatabaseName')
    GlueTableName = Shapes::StringShape.new(name: 'GlueTableName')
    GlueTableReference = Shapes::StructureShape.new(name: 'GlueTableReference')
    Hash = Shapes::StructureShape.new(name: 'Hash')
    HashList = Shapes::ListShape.new(name: 'HashList')
    IdMappingConfig = Shapes::StructureShape.new(name: 'IdMappingConfig')
    IdMappingTable = Shapes::StructureShape.new(name: 'IdMappingTable')
    IdMappingTableArn = Shapes::StringShape.new(name: 'IdMappingTableArn')
    IdMappingTableInputReferenceArn = Shapes::StringShape.new(name: 'IdMappingTableInputReferenceArn')
    IdMappingTableInputReferenceConfig = Shapes::StructureShape.new(name: 'IdMappingTableInputReferenceConfig')
    IdMappingTableInputReferenceProperties = Shapes::StructureShape.new(name: 'IdMappingTableInputReferenceProperties')
    IdMappingTableInputSource = Shapes::StructureShape.new(name: 'IdMappingTableInputSource')
    IdMappingTableInputSourceList = Shapes::ListShape.new(name: 'IdMappingTableInputSourceList')
    IdMappingTableSchemaTypeProperties = Shapes::StructureShape.new(name: 'IdMappingTableSchemaTypeProperties')
    IdMappingTableSummary = Shapes::StructureShape.new(name: 'IdMappingTableSummary')
    IdMappingTableSummaryList = Shapes::ListShape.new(name: 'IdMappingTableSummaryList')
    IdMappingWorkflowsSupported = Shapes::ListShape.new(name: 'IdMappingWorkflowsSupported')
    IdNamespaceAssociation = Shapes::StructureShape.new(name: 'IdNamespaceAssociation')
    IdNamespaceAssociationArn = Shapes::StringShape.new(name: 'IdNamespaceAssociationArn')
    IdNamespaceAssociationIdentifier = Shapes::StringShape.new(name: 'IdNamespaceAssociationIdentifier')
    IdNamespaceAssociationInputReferenceArn = Shapes::StringShape.new(name: 'IdNamespaceAssociationInputReferenceArn')
    IdNamespaceAssociationInputReferenceConfig = Shapes::StructureShape.new(name: 'IdNamespaceAssociationInputReferenceConfig')
    IdNamespaceAssociationInputReferenceProperties = Shapes::StructureShape.new(name: 'IdNamespaceAssociationInputReferenceProperties')
    IdNamespaceAssociationInputReferencePropertiesSummary = Shapes::StructureShape.new(name: 'IdNamespaceAssociationInputReferencePropertiesSummary')
    IdNamespaceAssociationSummary = Shapes::StructureShape.new(name: 'IdNamespaceAssociationSummary')
    IdNamespaceAssociationSummaryList = Shapes::ListShape.new(name: 'IdNamespaceAssociationSummaryList')
    IdNamespaceType = Shapes::StringShape.new(name: 'IdNamespaceType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobComputePaymentConfig = Shapes::StructureShape.new(name: 'JobComputePaymentConfig')
    JoinOperator = Shapes::StringShape.new(name: 'JoinOperator')
    JoinOperatorsList = Shapes::ListShape.new(name: 'JoinOperatorsList')
    JoinRequiredOption = Shapes::StringShape.new(name: 'JoinRequiredOption')
    KMSKeyArn = Shapes::StringShape.new(name: 'KMSKeyArn')
    KeyPrefix = Shapes::StringShape.new(name: 'KeyPrefix')
    ListAnalysisTemplatesInput = Shapes::StructureShape.new(name: 'ListAnalysisTemplatesInput')
    ListAnalysisTemplatesOutput = Shapes::StructureShape.new(name: 'ListAnalysisTemplatesOutput')
    ListCollaborationAnalysisTemplatesInput = Shapes::StructureShape.new(name: 'ListCollaborationAnalysisTemplatesInput')
    ListCollaborationAnalysisTemplatesOutput = Shapes::StructureShape.new(name: 'ListCollaborationAnalysisTemplatesOutput')
    ListCollaborationChangeRequestsInput = Shapes::StructureShape.new(name: 'ListCollaborationChangeRequestsInput')
    ListCollaborationChangeRequestsOutput = Shapes::StructureShape.new(name: 'ListCollaborationChangeRequestsOutput')
    ListCollaborationConfiguredAudienceModelAssociationsInput = Shapes::StructureShape.new(name: 'ListCollaborationConfiguredAudienceModelAssociationsInput')
    ListCollaborationConfiguredAudienceModelAssociationsOutput = Shapes::StructureShape.new(name: 'ListCollaborationConfiguredAudienceModelAssociationsOutput')
    ListCollaborationIdNamespaceAssociationsInput = Shapes::StructureShape.new(name: 'ListCollaborationIdNamespaceAssociationsInput')
    ListCollaborationIdNamespaceAssociationsOutput = Shapes::StructureShape.new(name: 'ListCollaborationIdNamespaceAssociationsOutput')
    ListCollaborationPrivacyBudgetTemplatesInput = Shapes::StructureShape.new(name: 'ListCollaborationPrivacyBudgetTemplatesInput')
    ListCollaborationPrivacyBudgetTemplatesOutput = Shapes::StructureShape.new(name: 'ListCollaborationPrivacyBudgetTemplatesOutput')
    ListCollaborationPrivacyBudgetsInput = Shapes::StructureShape.new(name: 'ListCollaborationPrivacyBudgetsInput')
    ListCollaborationPrivacyBudgetsOutput = Shapes::StructureShape.new(name: 'ListCollaborationPrivacyBudgetsOutput')
    ListCollaborationsInput = Shapes::StructureShape.new(name: 'ListCollaborationsInput')
    ListCollaborationsOutput = Shapes::StructureShape.new(name: 'ListCollaborationsOutput')
    ListConfiguredAudienceModelAssociationsInput = Shapes::StructureShape.new(name: 'ListConfiguredAudienceModelAssociationsInput')
    ListConfiguredAudienceModelAssociationsOutput = Shapes::StructureShape.new(name: 'ListConfiguredAudienceModelAssociationsOutput')
    ListConfiguredTableAssociationsInput = Shapes::StructureShape.new(name: 'ListConfiguredTableAssociationsInput')
    ListConfiguredTableAssociationsOutput = Shapes::StructureShape.new(name: 'ListConfiguredTableAssociationsOutput')
    ListConfiguredTablesInput = Shapes::StructureShape.new(name: 'ListConfiguredTablesInput')
    ListConfiguredTablesOutput = Shapes::StructureShape.new(name: 'ListConfiguredTablesOutput')
    ListIdMappingTablesInput = Shapes::StructureShape.new(name: 'ListIdMappingTablesInput')
    ListIdMappingTablesOutput = Shapes::StructureShape.new(name: 'ListIdMappingTablesOutput')
    ListIdNamespaceAssociationsInput = Shapes::StructureShape.new(name: 'ListIdNamespaceAssociationsInput')
    ListIdNamespaceAssociationsOutput = Shapes::StructureShape.new(name: 'ListIdNamespaceAssociationsOutput')
    ListMembersInput = Shapes::StructureShape.new(name: 'ListMembersInput')
    ListMembersOutput = Shapes::StructureShape.new(name: 'ListMembersOutput')
    ListMembershipsInput = Shapes::StructureShape.new(name: 'ListMembershipsInput')
    ListMembershipsOutput = Shapes::StructureShape.new(name: 'ListMembershipsOutput')
    ListPrivacyBudgetTemplatesInput = Shapes::StructureShape.new(name: 'ListPrivacyBudgetTemplatesInput')
    ListPrivacyBudgetTemplatesOutput = Shapes::StructureShape.new(name: 'ListPrivacyBudgetTemplatesOutput')
    ListPrivacyBudgetsInput = Shapes::StructureShape.new(name: 'ListPrivacyBudgetsInput')
    ListPrivacyBudgetsOutput = Shapes::StructureShape.new(name: 'ListPrivacyBudgetsOutput')
    ListProtectedJobsInput = Shapes::StructureShape.new(name: 'ListProtectedJobsInput')
    ListProtectedJobsOutput = Shapes::StructureShape.new(name: 'ListProtectedJobsOutput')
    ListProtectedQueriesInput = Shapes::StructureShape.new(name: 'ListProtectedQueriesInput')
    ListProtectedQueriesOutput = Shapes::StructureShape.new(name: 'ListProtectedQueriesOutput')
    ListSchemasInput = Shapes::StructureShape.new(name: 'ListSchemasInput')
    ListSchemasOutput = Shapes::StructureShape.new(name: 'ListSchemasOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MLMemberAbilities = Shapes::StructureShape.new(name: 'MLMemberAbilities')
    MLPaymentConfig = Shapes::StructureShape.new(name: 'MLPaymentConfig')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemberAbilities = Shapes::ListShape.new(name: 'MemberAbilities')
    MemberAbility = Shapes::StringShape.new(name: 'MemberAbility')
    MemberChangeSpecification = Shapes::StructureShape.new(name: 'MemberChangeSpecification')
    MemberList = Shapes::ListShape.new(name: 'MemberList')
    MemberSpecification = Shapes::StructureShape.new(name: 'MemberSpecification')
    MemberStatus = Shapes::StringShape.new(name: 'MemberStatus')
    MemberSummary = Shapes::StructureShape.new(name: 'MemberSummary')
    MemberSummaryList = Shapes::ListShape.new(name: 'MemberSummaryList')
    Membership = Shapes::StructureShape.new(name: 'Membership')
    MembershipArn = Shapes::StringShape.new(name: 'MembershipArn')
    MembershipIdentifier = Shapes::StringShape.new(name: 'MembershipIdentifier')
    MembershipJobComputePaymentConfig = Shapes::StructureShape.new(name: 'MembershipJobComputePaymentConfig')
    MembershipJobLogStatus = Shapes::StringShape.new(name: 'MembershipJobLogStatus')
    MembershipMLPaymentConfig = Shapes::StructureShape.new(name: 'MembershipMLPaymentConfig')
    MembershipModelInferencePaymentConfig = Shapes::StructureShape.new(name: 'MembershipModelInferencePaymentConfig')
    MembershipModelTrainingPaymentConfig = Shapes::StructureShape.new(name: 'MembershipModelTrainingPaymentConfig')
    MembershipPaymentConfiguration = Shapes::StructureShape.new(name: 'MembershipPaymentConfiguration')
    MembershipProtectedJobOutputConfiguration = Shapes::UnionShape.new(name: 'MembershipProtectedJobOutputConfiguration')
    MembershipProtectedJobResultConfiguration = Shapes::StructureShape.new(name: 'MembershipProtectedJobResultConfiguration')
    MembershipProtectedQueryOutputConfiguration = Shapes::UnionShape.new(name: 'MembershipProtectedQueryOutputConfiguration')
    MembershipProtectedQueryResultConfiguration = Shapes::StructureShape.new(name: 'MembershipProtectedQueryResultConfiguration')
    MembershipQueryComputePaymentConfig = Shapes::StructureShape.new(name: 'MembershipQueryComputePaymentConfig')
    MembershipQueryLogStatus = Shapes::StringShape.new(name: 'MembershipQueryLogStatus')
    MembershipStatus = Shapes::StringShape.new(name: 'MembershipStatus')
    MembershipSummary = Shapes::StructureShape.new(name: 'MembershipSummary')
    MembershipSummaryList = Shapes::ListShape.new(name: 'MembershipSummaryList')
    ModelInferencePaymentConfig = Shapes::StructureShape.new(name: 'ModelInferencePaymentConfig')
    ModelTrainingPaymentConfig = Shapes::StructureShape.new(name: 'ModelTrainingPaymentConfig')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParameterMap = Shapes::MapShape.new(name: 'ParameterMap')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterType = Shapes::StringShape.new(name: 'ParameterType')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    PaymentConfiguration = Shapes::StructureShape.new(name: 'PaymentConfiguration')
    PopulateIdMappingTableInput = Shapes::StructureShape.new(name: 'PopulateIdMappingTableInput')
    PopulateIdMappingTableOutput = Shapes::StructureShape.new(name: 'PopulateIdMappingTableOutput')
    PreviewPrivacyImpactInput = Shapes::StructureShape.new(name: 'PreviewPrivacyImpactInput')
    PreviewPrivacyImpactOutput = Shapes::StructureShape.new(name: 'PreviewPrivacyImpactOutput')
    PreviewPrivacyImpactParametersInput = Shapes::UnionShape.new(name: 'PreviewPrivacyImpactParametersInput')
    PrivacyBudget = Shapes::UnionShape.new(name: 'PrivacyBudget')
    PrivacyBudgetSummary = Shapes::StructureShape.new(name: 'PrivacyBudgetSummary')
    PrivacyBudgetSummaryList = Shapes::ListShape.new(name: 'PrivacyBudgetSummaryList')
    PrivacyBudgetTemplate = Shapes::StructureShape.new(name: 'PrivacyBudgetTemplate')
    PrivacyBudgetTemplateArn = Shapes::StringShape.new(name: 'PrivacyBudgetTemplateArn')
    PrivacyBudgetTemplateAutoRefresh = Shapes::StringShape.new(name: 'PrivacyBudgetTemplateAutoRefresh')
    PrivacyBudgetTemplateIdentifier = Shapes::StringShape.new(name: 'PrivacyBudgetTemplateIdentifier')
    PrivacyBudgetTemplateParametersInput = Shapes::UnionShape.new(name: 'PrivacyBudgetTemplateParametersInput')
    PrivacyBudgetTemplateParametersOutput = Shapes::UnionShape.new(name: 'PrivacyBudgetTemplateParametersOutput')
    PrivacyBudgetTemplateSummary = Shapes::StructureShape.new(name: 'PrivacyBudgetTemplateSummary')
    PrivacyBudgetTemplateSummaryList = Shapes::ListShape.new(name: 'PrivacyBudgetTemplateSummaryList')
    PrivacyBudgetTemplateUpdateParameters = Shapes::UnionShape.new(name: 'PrivacyBudgetTemplateUpdateParameters')
    PrivacyBudgetType = Shapes::StringShape.new(name: 'PrivacyBudgetType')
    PrivacyImpact = Shapes::UnionShape.new(name: 'PrivacyImpact')
    ProtectedJob = Shapes::StructureShape.new(name: 'ProtectedJob')
    ProtectedJobAnalysisType = Shapes::StringShape.new(name: 'ProtectedJobAnalysisType')
    ProtectedJobComputeConfiguration = Shapes::UnionShape.new(name: 'ProtectedJobComputeConfiguration')
    ProtectedJobConfigurationDetails = Shapes::UnionShape.new(name: 'ProtectedJobConfigurationDetails')
    ProtectedJobDirectAnalysisConfigurationDetails = Shapes::StructureShape.new(name: 'ProtectedJobDirectAnalysisConfigurationDetails')
    ProtectedJobError = Shapes::StructureShape.new(name: 'ProtectedJobError')
    ProtectedJobIdentifier = Shapes::StringShape.new(name: 'ProtectedJobIdentifier')
    ProtectedJobMemberOutputConfigurationInput = Shapes::StructureShape.new(name: 'ProtectedJobMemberOutputConfigurationInput')
    ProtectedJobMemberOutputConfigurationOutput = Shapes::StructureShape.new(name: 'ProtectedJobMemberOutputConfigurationOutput')
    ProtectedJobMemberOutputList = Shapes::ListShape.new(name: 'ProtectedJobMemberOutputList')
    ProtectedJobOutput = Shapes::UnionShape.new(name: 'ProtectedJobOutput')
    ProtectedJobOutputConfigurationInput = Shapes::UnionShape.new(name: 'ProtectedJobOutputConfigurationInput')
    ProtectedJobOutputConfigurationOutput = Shapes::UnionShape.new(name: 'ProtectedJobOutputConfigurationOutput')
    ProtectedJobParameters = Shapes::StructureShape.new(name: 'ProtectedJobParameters')
    ProtectedJobReceiverAccountIds = Shapes::ListShape.new(name: 'ProtectedJobReceiverAccountIds')
    ProtectedJobReceiverConfiguration = Shapes::StructureShape.new(name: 'ProtectedJobReceiverConfiguration')
    ProtectedJobReceiverConfigurations = Shapes::ListShape.new(name: 'ProtectedJobReceiverConfigurations')
    ProtectedJobResult = Shapes::StructureShape.new(name: 'ProtectedJobResult')
    ProtectedJobResultConfigurationInput = Shapes::StructureShape.new(name: 'ProtectedJobResultConfigurationInput')
    ProtectedJobResultConfigurationOutput = Shapes::StructureShape.new(name: 'ProtectedJobResultConfigurationOutput')
    ProtectedJobS3Output = Shapes::StructureShape.new(name: 'ProtectedJobS3Output')
    ProtectedJobS3OutputConfigurationInput = Shapes::StructureShape.new(name: 'ProtectedJobS3OutputConfigurationInput')
    ProtectedJobS3OutputConfigurationInputBucketString = Shapes::StringShape.new(name: 'ProtectedJobS3OutputConfigurationInputBucketString')
    ProtectedJobS3OutputConfigurationOutput = Shapes::StructureShape.new(name: 'ProtectedJobS3OutputConfigurationOutput')
    ProtectedJobS3OutputConfigurationOutputBucketString = Shapes::StringShape.new(name: 'ProtectedJobS3OutputConfigurationOutputBucketString')
    ProtectedJobSingleMemberOutput = Shapes::StructureShape.new(name: 'ProtectedJobSingleMemberOutput')
    ProtectedJobStatistics = Shapes::StructureShape.new(name: 'ProtectedJobStatistics')
    ProtectedJobStatus = Shapes::StringShape.new(name: 'ProtectedJobStatus')
    ProtectedJobSummary = Shapes::StructureShape.new(name: 'ProtectedJobSummary')
    ProtectedJobSummaryList = Shapes::ListShape.new(name: 'ProtectedJobSummaryList')
    ProtectedJobType = Shapes::StringShape.new(name: 'ProtectedJobType')
    ProtectedJobWorkerComputeConfiguration = Shapes::StructureShape.new(name: 'ProtectedJobWorkerComputeConfiguration')
    ProtectedJobWorkerComputeConfigurationNumberInteger = Shapes::IntegerShape.new(name: 'ProtectedJobWorkerComputeConfigurationNumberInteger')
    ProtectedJobWorkerComputeType = Shapes::StringShape.new(name: 'ProtectedJobWorkerComputeType')
    ProtectedQuery = Shapes::StructureShape.new(name: 'ProtectedQuery')
    ProtectedQueryDistributeOutput = Shapes::StructureShape.new(name: 'ProtectedQueryDistributeOutput')
    ProtectedQueryDistributeOutputConfiguration = Shapes::StructureShape.new(name: 'ProtectedQueryDistributeOutputConfiguration')
    ProtectedQueryDistributeOutputConfigurationLocation = Shapes::UnionShape.new(name: 'ProtectedQueryDistributeOutputConfigurationLocation')
    ProtectedQueryDistributeOutputConfigurationLocationsList = Shapes::ListShape.new(name: 'ProtectedQueryDistributeOutputConfigurationLocationsList')
    ProtectedQueryError = Shapes::StructureShape.new(name: 'ProtectedQueryError')
    ProtectedQueryIdentifier = Shapes::StringShape.new(name: 'ProtectedQueryIdentifier')
    ProtectedQueryMemberOutputConfiguration = Shapes::StructureShape.new(name: 'ProtectedQueryMemberOutputConfiguration')
    ProtectedQueryMemberOutputList = Shapes::ListShape.new(name: 'ProtectedQueryMemberOutputList')
    ProtectedQueryOutput = Shapes::UnionShape.new(name: 'ProtectedQueryOutput')
    ProtectedQueryOutputConfiguration = Shapes::UnionShape.new(name: 'ProtectedQueryOutputConfiguration')
    ProtectedQueryResult = Shapes::StructureShape.new(name: 'ProtectedQueryResult')
    ProtectedQueryResultConfiguration = Shapes::StructureShape.new(name: 'ProtectedQueryResultConfiguration')
    ProtectedQueryS3Output = Shapes::StructureShape.new(name: 'ProtectedQueryS3Output')
    ProtectedQueryS3OutputConfiguration = Shapes::StructureShape.new(name: 'ProtectedQueryS3OutputConfiguration')
    ProtectedQueryS3OutputConfigurationBucketString = Shapes::StringShape.new(name: 'ProtectedQueryS3OutputConfigurationBucketString')
    ProtectedQuerySQLParameters = Shapes::StructureShape.new(name: 'ProtectedQuerySQLParameters')
    ProtectedQuerySQLParametersQueryStringString = Shapes::StringShape.new(name: 'ProtectedQuerySQLParametersQueryStringString')
    ProtectedQuerySingleMemberOutput = Shapes::StructureShape.new(name: 'ProtectedQuerySingleMemberOutput')
    ProtectedQueryStatistics = Shapes::StructureShape.new(name: 'ProtectedQueryStatistics')
    ProtectedQueryStatus = Shapes::StringShape.new(name: 'ProtectedQueryStatus')
    ProtectedQuerySummary = Shapes::StructureShape.new(name: 'ProtectedQuerySummary')
    ProtectedQuerySummaryList = Shapes::ListShape.new(name: 'ProtectedQuerySummaryList')
    ProtectedQueryType = Shapes::StringShape.new(name: 'ProtectedQueryType')
    QueryComputePaymentConfig = Shapes::StructureShape.new(name: 'QueryComputePaymentConfig')
    QueryConstraint = Shapes::UnionShape.new(name: 'QueryConstraint')
    QueryConstraintList = Shapes::ListShape.new(name: 'QueryConstraintList')
    QueryConstraintRequireOverlap = Shapes::StructureShape.new(name: 'QueryConstraintRequireOverlap')
    QueryTables = Shapes::ListShape.new(name: 'QueryTables')
    ReceiverAccountIds = Shapes::ListShape.new(name: 'ReceiverAccountIds')
    ReceiverConfiguration = Shapes::StructureShape.new(name: 'ReceiverConfiguration')
    ReceiverConfigurationsList = Shapes::ListShape.new(name: 'ReceiverConfigurationsList')
    ResourceAlias = Shapes::StringShape.new(name: 'ResourceAlias')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResultFormat = Shapes::StringShape.new(name: 'ResultFormat')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3LocationBucketString = Shapes::StringShape.new(name: 'S3LocationBucketString')
    S3LocationKeyString = Shapes::StringShape.new(name: 'S3LocationKeyString')
    ScalarFunctions = Shapes::StringShape.new(name: 'ScalarFunctions')
    ScalarFunctionsList = Shapes::ListShape.new(name: 'ScalarFunctionsList')
    Schema = Shapes::StructureShape.new(name: 'Schema')
    SchemaAnalysisRuleList = Shapes::ListShape.new(name: 'SchemaAnalysisRuleList')
    SchemaAnalysisRuleRequest = Shapes::StructureShape.new(name: 'SchemaAnalysisRuleRequest')
    SchemaAnalysisRuleRequestList = Shapes::ListShape.new(name: 'SchemaAnalysisRuleRequestList')
    SchemaConfiguration = Shapes::StringShape.new(name: 'SchemaConfiguration')
    SchemaConfigurationList = Shapes::ListShape.new(name: 'SchemaConfigurationList')
    SchemaList = Shapes::ListShape.new(name: 'SchemaList')
    SchemaStatus = Shapes::StringShape.new(name: 'SchemaStatus')
    SchemaStatusDetail = Shapes::StructureShape.new(name: 'SchemaStatusDetail')
    SchemaStatusDetailList = Shapes::ListShape.new(name: 'SchemaStatusDetailList')
    SchemaStatusReason = Shapes::StructureShape.new(name: 'SchemaStatusReason')
    SchemaStatusReasonCode = Shapes::StringShape.new(name: 'SchemaStatusReasonCode')
    SchemaStatusReasonList = Shapes::ListShape.new(name: 'SchemaStatusReasonList')
    SchemaSummary = Shapes::StructureShape.new(name: 'SchemaSummary')
    SchemaSummaryList = Shapes::ListShape.new(name: 'SchemaSummaryList')
    SchemaType = Shapes::StringShape.new(name: 'SchemaType')
    SchemaTypeProperties = Shapes::UnionShape.new(name: 'SchemaTypeProperties')
    SecretsManagerArn = Shapes::StringShape.new(name: 'SecretsManagerArn')
    SelectedAnalysisMethod = Shapes::StringShape.new(name: 'SelectedAnalysisMethod')
    SelectedAnalysisMethods = Shapes::ListShape.new(name: 'SelectedAnalysisMethods')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SnowflakeAccountIdentifier = Shapes::StringShape.new(name: 'SnowflakeAccountIdentifier')
    SnowflakeDatabaseName = Shapes::StringShape.new(name: 'SnowflakeDatabaseName')
    SnowflakeSchemaName = Shapes::StringShape.new(name: 'SnowflakeSchemaName')
    SnowflakeTableName = Shapes::StringShape.new(name: 'SnowflakeTableName')
    SnowflakeTableReference = Shapes::StructureShape.new(name: 'SnowflakeTableReference')
    SnowflakeTableSchema = Shapes::UnionShape.new(name: 'SnowflakeTableSchema')
    SnowflakeTableSchemaList = Shapes::ListShape.new(name: 'SnowflakeTableSchemaList')
    SnowflakeTableSchemaV1 = Shapes::StructureShape.new(name: 'SnowflakeTableSchemaV1')
    StartProtectedJobInput = Shapes::StructureShape.new(name: 'StartProtectedJobInput')
    StartProtectedJobOutput = Shapes::StructureShape.new(name: 'StartProtectedJobOutput')
    StartProtectedQueryInput = Shapes::StructureShape.new(name: 'StartProtectedQueryInput')
    StartProtectedQueryOutput = Shapes::StructureShape.new(name: 'StartProtectedQueryOutput')
    String = Shapes::StringShape.new(name: 'String')
    TableAlias = Shapes::StringShape.new(name: 'TableAlias')
    TableAliasList = Shapes::ListShape.new(name: 'TableAliasList')
    TableDescription = Shapes::StringShape.new(name: 'TableDescription')
    TableReference = Shapes::UnionShape.new(name: 'TableReference')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetProtectedJobStatus = Shapes::StringShape.new(name: 'TargetProtectedJobStatus')
    TargetProtectedQueryStatus = Shapes::StringShape.new(name: 'TargetProtectedQueryStatus')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateAnalysisTemplateInput = Shapes::StructureShape.new(name: 'UpdateAnalysisTemplateInput')
    UpdateAnalysisTemplateOutput = Shapes::StructureShape.new(name: 'UpdateAnalysisTemplateOutput')
    UpdateCollaborationInput = Shapes::StructureShape.new(name: 'UpdateCollaborationInput')
    UpdateCollaborationOutput = Shapes::StructureShape.new(name: 'UpdateCollaborationOutput')
    UpdateConfiguredAudienceModelAssociationInput = Shapes::StructureShape.new(name: 'UpdateConfiguredAudienceModelAssociationInput')
    UpdateConfiguredAudienceModelAssociationOutput = Shapes::StructureShape.new(name: 'UpdateConfiguredAudienceModelAssociationOutput')
    UpdateConfiguredTableAnalysisRuleInput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableAnalysisRuleInput')
    UpdateConfiguredTableAnalysisRuleOutput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableAnalysisRuleOutput')
    UpdateConfiguredTableAssociationAnalysisRuleInput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableAssociationAnalysisRuleInput')
    UpdateConfiguredTableAssociationAnalysisRuleOutput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableAssociationAnalysisRuleOutput')
    UpdateConfiguredTableAssociationInput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableAssociationInput')
    UpdateConfiguredTableAssociationOutput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableAssociationOutput')
    UpdateConfiguredTableInput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableInput')
    UpdateConfiguredTableOutput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableOutput')
    UpdateIdMappingTableInput = Shapes::StructureShape.new(name: 'UpdateIdMappingTableInput')
    UpdateIdMappingTableOutput = Shapes::StructureShape.new(name: 'UpdateIdMappingTableOutput')
    UpdateIdNamespaceAssociationInput = Shapes::StructureShape.new(name: 'UpdateIdNamespaceAssociationInput')
    UpdateIdNamespaceAssociationOutput = Shapes::StructureShape.new(name: 'UpdateIdNamespaceAssociationOutput')
    UpdateMembershipInput = Shapes::StructureShape.new(name: 'UpdateMembershipInput')
    UpdateMembershipOutput = Shapes::StructureShape.new(name: 'UpdateMembershipOutput')
    UpdatePrivacyBudgetTemplateInput = Shapes::StructureShape.new(name: 'UpdatePrivacyBudgetTemplateInput')
    UpdatePrivacyBudgetTemplateOutput = Shapes::StructureShape.new(name: 'UpdatePrivacyBudgetTemplateOutput')
    UpdateProtectedJobInput = Shapes::StructureShape.new(name: 'UpdateProtectedJobInput')
    UpdateProtectedJobOutput = Shapes::StructureShape.new(name: 'UpdateProtectedJobOutput')
    UpdateProtectedQueryInput = Shapes::StructureShape.new(name: 'UpdateProtectedQueryInput')
    UpdateProtectedQueryOutput = Shapes::StructureShape.new(name: 'UpdateProtectedQueryOutput')
    UsersNoisePerQuery = Shapes::IntegerShape.new(name: 'UsersNoisePerQuery')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    WorkerComputeConfiguration = Shapes::StructureShape.new(name: 'WorkerComputeConfiguration')
    WorkerComputeConfigurationNumberInteger = Shapes::IntegerShape.new(name: 'WorkerComputeConfigurationNumberInteger')
    WorkerComputeType = Shapes::StringShape.new(name: 'WorkerComputeType')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.add_member(:reason, Shapes::ShapeRef.new(shape: AccessDeniedExceptionReason, location_name: "reason"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AggregateColumn.add_member(:column_names, Shapes::ShapeRef.new(shape: AggregateColumnColumnNamesList, required: true, location_name: "columnNames"))
    AggregateColumn.add_member(:function, Shapes::ShapeRef.new(shape: AggregateFunctionName, required: true, location_name: "function"))
    AggregateColumn.struct_class = Types::AggregateColumn

    AggregateColumnColumnNamesList.member = Shapes::ShapeRef.new(shape: AnalysisRuleColumnName)

    AggregationConstraint.add_member(:column_name, Shapes::ShapeRef.new(shape: AnalysisRuleColumnName, required: true, location_name: "columnName"))
    AggregationConstraint.add_member(:minimum, Shapes::ShapeRef.new(shape: AggregationConstraintMinimumInteger, required: true, location_name: "minimum"))
    AggregationConstraint.add_member(:type, Shapes::ShapeRef.new(shape: AggregationType, required: true, location_name: "type"))
    AggregationConstraint.struct_class = Types::AggregationConstraint

    AggregationConstraints.member = Shapes::ShapeRef.new(shape: AggregationConstraint)

    AllowedAdditionalAnalyses.member = Shapes::ShapeRef.new(shape: AdditionalAnalysesResourceArn)

    AllowedColumnList.member = Shapes::ShapeRef.new(shape: ColumnName)

    AllowedResultReceivers.member = Shapes::ShapeRef.new(shape: AccountId)

    AnalysisParameter.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "name"))
    AnalysisParameter.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, required: true, location_name: "type"))
    AnalysisParameter.add_member(:default_value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "defaultValue"))
    AnalysisParameter.struct_class = Types::AnalysisParameter

    AnalysisParameterList.member = Shapes::ShapeRef.new(shape: AnalysisParameter)

    AnalysisRule.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location_name: "collaborationId"))
    AnalysisRule.add_member(:type, Shapes::ShapeRef.new(shape: AnalysisRuleType, required: true, location_name: "type"))
    AnalysisRule.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    AnalysisRule.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    AnalysisRule.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    AnalysisRule.add_member(:policy, Shapes::ShapeRef.new(shape: AnalysisRulePolicy, required: true, location_name: "policy"))
    AnalysisRule.add_member(:collaboration_policy, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRulePolicy, location_name: "collaborationPolicy"))
    AnalysisRule.add_member(:consolidated_policy, Shapes::ShapeRef.new(shape: ConsolidatedPolicy, location_name: "consolidatedPolicy"))
    AnalysisRule.struct_class = Types::AnalysisRule

    AnalysisRuleAggregation.add_member(:aggregate_columns, Shapes::ShapeRef.new(shape: AnalysisRuleAggregationAggregateColumnsList, required: true, location_name: "aggregateColumns"))
    AnalysisRuleAggregation.add_member(:join_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, required: true, location_name: "joinColumns"))
    AnalysisRuleAggregation.add_member(:join_required, Shapes::ShapeRef.new(shape: JoinRequiredOption, location_name: "joinRequired"))
    AnalysisRuleAggregation.add_member(:allowed_join_operators, Shapes::ShapeRef.new(shape: JoinOperatorsList, location_name: "allowedJoinOperators"))
    AnalysisRuleAggregation.add_member(:dimension_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, required: true, location_name: "dimensionColumns"))
    AnalysisRuleAggregation.add_member(:scalar_functions, Shapes::ShapeRef.new(shape: ScalarFunctionsList, required: true, location_name: "scalarFunctions"))
    AnalysisRuleAggregation.add_member(:output_constraints, Shapes::ShapeRef.new(shape: AggregationConstraints, required: true, location_name: "outputConstraints"))
    AnalysisRuleAggregation.add_member(:additional_analyses, Shapes::ShapeRef.new(shape: AdditionalAnalyses, location_name: "additionalAnalyses"))
    AnalysisRuleAggregation.struct_class = Types::AnalysisRuleAggregation

    AnalysisRuleAggregationAggregateColumnsList.member = Shapes::ShapeRef.new(shape: AggregateColumn)

    AnalysisRuleColumnList.member = Shapes::ShapeRef.new(shape: AnalysisRuleColumnName)

    AnalysisRuleCustom.add_member(:allowed_analyses, Shapes::ShapeRef.new(shape: AnalysisRuleCustomAllowedAnalysesList, required: true, location_name: "allowedAnalyses"))
    AnalysisRuleCustom.add_member(:allowed_analysis_providers, Shapes::ShapeRef.new(shape: AnalysisRuleCustomAllowedAnalysisProvidersList, location_name: "allowedAnalysisProviders"))
    AnalysisRuleCustom.add_member(:additional_analyses, Shapes::ShapeRef.new(shape: AdditionalAnalyses, location_name: "additionalAnalyses"))
    AnalysisRuleCustom.add_member(:disallowed_output_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: "disallowedOutputColumns"))
    AnalysisRuleCustom.add_member(:differential_privacy, Shapes::ShapeRef.new(shape: DifferentialPrivacyConfiguration, location_name: "differentialPrivacy"))
    AnalysisRuleCustom.struct_class = Types::AnalysisRuleCustom

    AnalysisRuleCustomAllowedAnalysesList.member = Shapes::ShapeRef.new(shape: AnalysisTemplateArnOrQueryWildcard)

    AnalysisRuleCustomAllowedAnalysisProvidersList.member = Shapes::ShapeRef.new(shape: AccountId)

    AnalysisRuleIdMappingTable.add_member(:join_columns, Shapes::ShapeRef.new(shape: AnalysisRuleIdMappingTableJoinColumnsList, required: true, location_name: "joinColumns"))
    AnalysisRuleIdMappingTable.add_member(:query_constraints, Shapes::ShapeRef.new(shape: QueryConstraintList, required: true, location_name: "queryConstraints"))
    AnalysisRuleIdMappingTable.add_member(:dimension_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: "dimensionColumns"))
    AnalysisRuleIdMappingTable.struct_class = Types::AnalysisRuleIdMappingTable

    AnalysisRuleIdMappingTableJoinColumnsList.member = Shapes::ShapeRef.new(shape: AnalysisRuleColumnName)

    AnalysisRuleList.add_member(:join_columns, Shapes::ShapeRef.new(shape: AnalysisRuleListJoinColumnsList, required: true, location_name: "joinColumns"))
    AnalysisRuleList.add_member(:allowed_join_operators, Shapes::ShapeRef.new(shape: JoinOperatorsList, location_name: "allowedJoinOperators"))
    AnalysisRuleList.add_member(:list_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, required: true, location_name: "listColumns"))
    AnalysisRuleList.add_member(:additional_analyses, Shapes::ShapeRef.new(shape: AdditionalAnalyses, location_name: "additionalAnalyses"))
    AnalysisRuleList.struct_class = Types::AnalysisRuleList

    AnalysisRuleListJoinColumnsList.member = Shapes::ShapeRef.new(shape: AnalysisRuleColumnName)

    AnalysisRulePolicy.add_member(:v1, Shapes::ShapeRef.new(shape: AnalysisRulePolicyV1, location_name: "v1"))
    AnalysisRulePolicy.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AnalysisRulePolicy.add_member_subclass(:v1, Types::AnalysisRulePolicy::V1)
    AnalysisRulePolicy.add_member_subclass(:unknown, Types::AnalysisRulePolicy::Unknown)
    AnalysisRulePolicy.struct_class = Types::AnalysisRulePolicy

    AnalysisRulePolicyV1.add_member(:list, Shapes::ShapeRef.new(shape: AnalysisRuleList, location_name: "list"))
    AnalysisRulePolicyV1.add_member(:aggregation, Shapes::ShapeRef.new(shape: AnalysisRuleAggregation, location_name: "aggregation"))
    AnalysisRulePolicyV1.add_member(:custom, Shapes::ShapeRef.new(shape: AnalysisRuleCustom, location_name: "custom"))
    AnalysisRulePolicyV1.add_member(:id_mapping_table, Shapes::ShapeRef.new(shape: AnalysisRuleIdMappingTable, location_name: "idMappingTable"))
    AnalysisRulePolicyV1.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AnalysisRulePolicyV1.add_member_subclass(:list, Types::AnalysisRulePolicyV1::List)
    AnalysisRulePolicyV1.add_member_subclass(:aggregation, Types::AnalysisRulePolicyV1::Aggregation)
    AnalysisRulePolicyV1.add_member_subclass(:custom, Types::AnalysisRulePolicyV1::Custom)
    AnalysisRulePolicyV1.add_member_subclass(:id_mapping_table, Types::AnalysisRulePolicyV1::IdMappingTable)
    AnalysisRulePolicyV1.add_member_subclass(:unknown, Types::AnalysisRulePolicyV1::Unknown)
    AnalysisRulePolicyV1.struct_class = Types::AnalysisRulePolicyV1

    AnalysisRuleTypeList.member = Shapes::ShapeRef.new(shape: AnalysisRuleType)

    AnalysisSchema.add_member(:referenced_tables, Shapes::ShapeRef.new(shape: QueryTables, location_name: "referencedTables"))
    AnalysisSchema.struct_class = Types::AnalysisSchema

    AnalysisSource.add_member(:text, Shapes::ShapeRef.new(shape: AnalysisTemplateText, location_name: "text"))
    AnalysisSource.add_member(:artifacts, Shapes::ShapeRef.new(shape: AnalysisTemplateArtifacts, location_name: "artifacts"))
    AnalysisSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AnalysisSource.add_member_subclass(:text, Types::AnalysisSource::Text)
    AnalysisSource.add_member_subclass(:artifacts, Types::AnalysisSource::Artifacts)
    AnalysisSource.add_member_subclass(:unknown, Types::AnalysisSource::Unknown)
    AnalysisSource.struct_class = Types::AnalysisSource

    AnalysisSourceMetadata.add_member(:artifacts, Shapes::ShapeRef.new(shape: AnalysisTemplateArtifactMetadata, location_name: "artifacts"))
    AnalysisSourceMetadata.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AnalysisSourceMetadata.add_member_subclass(:artifacts, Types::AnalysisSourceMetadata::Artifacts)
    AnalysisSourceMetadata.add_member_subclass(:unknown, Types::AnalysisSourceMetadata::Unknown)
    AnalysisSourceMetadata.struct_class = Types::AnalysisSourceMetadata

    AnalysisTemplate.add_member(:id, Shapes::ShapeRef.new(shape: AnalysisTemplateIdentifier, required: true, location_name: "id"))
    AnalysisTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: AnalysisTemplateArn, required: true, location_name: "arn"))
    AnalysisTemplate.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    AnalysisTemplate.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    AnalysisTemplate.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipId"))
    AnalysisTemplate.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    AnalysisTemplate.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    AnalysisTemplate.add_member(:name, Shapes::ShapeRef.new(shape: ResourceAlias, required: true, location_name: "name"))
    AnalysisTemplate.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    AnalysisTemplate.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    AnalysisTemplate.add_member(:schema, Shapes::ShapeRef.new(shape: AnalysisSchema, required: true, location_name: "schema"))
    AnalysisTemplate.add_member(:format, Shapes::ShapeRef.new(shape: AnalysisFormat, required: true, location_name: "format"))
    AnalysisTemplate.add_member(:source, Shapes::ShapeRef.new(shape: AnalysisSource, required: true, location_name: "source"))
    AnalysisTemplate.add_member(:source_metadata, Shapes::ShapeRef.new(shape: AnalysisSourceMetadata, location_name: "sourceMetadata"))
    AnalysisTemplate.add_member(:analysis_parameters, Shapes::ShapeRef.new(shape: AnalysisParameterList, location_name: "analysisParameters"))
    AnalysisTemplate.add_member(:validations, Shapes::ShapeRef.new(shape: AnalysisTemplateValidationStatusDetailList, location_name: "validations"))
    AnalysisTemplate.add_member(:error_message_configuration, Shapes::ShapeRef.new(shape: ErrorMessageConfiguration, location_name: "errorMessageConfiguration"))
    AnalysisTemplate.struct_class = Types::AnalysisTemplate

    AnalysisTemplateArnList.member = Shapes::ShapeRef.new(shape: AnalysisTemplateArn)

    AnalysisTemplateArtifact.add_member(:location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "location"))
    AnalysisTemplateArtifact.struct_class = Types::AnalysisTemplateArtifact

    AnalysisTemplateArtifactList.member = Shapes::ShapeRef.new(shape: AnalysisTemplateArtifact)

    AnalysisTemplateArtifactMetadata.add_member(:entry_point_hash, Shapes::ShapeRef.new(shape: Hash, required: true, location_name: "entryPointHash"))
    AnalysisTemplateArtifactMetadata.add_member(:additional_artifact_hashes, Shapes::ShapeRef.new(shape: HashList, location_name: "additionalArtifactHashes"))
    AnalysisTemplateArtifactMetadata.struct_class = Types::AnalysisTemplateArtifactMetadata

    AnalysisTemplateArtifacts.add_member(:entry_point, Shapes::ShapeRef.new(shape: AnalysisTemplateArtifact, required: true, location_name: "entryPoint"))
    AnalysisTemplateArtifacts.add_member(:additional_artifacts, Shapes::ShapeRef.new(shape: AnalysisTemplateArtifactList, location_name: "additionalArtifacts"))
    AnalysisTemplateArtifacts.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    AnalysisTemplateArtifacts.struct_class = Types::AnalysisTemplateArtifacts

    AnalysisTemplateSummary.add_member(:arn, Shapes::ShapeRef.new(shape: AnalysisTemplateArn, required: true, location_name: "arn"))
    AnalysisTemplateSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    AnalysisTemplateSummary.add_member(:id, Shapes::ShapeRef.new(shape: AnalysisTemplateIdentifier, required: true, location_name: "id"))
    AnalysisTemplateSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceAlias, required: true, location_name: "name"))
    AnalysisTemplateSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    AnalysisTemplateSummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    AnalysisTemplateSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipId"))
    AnalysisTemplateSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    AnalysisTemplateSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    AnalysisTemplateSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    AnalysisTemplateSummary.struct_class = Types::AnalysisTemplateSummary

    AnalysisTemplateSummaryList.member = Shapes::ShapeRef.new(shape: AnalysisTemplateSummary)

    AnalysisTemplateValidationStatusDetail.add_member(:type, Shapes::ShapeRef.new(shape: AnalysisTemplateValidationType, required: true, location_name: "type"))
    AnalysisTemplateValidationStatusDetail.add_member(:status, Shapes::ShapeRef.new(shape: AnalysisTemplateValidationStatus, required: true, location_name: "status"))
    AnalysisTemplateValidationStatusDetail.add_member(:reasons, Shapes::ShapeRef.new(shape: AnalysisTemplateValidationStatusReasonList, location_name: "reasons"))
    AnalysisTemplateValidationStatusDetail.struct_class = Types::AnalysisTemplateValidationStatusDetail

    AnalysisTemplateValidationStatusDetailList.member = Shapes::ShapeRef.new(shape: AnalysisTemplateValidationStatusDetail)

    AnalysisTemplateValidationStatusReason.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AnalysisTemplateValidationStatusReason.struct_class = Types::AnalysisTemplateValidationStatusReason

    AnalysisTemplateValidationStatusReasonList.member = Shapes::ShapeRef.new(shape: AnalysisTemplateValidationStatusReason)

    AthenaTableReference.add_member(:work_group, Shapes::ShapeRef.new(shape: AthenaWorkGroup, required: true, location_name: "workGroup"))
    AthenaTableReference.add_member(:output_location, Shapes::ShapeRef.new(shape: AthenaOutputLocation, location_name: "outputLocation"))
    AthenaTableReference.add_member(:database_name, Shapes::ShapeRef.new(shape: AthenaDatabaseName, required: true, location_name: "databaseName"))
    AthenaTableReference.add_member(:table_name, Shapes::ShapeRef.new(shape: AthenaTableName, required: true, location_name: "tableName"))
    AthenaTableReference.struct_class = Types::AthenaTableReference

    AutoApprovedChangeTypeList.member = Shapes::ShapeRef.new(shape: AutoApprovedChangeType)

    BatchGetCollaborationAnalysisTemplateError.add_member(:arn, Shapes::ShapeRef.new(shape: AnalysisTemplateArn, required: true, location_name: "arn"))
    BatchGetCollaborationAnalysisTemplateError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    BatchGetCollaborationAnalysisTemplateError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BatchGetCollaborationAnalysisTemplateError.struct_class = Types::BatchGetCollaborationAnalysisTemplateError

    BatchGetCollaborationAnalysisTemplateErrorList.member = Shapes::ShapeRef.new(shape: BatchGetCollaborationAnalysisTemplateError)

    BatchGetCollaborationAnalysisTemplateInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    BatchGetCollaborationAnalysisTemplateInput.add_member(:analysis_template_arns, Shapes::ShapeRef.new(shape: AnalysisTemplateArnList, required: true, location_name: "analysisTemplateArns"))
    BatchGetCollaborationAnalysisTemplateInput.struct_class = Types::BatchGetCollaborationAnalysisTemplateInput

    BatchGetCollaborationAnalysisTemplateOutput.add_member(:collaboration_analysis_templates, Shapes::ShapeRef.new(shape: CollaborationAnalysisTemplateList, required: true, location_name: "collaborationAnalysisTemplates"))
    BatchGetCollaborationAnalysisTemplateOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetCollaborationAnalysisTemplateErrorList, required: true, location_name: "errors"))
    BatchGetCollaborationAnalysisTemplateOutput.struct_class = Types::BatchGetCollaborationAnalysisTemplateOutput

    BatchGetSchemaAnalysisRuleError.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    BatchGetSchemaAnalysisRuleError.add_member(:type, Shapes::ShapeRef.new(shape: AnalysisRuleType, required: true, location_name: "type"))
    BatchGetSchemaAnalysisRuleError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    BatchGetSchemaAnalysisRuleError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BatchGetSchemaAnalysisRuleError.struct_class = Types::BatchGetSchemaAnalysisRuleError

    BatchGetSchemaAnalysisRuleErrorList.member = Shapes::ShapeRef.new(shape: BatchGetSchemaAnalysisRuleError)

    BatchGetSchemaAnalysisRuleInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    BatchGetSchemaAnalysisRuleInput.add_member(:schema_analysis_rule_requests, Shapes::ShapeRef.new(shape: SchemaAnalysisRuleRequestList, required: true, location_name: "schemaAnalysisRuleRequests"))
    BatchGetSchemaAnalysisRuleInput.struct_class = Types::BatchGetSchemaAnalysisRuleInput

    BatchGetSchemaAnalysisRuleOutput.add_member(:analysis_rules, Shapes::ShapeRef.new(shape: SchemaAnalysisRuleList, required: true, location_name: "analysisRules"))
    BatchGetSchemaAnalysisRuleOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetSchemaAnalysisRuleErrorList, required: true, location_name: "errors"))
    BatchGetSchemaAnalysisRuleOutput.struct_class = Types::BatchGetSchemaAnalysisRuleOutput

    BatchGetSchemaError.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    BatchGetSchemaError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    BatchGetSchemaError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BatchGetSchemaError.struct_class = Types::BatchGetSchemaError

    BatchGetSchemaErrorList.member = Shapes::ShapeRef.new(shape: BatchGetSchemaError)

    BatchGetSchemaInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    BatchGetSchemaInput.add_member(:names, Shapes::ShapeRef.new(shape: TableAliasList, required: true, location_name: "names"))
    BatchGetSchemaInput.struct_class = Types::BatchGetSchemaInput

    BatchGetSchemaOutput.add_member(:schemas, Shapes::ShapeRef.new(shape: SchemaList, required: true, location_name: "schemas"))
    BatchGetSchemaOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetSchemaErrorList, required: true, location_name: "errors"))
    BatchGetSchemaOutput.struct_class = Types::BatchGetSchemaOutput

    BilledJobResourceUtilization.add_member(:units, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "units"))
    BilledJobResourceUtilization.struct_class = Types::BilledJobResourceUtilization

    BilledResourceUtilization.add_member(:units, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "units"))
    BilledResourceUtilization.struct_class = Types::BilledResourceUtilization

    Change.add_member(:specification_type, Shapes::ShapeRef.new(shape: ChangeSpecificationType, required: true, location_name: "specificationType"))
    Change.add_member(:specification, Shapes::ShapeRef.new(shape: ChangeSpecification, required: true, location_name: "specification"))
    Change.add_member(:types, Shapes::ShapeRef.new(shape: ChangeTypeList, required: true, location_name: "types"))
    Change.struct_class = Types::Change

    ChangeInput.add_member(:specification_type, Shapes::ShapeRef.new(shape: ChangeSpecificationType, required: true, location_name: "specificationType"))
    ChangeInput.add_member(:specification, Shapes::ShapeRef.new(shape: ChangeSpecification, required: true, location_name: "specification"))
    ChangeInput.struct_class = Types::ChangeInput

    ChangeInputList.member = Shapes::ShapeRef.new(shape: ChangeInput)

    ChangeList.member = Shapes::ShapeRef.new(shape: Change)

    ChangeSpecification.add_member(:member, Shapes::ShapeRef.new(shape: MemberChangeSpecification, location_name: "member"))
    ChangeSpecification.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ChangeSpecification.add_member_subclass(:member, Types::ChangeSpecification::Member)
    ChangeSpecification.add_member_subclass(:unknown, Types::ChangeSpecification::Unknown)
    ChangeSpecification.struct_class = Types::ChangeSpecification

    ChangeTypeList.member = Shapes::ShapeRef.new(shape: ChangeType)

    Collaboration.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    Collaboration.add_member(:arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "arn"))
    Collaboration.add_member(:name, Shapes::ShapeRef.new(shape: CollaborationName, required: true, location_name: "name"))
    Collaboration.add_member(:description, Shapes::ShapeRef.new(shape: CollaborationDescription, location_name: "description"))
    Collaboration.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    Collaboration.add_member(:creator_display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "creatorDisplayName"))
    Collaboration.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    Collaboration.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    Collaboration.add_member(:member_status, Shapes::ShapeRef.new(shape: MemberStatus, required: true, location_name: "memberStatus"))
    Collaboration.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, location_name: "membershipId"))
    Collaboration.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, location_name: "membershipArn"))
    Collaboration.add_member(:data_encryption_metadata, Shapes::ShapeRef.new(shape: DataEncryptionMetadata, location_name: "dataEncryptionMetadata"))
    Collaboration.add_member(:query_log_status, Shapes::ShapeRef.new(shape: CollaborationQueryLogStatus, required: true, location_name: "queryLogStatus"))
    Collaboration.add_member(:job_log_status, Shapes::ShapeRef.new(shape: CollaborationJobLogStatus, location_name: "jobLogStatus"))
    Collaboration.add_member(:analytics_engine, Shapes::ShapeRef.new(shape: AnalyticsEngine, location_name: "analyticsEngine"))
    Collaboration.add_member(:auto_approved_change_types, Shapes::ShapeRef.new(shape: AutoApprovedChangeTypeList, location_name: "autoApprovedChangeTypes"))
    Collaboration.struct_class = Types::Collaboration

    CollaborationAnalysisTemplate.add_member(:id, Shapes::ShapeRef.new(shape: AnalysisTemplateIdentifier, required: true, location_name: "id"))
    CollaborationAnalysisTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: AnalysisTemplateArn, required: true, location_name: "arn"))
    CollaborationAnalysisTemplate.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    CollaborationAnalysisTemplate.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    CollaborationAnalysisTemplate.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CollaborationAnalysisTemplate.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationAnalysisTemplate.add_member(:name, Shapes::ShapeRef.new(shape: ResourceAlias, required: true, location_name: "name"))
    CollaborationAnalysisTemplate.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    CollaborationAnalysisTemplate.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    CollaborationAnalysisTemplate.add_member(:schema, Shapes::ShapeRef.new(shape: AnalysisSchema, required: true, location_name: "schema"))
    CollaborationAnalysisTemplate.add_member(:format, Shapes::ShapeRef.new(shape: AnalysisFormat, required: true, location_name: "format"))
    CollaborationAnalysisTemplate.add_member(:source, Shapes::ShapeRef.new(shape: AnalysisSource, location_name: "source"))
    CollaborationAnalysisTemplate.add_member(:source_metadata, Shapes::ShapeRef.new(shape: AnalysisSourceMetadata, location_name: "sourceMetadata"))
    CollaborationAnalysisTemplate.add_member(:analysis_parameters, Shapes::ShapeRef.new(shape: AnalysisParameterList, location_name: "analysisParameters"))
    CollaborationAnalysisTemplate.add_member(:validations, Shapes::ShapeRef.new(shape: AnalysisTemplateValidationStatusDetailList, location_name: "validations"))
    CollaborationAnalysisTemplate.add_member(:error_message_configuration, Shapes::ShapeRef.new(shape: ErrorMessageConfiguration, location_name: "errorMessageConfiguration"))
    CollaborationAnalysisTemplate.struct_class = Types::CollaborationAnalysisTemplate

    CollaborationAnalysisTemplateList.member = Shapes::ShapeRef.new(shape: CollaborationAnalysisTemplate)

    CollaborationAnalysisTemplateSummary.add_member(:arn, Shapes::ShapeRef.new(shape: AnalysisTemplateArn, required: true, location_name: "arn"))
    CollaborationAnalysisTemplateSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    CollaborationAnalysisTemplateSummary.add_member(:id, Shapes::ShapeRef.new(shape: AnalysisTemplateIdentifier, required: true, location_name: "id"))
    CollaborationAnalysisTemplateSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceAlias, required: true, location_name: "name"))
    CollaborationAnalysisTemplateSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    CollaborationAnalysisTemplateSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    CollaborationAnalysisTemplateSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    CollaborationAnalysisTemplateSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationAnalysisTemplateSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CollaborationAnalysisTemplateSummary.struct_class = Types::CollaborationAnalysisTemplateSummary

    CollaborationAnalysisTemplateSummaryList.member = Shapes::ShapeRef.new(shape: CollaborationAnalysisTemplateSummary)

    CollaborationChangeRequest.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    CollaborationChangeRequest.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    CollaborationChangeRequest.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    CollaborationChangeRequest.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    CollaborationChangeRequest.add_member(:status, Shapes::ShapeRef.new(shape: ChangeRequestStatus, required: true, location_name: "status"))
    CollaborationChangeRequest.add_member(:is_auto_approved, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isAutoApproved"))
    CollaborationChangeRequest.add_member(:changes, Shapes::ShapeRef.new(shape: ChangeList, required: true, location_name: "changes"))
    CollaborationChangeRequest.struct_class = Types::CollaborationChangeRequest

    CollaborationChangeRequestSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    CollaborationChangeRequestSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    CollaborationChangeRequestSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    CollaborationChangeRequestSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    CollaborationChangeRequestSummary.add_member(:status, Shapes::ShapeRef.new(shape: ChangeRequestStatus, required: true, location_name: "status"))
    CollaborationChangeRequestSummary.add_member(:is_auto_approved, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isAutoApproved"))
    CollaborationChangeRequestSummary.add_member(:changes, Shapes::ShapeRef.new(shape: ChangeList, required: true, location_name: "changes"))
    CollaborationChangeRequestSummary.struct_class = Types::CollaborationChangeRequestSummary

    CollaborationChangeRequestSummaryList.member = Shapes::ShapeRef.new(shape: CollaborationChangeRequestSummary)

    CollaborationConfiguredAudienceModelAssociation.add_member(:id, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, required: true, location_name: "id"))
    CollaborationConfiguredAudienceModelAssociation.add_member(:arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationArn, required: true, location_name: "arn"))
    CollaborationConfiguredAudienceModelAssociation.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    CollaborationConfiguredAudienceModelAssociation.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    CollaborationConfiguredAudienceModelAssociation.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    CollaborationConfiguredAudienceModelAssociation.add_member(:name, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationName, required: true, location_name: "name"))
    CollaborationConfiguredAudienceModelAssociation.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CollaborationConfiguredAudienceModelAssociation.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationConfiguredAudienceModelAssociation.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    CollaborationConfiguredAudienceModelAssociation.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    CollaborationConfiguredAudienceModelAssociation.struct_class = Types::CollaborationConfiguredAudienceModelAssociation

    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationArn, required: true, location_name: "arn"))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:id, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, required: true, location_name: "id"))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationName, required: true, location_name: "name"))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationConfiguredAudienceModelAssociationSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CollaborationConfiguredAudienceModelAssociationSummary.struct_class = Types::CollaborationConfiguredAudienceModelAssociationSummary

    CollaborationConfiguredAudienceModelAssociationSummaryList.member = Shapes::ShapeRef.new(shape: CollaborationConfiguredAudienceModelAssociationSummary)

    CollaborationIdNamespaceAssociation.add_member(:id, Shapes::ShapeRef.new(shape: IdNamespaceAssociationIdentifier, required: true, location_name: "id"))
    CollaborationIdNamespaceAssociation.add_member(:arn, Shapes::ShapeRef.new(shape: IdNamespaceAssociationArn, required: true, location_name: "arn"))
    CollaborationIdNamespaceAssociation.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    CollaborationIdNamespaceAssociation.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    CollaborationIdNamespaceAssociation.add_member(:name, Shapes::ShapeRef.new(shape: GenericResourceName, required: true, location_name: "name"))
    CollaborationIdNamespaceAssociation.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CollaborationIdNamespaceAssociation.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationIdNamespaceAssociation.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    CollaborationIdNamespaceAssociation.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    CollaborationIdNamespaceAssociation.add_member(:input_reference_config, Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceConfig, required: true, location_name: "inputReferenceConfig"))
    CollaborationIdNamespaceAssociation.add_member(:input_reference_properties, Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceProperties, required: true, location_name: "inputReferenceProperties"))
    CollaborationIdNamespaceAssociation.add_member(:id_mapping_config, Shapes::ShapeRef.new(shape: IdMappingConfig, location_name: "idMappingConfig"))
    CollaborationIdNamespaceAssociation.struct_class = Types::CollaborationIdNamespaceAssociation

    CollaborationIdNamespaceAssociationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: IdNamespaceAssociationArn, required: true, location_name: "arn"))
    CollaborationIdNamespaceAssociationSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    CollaborationIdNamespaceAssociationSummary.add_member(:id, Shapes::ShapeRef.new(shape: IdNamespaceAssociationIdentifier, required: true, location_name: "id"))
    CollaborationIdNamespaceAssociationSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    CollaborationIdNamespaceAssociationSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    CollaborationIdNamespaceAssociationSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    CollaborationIdNamespaceAssociationSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationIdNamespaceAssociationSummary.add_member(:input_reference_config, Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceConfig, required: true, location_name: "inputReferenceConfig"))
    CollaborationIdNamespaceAssociationSummary.add_member(:name, Shapes::ShapeRef.new(shape: GenericResourceName, required: true, location_name: "name"))
    CollaborationIdNamespaceAssociationSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CollaborationIdNamespaceAssociationSummary.add_member(:input_reference_properties, Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferencePropertiesSummary, required: true, location_name: "inputReferenceProperties"))
    CollaborationIdNamespaceAssociationSummary.struct_class = Types::CollaborationIdNamespaceAssociationSummary

    CollaborationIdNamespaceAssociationSummaryList.member = Shapes::ShapeRef.new(shape: CollaborationIdNamespaceAssociationSummary)

    CollaborationPrivacyBudgetSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    CollaborationPrivacyBudgetSummary.add_member(:privacy_budget_template_id, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, required: true, location_name: "privacyBudgetTemplateId"))
    CollaborationPrivacyBudgetSummary.add_member(:privacy_budget_template_arn, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateArn, required: true, location_name: "privacyBudgetTemplateArn"))
    CollaborationPrivacyBudgetSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    CollaborationPrivacyBudgetSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    CollaborationPrivacyBudgetSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationPrivacyBudgetSummary.add_member(:type, Shapes::ShapeRef.new(shape: PrivacyBudgetType, required: true, location_name: "type"))
    CollaborationPrivacyBudgetSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    CollaborationPrivacyBudgetSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    CollaborationPrivacyBudgetSummary.add_member(:budget, Shapes::ShapeRef.new(shape: PrivacyBudget, required: true, location_name: "budget"))
    CollaborationPrivacyBudgetSummary.struct_class = Types::CollaborationPrivacyBudgetSummary

    CollaborationPrivacyBudgetSummaryList.member = Shapes::ShapeRef.new(shape: CollaborationPrivacyBudgetSummary)

    CollaborationPrivacyBudgetTemplate.add_member(:id, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, required: true, location_name: "id"))
    CollaborationPrivacyBudgetTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateArn, required: true, location_name: "arn"))
    CollaborationPrivacyBudgetTemplate.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    CollaborationPrivacyBudgetTemplate.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    CollaborationPrivacyBudgetTemplate.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationPrivacyBudgetTemplate.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    CollaborationPrivacyBudgetTemplate.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    CollaborationPrivacyBudgetTemplate.add_member(:privacy_budget_type, Shapes::ShapeRef.new(shape: PrivacyBudgetType, required: true, location_name: "privacyBudgetType"))
    CollaborationPrivacyBudgetTemplate.add_member(:auto_refresh, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateAutoRefresh, required: true, location_name: "autoRefresh"))
    CollaborationPrivacyBudgetTemplate.add_member(:parameters, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateParametersOutput, required: true, location_name: "parameters"))
    CollaborationPrivacyBudgetTemplate.struct_class = Types::CollaborationPrivacyBudgetTemplate

    CollaborationPrivacyBudgetTemplateSummary.add_member(:id, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, required: true, location_name: "id"))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:arn, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateArn, required: true, location_name: "arn"))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:privacy_budget_type, Shapes::ShapeRef.new(shape: PrivacyBudgetType, required: true, location_name: "privacyBudgetType"))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    CollaborationPrivacyBudgetTemplateSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    CollaborationPrivacyBudgetTemplateSummary.struct_class = Types::CollaborationPrivacyBudgetTemplateSummary

    CollaborationPrivacyBudgetTemplateSummaryList.member = Shapes::ShapeRef.new(shape: CollaborationPrivacyBudgetTemplateSummary)

    CollaborationSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    CollaborationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "arn"))
    CollaborationSummary.add_member(:name, Shapes::ShapeRef.new(shape: CollaborationName, required: true, location_name: "name"))
    CollaborationSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    CollaborationSummary.add_member(:creator_display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "creatorDisplayName"))
    CollaborationSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    CollaborationSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    CollaborationSummary.add_member(:member_status, Shapes::ShapeRef.new(shape: MemberStatus, required: true, location_name: "memberStatus"))
    CollaborationSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, location_name: "membershipId"))
    CollaborationSummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, location_name: "membershipArn"))
    CollaborationSummary.add_member(:analytics_engine, Shapes::ShapeRef.new(shape: AnalyticsEngine, location_name: "analyticsEngine"))
    CollaborationSummary.struct_class = Types::CollaborationSummary

    CollaborationSummaryList.member = Shapes::ShapeRef.new(shape: CollaborationSummary)

    Column.add_member(:name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "name"))
    Column.add_member(:type, Shapes::ShapeRef.new(shape: ColumnTypeString, required: true, location_name: "type"))
    Column.struct_class = Types::Column

    ColumnList.member = Shapes::ShapeRef.new(shape: Column)

    ComputeConfiguration.add_member(:worker, Shapes::ShapeRef.new(shape: WorkerComputeConfiguration, location_name: "worker"))
    ComputeConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ComputeConfiguration.add_member_subclass(:worker, Types::ComputeConfiguration::Worker)
    ComputeConfiguration.add_member_subclass(:unknown, Types::ComputeConfiguration::Unknown)
    ComputeConfiguration.struct_class = Types::ComputeConfiguration

    ConfigurationDetails.add_member(:direct_analysis_configuration_details, Shapes::ShapeRef.new(shape: DirectAnalysisConfigurationDetails, location_name: "directAnalysisConfigurationDetails"))
    ConfigurationDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConfigurationDetails.add_member_subclass(:direct_analysis_configuration_details, Types::ConfigurationDetails::DirectAnalysisConfigurationDetails)
    ConfigurationDetails.add_member_subclass(:unknown, Types::ConfigurationDetails::Unknown)
    ConfigurationDetails.struct_class = Types::ConfigurationDetails

    ConfiguredAudienceModelAssociation.add_member(:id, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, required: true, location_name: "id"))
    ConfiguredAudienceModelAssociation.add_member(:arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationArn, required: true, location_name: "arn"))
    ConfiguredAudienceModelAssociation.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    ConfiguredAudienceModelAssociation.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipId"))
    ConfiguredAudienceModelAssociation.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    ConfiguredAudienceModelAssociation.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    ConfiguredAudienceModelAssociation.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    ConfiguredAudienceModelAssociation.add_member(:name, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationName, required: true, location_name: "name"))
    ConfiguredAudienceModelAssociation.add_member(:manage_resource_policies, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "manageResourcePolicies"))
    ConfiguredAudienceModelAssociation.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    ConfiguredAudienceModelAssociation.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredAudienceModelAssociation.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredAudienceModelAssociation.struct_class = Types::ConfiguredAudienceModelAssociation

    ConfiguredAudienceModelAssociationSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location_name: "membershipId"))
    ConfiguredAudienceModelAssociationSummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    ConfiguredAudienceModelAssociationSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    ConfiguredAudienceModelAssociationSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    ConfiguredAudienceModelAssociationSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredAudienceModelAssociationSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredAudienceModelAssociationSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    ConfiguredAudienceModelAssociationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationArn, required: true, location_name: "arn"))
    ConfiguredAudienceModelAssociationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationName, required: true, location_name: "name"))
    ConfiguredAudienceModelAssociationSummary.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    ConfiguredAudienceModelAssociationSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    ConfiguredAudienceModelAssociationSummary.struct_class = Types::ConfiguredAudienceModelAssociationSummary

    ConfiguredAudienceModelAssociationSummaryList.member = Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationSummary)

    ConfiguredTable.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    ConfiguredTable.add_member(:arn, Shapes::ShapeRef.new(shape: ConfiguredTableArn, required: true, location_name: "arn"))
    ConfiguredTable.add_member(:name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "name"))
    ConfiguredTable.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "description"))
    ConfiguredTable.add_member(:table_reference, Shapes::ShapeRef.new(shape: TableReference, required: true, location_name: "tableReference"))
    ConfiguredTable.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredTable.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredTable.add_member(:analysis_rule_types, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleTypeList, required: true, location_name: "analysisRuleTypes"))
    ConfiguredTable.add_member(:analysis_method, Shapes::ShapeRef.new(shape: AnalysisMethod, required: true, location_name: "analysisMethod"))
    ConfiguredTable.add_member(:allowed_columns, Shapes::ShapeRef.new(shape: AllowedColumnList, required: true, location_name: "allowedColumns"))
    ConfiguredTable.add_member(:selected_analysis_methods, Shapes::ShapeRef.new(shape: SelectedAnalysisMethods, location_name: "selectedAnalysisMethods"))
    ConfiguredTable.struct_class = Types::ConfiguredTable

    ConfiguredTableAnalysisRule.add_member(:configured_table_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "configuredTableId"))
    ConfiguredTableAnalysisRule.add_member(:configured_table_arn, Shapes::ShapeRef.new(shape: ConfiguredTableArn, required: true, location_name: "configuredTableArn"))
    ConfiguredTableAnalysisRule.add_member(:policy, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRulePolicy, required: true, location_name: "policy"))
    ConfiguredTableAnalysisRule.add_member(:type, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, required: true, location_name: "type"))
    ConfiguredTableAnalysisRule.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredTableAnalysisRule.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredTableAnalysisRule.struct_class = Types::ConfiguredTableAnalysisRule

    ConfiguredTableAnalysisRulePolicy.add_member(:v1, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRulePolicyV1, location_name: "v1"))
    ConfiguredTableAnalysisRulePolicy.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConfiguredTableAnalysisRulePolicy.add_member_subclass(:v1, Types::ConfiguredTableAnalysisRulePolicy::V1)
    ConfiguredTableAnalysisRulePolicy.add_member_subclass(:unknown, Types::ConfiguredTableAnalysisRulePolicy::Unknown)
    ConfiguredTableAnalysisRulePolicy.struct_class = Types::ConfiguredTableAnalysisRulePolicy

    ConfiguredTableAnalysisRulePolicyV1.add_member(:list, Shapes::ShapeRef.new(shape: AnalysisRuleList, location_name: "list"))
    ConfiguredTableAnalysisRulePolicyV1.add_member(:aggregation, Shapes::ShapeRef.new(shape: AnalysisRuleAggregation, location_name: "aggregation"))
    ConfiguredTableAnalysisRulePolicyV1.add_member(:custom, Shapes::ShapeRef.new(shape: AnalysisRuleCustom, location_name: "custom"))
    ConfiguredTableAnalysisRulePolicyV1.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConfiguredTableAnalysisRulePolicyV1.add_member_subclass(:list, Types::ConfiguredTableAnalysisRulePolicyV1::List)
    ConfiguredTableAnalysisRulePolicyV1.add_member_subclass(:aggregation, Types::ConfiguredTableAnalysisRulePolicyV1::Aggregation)
    ConfiguredTableAnalysisRulePolicyV1.add_member_subclass(:custom, Types::ConfiguredTableAnalysisRulePolicyV1::Custom)
    ConfiguredTableAnalysisRulePolicyV1.add_member_subclass(:unknown, Types::ConfiguredTableAnalysisRulePolicyV1::Unknown)
    ConfiguredTableAnalysisRulePolicyV1.struct_class = Types::ConfiguredTableAnalysisRulePolicyV1

    ConfiguredTableAnalysisRuleTypeList.member = Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType)

    ConfiguredTableAssociation.add_member(:arn, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationArn, required: true, location_name: "arn"))
    ConfiguredTableAssociation.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    ConfiguredTableAssociation.add_member(:configured_table_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "configuredTableId"))
    ConfiguredTableAssociation.add_member(:configured_table_arn, Shapes::ShapeRef.new(shape: ConfiguredTableArn, required: true, location_name: "configuredTableArn"))
    ConfiguredTableAssociation.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipId"))
    ConfiguredTableAssociation.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    ConfiguredTableAssociation.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    ConfiguredTableAssociation.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    ConfiguredTableAssociation.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "description"))
    ConfiguredTableAssociation.add_member(:analysis_rule_types, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleTypeList, location_name: "analysisRuleTypes"))
    ConfiguredTableAssociation.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredTableAssociation.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredTableAssociation.struct_class = Types::ConfiguredTableAssociation

    ConfiguredTableAssociationAnalysisRule.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location_name: "membershipIdentifier"))
    ConfiguredTableAssociationAnalysisRule.add_member(:configured_table_association_id, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, required: true, location_name: "configuredTableAssociationId"))
    ConfiguredTableAssociationAnalysisRule.add_member(:configured_table_association_arn, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationArn, required: true, location_name: "configuredTableAssociationArn"))
    ConfiguredTableAssociationAnalysisRule.add_member(:policy, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRulePolicy, required: true, location_name: "policy"))
    ConfiguredTableAssociationAnalysisRule.add_member(:type, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleType, required: true, location_name: "type"))
    ConfiguredTableAssociationAnalysisRule.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredTableAssociationAnalysisRule.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredTableAssociationAnalysisRule.struct_class = Types::ConfiguredTableAssociationAnalysisRule

    ConfiguredTableAssociationAnalysisRuleAggregation.add_member(:allowed_result_receivers, Shapes::ShapeRef.new(shape: AllowedResultReceivers, location_name: "allowedResultReceivers"))
    ConfiguredTableAssociationAnalysisRuleAggregation.add_member(:allowed_additional_analyses, Shapes::ShapeRef.new(shape: AllowedAdditionalAnalyses, location_name: "allowedAdditionalAnalyses"))
    ConfiguredTableAssociationAnalysisRuleAggregation.struct_class = Types::ConfiguredTableAssociationAnalysisRuleAggregation

    ConfiguredTableAssociationAnalysisRuleCustom.add_member(:allowed_result_receivers, Shapes::ShapeRef.new(shape: AllowedResultReceivers, location_name: "allowedResultReceivers"))
    ConfiguredTableAssociationAnalysisRuleCustom.add_member(:allowed_additional_analyses, Shapes::ShapeRef.new(shape: AllowedAdditionalAnalyses, location_name: "allowedAdditionalAnalyses"))
    ConfiguredTableAssociationAnalysisRuleCustom.struct_class = Types::ConfiguredTableAssociationAnalysisRuleCustom

    ConfiguredTableAssociationAnalysisRuleList.add_member(:allowed_result_receivers, Shapes::ShapeRef.new(shape: AllowedResultReceivers, location_name: "allowedResultReceivers"))
    ConfiguredTableAssociationAnalysisRuleList.add_member(:allowed_additional_analyses, Shapes::ShapeRef.new(shape: AllowedAdditionalAnalyses, location_name: "allowedAdditionalAnalyses"))
    ConfiguredTableAssociationAnalysisRuleList.struct_class = Types::ConfiguredTableAssociationAnalysisRuleList

    ConfiguredTableAssociationAnalysisRulePolicy.add_member(:v1, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRulePolicyV1, location_name: "v1"))
    ConfiguredTableAssociationAnalysisRulePolicy.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConfiguredTableAssociationAnalysisRulePolicy.add_member_subclass(:v1, Types::ConfiguredTableAssociationAnalysisRulePolicy::V1)
    ConfiguredTableAssociationAnalysisRulePolicy.add_member_subclass(:unknown, Types::ConfiguredTableAssociationAnalysisRulePolicy::Unknown)
    ConfiguredTableAssociationAnalysisRulePolicy.struct_class = Types::ConfiguredTableAssociationAnalysisRulePolicy

    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member(:list, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleList, location_name: "list"))
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member(:aggregation, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleAggregation, location_name: "aggregation"))
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member(:custom, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleCustom, location_name: "custom"))
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member_subclass(:list, Types::ConfiguredTableAssociationAnalysisRulePolicyV1::List)
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member_subclass(:aggregation, Types::ConfiguredTableAssociationAnalysisRulePolicyV1::Aggregation)
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member_subclass(:custom, Types::ConfiguredTableAssociationAnalysisRulePolicyV1::Custom)
    ConfiguredTableAssociationAnalysisRulePolicyV1.add_member_subclass(:unknown, Types::ConfiguredTableAssociationAnalysisRulePolicyV1::Unknown)
    ConfiguredTableAssociationAnalysisRulePolicyV1.struct_class = Types::ConfiguredTableAssociationAnalysisRulePolicyV1

    ConfiguredTableAssociationAnalysisRuleTypeList.member = Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleType)

    ConfiguredTableAssociationSummary.add_member(:configured_table_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "configuredTableId"))
    ConfiguredTableAssociationSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location_name: "membershipId"))
    ConfiguredTableAssociationSummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    ConfiguredTableAssociationSummary.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    ConfiguredTableAssociationSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredTableAssociationSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredTableAssociationSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    ConfiguredTableAssociationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationArn, required: true, location_name: "arn"))
    ConfiguredTableAssociationSummary.add_member(:analysis_rule_types, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleTypeList, location_name: "analysisRuleTypes"))
    ConfiguredTableAssociationSummary.struct_class = Types::ConfiguredTableAssociationSummary

    ConfiguredTableAssociationSummaryList.member = Shapes::ShapeRef.new(shape: ConfiguredTableAssociationSummary)

    ConfiguredTableSummary.add_member(:id, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location_name: "id"))
    ConfiguredTableSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ConfiguredTableArn, required: true, location_name: "arn"))
    ConfiguredTableSummary.add_member(:name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "name"))
    ConfiguredTableSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredTableSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredTableSummary.add_member(:analysis_rule_types, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleTypeList, required: true, location_name: "analysisRuleTypes"))
    ConfiguredTableSummary.add_member(:analysis_method, Shapes::ShapeRef.new(shape: AnalysisMethod, required: true, location_name: "analysisMethod"))
    ConfiguredTableSummary.add_member(:selected_analysis_methods, Shapes::ShapeRef.new(shape: SelectedAnalysisMethods, location_name: "selectedAnalysisMethods"))
    ConfiguredTableSummary.struct_class = Types::ConfiguredTableSummary

    ConfiguredTableSummaryList.member = Shapes::ShapeRef.new(shape: ConfiguredTableSummary)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: "reason"))
    ConflictException.struct_class = Types::ConflictException

    ConsolidatedPolicy.add_member(:v1, Shapes::ShapeRef.new(shape: ConsolidatedPolicyV1, location_name: "v1"))
    ConsolidatedPolicy.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConsolidatedPolicy.add_member_subclass(:v1, Types::ConsolidatedPolicy::V1)
    ConsolidatedPolicy.add_member_subclass(:unknown, Types::ConsolidatedPolicy::Unknown)
    ConsolidatedPolicy.struct_class = Types::ConsolidatedPolicy

    ConsolidatedPolicyAggregation.add_member(:aggregate_columns, Shapes::ShapeRef.new(shape: ConsolidatedPolicyAggregationAggregateColumnsList, required: true, location_name: "aggregateColumns"))
    ConsolidatedPolicyAggregation.add_member(:join_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, required: true, location_name: "joinColumns"))
    ConsolidatedPolicyAggregation.add_member(:join_required, Shapes::ShapeRef.new(shape: JoinRequiredOption, location_name: "joinRequired"))
    ConsolidatedPolicyAggregation.add_member(:allowed_join_operators, Shapes::ShapeRef.new(shape: JoinOperatorsList, location_name: "allowedJoinOperators"))
    ConsolidatedPolicyAggregation.add_member(:dimension_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, required: true, location_name: "dimensionColumns"))
    ConsolidatedPolicyAggregation.add_member(:scalar_functions, Shapes::ShapeRef.new(shape: ScalarFunctionsList, required: true, location_name: "scalarFunctions"))
    ConsolidatedPolicyAggregation.add_member(:output_constraints, Shapes::ShapeRef.new(shape: AggregationConstraints, required: true, location_name: "outputConstraints"))
    ConsolidatedPolicyAggregation.add_member(:additional_analyses, Shapes::ShapeRef.new(shape: AdditionalAnalyses, location_name: "additionalAnalyses"))
    ConsolidatedPolicyAggregation.add_member(:allowed_result_receivers, Shapes::ShapeRef.new(shape: AllowedResultReceivers, location_name: "allowedResultReceivers"))
    ConsolidatedPolicyAggregation.add_member(:allowed_additional_analyses, Shapes::ShapeRef.new(shape: AllowedAdditionalAnalyses, location_name: "allowedAdditionalAnalyses"))
    ConsolidatedPolicyAggregation.struct_class = Types::ConsolidatedPolicyAggregation

    ConsolidatedPolicyAggregationAggregateColumnsList.member = Shapes::ShapeRef.new(shape: AggregateColumn)

    ConsolidatedPolicyCustom.add_member(:allowed_analyses, Shapes::ShapeRef.new(shape: ConsolidatedPolicyCustomAllowedAnalysesList, required: true, location_name: "allowedAnalyses"))
    ConsolidatedPolicyCustom.add_member(:allowed_analysis_providers, Shapes::ShapeRef.new(shape: ConsolidatedPolicyCustomAllowedAnalysisProvidersList, location_name: "allowedAnalysisProviders"))
    ConsolidatedPolicyCustom.add_member(:additional_analyses, Shapes::ShapeRef.new(shape: AdditionalAnalyses, location_name: "additionalAnalyses"))
    ConsolidatedPolicyCustom.add_member(:disallowed_output_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: "disallowedOutputColumns"))
    ConsolidatedPolicyCustom.add_member(:differential_privacy, Shapes::ShapeRef.new(shape: DifferentialPrivacyConfiguration, location_name: "differentialPrivacy"))
    ConsolidatedPolicyCustom.add_member(:allowed_result_receivers, Shapes::ShapeRef.new(shape: AllowedResultReceivers, location_name: "allowedResultReceivers"))
    ConsolidatedPolicyCustom.add_member(:allowed_additional_analyses, Shapes::ShapeRef.new(shape: AllowedAdditionalAnalyses, location_name: "allowedAdditionalAnalyses"))
    ConsolidatedPolicyCustom.struct_class = Types::ConsolidatedPolicyCustom

    ConsolidatedPolicyCustomAllowedAnalysesList.member = Shapes::ShapeRef.new(shape: AnalysisTemplateArnOrQueryWildcard)

    ConsolidatedPolicyCustomAllowedAnalysisProvidersList.member = Shapes::ShapeRef.new(shape: AccountId)

    ConsolidatedPolicyList.add_member(:join_columns, Shapes::ShapeRef.new(shape: ConsolidatedPolicyListJoinColumnsList, required: true, location_name: "joinColumns"))
    ConsolidatedPolicyList.add_member(:allowed_join_operators, Shapes::ShapeRef.new(shape: JoinOperatorsList, location_name: "allowedJoinOperators"))
    ConsolidatedPolicyList.add_member(:list_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, required: true, location_name: "listColumns"))
    ConsolidatedPolicyList.add_member(:additional_analyses, Shapes::ShapeRef.new(shape: AdditionalAnalyses, location_name: "additionalAnalyses"))
    ConsolidatedPolicyList.add_member(:allowed_result_receivers, Shapes::ShapeRef.new(shape: AllowedResultReceivers, location_name: "allowedResultReceivers"))
    ConsolidatedPolicyList.add_member(:allowed_additional_analyses, Shapes::ShapeRef.new(shape: AllowedAdditionalAnalyses, location_name: "allowedAdditionalAnalyses"))
    ConsolidatedPolicyList.struct_class = Types::ConsolidatedPolicyList

    ConsolidatedPolicyListJoinColumnsList.member = Shapes::ShapeRef.new(shape: AnalysisRuleColumnName)

    ConsolidatedPolicyV1.add_member(:list, Shapes::ShapeRef.new(shape: ConsolidatedPolicyList, location_name: "list"))
    ConsolidatedPolicyV1.add_member(:aggregation, Shapes::ShapeRef.new(shape: ConsolidatedPolicyAggregation, location_name: "aggregation"))
    ConsolidatedPolicyV1.add_member(:custom, Shapes::ShapeRef.new(shape: ConsolidatedPolicyCustom, location_name: "custom"))
    ConsolidatedPolicyV1.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConsolidatedPolicyV1.add_member_subclass(:list, Types::ConsolidatedPolicyV1::List)
    ConsolidatedPolicyV1.add_member_subclass(:aggregation, Types::ConsolidatedPolicyV1::Aggregation)
    ConsolidatedPolicyV1.add_member_subclass(:custom, Types::ConsolidatedPolicyV1::Custom)
    ConsolidatedPolicyV1.add_member_subclass(:unknown, Types::ConsolidatedPolicyV1::Unknown)
    ConsolidatedPolicyV1.struct_class = Types::ConsolidatedPolicyV1

    CreateAnalysisTemplateInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateAnalysisTemplateInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    CreateAnalysisTemplateInput.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    CreateAnalysisTemplateInput.add_member(:format, Shapes::ShapeRef.new(shape: AnalysisFormat, required: true, location_name: "format"))
    CreateAnalysisTemplateInput.add_member(:source, Shapes::ShapeRef.new(shape: AnalysisSource, required: true, location_name: "source"))
    CreateAnalysisTemplateInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAnalysisTemplateInput.add_member(:analysis_parameters, Shapes::ShapeRef.new(shape: AnalysisParameterList, location_name: "analysisParameters"))
    CreateAnalysisTemplateInput.add_member(:schema, Shapes::ShapeRef.new(shape: AnalysisSchema, location_name: "schema"))
    CreateAnalysisTemplateInput.add_member(:error_message_configuration, Shapes::ShapeRef.new(shape: ErrorMessageConfiguration, location_name: "errorMessageConfiguration"))
    CreateAnalysisTemplateInput.struct_class = Types::CreateAnalysisTemplateInput

    CreateAnalysisTemplateOutput.add_member(:analysis_template, Shapes::ShapeRef.new(shape: AnalysisTemplate, required: true, location_name: "analysisTemplate"))
    CreateAnalysisTemplateOutput.struct_class = Types::CreateAnalysisTemplateOutput

    CreateCollaborationChangeRequestInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    CreateCollaborationChangeRequestInput.add_member(:changes, Shapes::ShapeRef.new(shape: ChangeInputList, required: true, location_name: "changes"))
    CreateCollaborationChangeRequestInput.struct_class = Types::CreateCollaborationChangeRequestInput

    CreateCollaborationChangeRequestOutput.add_member(:collaboration_change_request, Shapes::ShapeRef.new(shape: CollaborationChangeRequest, required: true, location_name: "collaborationChangeRequest"))
    CreateCollaborationChangeRequestOutput.struct_class = Types::CreateCollaborationChangeRequestOutput

    CreateCollaborationInput.add_member(:members, Shapes::ShapeRef.new(shape: MemberList, required: true, location_name: "members"))
    CreateCollaborationInput.add_member(:name, Shapes::ShapeRef.new(shape: CollaborationName, required: true, location_name: "name"))
    CreateCollaborationInput.add_member(:description, Shapes::ShapeRef.new(shape: CollaborationDescription, required: true, location_name: "description"))
    CreateCollaborationInput.add_member(:creator_member_abilities, Shapes::ShapeRef.new(shape: MemberAbilities, required: true, location_name: "creatorMemberAbilities"))
    CreateCollaborationInput.add_member(:creator_ml_member_abilities, Shapes::ShapeRef.new(shape: MLMemberAbilities, location_name: "creatorMLMemberAbilities"))
    CreateCollaborationInput.add_member(:creator_display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "creatorDisplayName"))
    CreateCollaborationInput.add_member(:data_encryption_metadata, Shapes::ShapeRef.new(shape: DataEncryptionMetadata, location_name: "dataEncryptionMetadata"))
    CreateCollaborationInput.add_member(:query_log_status, Shapes::ShapeRef.new(shape: CollaborationQueryLogStatus, required: true, location_name: "queryLogStatus"))
    CreateCollaborationInput.add_member(:job_log_status, Shapes::ShapeRef.new(shape: CollaborationJobLogStatus, location_name: "jobLogStatus"))
    CreateCollaborationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCollaborationInput.add_member(:creator_payment_configuration, Shapes::ShapeRef.new(shape: PaymentConfiguration, location_name: "creatorPaymentConfiguration"))
    CreateCollaborationInput.add_member(:analytics_engine, Shapes::ShapeRef.new(shape: AnalyticsEngine, location_name: "analyticsEngine"))
    CreateCollaborationInput.add_member(:auto_approved_change_request_types, Shapes::ShapeRef.new(shape: AutoApprovedChangeTypeList, location_name: "autoApprovedChangeRequestTypes"))
    CreateCollaborationInput.struct_class = Types::CreateCollaborationInput

    CreateCollaborationOutput.add_member(:collaboration, Shapes::ShapeRef.new(shape: Collaboration, required: true, location_name: "collaboration"))
    CreateCollaborationOutput.struct_class = Types::CreateCollaborationOutput

    CreateConfiguredAudienceModelAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    CreateConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_arn, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelArn, required: true, location_name: "configuredAudienceModelArn"))
    CreateConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_name, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationName, required: true, location_name: "configuredAudienceModelAssociationName"))
    CreateConfiguredAudienceModelAssociationInput.add_member(:manage_resource_policies, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "manageResourcePolicies"))
    CreateConfiguredAudienceModelAssociationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateConfiguredAudienceModelAssociationInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateConfiguredAudienceModelAssociationInput.struct_class = Types::CreateConfiguredAudienceModelAssociationInput

    CreateConfiguredAudienceModelAssociationOutput.add_member(:configured_audience_model_association, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociation, required: true, location_name: "configuredAudienceModelAssociation"))
    CreateConfiguredAudienceModelAssociationOutput.struct_class = Types::CreateConfiguredAudienceModelAssociationOutput

    CreateConfiguredTableAnalysisRuleInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    CreateConfiguredTableAnalysisRuleInput.add_member(:analysis_rule_type, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, required: true, location_name: "analysisRuleType"))
    CreateConfiguredTableAnalysisRuleInput.add_member(:analysis_rule_policy, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRulePolicy, required: true, location_name: "analysisRulePolicy"))
    CreateConfiguredTableAnalysisRuleInput.struct_class = Types::CreateConfiguredTableAnalysisRuleInput

    CreateConfiguredTableAnalysisRuleOutput.add_member(:analysis_rule, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRule, required: true, location_name: "analysisRule"))
    CreateConfiguredTableAnalysisRuleOutput.struct_class = Types::CreateConfiguredTableAnalysisRuleOutput

    CreateConfiguredTableAssociationAnalysisRuleInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    CreateConfiguredTableAssociationAnalysisRuleInput.add_member(:configured_table_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, required: true, location: "uri", location_name: "configuredTableAssociationIdentifier"))
    CreateConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_type, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleType, required: true, location_name: "analysisRuleType"))
    CreateConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_policy, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRulePolicy, required: true, location_name: "analysisRulePolicy"))
    CreateConfiguredTableAssociationAnalysisRuleInput.struct_class = Types::CreateConfiguredTableAssociationAnalysisRuleInput

    CreateConfiguredTableAssociationAnalysisRuleOutput.add_member(:analysis_rule, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRule, required: true, location_name: "analysisRule"))
    CreateConfiguredTableAssociationAnalysisRuleOutput.struct_class = Types::CreateConfiguredTableAssociationAnalysisRuleOutput

    CreateConfiguredTableAssociationInput.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    CreateConfiguredTableAssociationInput.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "description"))
    CreateConfiguredTableAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    CreateConfiguredTableAssociationInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location_name: "configuredTableIdentifier"))
    CreateConfiguredTableAssociationInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateConfiguredTableAssociationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateConfiguredTableAssociationInput.struct_class = Types::CreateConfiguredTableAssociationInput

    CreateConfiguredTableAssociationOutput.add_member(:configured_table_association, Shapes::ShapeRef.new(shape: ConfiguredTableAssociation, required: true, location_name: "configuredTableAssociation"))
    CreateConfiguredTableAssociationOutput.struct_class = Types::CreateConfiguredTableAssociationOutput

    CreateConfiguredTableInput.add_member(:name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "name"))
    CreateConfiguredTableInput.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "description"))
    CreateConfiguredTableInput.add_member(:table_reference, Shapes::ShapeRef.new(shape: TableReference, required: true, location_name: "tableReference"))
    CreateConfiguredTableInput.add_member(:allowed_columns, Shapes::ShapeRef.new(shape: AllowedColumnList, required: true, location_name: "allowedColumns"))
    CreateConfiguredTableInput.add_member(:analysis_method, Shapes::ShapeRef.new(shape: AnalysisMethod, required: true, location_name: "analysisMethod"))
    CreateConfiguredTableInput.add_member(:selected_analysis_methods, Shapes::ShapeRef.new(shape: SelectedAnalysisMethods, location_name: "selectedAnalysisMethods"))
    CreateConfiguredTableInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateConfiguredTableInput.struct_class = Types::CreateConfiguredTableInput

    CreateConfiguredTableOutput.add_member(:configured_table, Shapes::ShapeRef.new(shape: ConfiguredTable, required: true, location_name: "configuredTable"))
    CreateConfiguredTableOutput.struct_class = Types::CreateConfiguredTableOutput

    CreateIdMappingTableInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    CreateIdMappingTableInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceAlias, required: true, location_name: "name"))
    CreateIdMappingTableInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateIdMappingTableInput.add_member(:input_reference_config, Shapes::ShapeRef.new(shape: IdMappingTableInputReferenceConfig, required: true, location_name: "inputReferenceConfig"))
    CreateIdMappingTableInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateIdMappingTableInput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "kmsKeyArn"))
    CreateIdMappingTableInput.struct_class = Types::CreateIdMappingTableInput

    CreateIdMappingTableOutput.add_member(:id_mapping_table, Shapes::ShapeRef.new(shape: IdMappingTable, required: true, location_name: "idMappingTable"))
    CreateIdMappingTableOutput.struct_class = Types::CreateIdMappingTableOutput

    CreateIdNamespaceAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    CreateIdNamespaceAssociationInput.add_member(:input_reference_config, Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceConfig, required: true, location_name: "inputReferenceConfig"))
    CreateIdNamespaceAssociationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateIdNamespaceAssociationInput.add_member(:name, Shapes::ShapeRef.new(shape: GenericResourceName, required: true, location_name: "name"))
    CreateIdNamespaceAssociationInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateIdNamespaceAssociationInput.add_member(:id_mapping_config, Shapes::ShapeRef.new(shape: IdMappingConfig, location_name: "idMappingConfig"))
    CreateIdNamespaceAssociationInput.struct_class = Types::CreateIdNamespaceAssociationInput

    CreateIdNamespaceAssociationOutput.add_member(:id_namespace_association, Shapes::ShapeRef.new(shape: IdNamespaceAssociation, required: true, location_name: "idNamespaceAssociation"))
    CreateIdNamespaceAssociationOutput.struct_class = Types::CreateIdNamespaceAssociationOutput

    CreateMembershipInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location_name: "collaborationIdentifier"))
    CreateMembershipInput.add_member(:query_log_status, Shapes::ShapeRef.new(shape: MembershipQueryLogStatus, required: true, location_name: "queryLogStatus"))
    CreateMembershipInput.add_member(:job_log_status, Shapes::ShapeRef.new(shape: MembershipJobLogStatus, location_name: "jobLogStatus"))
    CreateMembershipInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateMembershipInput.add_member(:default_result_configuration, Shapes::ShapeRef.new(shape: MembershipProtectedQueryResultConfiguration, location_name: "defaultResultConfiguration"))
    CreateMembershipInput.add_member(:default_job_result_configuration, Shapes::ShapeRef.new(shape: MembershipProtectedJobResultConfiguration, location_name: "defaultJobResultConfiguration"))
    CreateMembershipInput.add_member(:payment_configuration, Shapes::ShapeRef.new(shape: MembershipPaymentConfiguration, location_name: "paymentConfiguration"))
    CreateMembershipInput.struct_class = Types::CreateMembershipInput

    CreateMembershipOutput.add_member(:membership, Shapes::ShapeRef.new(shape: Membership, required: true, location_name: "membership"))
    CreateMembershipOutput.struct_class = Types::CreateMembershipOutput

    CreatePrivacyBudgetTemplateInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    CreatePrivacyBudgetTemplateInput.add_member(:auto_refresh, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateAutoRefresh, required: true, location_name: "autoRefresh"))
    CreatePrivacyBudgetTemplateInput.add_member(:privacy_budget_type, Shapes::ShapeRef.new(shape: PrivacyBudgetType, required: true, location_name: "privacyBudgetType"))
    CreatePrivacyBudgetTemplateInput.add_member(:parameters, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateParametersInput, required: true, location_name: "parameters"))
    CreatePrivacyBudgetTemplateInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePrivacyBudgetTemplateInput.struct_class = Types::CreatePrivacyBudgetTemplateInput

    CreatePrivacyBudgetTemplateOutput.add_member(:privacy_budget_template, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplate, required: true, location_name: "privacyBudgetTemplate"))
    CreatePrivacyBudgetTemplateOutput.struct_class = Types::CreatePrivacyBudgetTemplateOutput

    CustomMLMemberAbilities.member = Shapes::ShapeRef.new(shape: CustomMLMemberAbility)

    DataEncryptionMetadata.add_member(:allow_cleartext, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "allowCleartext"))
    DataEncryptionMetadata.add_member(:allow_duplicates, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "allowDuplicates"))
    DataEncryptionMetadata.add_member(:allow_joins_on_columns_with_different_names, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "allowJoinsOnColumnsWithDifferentNames"))
    DataEncryptionMetadata.add_member(:preserve_nulls, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "preserveNulls"))
    DataEncryptionMetadata.struct_class = Types::DataEncryptionMetadata

    DeleteAnalysisTemplateInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeleteAnalysisTemplateInput.add_member(:analysis_template_identifier, Shapes::ShapeRef.new(shape: AnalysisTemplateIdentifier, required: true, location: "uri", location_name: "analysisTemplateIdentifier"))
    DeleteAnalysisTemplateInput.struct_class = Types::DeleteAnalysisTemplateInput

    DeleteAnalysisTemplateOutput.struct_class = Types::DeleteAnalysisTemplateOutput

    DeleteCollaborationInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    DeleteCollaborationInput.struct_class = Types::DeleteCollaborationInput

    DeleteCollaborationOutput.struct_class = Types::DeleteCollaborationOutput

    DeleteConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, required: true, location: "uri", location_name: "configuredAudienceModelAssociationIdentifier"))
    DeleteConfiguredAudienceModelAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeleteConfiguredAudienceModelAssociationInput.struct_class = Types::DeleteConfiguredAudienceModelAssociationInput

    DeleteConfiguredAudienceModelAssociationOutput.struct_class = Types::DeleteConfiguredAudienceModelAssociationOutput

    DeleteConfiguredTableAnalysisRuleInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    DeleteConfiguredTableAnalysisRuleInput.add_member(:analysis_rule_type, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, required: true, location: "uri", location_name: "analysisRuleType"))
    DeleteConfiguredTableAnalysisRuleInput.struct_class = Types::DeleteConfiguredTableAnalysisRuleInput

    DeleteConfiguredTableAnalysisRuleOutput.struct_class = Types::DeleteConfiguredTableAnalysisRuleOutput

    DeleteConfiguredTableAssociationAnalysisRuleInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeleteConfiguredTableAssociationAnalysisRuleInput.add_member(:configured_table_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, required: true, location: "uri", location_name: "configuredTableAssociationIdentifier"))
    DeleteConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_type, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleType, required: true, location: "uri", location_name: "analysisRuleType"))
    DeleteConfiguredTableAssociationAnalysisRuleInput.struct_class = Types::DeleteConfiguredTableAssociationAnalysisRuleInput

    DeleteConfiguredTableAssociationAnalysisRuleOutput.struct_class = Types::DeleteConfiguredTableAssociationAnalysisRuleOutput

    DeleteConfiguredTableAssociationInput.add_member(:configured_table_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, required: true, location: "uri", location_name: "configuredTableAssociationIdentifier"))
    DeleteConfiguredTableAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeleteConfiguredTableAssociationInput.struct_class = Types::DeleteConfiguredTableAssociationInput

    DeleteConfiguredTableAssociationOutput.struct_class = Types::DeleteConfiguredTableAssociationOutput

    DeleteConfiguredTableInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    DeleteConfiguredTableInput.struct_class = Types::DeleteConfiguredTableInput

    DeleteConfiguredTableOutput.struct_class = Types::DeleteConfiguredTableOutput

    DeleteIdMappingTableInput.add_member(:id_mapping_table_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "idMappingTableIdentifier"))
    DeleteIdMappingTableInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeleteIdMappingTableInput.struct_class = Types::DeleteIdMappingTableInput

    DeleteIdMappingTableOutput.struct_class = Types::DeleteIdMappingTableOutput

    DeleteIdNamespaceAssociationInput.add_member(:id_namespace_association_identifier, Shapes::ShapeRef.new(shape: IdNamespaceAssociationIdentifier, required: true, location: "uri", location_name: "idNamespaceAssociationIdentifier"))
    DeleteIdNamespaceAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeleteIdNamespaceAssociationInput.struct_class = Types::DeleteIdNamespaceAssociationInput

    DeleteIdNamespaceAssociationOutput.struct_class = Types::DeleteIdNamespaceAssociationOutput

    DeleteMemberInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    DeleteMemberInput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location: "uri", location_name: "accountId"))
    DeleteMemberInput.struct_class = Types::DeleteMemberInput

    DeleteMemberOutput.struct_class = Types::DeleteMemberOutput

    DeleteMembershipInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeleteMembershipInput.struct_class = Types::DeleteMembershipInput

    DeleteMembershipOutput.struct_class = Types::DeleteMembershipOutput

    DeletePrivacyBudgetTemplateInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeletePrivacyBudgetTemplateInput.add_member(:privacy_budget_template_identifier, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, required: true, location: "uri", location_name: "privacyBudgetTemplateIdentifier"))
    DeletePrivacyBudgetTemplateInput.struct_class = Types::DeletePrivacyBudgetTemplateInput

    DeletePrivacyBudgetTemplateOutput.struct_class = Types::DeletePrivacyBudgetTemplateOutput

    DifferentialPrivacyColumn.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    DifferentialPrivacyColumn.struct_class = Types::DifferentialPrivacyColumn

    DifferentialPrivacyColumnList.member = Shapes::ShapeRef.new(shape: DifferentialPrivacyColumn)

    DifferentialPrivacyConfiguration.add_member(:columns, Shapes::ShapeRef.new(shape: DifferentialPrivacyColumnList, required: true, location_name: "columns"))
    DifferentialPrivacyConfiguration.struct_class = Types::DifferentialPrivacyConfiguration

    DifferentialPrivacyParameters.add_member(:sensitivity_parameters, Shapes::ShapeRef.new(shape: DifferentialPrivacySensitivityParametersList, required: true, location_name: "sensitivityParameters"))
    DifferentialPrivacyParameters.struct_class = Types::DifferentialPrivacyParameters

    DifferentialPrivacyPreviewAggregation.add_member(:type, Shapes::ShapeRef.new(shape: DifferentialPrivacyAggregationType, required: true, location_name: "type"))
    DifferentialPrivacyPreviewAggregation.add_member(:max_count, Shapes::ShapeRef.new(shape: DifferentialPrivacyPreviewAggregationMaxCountInteger, required: true, location_name: "maxCount"))
    DifferentialPrivacyPreviewAggregation.struct_class = Types::DifferentialPrivacyPreviewAggregation

    DifferentialPrivacyPreviewAggregationList.member = Shapes::ShapeRef.new(shape: DifferentialPrivacyPreviewAggregation)

    DifferentialPrivacyPreviewParametersInput.add_member(:epsilon, Shapes::ShapeRef.new(shape: Epsilon, required: true, location_name: "epsilon"))
    DifferentialPrivacyPreviewParametersInput.add_member(:users_noise_per_query, Shapes::ShapeRef.new(shape: UsersNoisePerQuery, required: true, location_name: "usersNoisePerQuery"))
    DifferentialPrivacyPreviewParametersInput.struct_class = Types::DifferentialPrivacyPreviewParametersInput

    DifferentialPrivacyPrivacyBudget.add_member(:aggregations, Shapes::ShapeRef.new(shape: DifferentialPrivacyPrivacyBudgetAggregationList, required: true, location_name: "aggregations"))
    DifferentialPrivacyPrivacyBudget.add_member(:epsilon, Shapes::ShapeRef.new(shape: Epsilon, required: true, location_name: "epsilon"))
    DifferentialPrivacyPrivacyBudget.struct_class = Types::DifferentialPrivacyPrivacyBudget

    DifferentialPrivacyPrivacyBudgetAggregation.add_member(:type, Shapes::ShapeRef.new(shape: DifferentialPrivacyAggregationType, required: true, location_name: "type"))
    DifferentialPrivacyPrivacyBudgetAggregation.add_member(:max_count, Shapes::ShapeRef.new(shape: DifferentialPrivacyPrivacyBudgetAggregationMaxCountInteger, required: true, location_name: "maxCount"))
    DifferentialPrivacyPrivacyBudgetAggregation.add_member(:remaining_count, Shapes::ShapeRef.new(shape: DifferentialPrivacyPrivacyBudgetAggregationRemainingCountInteger, required: true, location_name: "remainingCount"))
    DifferentialPrivacyPrivacyBudgetAggregation.struct_class = Types::DifferentialPrivacyPrivacyBudgetAggregation

    DifferentialPrivacyPrivacyBudgetAggregationList.member = Shapes::ShapeRef.new(shape: DifferentialPrivacyPrivacyBudgetAggregation)

    DifferentialPrivacyPrivacyImpact.add_member(:aggregations, Shapes::ShapeRef.new(shape: DifferentialPrivacyPreviewAggregationList, required: true, location_name: "aggregations"))
    DifferentialPrivacyPrivacyImpact.struct_class = Types::DifferentialPrivacyPrivacyImpact

    DifferentialPrivacySensitivityParameters.add_member(:aggregation_type, Shapes::ShapeRef.new(shape: DifferentialPrivacyAggregationType, required: true, location_name: "aggregationType"))
    DifferentialPrivacySensitivityParameters.add_member(:aggregation_expression, Shapes::ShapeRef.new(shape: DifferentialPrivacyAggregationExpression, required: true, location_name: "aggregationExpression"))
    DifferentialPrivacySensitivityParameters.add_member(:user_contribution_limit, Shapes::ShapeRef.new(shape: DifferentialPrivacySensitivityParametersUserContributionLimitInteger, required: true, location_name: "userContributionLimit"))
    DifferentialPrivacySensitivityParameters.add_member(:min_column_value, Shapes::ShapeRef.new(shape: Float, location_name: "minColumnValue"))
    DifferentialPrivacySensitivityParameters.add_member(:max_column_value, Shapes::ShapeRef.new(shape: Float, location_name: "maxColumnValue"))
    DifferentialPrivacySensitivityParameters.struct_class = Types::DifferentialPrivacySensitivityParameters

    DifferentialPrivacySensitivityParametersList.member = Shapes::ShapeRef.new(shape: DifferentialPrivacySensitivityParameters)

    DifferentialPrivacyTemplateParametersInput.add_member(:epsilon, Shapes::ShapeRef.new(shape: Epsilon, required: true, location_name: "epsilon"))
    DifferentialPrivacyTemplateParametersInput.add_member(:users_noise_per_query, Shapes::ShapeRef.new(shape: UsersNoisePerQuery, required: true, location_name: "usersNoisePerQuery"))
    DifferentialPrivacyTemplateParametersInput.struct_class = Types::DifferentialPrivacyTemplateParametersInput

    DifferentialPrivacyTemplateParametersOutput.add_member(:epsilon, Shapes::ShapeRef.new(shape: Epsilon, required: true, location_name: "epsilon"))
    DifferentialPrivacyTemplateParametersOutput.add_member(:users_noise_per_query, Shapes::ShapeRef.new(shape: UsersNoisePerQuery, required: true, location_name: "usersNoisePerQuery"))
    DifferentialPrivacyTemplateParametersOutput.struct_class = Types::DifferentialPrivacyTemplateParametersOutput

    DifferentialPrivacyTemplateUpdateParameters.add_member(:epsilon, Shapes::ShapeRef.new(shape: Epsilon, location_name: "epsilon"))
    DifferentialPrivacyTemplateUpdateParameters.add_member(:users_noise_per_query, Shapes::ShapeRef.new(shape: UsersNoisePerQuery, location_name: "usersNoisePerQuery"))
    DifferentialPrivacyTemplateUpdateParameters.struct_class = Types::DifferentialPrivacyTemplateUpdateParameters

    DirectAnalysisConfigurationDetails.add_member(:receiver_account_ids, Shapes::ShapeRef.new(shape: ReceiverAccountIds, location_name: "receiverAccountIds"))
    DirectAnalysisConfigurationDetails.struct_class = Types::DirectAnalysisConfigurationDetails

    ErrorMessageConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: ErrorMessageType, required: true, location_name: "type"))
    ErrorMessageConfiguration.struct_class = Types::ErrorMessageConfiguration

    GetAnalysisTemplateInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetAnalysisTemplateInput.add_member(:analysis_template_identifier, Shapes::ShapeRef.new(shape: AnalysisTemplateIdentifier, required: true, location: "uri", location_name: "analysisTemplateIdentifier"))
    GetAnalysisTemplateInput.struct_class = Types::GetAnalysisTemplateInput

    GetAnalysisTemplateOutput.add_member(:analysis_template, Shapes::ShapeRef.new(shape: AnalysisTemplate, required: true, location_name: "analysisTemplate"))
    GetAnalysisTemplateOutput.struct_class = Types::GetAnalysisTemplateOutput

    GetCollaborationAnalysisTemplateInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetCollaborationAnalysisTemplateInput.add_member(:analysis_template_arn, Shapes::ShapeRef.new(shape: AnalysisTemplateArn, required: true, location: "uri", location_name: "analysisTemplateArn"))
    GetCollaborationAnalysisTemplateInput.struct_class = Types::GetCollaborationAnalysisTemplateInput

    GetCollaborationAnalysisTemplateOutput.add_member(:collaboration_analysis_template, Shapes::ShapeRef.new(shape: CollaborationAnalysisTemplate, required: true, location_name: "collaborationAnalysisTemplate"))
    GetCollaborationAnalysisTemplateOutput.struct_class = Types::GetCollaborationAnalysisTemplateOutput

    GetCollaborationChangeRequestInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetCollaborationChangeRequestInput.add_member(:change_request_identifier, Shapes::ShapeRef.new(shape: CollaborationChangeRequestIdentifier, required: true, location: "uri", location_name: "changeRequestIdentifier"))
    GetCollaborationChangeRequestInput.struct_class = Types::GetCollaborationChangeRequestInput

    GetCollaborationChangeRequestOutput.add_member(:collaboration_change_request, Shapes::ShapeRef.new(shape: CollaborationChangeRequest, required: true, location_name: "collaborationChangeRequest"))
    GetCollaborationChangeRequestOutput.struct_class = Types::GetCollaborationChangeRequestOutput

    GetCollaborationConfiguredAudienceModelAssociationInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetCollaborationConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, required: true, location: "uri", location_name: "configuredAudienceModelAssociationIdentifier"))
    GetCollaborationConfiguredAudienceModelAssociationInput.struct_class = Types::GetCollaborationConfiguredAudienceModelAssociationInput

    GetCollaborationConfiguredAudienceModelAssociationOutput.add_member(:collaboration_configured_audience_model_association, Shapes::ShapeRef.new(shape: CollaborationConfiguredAudienceModelAssociation, required: true, location_name: "collaborationConfiguredAudienceModelAssociation"))
    GetCollaborationConfiguredAudienceModelAssociationOutput.struct_class = Types::GetCollaborationConfiguredAudienceModelAssociationOutput

    GetCollaborationIdNamespaceAssociationInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetCollaborationIdNamespaceAssociationInput.add_member(:id_namespace_association_identifier, Shapes::ShapeRef.new(shape: IdNamespaceAssociationIdentifier, required: true, location: "uri", location_name: "idNamespaceAssociationIdentifier"))
    GetCollaborationIdNamespaceAssociationInput.struct_class = Types::GetCollaborationIdNamespaceAssociationInput

    GetCollaborationIdNamespaceAssociationOutput.add_member(:collaboration_id_namespace_association, Shapes::ShapeRef.new(shape: CollaborationIdNamespaceAssociation, required: true, location_name: "collaborationIdNamespaceAssociation"))
    GetCollaborationIdNamespaceAssociationOutput.struct_class = Types::GetCollaborationIdNamespaceAssociationOutput

    GetCollaborationInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetCollaborationInput.struct_class = Types::GetCollaborationInput

    GetCollaborationOutput.add_member(:collaboration, Shapes::ShapeRef.new(shape: Collaboration, required: true, location_name: "collaboration"))
    GetCollaborationOutput.struct_class = Types::GetCollaborationOutput

    GetCollaborationPrivacyBudgetTemplateInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetCollaborationPrivacyBudgetTemplateInput.add_member(:privacy_budget_template_identifier, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, required: true, location: "uri", location_name: "privacyBudgetTemplateIdentifier"))
    GetCollaborationPrivacyBudgetTemplateInput.struct_class = Types::GetCollaborationPrivacyBudgetTemplateInput

    GetCollaborationPrivacyBudgetTemplateOutput.add_member(:collaboration_privacy_budget_template, Shapes::ShapeRef.new(shape: CollaborationPrivacyBudgetTemplate, required: true, location_name: "collaborationPrivacyBudgetTemplate"))
    GetCollaborationPrivacyBudgetTemplateOutput.struct_class = Types::GetCollaborationPrivacyBudgetTemplateOutput

    GetConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, required: true, location: "uri", location_name: "configuredAudienceModelAssociationIdentifier"))
    GetConfiguredAudienceModelAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetConfiguredAudienceModelAssociationInput.struct_class = Types::GetConfiguredAudienceModelAssociationInput

    GetConfiguredAudienceModelAssociationOutput.add_member(:configured_audience_model_association, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociation, required: true, location_name: "configuredAudienceModelAssociation"))
    GetConfiguredAudienceModelAssociationOutput.struct_class = Types::GetConfiguredAudienceModelAssociationOutput

    GetConfiguredTableAnalysisRuleInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    GetConfiguredTableAnalysisRuleInput.add_member(:analysis_rule_type, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, required: true, location: "uri", location_name: "analysisRuleType"))
    GetConfiguredTableAnalysisRuleInput.struct_class = Types::GetConfiguredTableAnalysisRuleInput

    GetConfiguredTableAnalysisRuleOutput.add_member(:analysis_rule, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRule, required: true, location_name: "analysisRule"))
    GetConfiguredTableAnalysisRuleOutput.struct_class = Types::GetConfiguredTableAnalysisRuleOutput

    GetConfiguredTableAssociationAnalysisRuleInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetConfiguredTableAssociationAnalysisRuleInput.add_member(:configured_table_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, required: true, location: "uri", location_name: "configuredTableAssociationIdentifier"))
    GetConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_type, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleType, required: true, location: "uri", location_name: "analysisRuleType"))
    GetConfiguredTableAssociationAnalysisRuleInput.struct_class = Types::GetConfiguredTableAssociationAnalysisRuleInput

    GetConfiguredTableAssociationAnalysisRuleOutput.add_member(:analysis_rule, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRule, required: true, location_name: "analysisRule"))
    GetConfiguredTableAssociationAnalysisRuleOutput.struct_class = Types::GetConfiguredTableAssociationAnalysisRuleOutput

    GetConfiguredTableAssociationInput.add_member(:configured_table_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, required: true, location: "uri", location_name: "configuredTableAssociationIdentifier"))
    GetConfiguredTableAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetConfiguredTableAssociationInput.struct_class = Types::GetConfiguredTableAssociationInput

    GetConfiguredTableAssociationOutput.add_member(:configured_table_association, Shapes::ShapeRef.new(shape: ConfiguredTableAssociation, required: true, location_name: "configuredTableAssociation"))
    GetConfiguredTableAssociationOutput.struct_class = Types::GetConfiguredTableAssociationOutput

    GetConfiguredTableInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    GetConfiguredTableInput.struct_class = Types::GetConfiguredTableInput

    GetConfiguredTableOutput.add_member(:configured_table, Shapes::ShapeRef.new(shape: ConfiguredTable, required: true, location_name: "configuredTable"))
    GetConfiguredTableOutput.struct_class = Types::GetConfiguredTableOutput

    GetIdMappingTableInput.add_member(:id_mapping_table_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "idMappingTableIdentifier"))
    GetIdMappingTableInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetIdMappingTableInput.struct_class = Types::GetIdMappingTableInput

    GetIdMappingTableOutput.add_member(:id_mapping_table, Shapes::ShapeRef.new(shape: IdMappingTable, required: true, location_name: "idMappingTable"))
    GetIdMappingTableOutput.struct_class = Types::GetIdMappingTableOutput

    GetIdNamespaceAssociationInput.add_member(:id_namespace_association_identifier, Shapes::ShapeRef.new(shape: IdNamespaceAssociationIdentifier, required: true, location: "uri", location_name: "idNamespaceAssociationIdentifier"))
    GetIdNamespaceAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetIdNamespaceAssociationInput.struct_class = Types::GetIdNamespaceAssociationInput

    GetIdNamespaceAssociationOutput.add_member(:id_namespace_association, Shapes::ShapeRef.new(shape: IdNamespaceAssociation, required: true, location_name: "idNamespaceAssociation"))
    GetIdNamespaceAssociationOutput.struct_class = Types::GetIdNamespaceAssociationOutput

    GetMembershipInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetMembershipInput.struct_class = Types::GetMembershipInput

    GetMembershipOutput.add_member(:membership, Shapes::ShapeRef.new(shape: Membership, required: true, location_name: "membership"))
    GetMembershipOutput.struct_class = Types::GetMembershipOutput

    GetPrivacyBudgetTemplateInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetPrivacyBudgetTemplateInput.add_member(:privacy_budget_template_identifier, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, required: true, location: "uri", location_name: "privacyBudgetTemplateIdentifier"))
    GetPrivacyBudgetTemplateInput.struct_class = Types::GetPrivacyBudgetTemplateInput

    GetPrivacyBudgetTemplateOutput.add_member(:privacy_budget_template, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplate, required: true, location_name: "privacyBudgetTemplate"))
    GetPrivacyBudgetTemplateOutput.struct_class = Types::GetPrivacyBudgetTemplateOutput

    GetProtectedJobInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetProtectedJobInput.add_member(:protected_job_identifier, Shapes::ShapeRef.new(shape: ProtectedJobIdentifier, required: true, location: "uri", location_name: "protectedJobIdentifier"))
    GetProtectedJobInput.struct_class = Types::GetProtectedJobInput

    GetProtectedJobOutput.add_member(:protected_job, Shapes::ShapeRef.new(shape: ProtectedJob, required: true, location_name: "protectedJob"))
    GetProtectedJobOutput.struct_class = Types::GetProtectedJobOutput

    GetProtectedQueryInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetProtectedQueryInput.add_member(:protected_query_identifier, Shapes::ShapeRef.new(shape: ProtectedQueryIdentifier, required: true, location: "uri", location_name: "protectedQueryIdentifier"))
    GetProtectedQueryInput.struct_class = Types::GetProtectedQueryInput

    GetProtectedQueryOutput.add_member(:protected_query, Shapes::ShapeRef.new(shape: ProtectedQuery, required: true, location_name: "protectedQuery"))
    GetProtectedQueryOutput.struct_class = Types::GetProtectedQueryOutput

    GetSchemaAnalysisRuleInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetSchemaAnalysisRuleInput.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location: "uri", location_name: "name"))
    GetSchemaAnalysisRuleInput.add_member(:type, Shapes::ShapeRef.new(shape: AnalysisRuleType, required: true, location: "uri", location_name: "type"))
    GetSchemaAnalysisRuleInput.struct_class = Types::GetSchemaAnalysisRuleInput

    GetSchemaAnalysisRuleOutput.add_member(:analysis_rule, Shapes::ShapeRef.new(shape: AnalysisRule, required: true, location_name: "analysisRule"))
    GetSchemaAnalysisRuleOutput.struct_class = Types::GetSchemaAnalysisRuleOutput

    GetSchemaInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetSchemaInput.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location: "uri", location_name: "name"))
    GetSchemaInput.struct_class = Types::GetSchemaInput

    GetSchemaOutput.add_member(:schema, Shapes::ShapeRef.new(shape: Schema, required: true, location_name: "schema"))
    GetSchemaOutput.struct_class = Types::GetSchemaOutput

    GlueTableReference.add_member(:table_name, Shapes::ShapeRef.new(shape: GlueTableName, required: true, location_name: "tableName"))
    GlueTableReference.add_member(:database_name, Shapes::ShapeRef.new(shape: GlueDatabaseName, required: true, location_name: "databaseName"))
    GlueTableReference.struct_class = Types::GlueTableReference

    Hash.add_member(:sha256, Shapes::ShapeRef.new(shape: String, location_name: "sha256"))
    Hash.struct_class = Types::Hash

    HashList.member = Shapes::ShapeRef.new(shape: Hash)

    IdMappingConfig.add_member(:allow_use_as_dimension_column, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "allowUseAsDimensionColumn"))
    IdMappingConfig.struct_class = Types::IdMappingConfig

    IdMappingTable.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    IdMappingTable.add_member(:arn, Shapes::ShapeRef.new(shape: IdMappingTableArn, required: true, location_name: "arn"))
    IdMappingTable.add_member(:input_reference_config, Shapes::ShapeRef.new(shape: IdMappingTableInputReferenceConfig, required: true, location_name: "inputReferenceConfig"))
    IdMappingTable.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipId"))
    IdMappingTable.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    IdMappingTable.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    IdMappingTable.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    IdMappingTable.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    IdMappingTable.add_member(:name, Shapes::ShapeRef.new(shape: ResourceAlias, required: true, location_name: "name"))
    IdMappingTable.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    IdMappingTable.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    IdMappingTable.add_member(:input_reference_properties, Shapes::ShapeRef.new(shape: IdMappingTableInputReferenceProperties, required: true, location_name: "inputReferenceProperties"))
    IdMappingTable.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "kmsKeyArn"))
    IdMappingTable.struct_class = Types::IdMappingTable

    IdMappingTableInputReferenceConfig.add_member(:input_reference_arn, Shapes::ShapeRef.new(shape: IdMappingTableInputReferenceArn, required: true, location_name: "inputReferenceArn"))
    IdMappingTableInputReferenceConfig.add_member(:manage_resource_policies, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "manageResourcePolicies"))
    IdMappingTableInputReferenceConfig.struct_class = Types::IdMappingTableInputReferenceConfig

    IdMappingTableInputReferenceProperties.add_member(:id_mapping_table_input_source, Shapes::ShapeRef.new(shape: IdMappingTableInputSourceList, required: true, location_name: "idMappingTableInputSource"))
    IdMappingTableInputReferenceProperties.struct_class = Types::IdMappingTableInputReferenceProperties

    IdMappingTableInputSource.add_member(:id_namespace_association_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "idNamespaceAssociationId"))
    IdMappingTableInputSource.add_member(:type, Shapes::ShapeRef.new(shape: IdNamespaceType, required: true, location_name: "type"))
    IdMappingTableInputSource.struct_class = Types::IdMappingTableInputSource

    IdMappingTableInputSourceList.member = Shapes::ShapeRef.new(shape: IdMappingTableInputSource)

    IdMappingTableSchemaTypeProperties.add_member(:id_mapping_table_input_source, Shapes::ShapeRef.new(shape: IdMappingTableInputSourceList, required: true, location_name: "idMappingTableInputSource"))
    IdMappingTableSchemaTypeProperties.struct_class = Types::IdMappingTableSchemaTypeProperties

    IdMappingTableSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    IdMappingTableSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    IdMappingTableSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location_name: "membershipId"))
    IdMappingTableSummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    IdMappingTableSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    IdMappingTableSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    IdMappingTableSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    IdMappingTableSummary.add_member(:arn, Shapes::ShapeRef.new(shape: IdMappingTableArn, required: true, location_name: "arn"))
    IdMappingTableSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    IdMappingTableSummary.add_member(:input_reference_config, Shapes::ShapeRef.new(shape: IdMappingTableInputReferenceConfig, required: true, location_name: "inputReferenceConfig"))
    IdMappingTableSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceAlias, required: true, location_name: "name"))
    IdMappingTableSummary.struct_class = Types::IdMappingTableSummary

    IdMappingTableSummaryList.member = Shapes::ShapeRef.new(shape: IdMappingTableSummary)

    IdMappingWorkflowsSupported.member = Shapes::ShapeRef.new(shape: Document)

    IdNamespaceAssociation.add_member(:id, Shapes::ShapeRef.new(shape: IdNamespaceAssociationIdentifier, required: true, location_name: "id"))
    IdNamespaceAssociation.add_member(:arn, Shapes::ShapeRef.new(shape: IdNamespaceAssociationArn, required: true, location_name: "arn"))
    IdNamespaceAssociation.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipId"))
    IdNamespaceAssociation.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    IdNamespaceAssociation.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    IdNamespaceAssociation.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    IdNamespaceAssociation.add_member(:name, Shapes::ShapeRef.new(shape: GenericResourceName, required: true, location_name: "name"))
    IdNamespaceAssociation.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    IdNamespaceAssociation.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    IdNamespaceAssociation.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    IdNamespaceAssociation.add_member(:input_reference_config, Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceConfig, required: true, location_name: "inputReferenceConfig"))
    IdNamespaceAssociation.add_member(:input_reference_properties, Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceProperties, required: true, location_name: "inputReferenceProperties"))
    IdNamespaceAssociation.add_member(:id_mapping_config, Shapes::ShapeRef.new(shape: IdMappingConfig, location_name: "idMappingConfig"))
    IdNamespaceAssociation.struct_class = Types::IdNamespaceAssociation

    IdNamespaceAssociationInputReferenceConfig.add_member(:input_reference_arn, Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceArn, required: true, location_name: "inputReferenceArn"))
    IdNamespaceAssociationInputReferenceConfig.add_member(:manage_resource_policies, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "manageResourcePolicies"))
    IdNamespaceAssociationInputReferenceConfig.struct_class = Types::IdNamespaceAssociationInputReferenceConfig

    IdNamespaceAssociationInputReferenceProperties.add_member(:id_namespace_type, Shapes::ShapeRef.new(shape: IdNamespaceType, required: true, location_name: "idNamespaceType"))
    IdNamespaceAssociationInputReferenceProperties.add_member(:id_mapping_workflows_supported, Shapes::ShapeRef.new(shape: IdMappingWorkflowsSupported, required: true, location_name: "idMappingWorkflowsSupported"))
    IdNamespaceAssociationInputReferenceProperties.struct_class = Types::IdNamespaceAssociationInputReferenceProperties

    IdNamespaceAssociationInputReferencePropertiesSummary.add_member(:id_namespace_type, Shapes::ShapeRef.new(shape: IdNamespaceType, required: true, location_name: "idNamespaceType"))
    IdNamespaceAssociationInputReferencePropertiesSummary.struct_class = Types::IdNamespaceAssociationInputReferencePropertiesSummary

    IdNamespaceAssociationSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location_name: "membershipId"))
    IdNamespaceAssociationSummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    IdNamespaceAssociationSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    IdNamespaceAssociationSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    IdNamespaceAssociationSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    IdNamespaceAssociationSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    IdNamespaceAssociationSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    IdNamespaceAssociationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: IdNamespaceAssociationArn, required: true, location_name: "arn"))
    IdNamespaceAssociationSummary.add_member(:input_reference_config, Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferenceConfig, required: true, location_name: "inputReferenceConfig"))
    IdNamespaceAssociationSummary.add_member(:name, Shapes::ShapeRef.new(shape: GenericResourceName, required: true, location_name: "name"))
    IdNamespaceAssociationSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    IdNamespaceAssociationSummary.add_member(:input_reference_properties, Shapes::ShapeRef.new(shape: IdNamespaceAssociationInputReferencePropertiesSummary, required: true, location_name: "inputReferenceProperties"))
    IdNamespaceAssociationSummary.struct_class = Types::IdNamespaceAssociationSummary

    IdNamespaceAssociationSummaryList.member = Shapes::ShapeRef.new(shape: IdNamespaceAssociationSummary)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    JobComputePaymentConfig.add_member(:is_responsible, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isResponsible"))
    JobComputePaymentConfig.struct_class = Types::JobComputePaymentConfig

    JoinOperatorsList.member = Shapes::ShapeRef.new(shape: JoinOperator)

    ListAnalysisTemplatesInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListAnalysisTemplatesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListAnalysisTemplatesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAnalysisTemplatesInput.struct_class = Types::ListAnalysisTemplatesInput

    ListAnalysisTemplatesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAnalysisTemplatesOutput.add_member(:analysis_template_summaries, Shapes::ShapeRef.new(shape: AnalysisTemplateSummaryList, required: true, location_name: "analysisTemplateSummaries"))
    ListAnalysisTemplatesOutput.struct_class = Types::ListAnalysisTemplatesOutput

    ListCollaborationAnalysisTemplatesInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListCollaborationAnalysisTemplatesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCollaborationAnalysisTemplatesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCollaborationAnalysisTemplatesInput.struct_class = Types::ListCollaborationAnalysisTemplatesInput

    ListCollaborationAnalysisTemplatesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCollaborationAnalysisTemplatesOutput.add_member(:collaboration_analysis_template_summaries, Shapes::ShapeRef.new(shape: CollaborationAnalysisTemplateSummaryList, required: true, location_name: "collaborationAnalysisTemplateSummaries"))
    ListCollaborationAnalysisTemplatesOutput.struct_class = Types::ListCollaborationAnalysisTemplatesOutput

    ListCollaborationChangeRequestsInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListCollaborationChangeRequestsInput.add_member(:status, Shapes::ShapeRef.new(shape: ChangeRequestStatus, location: "querystring", location_name: "status"))
    ListCollaborationChangeRequestsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCollaborationChangeRequestsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCollaborationChangeRequestsInput.struct_class = Types::ListCollaborationChangeRequestsInput

    ListCollaborationChangeRequestsOutput.add_member(:collaboration_change_request_summaries, Shapes::ShapeRef.new(shape: CollaborationChangeRequestSummaryList, required: true, location_name: "collaborationChangeRequestSummaries"))
    ListCollaborationChangeRequestsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCollaborationChangeRequestsOutput.struct_class = Types::ListCollaborationChangeRequestsOutput

    ListCollaborationConfiguredAudienceModelAssociationsInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListCollaborationConfiguredAudienceModelAssociationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCollaborationConfiguredAudienceModelAssociationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCollaborationConfiguredAudienceModelAssociationsInput.struct_class = Types::ListCollaborationConfiguredAudienceModelAssociationsInput

    ListCollaborationConfiguredAudienceModelAssociationsOutput.add_member(:collaboration_configured_audience_model_association_summaries, Shapes::ShapeRef.new(shape: CollaborationConfiguredAudienceModelAssociationSummaryList, required: true, location_name: "collaborationConfiguredAudienceModelAssociationSummaries"))
    ListCollaborationConfiguredAudienceModelAssociationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCollaborationConfiguredAudienceModelAssociationsOutput.struct_class = Types::ListCollaborationConfiguredAudienceModelAssociationsOutput

    ListCollaborationIdNamespaceAssociationsInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListCollaborationIdNamespaceAssociationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCollaborationIdNamespaceAssociationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCollaborationIdNamespaceAssociationsInput.struct_class = Types::ListCollaborationIdNamespaceAssociationsInput

    ListCollaborationIdNamespaceAssociationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCollaborationIdNamespaceAssociationsOutput.add_member(:collaboration_id_namespace_association_summaries, Shapes::ShapeRef.new(shape: CollaborationIdNamespaceAssociationSummaryList, required: true, location_name: "collaborationIdNamespaceAssociationSummaries"))
    ListCollaborationIdNamespaceAssociationsOutput.struct_class = Types::ListCollaborationIdNamespaceAssociationsOutput

    ListCollaborationPrivacyBudgetTemplatesInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListCollaborationPrivacyBudgetTemplatesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCollaborationPrivacyBudgetTemplatesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCollaborationPrivacyBudgetTemplatesInput.struct_class = Types::ListCollaborationPrivacyBudgetTemplatesInput

    ListCollaborationPrivacyBudgetTemplatesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCollaborationPrivacyBudgetTemplatesOutput.add_member(:collaboration_privacy_budget_template_summaries, Shapes::ShapeRef.new(shape: CollaborationPrivacyBudgetTemplateSummaryList, required: true, location_name: "collaborationPrivacyBudgetTemplateSummaries"))
    ListCollaborationPrivacyBudgetTemplatesOutput.struct_class = Types::ListCollaborationPrivacyBudgetTemplatesOutput

    ListCollaborationPrivacyBudgetsInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListCollaborationPrivacyBudgetsInput.add_member(:privacy_budget_type, Shapes::ShapeRef.new(shape: PrivacyBudgetType, required: true, location: "querystring", location_name: "privacyBudgetType"))
    ListCollaborationPrivacyBudgetsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCollaborationPrivacyBudgetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCollaborationPrivacyBudgetsInput.struct_class = Types::ListCollaborationPrivacyBudgetsInput

    ListCollaborationPrivacyBudgetsOutput.add_member(:collaboration_privacy_budget_summaries, Shapes::ShapeRef.new(shape: CollaborationPrivacyBudgetSummaryList, required: true, location_name: "collaborationPrivacyBudgetSummaries"))
    ListCollaborationPrivacyBudgetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCollaborationPrivacyBudgetsOutput.struct_class = Types::ListCollaborationPrivacyBudgetsOutput

    ListCollaborationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCollaborationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCollaborationsInput.add_member(:member_status, Shapes::ShapeRef.new(shape: FilterableMemberStatus, location: "querystring", location_name: "memberStatus"))
    ListCollaborationsInput.struct_class = Types::ListCollaborationsInput

    ListCollaborationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCollaborationsOutput.add_member(:collaboration_list, Shapes::ShapeRef.new(shape: CollaborationSummaryList, required: true, location_name: "collaborationList"))
    ListCollaborationsOutput.struct_class = Types::ListCollaborationsOutput

    ListConfiguredAudienceModelAssociationsInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListConfiguredAudienceModelAssociationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListConfiguredAudienceModelAssociationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConfiguredAudienceModelAssociationsInput.struct_class = Types::ListConfiguredAudienceModelAssociationsInput

    ListConfiguredAudienceModelAssociationsOutput.add_member(:configured_audience_model_association_summaries, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationSummaryList, required: true, location_name: "configuredAudienceModelAssociationSummaries"))
    ListConfiguredAudienceModelAssociationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListConfiguredAudienceModelAssociationsOutput.struct_class = Types::ListConfiguredAudienceModelAssociationsOutput

    ListConfiguredTableAssociationsInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListConfiguredTableAssociationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListConfiguredTableAssociationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConfiguredTableAssociationsInput.struct_class = Types::ListConfiguredTableAssociationsInput

    ListConfiguredTableAssociationsOutput.add_member(:configured_table_association_summaries, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationSummaryList, required: true, location_name: "configuredTableAssociationSummaries"))
    ListConfiguredTableAssociationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListConfiguredTableAssociationsOutput.struct_class = Types::ListConfiguredTableAssociationsOutput

    ListConfiguredTablesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListConfiguredTablesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConfiguredTablesInput.struct_class = Types::ListConfiguredTablesInput

    ListConfiguredTablesOutput.add_member(:configured_table_summaries, Shapes::ShapeRef.new(shape: ConfiguredTableSummaryList, required: true, location_name: "configuredTableSummaries"))
    ListConfiguredTablesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListConfiguredTablesOutput.struct_class = Types::ListConfiguredTablesOutput

    ListIdMappingTablesInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListIdMappingTablesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListIdMappingTablesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListIdMappingTablesInput.struct_class = Types::ListIdMappingTablesInput

    ListIdMappingTablesOutput.add_member(:id_mapping_table_summaries, Shapes::ShapeRef.new(shape: IdMappingTableSummaryList, required: true, location_name: "idMappingTableSummaries"))
    ListIdMappingTablesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListIdMappingTablesOutput.struct_class = Types::ListIdMappingTablesOutput

    ListIdNamespaceAssociationsInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListIdNamespaceAssociationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListIdNamespaceAssociationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListIdNamespaceAssociationsInput.struct_class = Types::ListIdNamespaceAssociationsInput

    ListIdNamespaceAssociationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListIdNamespaceAssociationsOutput.add_member(:id_namespace_association_summaries, Shapes::ShapeRef.new(shape: IdNamespaceAssociationSummaryList, required: true, location_name: "idNamespaceAssociationSummaries"))
    ListIdNamespaceAssociationsOutput.struct_class = Types::ListIdNamespaceAssociationsOutput

    ListMembersInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListMembersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListMembersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMembersInput.struct_class = Types::ListMembersInput

    ListMembersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMembersOutput.add_member(:member_summaries, Shapes::ShapeRef.new(shape: MemberSummaryList, required: true, location_name: "memberSummaries"))
    ListMembersOutput.struct_class = Types::ListMembersOutput

    ListMembershipsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListMembershipsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMembershipsInput.add_member(:status, Shapes::ShapeRef.new(shape: MembershipStatus, location: "querystring", location_name: "status"))
    ListMembershipsInput.struct_class = Types::ListMembershipsInput

    ListMembershipsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMembershipsOutput.add_member(:membership_summaries, Shapes::ShapeRef.new(shape: MembershipSummaryList, required: true, location_name: "membershipSummaries"))
    ListMembershipsOutput.struct_class = Types::ListMembershipsOutput

    ListPrivacyBudgetTemplatesInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListPrivacyBudgetTemplatesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListPrivacyBudgetTemplatesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPrivacyBudgetTemplatesInput.struct_class = Types::ListPrivacyBudgetTemplatesInput

    ListPrivacyBudgetTemplatesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPrivacyBudgetTemplatesOutput.add_member(:privacy_budget_template_summaries, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateSummaryList, required: true, location_name: "privacyBudgetTemplateSummaries"))
    ListPrivacyBudgetTemplatesOutput.struct_class = Types::ListPrivacyBudgetTemplatesOutput

    ListPrivacyBudgetsInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListPrivacyBudgetsInput.add_member(:privacy_budget_type, Shapes::ShapeRef.new(shape: PrivacyBudgetType, required: true, location: "querystring", location_name: "privacyBudgetType"))
    ListPrivacyBudgetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListPrivacyBudgetsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPrivacyBudgetsInput.struct_class = Types::ListPrivacyBudgetsInput

    ListPrivacyBudgetsOutput.add_member(:privacy_budget_summaries, Shapes::ShapeRef.new(shape: PrivacyBudgetSummaryList, required: true, location_name: "privacyBudgetSummaries"))
    ListPrivacyBudgetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPrivacyBudgetsOutput.struct_class = Types::ListPrivacyBudgetsOutput

    ListProtectedJobsInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListProtectedJobsInput.add_member(:status, Shapes::ShapeRef.new(shape: ProtectedJobStatus, location: "querystring", location_name: "status"))
    ListProtectedJobsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProtectedJobsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProtectedJobsInput.struct_class = Types::ListProtectedJobsInput

    ListProtectedJobsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProtectedJobsOutput.add_member(:protected_jobs, Shapes::ShapeRef.new(shape: ProtectedJobSummaryList, required: true, location_name: "protectedJobs"))
    ListProtectedJobsOutput.struct_class = Types::ListProtectedJobsOutput

    ListProtectedQueriesInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    ListProtectedQueriesInput.add_member(:status, Shapes::ShapeRef.new(shape: ProtectedQueryStatus, location: "querystring", location_name: "status"))
    ListProtectedQueriesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProtectedQueriesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProtectedQueriesInput.struct_class = Types::ListProtectedQueriesInput

    ListProtectedQueriesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProtectedQueriesOutput.add_member(:protected_queries, Shapes::ShapeRef.new(shape: ProtectedQuerySummaryList, required: true, location_name: "protectedQueries"))
    ListProtectedQueriesOutput.struct_class = Types::ListProtectedQueriesOutput

    ListSchemasInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListSchemasInput.add_member(:schema_type, Shapes::ShapeRef.new(shape: SchemaType, location: "querystring", location_name: "schemaType"))
    ListSchemasInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListSchemasInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSchemasInput.struct_class = Types::ListSchemasInput

    ListSchemasOutput.add_member(:schema_summaries, Shapes::ShapeRef.new(shape: SchemaSummaryList, required: true, location_name: "schemaSummaries"))
    ListSchemasOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSchemasOutput.struct_class = Types::ListSchemasOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CleanroomsArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    MLMemberAbilities.add_member(:custom_ml_member_abilities, Shapes::ShapeRef.new(shape: CustomMLMemberAbilities, required: true, location_name: "customMLMemberAbilities"))
    MLMemberAbilities.struct_class = Types::MLMemberAbilities

    MLPaymentConfig.add_member(:model_training, Shapes::ShapeRef.new(shape: ModelTrainingPaymentConfig, location_name: "modelTraining"))
    MLPaymentConfig.add_member(:model_inference, Shapes::ShapeRef.new(shape: ModelInferencePaymentConfig, location_name: "modelInference"))
    MLPaymentConfig.struct_class = Types::MLPaymentConfig

    MemberAbilities.member = Shapes::ShapeRef.new(shape: MemberAbility)

    MemberChangeSpecification.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    MemberChangeSpecification.add_member(:member_abilities, Shapes::ShapeRef.new(shape: MemberAbilities, required: true, location_name: "memberAbilities"))
    MemberChangeSpecification.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    MemberChangeSpecification.struct_class = Types::MemberChangeSpecification

    MemberList.member = Shapes::ShapeRef.new(shape: MemberSpecification)

    MemberSpecification.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    MemberSpecification.add_member(:member_abilities, Shapes::ShapeRef.new(shape: MemberAbilities, required: true, location_name: "memberAbilities"))
    MemberSpecification.add_member(:ml_member_abilities, Shapes::ShapeRef.new(shape: MLMemberAbilities, location_name: "mlMemberAbilities"))
    MemberSpecification.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "displayName"))
    MemberSpecification.add_member(:payment_configuration, Shapes::ShapeRef.new(shape: PaymentConfiguration, location_name: "paymentConfiguration"))
    MemberSpecification.struct_class = Types::MemberSpecification

    MemberSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    MemberSummary.add_member(:status, Shapes::ShapeRef.new(shape: MemberStatus, required: true, location_name: "status"))
    MemberSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "displayName"))
    MemberSummary.add_member(:abilities, Shapes::ShapeRef.new(shape: MemberAbilities, required: true, location_name: "abilities"))
    MemberSummary.add_member(:ml_abilities, Shapes::ShapeRef.new(shape: MLMemberAbilities, location_name: "mlAbilities"))
    MemberSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    MemberSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    MemberSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, location_name: "membershipId"))
    MemberSummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, location_name: "membershipArn"))
    MemberSummary.add_member(:payment_configuration, Shapes::ShapeRef.new(shape: PaymentConfiguration, required: true, location_name: "paymentConfiguration"))
    MemberSummary.struct_class = Types::MemberSummary

    MemberSummaryList.member = Shapes::ShapeRef.new(shape: MemberSummary)

    Membership.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    Membership.add_member(:arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "arn"))
    Membership.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    Membership.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    Membership.add_member(:collaboration_creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "collaborationCreatorAccountId"))
    Membership.add_member(:collaboration_creator_display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "collaborationCreatorDisplayName"))
    Membership.add_member(:collaboration_name, Shapes::ShapeRef.new(shape: CollaborationName, required: true, location_name: "collaborationName"))
    Membership.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    Membership.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    Membership.add_member(:status, Shapes::ShapeRef.new(shape: MembershipStatus, required: true, location_name: "status"))
    Membership.add_member(:member_abilities, Shapes::ShapeRef.new(shape: MemberAbilities, required: true, location_name: "memberAbilities"))
    Membership.add_member(:ml_member_abilities, Shapes::ShapeRef.new(shape: MLMemberAbilities, location_name: "mlMemberAbilities"))
    Membership.add_member(:query_log_status, Shapes::ShapeRef.new(shape: MembershipQueryLogStatus, required: true, location_name: "queryLogStatus"))
    Membership.add_member(:job_log_status, Shapes::ShapeRef.new(shape: MembershipJobLogStatus, location_name: "jobLogStatus"))
    Membership.add_member(:default_result_configuration, Shapes::ShapeRef.new(shape: MembershipProtectedQueryResultConfiguration, location_name: "defaultResultConfiguration"))
    Membership.add_member(:default_job_result_configuration, Shapes::ShapeRef.new(shape: MembershipProtectedJobResultConfiguration, location_name: "defaultJobResultConfiguration"))
    Membership.add_member(:payment_configuration, Shapes::ShapeRef.new(shape: MembershipPaymentConfiguration, required: true, location_name: "paymentConfiguration"))
    Membership.struct_class = Types::Membership

    MembershipJobComputePaymentConfig.add_member(:is_responsible, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isResponsible"))
    MembershipJobComputePaymentConfig.struct_class = Types::MembershipJobComputePaymentConfig

    MembershipMLPaymentConfig.add_member(:model_training, Shapes::ShapeRef.new(shape: MembershipModelTrainingPaymentConfig, location_name: "modelTraining"))
    MembershipMLPaymentConfig.add_member(:model_inference, Shapes::ShapeRef.new(shape: MembershipModelInferencePaymentConfig, location_name: "modelInference"))
    MembershipMLPaymentConfig.struct_class = Types::MembershipMLPaymentConfig

    MembershipModelInferencePaymentConfig.add_member(:is_responsible, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isResponsible"))
    MembershipModelInferencePaymentConfig.struct_class = Types::MembershipModelInferencePaymentConfig

    MembershipModelTrainingPaymentConfig.add_member(:is_responsible, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isResponsible"))
    MembershipModelTrainingPaymentConfig.struct_class = Types::MembershipModelTrainingPaymentConfig

    MembershipPaymentConfiguration.add_member(:query_compute, Shapes::ShapeRef.new(shape: MembershipQueryComputePaymentConfig, required: true, location_name: "queryCompute"))
    MembershipPaymentConfiguration.add_member(:machine_learning, Shapes::ShapeRef.new(shape: MembershipMLPaymentConfig, location_name: "machineLearning"))
    MembershipPaymentConfiguration.add_member(:job_compute, Shapes::ShapeRef.new(shape: MembershipJobComputePaymentConfig, location_name: "jobCompute"))
    MembershipPaymentConfiguration.struct_class = Types::MembershipPaymentConfiguration

    MembershipProtectedJobOutputConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: ProtectedJobS3OutputConfigurationInput, location_name: "s3"))
    MembershipProtectedJobOutputConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MembershipProtectedJobOutputConfiguration.add_member_subclass(:s3, Types::MembershipProtectedJobOutputConfiguration::S3)
    MembershipProtectedJobOutputConfiguration.add_member_subclass(:unknown, Types::MembershipProtectedJobOutputConfiguration::Unknown)
    MembershipProtectedJobOutputConfiguration.struct_class = Types::MembershipProtectedJobOutputConfiguration

    MembershipProtectedJobResultConfiguration.add_member(:output_configuration, Shapes::ShapeRef.new(shape: MembershipProtectedJobOutputConfiguration, required: true, location_name: "outputConfiguration"))
    MembershipProtectedJobResultConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    MembershipProtectedJobResultConfiguration.struct_class = Types::MembershipProtectedJobResultConfiguration

    MembershipProtectedQueryOutputConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: ProtectedQueryS3OutputConfiguration, location_name: "s3"))
    MembershipProtectedQueryOutputConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MembershipProtectedQueryOutputConfiguration.add_member_subclass(:s3, Types::MembershipProtectedQueryOutputConfiguration::S3)
    MembershipProtectedQueryOutputConfiguration.add_member_subclass(:unknown, Types::MembershipProtectedQueryOutputConfiguration::Unknown)
    MembershipProtectedQueryOutputConfiguration.struct_class = Types::MembershipProtectedQueryOutputConfiguration

    MembershipProtectedQueryResultConfiguration.add_member(:output_configuration, Shapes::ShapeRef.new(shape: MembershipProtectedQueryOutputConfiguration, required: true, location_name: "outputConfiguration"))
    MembershipProtectedQueryResultConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    MembershipProtectedQueryResultConfiguration.struct_class = Types::MembershipProtectedQueryResultConfiguration

    MembershipQueryComputePaymentConfig.add_member(:is_responsible, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isResponsible"))
    MembershipQueryComputePaymentConfig.struct_class = Types::MembershipQueryComputePaymentConfig

    MembershipSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    MembershipSummary.add_member(:arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "arn"))
    MembershipSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    MembershipSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location_name: "collaborationId"))
    MembershipSummary.add_member(:collaboration_creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "collaborationCreatorAccountId"))
    MembershipSummary.add_member(:collaboration_creator_display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "collaborationCreatorDisplayName"))
    MembershipSummary.add_member(:collaboration_name, Shapes::ShapeRef.new(shape: CollaborationName, required: true, location_name: "collaborationName"))
    MembershipSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    MembershipSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    MembershipSummary.add_member(:status, Shapes::ShapeRef.new(shape: MembershipStatus, required: true, location_name: "status"))
    MembershipSummary.add_member(:member_abilities, Shapes::ShapeRef.new(shape: MemberAbilities, required: true, location_name: "memberAbilities"))
    MembershipSummary.add_member(:ml_member_abilities, Shapes::ShapeRef.new(shape: MLMemberAbilities, location_name: "mlMemberAbilities"))
    MembershipSummary.add_member(:payment_configuration, Shapes::ShapeRef.new(shape: MembershipPaymentConfiguration, required: true, location_name: "paymentConfiguration"))
    MembershipSummary.struct_class = Types::MembershipSummary

    MembershipSummaryList.member = Shapes::ShapeRef.new(shape: MembershipSummary)

    ModelInferencePaymentConfig.add_member(:is_responsible, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isResponsible"))
    ModelInferencePaymentConfig.struct_class = Types::ModelInferencePaymentConfig

    ModelTrainingPaymentConfig.add_member(:is_responsible, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isResponsible"))
    ModelTrainingPaymentConfig.struct_class = Types::ModelTrainingPaymentConfig

    ParameterMap.key = Shapes::ShapeRef.new(shape: ParameterName)
    ParameterMap.value = Shapes::ShapeRef.new(shape: ParameterValue)

    PaymentConfiguration.add_member(:query_compute, Shapes::ShapeRef.new(shape: QueryComputePaymentConfig, required: true, location_name: "queryCompute"))
    PaymentConfiguration.add_member(:machine_learning, Shapes::ShapeRef.new(shape: MLPaymentConfig, location_name: "machineLearning"))
    PaymentConfiguration.add_member(:job_compute, Shapes::ShapeRef.new(shape: JobComputePaymentConfig, location_name: "jobCompute"))
    PaymentConfiguration.struct_class = Types::PaymentConfiguration

    PopulateIdMappingTableInput.add_member(:id_mapping_table_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "idMappingTableIdentifier"))
    PopulateIdMappingTableInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    PopulateIdMappingTableInput.struct_class = Types::PopulateIdMappingTableInput

    PopulateIdMappingTableOutput.add_member(:id_mapping_job_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "idMappingJobId"))
    PopulateIdMappingTableOutput.struct_class = Types::PopulateIdMappingTableOutput

    PreviewPrivacyImpactInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    PreviewPrivacyImpactInput.add_member(:parameters, Shapes::ShapeRef.new(shape: PreviewPrivacyImpactParametersInput, required: true, location_name: "parameters"))
    PreviewPrivacyImpactInput.struct_class = Types::PreviewPrivacyImpactInput

    PreviewPrivacyImpactOutput.add_member(:privacy_impact, Shapes::ShapeRef.new(shape: PrivacyImpact, required: true, location_name: "privacyImpact"))
    PreviewPrivacyImpactOutput.struct_class = Types::PreviewPrivacyImpactOutput

    PreviewPrivacyImpactParametersInput.add_member(:differential_privacy, Shapes::ShapeRef.new(shape: DifferentialPrivacyPreviewParametersInput, location_name: "differentialPrivacy"))
    PreviewPrivacyImpactParametersInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PreviewPrivacyImpactParametersInput.add_member_subclass(:differential_privacy, Types::PreviewPrivacyImpactParametersInput::DifferentialPrivacy)
    PreviewPrivacyImpactParametersInput.add_member_subclass(:unknown, Types::PreviewPrivacyImpactParametersInput::Unknown)
    PreviewPrivacyImpactParametersInput.struct_class = Types::PreviewPrivacyImpactParametersInput

    PrivacyBudget.add_member(:differential_privacy, Shapes::ShapeRef.new(shape: DifferentialPrivacyPrivacyBudget, location_name: "differentialPrivacy"))
    PrivacyBudget.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PrivacyBudget.add_member_subclass(:differential_privacy, Types::PrivacyBudget::DifferentialPrivacy)
    PrivacyBudget.add_member_subclass(:unknown, Types::PrivacyBudget::Unknown)
    PrivacyBudget.struct_class = Types::PrivacyBudget

    PrivacyBudgetSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    PrivacyBudgetSummary.add_member(:privacy_budget_template_id, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, required: true, location_name: "privacyBudgetTemplateId"))
    PrivacyBudgetSummary.add_member(:privacy_budget_template_arn, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateArn, required: true, location_name: "privacyBudgetTemplateArn"))
    PrivacyBudgetSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location_name: "membershipId"))
    PrivacyBudgetSummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    PrivacyBudgetSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    PrivacyBudgetSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    PrivacyBudgetSummary.add_member(:type, Shapes::ShapeRef.new(shape: PrivacyBudgetType, required: true, location_name: "type"))
    PrivacyBudgetSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    PrivacyBudgetSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    PrivacyBudgetSummary.add_member(:budget, Shapes::ShapeRef.new(shape: PrivacyBudget, required: true, location_name: "budget"))
    PrivacyBudgetSummary.struct_class = Types::PrivacyBudgetSummary

    PrivacyBudgetSummaryList.member = Shapes::ShapeRef.new(shape: PrivacyBudgetSummary)

    PrivacyBudgetTemplate.add_member(:id, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, required: true, location_name: "id"))
    PrivacyBudgetTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateArn, required: true, location_name: "arn"))
    PrivacyBudgetTemplate.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipId"))
    PrivacyBudgetTemplate.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    PrivacyBudgetTemplate.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    PrivacyBudgetTemplate.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    PrivacyBudgetTemplate.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    PrivacyBudgetTemplate.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    PrivacyBudgetTemplate.add_member(:privacy_budget_type, Shapes::ShapeRef.new(shape: PrivacyBudgetType, required: true, location_name: "privacyBudgetType"))
    PrivacyBudgetTemplate.add_member(:auto_refresh, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateAutoRefresh, required: true, location_name: "autoRefresh"))
    PrivacyBudgetTemplate.add_member(:parameters, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateParametersOutput, required: true, location_name: "parameters"))
    PrivacyBudgetTemplate.struct_class = Types::PrivacyBudgetTemplate

    PrivacyBudgetTemplateParametersInput.add_member(:differential_privacy, Shapes::ShapeRef.new(shape: DifferentialPrivacyTemplateParametersInput, location_name: "differentialPrivacy"))
    PrivacyBudgetTemplateParametersInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PrivacyBudgetTemplateParametersInput.add_member_subclass(:differential_privacy, Types::PrivacyBudgetTemplateParametersInput::DifferentialPrivacy)
    PrivacyBudgetTemplateParametersInput.add_member_subclass(:unknown, Types::PrivacyBudgetTemplateParametersInput::Unknown)
    PrivacyBudgetTemplateParametersInput.struct_class = Types::PrivacyBudgetTemplateParametersInput

    PrivacyBudgetTemplateParametersOutput.add_member(:differential_privacy, Shapes::ShapeRef.new(shape: DifferentialPrivacyTemplateParametersOutput, location_name: "differentialPrivacy"))
    PrivacyBudgetTemplateParametersOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PrivacyBudgetTemplateParametersOutput.add_member_subclass(:differential_privacy, Types::PrivacyBudgetTemplateParametersOutput::DifferentialPrivacy)
    PrivacyBudgetTemplateParametersOutput.add_member_subclass(:unknown, Types::PrivacyBudgetTemplateParametersOutput::Unknown)
    PrivacyBudgetTemplateParametersOutput.struct_class = Types::PrivacyBudgetTemplateParametersOutput

    PrivacyBudgetTemplateSummary.add_member(:id, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, required: true, location_name: "id"))
    PrivacyBudgetTemplateSummary.add_member(:arn, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateArn, required: true, location_name: "arn"))
    PrivacyBudgetTemplateSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipId"))
    PrivacyBudgetTemplateSummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    PrivacyBudgetTemplateSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    PrivacyBudgetTemplateSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    PrivacyBudgetTemplateSummary.add_member(:privacy_budget_type, Shapes::ShapeRef.new(shape: PrivacyBudgetType, required: true, location_name: "privacyBudgetType"))
    PrivacyBudgetTemplateSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    PrivacyBudgetTemplateSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    PrivacyBudgetTemplateSummary.struct_class = Types::PrivacyBudgetTemplateSummary

    PrivacyBudgetTemplateSummaryList.member = Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateSummary)

    PrivacyBudgetTemplateUpdateParameters.add_member(:differential_privacy, Shapes::ShapeRef.new(shape: DifferentialPrivacyTemplateUpdateParameters, location_name: "differentialPrivacy"))
    PrivacyBudgetTemplateUpdateParameters.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PrivacyBudgetTemplateUpdateParameters.add_member_subclass(:differential_privacy, Types::PrivacyBudgetTemplateUpdateParameters::DifferentialPrivacy)
    PrivacyBudgetTemplateUpdateParameters.add_member_subclass(:unknown, Types::PrivacyBudgetTemplateUpdateParameters::Unknown)
    PrivacyBudgetTemplateUpdateParameters.struct_class = Types::PrivacyBudgetTemplateUpdateParameters

    PrivacyImpact.add_member(:differential_privacy, Shapes::ShapeRef.new(shape: DifferentialPrivacyPrivacyImpact, location_name: "differentialPrivacy"))
    PrivacyImpact.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PrivacyImpact.add_member_subclass(:differential_privacy, Types::PrivacyImpact::DifferentialPrivacy)
    PrivacyImpact.add_member_subclass(:unknown, Types::PrivacyImpact::Unknown)
    PrivacyImpact.struct_class = Types::PrivacyImpact

    ProtectedJob.add_member(:id, Shapes::ShapeRef.new(shape: ProtectedJobIdentifier, required: true, location_name: "id"))
    ProtectedJob.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location_name: "membershipId"))
    ProtectedJob.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    ProtectedJob.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ProtectedJob.add_member(:job_parameters, Shapes::ShapeRef.new(shape: ProtectedJobParameters, location_name: "jobParameters"))
    ProtectedJob.add_member(:status, Shapes::ShapeRef.new(shape: ProtectedJobStatus, required: true, location_name: "status"))
    ProtectedJob.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ProtectedJobResultConfigurationOutput, location_name: "resultConfiguration"))
    ProtectedJob.add_member(:statistics, Shapes::ShapeRef.new(shape: ProtectedJobStatistics, location_name: "statistics"))
    ProtectedJob.add_member(:result, Shapes::ShapeRef.new(shape: ProtectedJobResult, location_name: "result"))
    ProtectedJob.add_member(:error, Shapes::ShapeRef.new(shape: ProtectedJobError, location_name: "error"))
    ProtectedJob.add_member(:compute_configuration, Shapes::ShapeRef.new(shape: ProtectedJobComputeConfiguration, location_name: "computeConfiguration"))
    ProtectedJob.struct_class = Types::ProtectedJob

    ProtectedJobComputeConfiguration.add_member(:worker, Shapes::ShapeRef.new(shape: ProtectedJobWorkerComputeConfiguration, location_name: "worker"))
    ProtectedJobComputeConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProtectedJobComputeConfiguration.add_member_subclass(:worker, Types::ProtectedJobComputeConfiguration::Worker)
    ProtectedJobComputeConfiguration.add_member_subclass(:unknown, Types::ProtectedJobComputeConfiguration::Unknown)
    ProtectedJobComputeConfiguration.struct_class = Types::ProtectedJobComputeConfiguration

    ProtectedJobConfigurationDetails.add_member(:direct_analysis_configuration_details, Shapes::ShapeRef.new(shape: ProtectedJobDirectAnalysisConfigurationDetails, location_name: "directAnalysisConfigurationDetails"))
    ProtectedJobConfigurationDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProtectedJobConfigurationDetails.add_member_subclass(:direct_analysis_configuration_details, Types::ProtectedJobConfigurationDetails::DirectAnalysisConfigurationDetails)
    ProtectedJobConfigurationDetails.add_member_subclass(:unknown, Types::ProtectedJobConfigurationDetails::Unknown)
    ProtectedJobConfigurationDetails.struct_class = Types::ProtectedJobConfigurationDetails

    ProtectedJobDirectAnalysisConfigurationDetails.add_member(:receiver_account_ids, Shapes::ShapeRef.new(shape: ProtectedJobReceiverAccountIds, location_name: "receiverAccountIds"))
    ProtectedJobDirectAnalysisConfigurationDetails.struct_class = Types::ProtectedJobDirectAnalysisConfigurationDetails

    ProtectedJobError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ProtectedJobError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ProtectedJobError.struct_class = Types::ProtectedJobError

    ProtectedJobMemberOutputConfigurationInput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    ProtectedJobMemberOutputConfigurationInput.struct_class = Types::ProtectedJobMemberOutputConfigurationInput

    ProtectedJobMemberOutputConfigurationOutput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    ProtectedJobMemberOutputConfigurationOutput.struct_class = Types::ProtectedJobMemberOutputConfigurationOutput

    ProtectedJobMemberOutputList.member = Shapes::ShapeRef.new(shape: ProtectedJobSingleMemberOutput)

    ProtectedJobOutput.add_member(:s3, Shapes::ShapeRef.new(shape: ProtectedJobS3Output, location_name: "s3"))
    ProtectedJobOutput.add_member(:member_list, Shapes::ShapeRef.new(shape: ProtectedJobMemberOutputList, location_name: "memberList"))
    ProtectedJobOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProtectedJobOutput.add_member_subclass(:s3, Types::ProtectedJobOutput::S3)
    ProtectedJobOutput.add_member_subclass(:member_list, Types::ProtectedJobOutput::MemberList)
    ProtectedJobOutput.add_member_subclass(:unknown, Types::ProtectedJobOutput::Unknown)
    ProtectedJobOutput.struct_class = Types::ProtectedJobOutput

    ProtectedJobOutputConfigurationInput.add_member(:member, Shapes::ShapeRef.new(shape: ProtectedJobMemberOutputConfigurationInput, location_name: "member"))
    ProtectedJobOutputConfigurationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProtectedJobOutputConfigurationInput.add_member_subclass(:member, Types::ProtectedJobOutputConfigurationInput::Member)
    ProtectedJobOutputConfigurationInput.add_member_subclass(:unknown, Types::ProtectedJobOutputConfigurationInput::Unknown)
    ProtectedJobOutputConfigurationInput.struct_class = Types::ProtectedJobOutputConfigurationInput

    ProtectedJobOutputConfigurationOutput.add_member(:s3, Shapes::ShapeRef.new(shape: ProtectedJobS3OutputConfigurationOutput, location_name: "s3"))
    ProtectedJobOutputConfigurationOutput.add_member(:member, Shapes::ShapeRef.new(shape: ProtectedJobMemberOutputConfigurationOutput, location_name: "member"))
    ProtectedJobOutputConfigurationOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProtectedJobOutputConfigurationOutput.add_member_subclass(:s3, Types::ProtectedJobOutputConfigurationOutput::S3)
    ProtectedJobOutputConfigurationOutput.add_member_subclass(:member, Types::ProtectedJobOutputConfigurationOutput::Member)
    ProtectedJobOutputConfigurationOutput.add_member_subclass(:unknown, Types::ProtectedJobOutputConfigurationOutput::Unknown)
    ProtectedJobOutputConfigurationOutput.struct_class = Types::ProtectedJobOutputConfigurationOutput

    ProtectedJobParameters.add_member(:analysis_template_arn, Shapes::ShapeRef.new(shape: AnalysisTemplateArn, location_name: "analysisTemplateArn"))
    ProtectedJobParameters.struct_class = Types::ProtectedJobParameters

    ProtectedJobReceiverAccountIds.member = Shapes::ShapeRef.new(shape: AccountId)

    ProtectedJobReceiverConfiguration.add_member(:analysis_type, Shapes::ShapeRef.new(shape: ProtectedJobAnalysisType, required: true, location_name: "analysisType"))
    ProtectedJobReceiverConfiguration.add_member(:configuration_details, Shapes::ShapeRef.new(shape: ProtectedJobConfigurationDetails, location_name: "configurationDetails"))
    ProtectedJobReceiverConfiguration.struct_class = Types::ProtectedJobReceiverConfiguration

    ProtectedJobReceiverConfigurations.member = Shapes::ShapeRef.new(shape: ProtectedJobReceiverConfiguration)

    ProtectedJobResult.add_member(:output, Shapes::ShapeRef.new(shape: ProtectedJobOutput, required: true, location_name: "output"))
    ProtectedJobResult.struct_class = Types::ProtectedJobResult

    ProtectedJobResultConfigurationInput.add_member(:output_configuration, Shapes::ShapeRef.new(shape: ProtectedJobOutputConfigurationInput, required: true, location_name: "outputConfiguration"))
    ProtectedJobResultConfigurationInput.struct_class = Types::ProtectedJobResultConfigurationInput

    ProtectedJobResultConfigurationOutput.add_member(:output_configuration, Shapes::ShapeRef.new(shape: ProtectedJobOutputConfigurationOutput, required: true, location_name: "outputConfiguration"))
    ProtectedJobResultConfigurationOutput.struct_class = Types::ProtectedJobResultConfigurationOutput

    ProtectedJobS3Output.add_member(:location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "location"))
    ProtectedJobS3Output.struct_class = Types::ProtectedJobS3Output

    ProtectedJobS3OutputConfigurationInput.add_member(:bucket, Shapes::ShapeRef.new(shape: ProtectedJobS3OutputConfigurationInputBucketString, required: true, location_name: "bucket"))
    ProtectedJobS3OutputConfigurationInput.add_member(:key_prefix, Shapes::ShapeRef.new(shape: KeyPrefix, location_name: "keyPrefix"))
    ProtectedJobS3OutputConfigurationInput.struct_class = Types::ProtectedJobS3OutputConfigurationInput

    ProtectedJobS3OutputConfigurationOutput.add_member(:bucket, Shapes::ShapeRef.new(shape: ProtectedJobS3OutputConfigurationOutputBucketString, required: true, location_name: "bucket"))
    ProtectedJobS3OutputConfigurationOutput.add_member(:key_prefix, Shapes::ShapeRef.new(shape: KeyPrefix, location_name: "keyPrefix"))
    ProtectedJobS3OutputConfigurationOutput.struct_class = Types::ProtectedJobS3OutputConfigurationOutput

    ProtectedJobSingleMemberOutput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    ProtectedJobSingleMemberOutput.struct_class = Types::ProtectedJobSingleMemberOutput

    ProtectedJobStatistics.add_member(:total_duration_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "totalDurationInMillis"))
    ProtectedJobStatistics.add_member(:billed_resource_utilization, Shapes::ShapeRef.new(shape: BilledJobResourceUtilization, location_name: "billedResourceUtilization"))
    ProtectedJobStatistics.struct_class = Types::ProtectedJobStatistics

    ProtectedJobSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    ProtectedJobSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location_name: "membershipId"))
    ProtectedJobSummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    ProtectedJobSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ProtectedJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: ProtectedJobStatus, required: true, location_name: "status"))
    ProtectedJobSummary.add_member(:receiver_configurations, Shapes::ShapeRef.new(shape: ProtectedJobReceiverConfigurations, required: true, location_name: "receiverConfigurations"))
    ProtectedJobSummary.struct_class = Types::ProtectedJobSummary

    ProtectedJobSummaryList.member = Shapes::ShapeRef.new(shape: ProtectedJobSummary)

    ProtectedJobWorkerComputeConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: ProtectedJobWorkerComputeType, required: true, location_name: "type"))
    ProtectedJobWorkerComputeConfiguration.add_member(:number, Shapes::ShapeRef.new(shape: ProtectedJobWorkerComputeConfigurationNumberInteger, required: true, location_name: "number"))
    ProtectedJobWorkerComputeConfiguration.struct_class = Types::ProtectedJobWorkerComputeConfiguration

    ProtectedQuery.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    ProtectedQuery.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipId"))
    ProtectedQuery.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    ProtectedQuery.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ProtectedQuery.add_member(:sql_parameters, Shapes::ShapeRef.new(shape: ProtectedQuerySQLParameters, location_name: "sqlParameters"))
    ProtectedQuery.add_member(:status, Shapes::ShapeRef.new(shape: ProtectedQueryStatus, required: true, location_name: "status"))
    ProtectedQuery.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ProtectedQueryResultConfiguration, location_name: "resultConfiguration"))
    ProtectedQuery.add_member(:statistics, Shapes::ShapeRef.new(shape: ProtectedQueryStatistics, location_name: "statistics"))
    ProtectedQuery.add_member(:result, Shapes::ShapeRef.new(shape: ProtectedQueryResult, location_name: "result"))
    ProtectedQuery.add_member(:error, Shapes::ShapeRef.new(shape: ProtectedQueryError, location_name: "error"))
    ProtectedQuery.add_member(:differential_privacy, Shapes::ShapeRef.new(shape: DifferentialPrivacyParameters, location_name: "differentialPrivacy"))
    ProtectedQuery.add_member(:compute_configuration, Shapes::ShapeRef.new(shape: ComputeConfiguration, location_name: "computeConfiguration"))
    ProtectedQuery.struct_class = Types::ProtectedQuery

    ProtectedQueryDistributeOutput.add_member(:s3, Shapes::ShapeRef.new(shape: ProtectedQueryS3Output, location_name: "s3"))
    ProtectedQueryDistributeOutput.add_member(:member_list, Shapes::ShapeRef.new(shape: ProtectedQueryMemberOutputList, location_name: "memberList"))
    ProtectedQueryDistributeOutput.struct_class = Types::ProtectedQueryDistributeOutput

    ProtectedQueryDistributeOutputConfiguration.add_member(:locations, Shapes::ShapeRef.new(shape: ProtectedQueryDistributeOutputConfigurationLocationsList, required: true, location_name: "locations"))
    ProtectedQueryDistributeOutputConfiguration.struct_class = Types::ProtectedQueryDistributeOutputConfiguration

    ProtectedQueryDistributeOutputConfigurationLocation.add_member(:s3, Shapes::ShapeRef.new(shape: ProtectedQueryS3OutputConfiguration, location_name: "s3"))
    ProtectedQueryDistributeOutputConfigurationLocation.add_member(:member, Shapes::ShapeRef.new(shape: ProtectedQueryMemberOutputConfiguration, location_name: "member"))
    ProtectedQueryDistributeOutputConfigurationLocation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProtectedQueryDistributeOutputConfigurationLocation.add_member_subclass(:s3, Types::ProtectedQueryDistributeOutputConfigurationLocation::S3)
    ProtectedQueryDistributeOutputConfigurationLocation.add_member_subclass(:member, Types::ProtectedQueryDistributeOutputConfigurationLocation::Member)
    ProtectedQueryDistributeOutputConfigurationLocation.add_member_subclass(:unknown, Types::ProtectedQueryDistributeOutputConfigurationLocation::Unknown)
    ProtectedQueryDistributeOutputConfigurationLocation.struct_class = Types::ProtectedQueryDistributeOutputConfigurationLocation

    ProtectedQueryDistributeOutputConfigurationLocationsList.member = Shapes::ShapeRef.new(shape: ProtectedQueryDistributeOutputConfigurationLocation)

    ProtectedQueryError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ProtectedQueryError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ProtectedQueryError.struct_class = Types::ProtectedQueryError

    ProtectedQueryMemberOutputConfiguration.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    ProtectedQueryMemberOutputConfiguration.struct_class = Types::ProtectedQueryMemberOutputConfiguration

    ProtectedQueryMemberOutputList.member = Shapes::ShapeRef.new(shape: ProtectedQuerySingleMemberOutput)

    ProtectedQueryOutput.add_member(:s3, Shapes::ShapeRef.new(shape: ProtectedQueryS3Output, location_name: "s3"))
    ProtectedQueryOutput.add_member(:member_list, Shapes::ShapeRef.new(shape: ProtectedQueryMemberOutputList, location_name: "memberList"))
    ProtectedQueryOutput.add_member(:distribute, Shapes::ShapeRef.new(shape: ProtectedQueryDistributeOutput, location_name: "distribute"))
    ProtectedQueryOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProtectedQueryOutput.add_member_subclass(:s3, Types::ProtectedQueryOutput::S3)
    ProtectedQueryOutput.add_member_subclass(:member_list, Types::ProtectedQueryOutput::MemberList)
    ProtectedQueryOutput.add_member_subclass(:distribute, Types::ProtectedQueryOutput::Distribute)
    ProtectedQueryOutput.add_member_subclass(:unknown, Types::ProtectedQueryOutput::Unknown)
    ProtectedQueryOutput.struct_class = Types::ProtectedQueryOutput

    ProtectedQueryOutputConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: ProtectedQueryS3OutputConfiguration, location_name: "s3"))
    ProtectedQueryOutputConfiguration.add_member(:member, Shapes::ShapeRef.new(shape: ProtectedQueryMemberOutputConfiguration, location_name: "member"))
    ProtectedQueryOutputConfiguration.add_member(:distribute, Shapes::ShapeRef.new(shape: ProtectedQueryDistributeOutputConfiguration, location_name: "distribute"))
    ProtectedQueryOutputConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProtectedQueryOutputConfiguration.add_member_subclass(:s3, Types::ProtectedQueryOutputConfiguration::S3)
    ProtectedQueryOutputConfiguration.add_member_subclass(:member, Types::ProtectedQueryOutputConfiguration::Member)
    ProtectedQueryOutputConfiguration.add_member_subclass(:distribute, Types::ProtectedQueryOutputConfiguration::Distribute)
    ProtectedQueryOutputConfiguration.add_member_subclass(:unknown, Types::ProtectedQueryOutputConfiguration::Unknown)
    ProtectedQueryOutputConfiguration.struct_class = Types::ProtectedQueryOutputConfiguration

    ProtectedQueryResult.add_member(:output, Shapes::ShapeRef.new(shape: ProtectedQueryOutput, required: true, location_name: "output"))
    ProtectedQueryResult.struct_class = Types::ProtectedQueryResult

    ProtectedQueryResultConfiguration.add_member(:output_configuration, Shapes::ShapeRef.new(shape: ProtectedQueryOutputConfiguration, required: true, location_name: "outputConfiguration"))
    ProtectedQueryResultConfiguration.struct_class = Types::ProtectedQueryResultConfiguration

    ProtectedQueryS3Output.add_member(:location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "location"))
    ProtectedQueryS3Output.struct_class = Types::ProtectedQueryS3Output

    ProtectedQueryS3OutputConfiguration.add_member(:result_format, Shapes::ShapeRef.new(shape: ResultFormat, required: true, location_name: "resultFormat"))
    ProtectedQueryS3OutputConfiguration.add_member(:bucket, Shapes::ShapeRef.new(shape: ProtectedQueryS3OutputConfigurationBucketString, required: true, location_name: "bucket"))
    ProtectedQueryS3OutputConfiguration.add_member(:key_prefix, Shapes::ShapeRef.new(shape: KeyPrefix, location_name: "keyPrefix"))
    ProtectedQueryS3OutputConfiguration.add_member(:single_file_output, Shapes::ShapeRef.new(shape: Boolean, location_name: "singleFileOutput"))
    ProtectedQueryS3OutputConfiguration.struct_class = Types::ProtectedQueryS3OutputConfiguration

    ProtectedQuerySQLParameters.add_member(:query_string, Shapes::ShapeRef.new(shape: ProtectedQuerySQLParametersQueryStringString, location_name: "queryString"))
    ProtectedQuerySQLParameters.add_member(:analysis_template_arn, Shapes::ShapeRef.new(shape: AnalysisTemplateArn, location_name: "analysisTemplateArn"))
    ProtectedQuerySQLParameters.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMap, location_name: "parameters"))
    ProtectedQuerySQLParameters.struct_class = Types::ProtectedQuerySQLParameters

    ProtectedQuerySingleMemberOutput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    ProtectedQuerySingleMemberOutput.struct_class = Types::ProtectedQuerySingleMemberOutput

    ProtectedQueryStatistics.add_member(:total_duration_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "totalDurationInMillis"))
    ProtectedQueryStatistics.add_member(:billed_resource_utilization, Shapes::ShapeRef.new(shape: BilledResourceUtilization, location_name: "billedResourceUtilization"))
    ProtectedQueryStatistics.struct_class = Types::ProtectedQueryStatistics

    ProtectedQuerySummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    ProtectedQuerySummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipId"))
    ProtectedQuerySummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    ProtectedQuerySummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ProtectedQuerySummary.add_member(:status, Shapes::ShapeRef.new(shape: ProtectedQueryStatus, required: true, location_name: "status"))
    ProtectedQuerySummary.add_member(:receiver_configurations, Shapes::ShapeRef.new(shape: ReceiverConfigurationsList, required: true, location_name: "receiverConfigurations"))
    ProtectedQuerySummary.struct_class = Types::ProtectedQuerySummary

    ProtectedQuerySummaryList.member = Shapes::ShapeRef.new(shape: ProtectedQuerySummary)

    QueryComputePaymentConfig.add_member(:is_responsible, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isResponsible"))
    QueryComputePaymentConfig.struct_class = Types::QueryComputePaymentConfig

    QueryConstraint.add_member(:require_overlap, Shapes::ShapeRef.new(shape: QueryConstraintRequireOverlap, location_name: "requireOverlap"))
    QueryConstraint.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    QueryConstraint.add_member_subclass(:require_overlap, Types::QueryConstraint::RequireOverlap)
    QueryConstraint.add_member_subclass(:unknown, Types::QueryConstraint::Unknown)
    QueryConstraint.struct_class = Types::QueryConstraint

    QueryConstraintList.member = Shapes::ShapeRef.new(shape: QueryConstraint)

    QueryConstraintRequireOverlap.add_member(:columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, location_name: "columns"))
    QueryConstraintRequireOverlap.struct_class = Types::QueryConstraintRequireOverlap

    QueryTables.member = Shapes::ShapeRef.new(shape: TableAlias)

    ReceiverAccountIds.member = Shapes::ShapeRef.new(shape: AccountId)

    ReceiverConfiguration.add_member(:analysis_type, Shapes::ShapeRef.new(shape: AnalysisType, required: true, location_name: "analysisType"))
    ReceiverConfiguration.add_member(:configuration_details, Shapes::ShapeRef.new(shape: ConfigurationDetails, location_name: "configurationDetails"))
    ReceiverConfiguration.struct_class = Types::ReceiverConfiguration

    ReceiverConfigurationsList.member = Shapes::ShapeRef.new(shape: ReceiverConfiguration)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: S3LocationBucketString, required: true, location_name: "bucket"))
    S3Location.add_member(:key, Shapes::ShapeRef.new(shape: S3LocationKeyString, required: true, location_name: "key"))
    S3Location.struct_class = Types::S3Location

    ScalarFunctionsList.member = Shapes::ShapeRef.new(shape: ScalarFunctions)

    Schema.add_member(:columns, Shapes::ShapeRef.new(shape: ColumnList, required: true, location_name: "columns"))
    Schema.add_member(:partition_keys, Shapes::ShapeRef.new(shape: ColumnList, required: true, location_name: "partitionKeys"))
    Schema.add_member(:analysis_rule_types, Shapes::ShapeRef.new(shape: AnalysisRuleTypeList, required: true, location_name: "analysisRuleTypes"))
    Schema.add_member(:analysis_method, Shapes::ShapeRef.new(shape: AnalysisMethod, location_name: "analysisMethod"))
    Schema.add_member(:selected_analysis_methods, Shapes::ShapeRef.new(shape: SelectedAnalysisMethods, location_name: "selectedAnalysisMethods"))
    Schema.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    Schema.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    Schema.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    Schema.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    Schema.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, required: true, location_name: "description"))
    Schema.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    Schema.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    Schema.add_member(:type, Shapes::ShapeRef.new(shape: SchemaType, required: true, location_name: "type"))
    Schema.add_member(:schema_status_details, Shapes::ShapeRef.new(shape: SchemaStatusDetailList, required: true, location_name: "schemaStatusDetails"))
    Schema.add_member(:schema_type_properties, Shapes::ShapeRef.new(shape: SchemaTypeProperties, location_name: "schemaTypeProperties"))
    Schema.struct_class = Types::Schema

    SchemaAnalysisRuleList.member = Shapes::ShapeRef.new(shape: AnalysisRule)

    SchemaAnalysisRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    SchemaAnalysisRuleRequest.add_member(:type, Shapes::ShapeRef.new(shape: AnalysisRuleType, required: true, location_name: "type"))
    SchemaAnalysisRuleRequest.struct_class = Types::SchemaAnalysisRuleRequest

    SchemaAnalysisRuleRequestList.member = Shapes::ShapeRef.new(shape: SchemaAnalysisRuleRequest)

    SchemaConfigurationList.member = Shapes::ShapeRef.new(shape: SchemaConfiguration)

    SchemaList.member = Shapes::ShapeRef.new(shape: Schema)

    SchemaStatusDetail.add_member(:status, Shapes::ShapeRef.new(shape: SchemaStatus, required: true, location_name: "status"))
    SchemaStatusDetail.add_member(:reasons, Shapes::ShapeRef.new(shape: SchemaStatusReasonList, location_name: "reasons"))
    SchemaStatusDetail.add_member(:analysis_rule_type, Shapes::ShapeRef.new(shape: AnalysisRuleType, location_name: "analysisRuleType"))
    SchemaStatusDetail.add_member(:configurations, Shapes::ShapeRef.new(shape: SchemaConfigurationList, location_name: "configurations"))
    SchemaStatusDetail.add_member(:analysis_type, Shapes::ShapeRef.new(shape: AnalysisType, required: true, location_name: "analysisType"))
    SchemaStatusDetail.struct_class = Types::SchemaStatusDetail

    SchemaStatusDetailList.member = Shapes::ShapeRef.new(shape: SchemaStatusDetail)

    SchemaStatusReason.add_member(:code, Shapes::ShapeRef.new(shape: SchemaStatusReasonCode, required: true, location_name: "code"))
    SchemaStatusReason.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    SchemaStatusReason.struct_class = Types::SchemaStatusReason

    SchemaStatusReasonList.member = Shapes::ShapeRef.new(shape: SchemaStatusReason)

    SchemaSummary.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    SchemaSummary.add_member(:type, Shapes::ShapeRef.new(shape: SchemaType, required: true, location_name: "type"))
    SchemaSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    SchemaSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    SchemaSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    SchemaSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    SchemaSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    SchemaSummary.add_member(:analysis_rule_types, Shapes::ShapeRef.new(shape: AnalysisRuleTypeList, required: true, location_name: "analysisRuleTypes"))
    SchemaSummary.add_member(:analysis_method, Shapes::ShapeRef.new(shape: AnalysisMethod, location_name: "analysisMethod"))
    SchemaSummary.add_member(:selected_analysis_methods, Shapes::ShapeRef.new(shape: SelectedAnalysisMethods, location_name: "selectedAnalysisMethods"))
    SchemaSummary.struct_class = Types::SchemaSummary

    SchemaSummaryList.member = Shapes::ShapeRef.new(shape: SchemaSummary)

    SchemaTypeProperties.add_member(:id_mapping_table, Shapes::ShapeRef.new(shape: IdMappingTableSchemaTypeProperties, location_name: "idMappingTable"))
    SchemaTypeProperties.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SchemaTypeProperties.add_member_subclass(:id_mapping_table, Types::SchemaTypeProperties::IdMappingTable)
    SchemaTypeProperties.add_member_subclass(:unknown, Types::SchemaTypeProperties::Unknown)
    SchemaTypeProperties.struct_class = Types::SchemaTypeProperties

    SelectedAnalysisMethods.member = Shapes::ShapeRef.new(shape: SelectedAnalysisMethod)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaName"))
    ServiceQuotaExceededException.add_member(:quota_value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "quotaValue"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SnowflakeTableReference.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretsManagerArn, required: true, location_name: "secretArn"))
    SnowflakeTableReference.add_member(:account_identifier, Shapes::ShapeRef.new(shape: SnowflakeAccountIdentifier, required: true, location_name: "accountIdentifier"))
    SnowflakeTableReference.add_member(:database_name, Shapes::ShapeRef.new(shape: SnowflakeDatabaseName, required: true, location_name: "databaseName"))
    SnowflakeTableReference.add_member(:table_name, Shapes::ShapeRef.new(shape: SnowflakeTableName, required: true, location_name: "tableName"))
    SnowflakeTableReference.add_member(:schema_name, Shapes::ShapeRef.new(shape: SnowflakeSchemaName, required: true, location_name: "schemaName"))
    SnowflakeTableReference.add_member(:table_schema, Shapes::ShapeRef.new(shape: SnowflakeTableSchema, required: true, location_name: "tableSchema"))
    SnowflakeTableReference.struct_class = Types::SnowflakeTableReference

    SnowflakeTableSchema.add_member(:v1, Shapes::ShapeRef.new(shape: SnowflakeTableSchemaList, location_name: "v1"))
    SnowflakeTableSchema.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SnowflakeTableSchema.add_member_subclass(:v1, Types::SnowflakeTableSchema::V1)
    SnowflakeTableSchema.add_member_subclass(:unknown, Types::SnowflakeTableSchema::Unknown)
    SnowflakeTableSchema.struct_class = Types::SnowflakeTableSchema

    SnowflakeTableSchemaList.member = Shapes::ShapeRef.new(shape: SnowflakeTableSchemaV1)

    SnowflakeTableSchemaV1.add_member(:column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "columnName"))
    SnowflakeTableSchemaV1.add_member(:column_type, Shapes::ShapeRef.new(shape: ColumnTypeString, required: true, location_name: "columnType"))
    SnowflakeTableSchemaV1.struct_class = Types::SnowflakeTableSchemaV1

    StartProtectedJobInput.add_member(:type, Shapes::ShapeRef.new(shape: ProtectedJobType, required: true, location_name: "type"))
    StartProtectedJobInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    StartProtectedJobInput.add_member(:job_parameters, Shapes::ShapeRef.new(shape: ProtectedJobParameters, required: true, location_name: "jobParameters"))
    StartProtectedJobInput.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ProtectedJobResultConfigurationInput, location_name: "resultConfiguration"))
    StartProtectedJobInput.add_member(:compute_configuration, Shapes::ShapeRef.new(shape: ProtectedJobComputeConfiguration, location_name: "computeConfiguration"))
    StartProtectedJobInput.struct_class = Types::StartProtectedJobInput

    StartProtectedJobOutput.add_member(:protected_job, Shapes::ShapeRef.new(shape: ProtectedJob, required: true, location_name: "protectedJob"))
    StartProtectedJobOutput.struct_class = Types::StartProtectedJobOutput

    StartProtectedQueryInput.add_member(:type, Shapes::ShapeRef.new(shape: ProtectedQueryType, required: true, location_name: "type"))
    StartProtectedQueryInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    StartProtectedQueryInput.add_member(:sql_parameters, Shapes::ShapeRef.new(shape: ProtectedQuerySQLParameters, required: true, location_name: "sqlParameters"))
    StartProtectedQueryInput.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ProtectedQueryResultConfiguration, location_name: "resultConfiguration"))
    StartProtectedQueryInput.add_member(:compute_configuration, Shapes::ShapeRef.new(shape: ComputeConfiguration, location_name: "computeConfiguration"))
    StartProtectedQueryInput.struct_class = Types::StartProtectedQueryInput

    StartProtectedQueryOutput.add_member(:protected_query, Shapes::ShapeRef.new(shape: ProtectedQuery, required: true, location_name: "protectedQuery"))
    StartProtectedQueryOutput.struct_class = Types::StartProtectedQueryOutput

    TableAliasList.member = Shapes::ShapeRef.new(shape: TableAlias)

    TableReference.add_member(:glue, Shapes::ShapeRef.new(shape: GlueTableReference, location_name: "glue"))
    TableReference.add_member(:snowflake, Shapes::ShapeRef.new(shape: SnowflakeTableReference, location_name: "snowflake"))
    TableReference.add_member(:athena, Shapes::ShapeRef.new(shape: AthenaTableReference, location_name: "athena"))
    TableReference.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TableReference.add_member_subclass(:glue, Types::TableReference::Glue)
    TableReference.add_member_subclass(:snowflake, Types::TableReference::Snowflake)
    TableReference.add_member_subclass(:athena, Types::TableReference::Athena)
    TableReference.add_member_subclass(:unknown, Types::TableReference::Unknown)
    TableReference.struct_class = Types::TableReference

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CleanroomsArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CleanroomsArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateAnalysisTemplateInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    UpdateAnalysisTemplateInput.add_member(:analysis_template_identifier, Shapes::ShapeRef.new(shape: AnalysisTemplateIdentifier, required: true, location: "uri", location_name: "analysisTemplateIdentifier"))
    UpdateAnalysisTemplateInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateAnalysisTemplateInput.struct_class = Types::UpdateAnalysisTemplateInput

    UpdateAnalysisTemplateOutput.add_member(:analysis_template, Shapes::ShapeRef.new(shape: AnalysisTemplate, required: true, location_name: "analysisTemplate"))
    UpdateAnalysisTemplateOutput.struct_class = Types::UpdateAnalysisTemplateOutput

    UpdateCollaborationInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    UpdateCollaborationInput.add_member(:name, Shapes::ShapeRef.new(shape: CollaborationName, location_name: "name"))
    UpdateCollaborationInput.add_member(:description, Shapes::ShapeRef.new(shape: CollaborationDescription, location_name: "description"))
    UpdateCollaborationInput.add_member(:analytics_engine, Shapes::ShapeRef.new(shape: AnalyticsEngine, location_name: "analyticsEngine"))
    UpdateCollaborationInput.struct_class = Types::UpdateCollaborationInput

    UpdateCollaborationOutput.add_member(:collaboration, Shapes::ShapeRef.new(shape: Collaboration, required: true, location_name: "collaboration"))
    UpdateCollaborationOutput.struct_class = Types::UpdateCollaborationOutput

    UpdateConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, required: true, location: "uri", location_name: "configuredAudienceModelAssociationIdentifier"))
    UpdateConfiguredAudienceModelAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    UpdateConfiguredAudienceModelAssociationInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateConfiguredAudienceModelAssociationInput.add_member(:name, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationName, location_name: "name"))
    UpdateConfiguredAudienceModelAssociationInput.struct_class = Types::UpdateConfiguredAudienceModelAssociationInput

    UpdateConfiguredAudienceModelAssociationOutput.add_member(:configured_audience_model_association, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociation, required: true, location_name: "configuredAudienceModelAssociation"))
    UpdateConfiguredAudienceModelAssociationOutput.struct_class = Types::UpdateConfiguredAudienceModelAssociationOutput

    UpdateConfiguredTableAnalysisRuleInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    UpdateConfiguredTableAnalysisRuleInput.add_member(:analysis_rule_type, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleType, required: true, location: "uri", location_name: "analysisRuleType"))
    UpdateConfiguredTableAnalysisRuleInput.add_member(:analysis_rule_policy, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRulePolicy, required: true, location_name: "analysisRulePolicy"))
    UpdateConfiguredTableAnalysisRuleInput.struct_class = Types::UpdateConfiguredTableAnalysisRuleInput

    UpdateConfiguredTableAnalysisRuleOutput.add_member(:analysis_rule, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRule, required: true, location_name: "analysisRule"))
    UpdateConfiguredTableAnalysisRuleOutput.struct_class = Types::UpdateConfiguredTableAnalysisRuleOutput

    UpdateConfiguredTableAssociationAnalysisRuleInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    UpdateConfiguredTableAssociationAnalysisRuleInput.add_member(:configured_table_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, required: true, location: "uri", location_name: "configuredTableAssociationIdentifier"))
    UpdateConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_type, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRuleType, required: true, location: "uri", location_name: "analysisRuleType"))
    UpdateConfiguredTableAssociationAnalysisRuleInput.add_member(:analysis_rule_policy, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRulePolicy, required: true, location_name: "analysisRulePolicy"))
    UpdateConfiguredTableAssociationAnalysisRuleInput.struct_class = Types::UpdateConfiguredTableAssociationAnalysisRuleInput

    UpdateConfiguredTableAssociationAnalysisRuleOutput.add_member(:analysis_rule, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationAnalysisRule, required: true, location_name: "analysisRule"))
    UpdateConfiguredTableAssociationAnalysisRuleOutput.struct_class = Types::UpdateConfiguredTableAssociationAnalysisRuleOutput

    UpdateConfiguredTableAssociationInput.add_member(:configured_table_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, required: true, location: "uri", location_name: "configuredTableAssociationIdentifier"))
    UpdateConfiguredTableAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    UpdateConfiguredTableAssociationInput.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "description"))
    UpdateConfiguredTableAssociationInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateConfiguredTableAssociationInput.struct_class = Types::UpdateConfiguredTableAssociationInput

    UpdateConfiguredTableAssociationOutput.add_member(:configured_table_association, Shapes::ShapeRef.new(shape: ConfiguredTableAssociation, required: true, location_name: "configuredTableAssociation"))
    UpdateConfiguredTableAssociationOutput.struct_class = Types::UpdateConfiguredTableAssociationOutput

    UpdateConfiguredTableInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    UpdateConfiguredTableInput.add_member(:name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "name"))
    UpdateConfiguredTableInput.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "description"))
    UpdateConfiguredTableInput.add_member(:table_reference, Shapes::ShapeRef.new(shape: TableReference, location_name: "tableReference"))
    UpdateConfiguredTableInput.add_member(:allowed_columns, Shapes::ShapeRef.new(shape: AllowedColumnList, location_name: "allowedColumns"))
    UpdateConfiguredTableInput.add_member(:analysis_method, Shapes::ShapeRef.new(shape: AnalysisMethod, location_name: "analysisMethod"))
    UpdateConfiguredTableInput.add_member(:selected_analysis_methods, Shapes::ShapeRef.new(shape: SelectedAnalysisMethods, location_name: "selectedAnalysisMethods"))
    UpdateConfiguredTableInput.struct_class = Types::UpdateConfiguredTableInput

    UpdateConfiguredTableOutput.add_member(:configured_table, Shapes::ShapeRef.new(shape: ConfiguredTable, required: true, location_name: "configuredTable"))
    UpdateConfiguredTableOutput.struct_class = Types::UpdateConfiguredTableOutput

    UpdateIdMappingTableInput.add_member(:id_mapping_table_identifier, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "idMappingTableIdentifier"))
    UpdateIdMappingTableInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    UpdateIdMappingTableInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateIdMappingTableInput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "kmsKeyArn"))
    UpdateIdMappingTableInput.struct_class = Types::UpdateIdMappingTableInput

    UpdateIdMappingTableOutput.add_member(:id_mapping_table, Shapes::ShapeRef.new(shape: IdMappingTable, required: true, location_name: "idMappingTable"))
    UpdateIdMappingTableOutput.struct_class = Types::UpdateIdMappingTableOutput

    UpdateIdNamespaceAssociationInput.add_member(:id_namespace_association_identifier, Shapes::ShapeRef.new(shape: IdNamespaceAssociationIdentifier, required: true, location: "uri", location_name: "idNamespaceAssociationIdentifier"))
    UpdateIdNamespaceAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    UpdateIdNamespaceAssociationInput.add_member(:name, Shapes::ShapeRef.new(shape: GenericResourceName, location_name: "name"))
    UpdateIdNamespaceAssociationInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateIdNamespaceAssociationInput.add_member(:id_mapping_config, Shapes::ShapeRef.new(shape: IdMappingConfig, location_name: "idMappingConfig"))
    UpdateIdNamespaceAssociationInput.struct_class = Types::UpdateIdNamespaceAssociationInput

    UpdateIdNamespaceAssociationOutput.add_member(:id_namespace_association, Shapes::ShapeRef.new(shape: IdNamespaceAssociation, required: true, location_name: "idNamespaceAssociation"))
    UpdateIdNamespaceAssociationOutput.struct_class = Types::UpdateIdNamespaceAssociationOutput

    UpdateMembershipInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    UpdateMembershipInput.add_member(:query_log_status, Shapes::ShapeRef.new(shape: MembershipQueryLogStatus, location_name: "queryLogStatus"))
    UpdateMembershipInput.add_member(:job_log_status, Shapes::ShapeRef.new(shape: MembershipJobLogStatus, location_name: "jobLogStatus"))
    UpdateMembershipInput.add_member(:default_result_configuration, Shapes::ShapeRef.new(shape: MembershipProtectedQueryResultConfiguration, location_name: "defaultResultConfiguration"))
    UpdateMembershipInput.add_member(:default_job_result_configuration, Shapes::ShapeRef.new(shape: MembershipProtectedJobResultConfiguration, location_name: "defaultJobResultConfiguration"))
    UpdateMembershipInput.struct_class = Types::UpdateMembershipInput

    UpdateMembershipOutput.add_member(:membership, Shapes::ShapeRef.new(shape: Membership, required: true, location_name: "membership"))
    UpdateMembershipOutput.struct_class = Types::UpdateMembershipOutput

    UpdatePrivacyBudgetTemplateInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    UpdatePrivacyBudgetTemplateInput.add_member(:privacy_budget_template_identifier, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, required: true, location: "uri", location_name: "privacyBudgetTemplateIdentifier"))
    UpdatePrivacyBudgetTemplateInput.add_member(:privacy_budget_type, Shapes::ShapeRef.new(shape: PrivacyBudgetType, required: true, location_name: "privacyBudgetType"))
    UpdatePrivacyBudgetTemplateInput.add_member(:parameters, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateUpdateParameters, location_name: "parameters"))
    UpdatePrivacyBudgetTemplateInput.struct_class = Types::UpdatePrivacyBudgetTemplateInput

    UpdatePrivacyBudgetTemplateOutput.add_member(:privacy_budget_template, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplate, required: true, location_name: "privacyBudgetTemplate"))
    UpdatePrivacyBudgetTemplateOutput.struct_class = Types::UpdatePrivacyBudgetTemplateOutput

    UpdateProtectedJobInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    UpdateProtectedJobInput.add_member(:protected_job_identifier, Shapes::ShapeRef.new(shape: ProtectedJobIdentifier, required: true, location: "uri", location_name: "protectedJobIdentifier"))
    UpdateProtectedJobInput.add_member(:target_status, Shapes::ShapeRef.new(shape: TargetProtectedJobStatus, required: true, location_name: "targetStatus"))
    UpdateProtectedJobInput.struct_class = Types::UpdateProtectedJobInput

    UpdateProtectedJobOutput.add_member(:protected_job, Shapes::ShapeRef.new(shape: ProtectedJob, required: true, location_name: "protectedJob"))
    UpdateProtectedJobOutput.struct_class = Types::UpdateProtectedJobOutput

    UpdateProtectedQueryInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    UpdateProtectedQueryInput.add_member(:protected_query_identifier, Shapes::ShapeRef.new(shape: ProtectedQueryIdentifier, required: true, location: "uri", location_name: "protectedQueryIdentifier"))
    UpdateProtectedQueryInput.add_member(:target_status, Shapes::ShapeRef.new(shape: TargetProtectedQueryStatus, required: true, location_name: "targetStatus"))
    UpdateProtectedQueryInput.struct_class = Types::UpdateProtectedQueryInput

    UpdateProtectedQueryOutput.add_member(:protected_query, Shapes::ShapeRef.new(shape: ProtectedQuery, required: true, location_name: "protectedQuery"))
    UpdateProtectedQueryOutput.struct_class = Types::UpdateProtectedQueryOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WorkerComputeConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: WorkerComputeType, location_name: "type"))
    WorkerComputeConfiguration.add_member(:number, Shapes::ShapeRef.new(shape: WorkerComputeConfigurationNumberInteger, location_name: "number"))
    WorkerComputeConfiguration.struct_class = Types::WorkerComputeConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-02-17"

      api.metadata = {
        "apiVersion" => "2022-02-17",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "cleanrooms",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Clean Rooms Service",
        "serviceId" => "CleanRooms",
        "signatureVersion" => "v4",
        "signingName" => "cleanrooms",
        "uid" => "cleanrooms-2022-02-17",
      }

      api.add_operation(:batch_get_collaboration_analysis_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetCollaborationAnalysisTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/batch-analysistemplates"
        o.input = Shapes::ShapeRef.new(shape: BatchGetCollaborationAnalysisTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetCollaborationAnalysisTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_get_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetSchema"
        o.http_method = "POST"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/batch-schema"
        o.input = Shapes::ShapeRef.new(shape: BatchGetSchemaInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetSchemaOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_get_schema_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetSchemaAnalysisRule"
        o.http_method = "POST"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/batch-schema-analysis-rule"
        o.input = Shapes::ShapeRef.new(shape: BatchGetSchemaAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetSchemaAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_analysis_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAnalysisTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/analysistemplates"
        o.input = Shapes::ShapeRef.new(shape: CreateAnalysisTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAnalysisTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_collaboration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCollaboration"
        o.http_method = "POST"
        o.http_request_uri = "/collaborations"
        o.input = Shapes::ShapeRef.new(shape: CreateCollaborationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCollaborationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_collaboration_change_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCollaborationChangeRequest"
        o.http_method = "POST"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/changeRequests"
        o.input = Shapes::ShapeRef.new(shape: CreateCollaborationChangeRequestInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCollaborationChangeRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_configured_audience_model_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfiguredAudienceModelAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations"
        o.input = Shapes::ShapeRef.new(shape: CreateConfiguredAudienceModelAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateConfiguredAudienceModelAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_configured_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfiguredTable"
        o.http_method = "POST"
        o.http_request_uri = "/configuredTables"
        o.input = Shapes::ShapeRef.new(shape: CreateConfiguredTableInput)
        o.output = Shapes::ShapeRef.new(shape: CreateConfiguredTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_configured_table_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfiguredTableAnalysisRule"
        o.http_method = "POST"
        o.http_request_uri = "/configuredTables/{configuredTableIdentifier}/analysisRule"
        o.input = Shapes::ShapeRef.new(shape: CreateConfiguredTableAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: CreateConfiguredTableAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_configured_table_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfiguredTableAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredTableAssociations"
        o.input = Shapes::ShapeRef.new(shape: CreateConfiguredTableAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateConfiguredTableAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_configured_table_association_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfiguredTableAssociationAnalysisRule"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule"
        o.input = Shapes::ShapeRef.new(shape: CreateConfiguredTableAssociationAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: CreateConfiguredTableAssociationAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_id_mapping_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIdMappingTable"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/idmappingtables"
        o.input = Shapes::ShapeRef.new(shape: CreateIdMappingTableInput)
        o.output = Shapes::ShapeRef.new(shape: CreateIdMappingTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_id_namespace_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIdNamespaceAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/idnamespaceassociations"
        o.input = Shapes::ShapeRef.new(shape: CreateIdNamespaceAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateIdNamespaceAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMembership"
        o.http_method = "POST"
        o.http_request_uri = "/memberships"
        o.input = Shapes::ShapeRef.new(shape: CreateMembershipInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMembershipOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_privacy_budget_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePrivacyBudgetTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/privacybudgettemplates"
        o.input = Shapes::ShapeRef.new(shape: CreatePrivacyBudgetTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePrivacyBudgetTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_analysis_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAnalysisTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAnalysisTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAnalysisTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_collaboration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCollaboration"
        o.http_method = "DELETE"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCollaborationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteCollaborationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_configured_audience_model_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfiguredAudienceModelAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfiguredAudienceModelAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfiguredAudienceModelAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_configured_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfiguredTable"
        o.http_method = "DELETE"
        o.http_request_uri = "/configuredTables/{configuredTableIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfiguredTableInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfiguredTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_configured_table_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfiguredTableAnalysisRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfiguredTableAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfiguredTableAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_configured_table_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfiguredTableAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfiguredTableAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfiguredTableAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_configured_table_association_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfiguredTableAssociationAnalysisRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfiguredTableAssociationAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfiguredTableAssociationAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_id_mapping_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIdMappingTable"
        o.http_method = "DELETE"
        o.http_request_uri = "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIdMappingTableInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteIdMappingTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_id_namespace_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIdNamespaceAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIdNamespaceAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteIdNamespaceAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMember"
        o.http_method = "DELETE"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/member/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMemberInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMemberOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMembership"
        o.http_method = "DELETE"
        o.http_request_uri = "/memberships/{membershipIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMembershipInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMembershipOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_privacy_budget_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePrivacyBudgetTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeletePrivacyBudgetTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: DeletePrivacyBudgetTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_analysis_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAnalysisTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetAnalysisTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: GetAnalysisTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_collaboration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCollaboration"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetCollaborationInput)
        o.output = Shapes::ShapeRef.new(shape: GetCollaborationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_collaboration_analysis_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCollaborationAnalysisTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/analysistemplates/{analysisTemplateArn}"
        o.input = Shapes::ShapeRef.new(shape: GetCollaborationAnalysisTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: GetCollaborationAnalysisTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_collaboration_change_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCollaborationChangeRequest"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/changeRequests/{changeRequestIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetCollaborationChangeRequestInput)
        o.output = Shapes::ShapeRef.new(shape: GetCollaborationChangeRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_collaboration_configured_audience_model_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCollaborationConfiguredAudienceModelAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetCollaborationConfiguredAudienceModelAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: GetCollaborationConfiguredAudienceModelAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_collaboration_id_namespace_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCollaborationIdNamespaceAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetCollaborationIdNamespaceAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: GetCollaborationIdNamespaceAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_collaboration_privacy_budget_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCollaborationPrivacyBudgetTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetCollaborationPrivacyBudgetTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: GetCollaborationPrivacyBudgetTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_configured_audience_model_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguredAudienceModelAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetConfiguredAudienceModelAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: GetConfiguredAudienceModelAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_configured_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguredTable"
        o.http_method = "GET"
        o.http_request_uri = "/configuredTables/{configuredTableIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetConfiguredTableInput)
        o.output = Shapes::ShapeRef.new(shape: GetConfiguredTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_configured_table_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguredTableAnalysisRule"
        o.http_method = "GET"
        o.http_request_uri = "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"
        o.input = Shapes::ShapeRef.new(shape: GetConfiguredTableAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: GetConfiguredTableAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_configured_table_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguredTableAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetConfiguredTableAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: GetConfiguredTableAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_configured_table_association_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguredTableAssociationAnalysisRule"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}"
        o.input = Shapes::ShapeRef.new(shape: GetConfiguredTableAssociationAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: GetConfiguredTableAssociationAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_id_mapping_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIdMappingTable"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetIdMappingTableInput)
        o.output = Shapes::ShapeRef.new(shape: GetIdMappingTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_id_namespace_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIdNamespaceAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetIdNamespaceAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: GetIdNamespaceAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMembership"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetMembershipInput)
        o.output = Shapes::ShapeRef.new(shape: GetMembershipOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_privacy_budget_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPrivacyBudgetTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetPrivacyBudgetTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: GetPrivacyBudgetTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_protected_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProtectedJob"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/protectedJobs/{protectedJobIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetProtectedJobInput)
        o.output = Shapes::ShapeRef.new(shape: GetProtectedJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_protected_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProtectedQuery"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/protectedQueries/{protectedQueryIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetProtectedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: GetProtectedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSchema"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/schemas/{name}"
        o.input = Shapes::ShapeRef.new(shape: GetSchemaInput)
        o.output = Shapes::ShapeRef.new(shape: GetSchemaOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_schema_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSchemaAnalysisRule"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/schemas/{name}/analysisRule/{type}"
        o.input = Shapes::ShapeRef.new(shape: GetSchemaAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: GetSchemaAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_analysis_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnalysisTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/analysistemplates"
        o.input = Shapes::ShapeRef.new(shape: ListAnalysisTemplatesInput)
        o.output = Shapes::ShapeRef.new(shape: ListAnalysisTemplatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_collaboration_analysis_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollaborationAnalysisTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/analysistemplates"
        o.input = Shapes::ShapeRef.new(shape: ListCollaborationAnalysisTemplatesInput)
        o.output = Shapes::ShapeRef.new(shape: ListCollaborationAnalysisTemplatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_collaboration_change_requests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollaborationChangeRequests"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/changeRequests"
        o.input = Shapes::ShapeRef.new(shape: ListCollaborationChangeRequestsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCollaborationChangeRequestsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_collaboration_configured_audience_model_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollaborationConfiguredAudienceModelAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/configuredaudiencemodelassociations"
        o.input = Shapes::ShapeRef.new(shape: ListCollaborationConfiguredAudienceModelAssociationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCollaborationConfiguredAudienceModelAssociationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_collaboration_id_namespace_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollaborationIdNamespaceAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/idnamespaceassociations"
        o.input = Shapes::ShapeRef.new(shape: ListCollaborationIdNamespaceAssociationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCollaborationIdNamespaceAssociationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_collaboration_privacy_budget_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollaborationPrivacyBudgetTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/privacybudgettemplates"
        o.input = Shapes::ShapeRef.new(shape: ListCollaborationPrivacyBudgetTemplatesInput)
        o.output = Shapes::ShapeRef.new(shape: ListCollaborationPrivacyBudgetTemplatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_collaboration_privacy_budgets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollaborationPrivacyBudgets"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/privacybudgets"
        o.input = Shapes::ShapeRef.new(shape: ListCollaborationPrivacyBudgetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCollaborationPrivacyBudgetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_collaborations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollaborations"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations"
        o.input = Shapes::ShapeRef.new(shape: ListCollaborationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCollaborationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_configured_audience_model_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfiguredAudienceModelAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations"
        o.input = Shapes::ShapeRef.new(shape: ListConfiguredAudienceModelAssociationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListConfiguredAudienceModelAssociationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_configured_table_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfiguredTableAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredTableAssociations"
        o.input = Shapes::ShapeRef.new(shape: ListConfiguredTableAssociationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListConfiguredTableAssociationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_configured_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfiguredTables"
        o.http_method = "GET"
        o.http_request_uri = "/configuredTables"
        o.input = Shapes::ShapeRef.new(shape: ListConfiguredTablesInput)
        o.output = Shapes::ShapeRef.new(shape: ListConfiguredTablesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_id_mapping_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIdMappingTables"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/idmappingtables"
        o.input = Shapes::ShapeRef.new(shape: ListIdMappingTablesInput)
        o.output = Shapes::ShapeRef.new(shape: ListIdMappingTablesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_id_namespace_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIdNamespaceAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/idnamespaceassociations"
        o.input = Shapes::ShapeRef.new(shape: ListIdNamespaceAssociationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListIdNamespaceAssociationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMembers"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/members"
        o.input = Shapes::ShapeRef.new(shape: ListMembersInput)
        o.output = Shapes::ShapeRef.new(shape: ListMembersOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_memberships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMemberships"
        o.http_method = "GET"
        o.http_request_uri = "/memberships"
        o.input = Shapes::ShapeRef.new(shape: ListMembershipsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMembershipsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_privacy_budget_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPrivacyBudgetTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/privacybudgettemplates"
        o.input = Shapes::ShapeRef.new(shape: ListPrivacyBudgetTemplatesInput)
        o.output = Shapes::ShapeRef.new(shape: ListPrivacyBudgetTemplatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_privacy_budgets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPrivacyBudgets"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/privacybudgets"
        o.input = Shapes::ShapeRef.new(shape: ListPrivacyBudgetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListPrivacyBudgetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_protected_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProtectedJobs"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/protectedJobs"
        o.input = Shapes::ShapeRef.new(shape: ListProtectedJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListProtectedJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_protected_queries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProtectedQueries"
        o.http_method = "GET"
        o.http_request_uri = "/memberships/{membershipIdentifier}/protectedQueries"
        o.input = Shapes::ShapeRef.new(shape: ListProtectedQueriesInput)
        o.output = Shapes::ShapeRef.new(shape: ListProtectedQueriesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_schemas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSchemas"
        o.http_method = "GET"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}/schemas"
        o.input = Shapes::ShapeRef.new(shape: ListSchemasInput)
        o.output = Shapes::ShapeRef.new(shape: ListSchemasOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:populate_id_mapping_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PopulateIdMappingTable"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}/populate"
        o.input = Shapes::ShapeRef.new(shape: PopulateIdMappingTableInput)
        o.output = Shapes::ShapeRef.new(shape: PopulateIdMappingTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:preview_privacy_impact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PreviewPrivacyImpact"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/previewprivacyimpact"
        o.input = Shapes::ShapeRef.new(shape: PreviewPrivacyImpactInput)
        o.output = Shapes::ShapeRef.new(shape: PreviewPrivacyImpactOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_protected_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartProtectedJob"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/protectedJobs"
        o.input = Shapes::ShapeRef.new(shape: StartProtectedJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartProtectedJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_protected_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartProtectedQuery"
        o.http_method = "POST"
        o.http_request_uri = "/memberships/{membershipIdentifier}/protectedQueries"
        o.input = Shapes::ShapeRef.new(shape: StartProtectedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: StartProtectedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_analysis_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAnalysisTemplate"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAnalysisTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAnalysisTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_collaboration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCollaboration"
        o.http_method = "PATCH"
        o.http_request_uri = "/collaborations/{collaborationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCollaborationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateCollaborationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_configured_audience_model_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfiguredAudienceModelAssociation"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfiguredAudienceModelAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfiguredAudienceModelAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_configured_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfiguredTable"
        o.http_method = "PATCH"
        o.http_request_uri = "/configuredTables/{configuredTableIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfiguredTableInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfiguredTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_configured_table_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfiguredTableAnalysisRule"
        o.http_method = "PATCH"
        o.http_request_uri = "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfiguredTableAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfiguredTableAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_configured_table_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfiguredTableAssociation"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfiguredTableAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfiguredTableAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_configured_table_association_analysis_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfiguredTableAssociationAnalysisRule"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfiguredTableAssociationAnalysisRuleInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfiguredTableAssociationAnalysisRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_id_mapping_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIdMappingTable"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateIdMappingTableInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateIdMappingTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_id_namespace_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIdNamespaceAssociation"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateIdNamespaceAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateIdNamespaceAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMembership"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMembershipInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMembershipOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_privacy_budget_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePrivacyBudgetTemplate"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePrivacyBudgetTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePrivacyBudgetTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_protected_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProtectedJob"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}/protectedJobs/{protectedJobIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProtectedJobInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateProtectedJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_protected_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProtectedQuery"
        o.http_method = "PATCH"
        o.http_request_uri = "/memberships/{membershipIdentifier}/protectedQueries/{protectedQueryIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProtectedQueryInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateProtectedQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
