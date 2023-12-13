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
    AggregateColumn = Shapes::StructureShape.new(name: 'AggregateColumn')
    AggregateColumnColumnNamesList = Shapes::ListShape.new(name: 'AggregateColumnColumnNamesList')
    AggregateFunctionName = Shapes::StringShape.new(name: 'AggregateFunctionName')
    AggregationConstraint = Shapes::StructureShape.new(name: 'AggregationConstraint')
    AggregationConstraintMinimumInteger = Shapes::IntegerShape.new(name: 'AggregationConstraintMinimumInteger')
    AggregationConstraints = Shapes::ListShape.new(name: 'AggregationConstraints')
    AggregationType = Shapes::StringShape.new(name: 'AggregationType')
    AllowedColumnList = Shapes::ListShape.new(name: 'AllowedColumnList')
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
    AnalysisRuleList = Shapes::StructureShape.new(name: 'AnalysisRuleList')
    AnalysisRuleListJoinColumnsList = Shapes::ListShape.new(name: 'AnalysisRuleListJoinColumnsList')
    AnalysisRulePolicy = Shapes::UnionShape.new(name: 'AnalysisRulePolicy')
    AnalysisRulePolicyV1 = Shapes::UnionShape.new(name: 'AnalysisRulePolicyV1')
    AnalysisRuleType = Shapes::StringShape.new(name: 'AnalysisRuleType')
    AnalysisRuleTypeList = Shapes::ListShape.new(name: 'AnalysisRuleTypeList')
    AnalysisSchema = Shapes::StructureShape.new(name: 'AnalysisSchema')
    AnalysisSource = Shapes::UnionShape.new(name: 'AnalysisSource')
    AnalysisTemplate = Shapes::StructureShape.new(name: 'AnalysisTemplate')
    AnalysisTemplateArn = Shapes::StringShape.new(name: 'AnalysisTemplateArn')
    AnalysisTemplateArnList = Shapes::ListShape.new(name: 'AnalysisTemplateArnList')
    AnalysisTemplateArnOrQueryWildcard = Shapes::StringShape.new(name: 'AnalysisTemplateArnOrQueryWildcard')
    AnalysisTemplateIdentifier = Shapes::StringShape.new(name: 'AnalysisTemplateIdentifier')
    AnalysisTemplateSummary = Shapes::StructureShape.new(name: 'AnalysisTemplateSummary')
    AnalysisTemplateSummaryList = Shapes::ListShape.new(name: 'AnalysisTemplateSummaryList')
    AnalysisTemplateText = Shapes::StringShape.new(name: 'AnalysisTemplateText')
    BatchGetCollaborationAnalysisTemplateError = Shapes::StructureShape.new(name: 'BatchGetCollaborationAnalysisTemplateError')
    BatchGetCollaborationAnalysisTemplateErrorList = Shapes::ListShape.new(name: 'BatchGetCollaborationAnalysisTemplateErrorList')
    BatchGetCollaborationAnalysisTemplateInput = Shapes::StructureShape.new(name: 'BatchGetCollaborationAnalysisTemplateInput')
    BatchGetCollaborationAnalysisTemplateOutput = Shapes::StructureShape.new(name: 'BatchGetCollaborationAnalysisTemplateOutput')
    BatchGetSchemaError = Shapes::StructureShape.new(name: 'BatchGetSchemaError')
    BatchGetSchemaErrorList = Shapes::ListShape.new(name: 'BatchGetSchemaErrorList')
    BatchGetSchemaInput = Shapes::StructureShape.new(name: 'BatchGetSchemaInput')
    BatchGetSchemaOutput = Shapes::StructureShape.new(name: 'BatchGetSchemaOutput')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CleanroomsArn = Shapes::StringShape.new(name: 'CleanroomsArn')
    Collaboration = Shapes::StructureShape.new(name: 'Collaboration')
    CollaborationAnalysisTemplate = Shapes::StructureShape.new(name: 'CollaborationAnalysisTemplate')
    CollaborationAnalysisTemplateList = Shapes::ListShape.new(name: 'CollaborationAnalysisTemplateList')
    CollaborationAnalysisTemplateSummary = Shapes::StructureShape.new(name: 'CollaborationAnalysisTemplateSummary')
    CollaborationAnalysisTemplateSummaryList = Shapes::ListShape.new(name: 'CollaborationAnalysisTemplateSummaryList')
    CollaborationArn = Shapes::StringShape.new(name: 'CollaborationArn')
    CollaborationConfiguredAudienceModelAssociation = Shapes::StructureShape.new(name: 'CollaborationConfiguredAudienceModelAssociation')
    CollaborationConfiguredAudienceModelAssociationSummary = Shapes::StructureShape.new(name: 'CollaborationConfiguredAudienceModelAssociationSummary')
    CollaborationConfiguredAudienceModelAssociationSummaryList = Shapes::ListShape.new(name: 'CollaborationConfiguredAudienceModelAssociationSummaryList')
    CollaborationDescription = Shapes::StringShape.new(name: 'CollaborationDescription')
    CollaborationIdentifier = Shapes::StringShape.new(name: 'CollaborationIdentifier')
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
    ConfiguredTableAssociationArn = Shapes::StringShape.new(name: 'ConfiguredTableAssociationArn')
    ConfiguredTableAssociationIdentifier = Shapes::StringShape.new(name: 'ConfiguredTableAssociationIdentifier')
    ConfiguredTableAssociationSummary = Shapes::StructureShape.new(name: 'ConfiguredTableAssociationSummary')
    ConfiguredTableAssociationSummaryList = Shapes::ListShape.new(name: 'ConfiguredTableAssociationSummaryList')
    ConfiguredTableIdentifier = Shapes::StringShape.new(name: 'ConfiguredTableIdentifier')
    ConfiguredTableSummary = Shapes::StructureShape.new(name: 'ConfiguredTableSummary')
    ConfiguredTableSummaryList = Shapes::ListShape.new(name: 'ConfiguredTableSummaryList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionReason = Shapes::StringShape.new(name: 'ConflictExceptionReason')
    CreateAnalysisTemplateInput = Shapes::StructureShape.new(name: 'CreateAnalysisTemplateInput')
    CreateAnalysisTemplateOutput = Shapes::StructureShape.new(name: 'CreateAnalysisTemplateOutput')
    CreateCollaborationInput = Shapes::StructureShape.new(name: 'CreateCollaborationInput')
    CreateCollaborationOutput = Shapes::StructureShape.new(name: 'CreateCollaborationOutput')
    CreateConfiguredAudienceModelAssociationInput = Shapes::StructureShape.new(name: 'CreateConfiguredAudienceModelAssociationInput')
    CreateConfiguredAudienceModelAssociationOutput = Shapes::StructureShape.new(name: 'CreateConfiguredAudienceModelAssociationOutput')
    CreateConfiguredTableAnalysisRuleInput = Shapes::StructureShape.new(name: 'CreateConfiguredTableAnalysisRuleInput')
    CreateConfiguredTableAnalysisRuleOutput = Shapes::StructureShape.new(name: 'CreateConfiguredTableAnalysisRuleOutput')
    CreateConfiguredTableAssociationInput = Shapes::StructureShape.new(name: 'CreateConfiguredTableAssociationInput')
    CreateConfiguredTableAssociationOutput = Shapes::StructureShape.new(name: 'CreateConfiguredTableAssociationOutput')
    CreateConfiguredTableInput = Shapes::StructureShape.new(name: 'CreateConfiguredTableInput')
    CreateConfiguredTableOutput = Shapes::StructureShape.new(name: 'CreateConfiguredTableOutput')
    CreateMembershipInput = Shapes::StructureShape.new(name: 'CreateMembershipInput')
    CreateMembershipOutput = Shapes::StructureShape.new(name: 'CreateMembershipOutput')
    CreatePrivacyBudgetTemplateInput = Shapes::StructureShape.new(name: 'CreatePrivacyBudgetTemplateInput')
    CreatePrivacyBudgetTemplateOutput = Shapes::StructureShape.new(name: 'CreatePrivacyBudgetTemplateOutput')
    DataEncryptionMetadata = Shapes::StructureShape.new(name: 'DataEncryptionMetadata')
    DeleteAnalysisTemplateInput = Shapes::StructureShape.new(name: 'DeleteAnalysisTemplateInput')
    DeleteAnalysisTemplateOutput = Shapes::StructureShape.new(name: 'DeleteAnalysisTemplateOutput')
    DeleteCollaborationInput = Shapes::StructureShape.new(name: 'DeleteCollaborationInput')
    DeleteCollaborationOutput = Shapes::StructureShape.new(name: 'DeleteCollaborationOutput')
    DeleteConfiguredAudienceModelAssociationInput = Shapes::StructureShape.new(name: 'DeleteConfiguredAudienceModelAssociationInput')
    DeleteConfiguredAudienceModelAssociationOutput = Shapes::StructureShape.new(name: 'DeleteConfiguredAudienceModelAssociationOutput')
    DeleteConfiguredTableAnalysisRuleInput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableAnalysisRuleInput')
    DeleteConfiguredTableAnalysisRuleOutput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableAnalysisRuleOutput')
    DeleteConfiguredTableAssociationInput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableAssociationInput')
    DeleteConfiguredTableAssociationOutput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableAssociationOutput')
    DeleteConfiguredTableInput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableInput')
    DeleteConfiguredTableOutput = Shapes::StructureShape.new(name: 'DeleteConfiguredTableOutput')
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
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    Double = Shapes::FloatShape.new(name: 'Double')
    Epsilon = Shapes::IntegerShape.new(name: 'Epsilon')
    FilterableMemberStatus = Shapes::StringShape.new(name: 'FilterableMemberStatus')
    Float = Shapes::FloatShape.new(name: 'Float')
    GetAnalysisTemplateInput = Shapes::StructureShape.new(name: 'GetAnalysisTemplateInput')
    GetAnalysisTemplateOutput = Shapes::StructureShape.new(name: 'GetAnalysisTemplateOutput')
    GetCollaborationAnalysisTemplateInput = Shapes::StructureShape.new(name: 'GetCollaborationAnalysisTemplateInput')
    GetCollaborationAnalysisTemplateOutput = Shapes::StructureShape.new(name: 'GetCollaborationAnalysisTemplateOutput')
    GetCollaborationConfiguredAudienceModelAssociationInput = Shapes::StructureShape.new(name: 'GetCollaborationConfiguredAudienceModelAssociationInput')
    GetCollaborationConfiguredAudienceModelAssociationOutput = Shapes::StructureShape.new(name: 'GetCollaborationConfiguredAudienceModelAssociationOutput')
    GetCollaborationInput = Shapes::StructureShape.new(name: 'GetCollaborationInput')
    GetCollaborationOutput = Shapes::StructureShape.new(name: 'GetCollaborationOutput')
    GetCollaborationPrivacyBudgetTemplateInput = Shapes::StructureShape.new(name: 'GetCollaborationPrivacyBudgetTemplateInput')
    GetCollaborationPrivacyBudgetTemplateOutput = Shapes::StructureShape.new(name: 'GetCollaborationPrivacyBudgetTemplateOutput')
    GetConfiguredAudienceModelAssociationInput = Shapes::StructureShape.new(name: 'GetConfiguredAudienceModelAssociationInput')
    GetConfiguredAudienceModelAssociationOutput = Shapes::StructureShape.new(name: 'GetConfiguredAudienceModelAssociationOutput')
    GetConfiguredTableAnalysisRuleInput = Shapes::StructureShape.new(name: 'GetConfiguredTableAnalysisRuleInput')
    GetConfiguredTableAnalysisRuleOutput = Shapes::StructureShape.new(name: 'GetConfiguredTableAnalysisRuleOutput')
    GetConfiguredTableAssociationInput = Shapes::StructureShape.new(name: 'GetConfiguredTableAssociationInput')
    GetConfiguredTableAssociationOutput = Shapes::StructureShape.new(name: 'GetConfiguredTableAssociationOutput')
    GetConfiguredTableInput = Shapes::StructureShape.new(name: 'GetConfiguredTableInput')
    GetConfiguredTableOutput = Shapes::StructureShape.new(name: 'GetConfiguredTableOutput')
    GetMembershipInput = Shapes::StructureShape.new(name: 'GetMembershipInput')
    GetMembershipOutput = Shapes::StructureShape.new(name: 'GetMembershipOutput')
    GetPrivacyBudgetTemplateInput = Shapes::StructureShape.new(name: 'GetPrivacyBudgetTemplateInput')
    GetPrivacyBudgetTemplateOutput = Shapes::StructureShape.new(name: 'GetPrivacyBudgetTemplateOutput')
    GetProtectedQueryInput = Shapes::StructureShape.new(name: 'GetProtectedQueryInput')
    GetProtectedQueryOutput = Shapes::StructureShape.new(name: 'GetProtectedQueryOutput')
    GetSchemaAnalysisRuleInput = Shapes::StructureShape.new(name: 'GetSchemaAnalysisRuleInput')
    GetSchemaAnalysisRuleOutput = Shapes::StructureShape.new(name: 'GetSchemaAnalysisRuleOutput')
    GetSchemaInput = Shapes::StructureShape.new(name: 'GetSchemaInput')
    GetSchemaOutput = Shapes::StructureShape.new(name: 'GetSchemaOutput')
    GlueDatabaseName = Shapes::StringShape.new(name: 'GlueDatabaseName')
    GlueTableName = Shapes::StringShape.new(name: 'GlueTableName')
    GlueTableReference = Shapes::StructureShape.new(name: 'GlueTableReference')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JoinOperator = Shapes::StringShape.new(name: 'JoinOperator')
    JoinOperatorsList = Shapes::ListShape.new(name: 'JoinOperatorsList')
    JoinRequiredOption = Shapes::StringShape.new(name: 'JoinRequiredOption')
    KeyPrefix = Shapes::StringShape.new(name: 'KeyPrefix')
    ListAnalysisTemplatesInput = Shapes::StructureShape.new(name: 'ListAnalysisTemplatesInput')
    ListAnalysisTemplatesOutput = Shapes::StructureShape.new(name: 'ListAnalysisTemplatesOutput')
    ListCollaborationAnalysisTemplatesInput = Shapes::StructureShape.new(name: 'ListCollaborationAnalysisTemplatesInput')
    ListCollaborationAnalysisTemplatesOutput = Shapes::StructureShape.new(name: 'ListCollaborationAnalysisTemplatesOutput')
    ListCollaborationConfiguredAudienceModelAssociationsInput = Shapes::StructureShape.new(name: 'ListCollaborationConfiguredAudienceModelAssociationsInput')
    ListCollaborationConfiguredAudienceModelAssociationsOutput = Shapes::StructureShape.new(name: 'ListCollaborationConfiguredAudienceModelAssociationsOutput')
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
    ListMembersInput = Shapes::StructureShape.new(name: 'ListMembersInput')
    ListMembersOutput = Shapes::StructureShape.new(name: 'ListMembersOutput')
    ListMembershipsInput = Shapes::StructureShape.new(name: 'ListMembershipsInput')
    ListMembershipsOutput = Shapes::StructureShape.new(name: 'ListMembershipsOutput')
    ListPrivacyBudgetTemplatesInput = Shapes::StructureShape.new(name: 'ListPrivacyBudgetTemplatesInput')
    ListPrivacyBudgetTemplatesOutput = Shapes::StructureShape.new(name: 'ListPrivacyBudgetTemplatesOutput')
    ListPrivacyBudgetsInput = Shapes::StructureShape.new(name: 'ListPrivacyBudgetsInput')
    ListPrivacyBudgetsOutput = Shapes::StructureShape.new(name: 'ListPrivacyBudgetsOutput')
    ListProtectedQueriesInput = Shapes::StructureShape.new(name: 'ListProtectedQueriesInput')
    ListProtectedQueriesOutput = Shapes::StructureShape.new(name: 'ListProtectedQueriesOutput')
    ListSchemasInput = Shapes::StructureShape.new(name: 'ListSchemasInput')
    ListSchemasOutput = Shapes::StructureShape.new(name: 'ListSchemasOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemberAbilities = Shapes::ListShape.new(name: 'MemberAbilities')
    MemberAbility = Shapes::StringShape.new(name: 'MemberAbility')
    MemberList = Shapes::ListShape.new(name: 'MemberList')
    MemberSpecification = Shapes::StructureShape.new(name: 'MemberSpecification')
    MemberStatus = Shapes::StringShape.new(name: 'MemberStatus')
    MemberSummary = Shapes::StructureShape.new(name: 'MemberSummary')
    MemberSummaryList = Shapes::ListShape.new(name: 'MemberSummaryList')
    Membership = Shapes::StructureShape.new(name: 'Membership')
    MembershipArn = Shapes::StringShape.new(name: 'MembershipArn')
    MembershipIdentifier = Shapes::StringShape.new(name: 'MembershipIdentifier')
    MembershipPaymentConfiguration = Shapes::StructureShape.new(name: 'MembershipPaymentConfiguration')
    MembershipProtectedQueryOutputConfiguration = Shapes::UnionShape.new(name: 'MembershipProtectedQueryOutputConfiguration')
    MembershipProtectedQueryResultConfiguration = Shapes::StructureShape.new(name: 'MembershipProtectedQueryResultConfiguration')
    MembershipQueryComputePaymentConfig = Shapes::StructureShape.new(name: 'MembershipQueryComputePaymentConfig')
    MembershipQueryLogStatus = Shapes::StringShape.new(name: 'MembershipQueryLogStatus')
    MembershipStatus = Shapes::StringShape.new(name: 'MembershipStatus')
    MembershipSummary = Shapes::StructureShape.new(name: 'MembershipSummary')
    MembershipSummaryList = Shapes::ListShape.new(name: 'MembershipSummaryList')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParameterMap = Shapes::MapShape.new(name: 'ParameterMap')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterType = Shapes::StringShape.new(name: 'ParameterType')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    PaymentConfiguration = Shapes::StructureShape.new(name: 'PaymentConfiguration')
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
    ProtectedQuery = Shapes::StructureShape.new(name: 'ProtectedQuery')
    ProtectedQueryError = Shapes::StructureShape.new(name: 'ProtectedQueryError')
    ProtectedQueryIdentifier = Shapes::StringShape.new(name: 'ProtectedQueryIdentifier')
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
    QueryTables = Shapes::ListShape.new(name: 'QueryTables')
    ResourceAlias = Shapes::StringShape.new(name: 'ResourceAlias')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResultFormat = Shapes::StringShape.new(name: 'ResultFormat')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    ScalarFunctions = Shapes::StringShape.new(name: 'ScalarFunctions')
    ScalarFunctionsList = Shapes::ListShape.new(name: 'ScalarFunctionsList')
    Schema = Shapes::StructureShape.new(name: 'Schema')
    SchemaList = Shapes::ListShape.new(name: 'SchemaList')
    SchemaSummary = Shapes::StructureShape.new(name: 'SchemaSummary')
    SchemaSummaryList = Shapes::ListShape.new(name: 'SchemaSummaryList')
    SchemaType = Shapes::StringShape.new(name: 'SchemaType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
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
    UpdateConfiguredTableAssociationInput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableAssociationInput')
    UpdateConfiguredTableAssociationOutput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableAssociationOutput')
    UpdateConfiguredTableInput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableInput')
    UpdateConfiguredTableOutput = Shapes::StructureShape.new(name: 'UpdateConfiguredTableOutput')
    UpdateMembershipInput = Shapes::StructureShape.new(name: 'UpdateMembershipInput')
    UpdateMembershipOutput = Shapes::StructureShape.new(name: 'UpdateMembershipOutput')
    UpdatePrivacyBudgetTemplateInput = Shapes::StructureShape.new(name: 'UpdatePrivacyBudgetTemplateInput')
    UpdatePrivacyBudgetTemplateOutput = Shapes::StructureShape.new(name: 'UpdatePrivacyBudgetTemplateOutput')
    UpdateProtectedQueryInput = Shapes::StructureShape.new(name: 'UpdateProtectedQueryInput')
    UpdateProtectedQueryOutput = Shapes::StructureShape.new(name: 'UpdateProtectedQueryOutput')
    UsersNoisePerQuery = Shapes::IntegerShape.new(name: 'UsersNoisePerQuery')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

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

    AllowedColumnList.member = Shapes::ShapeRef.new(shape: ColumnName)

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
    AnalysisRule.struct_class = Types::AnalysisRule

    AnalysisRuleAggregation.add_member(:aggregate_columns, Shapes::ShapeRef.new(shape: AnalysisRuleAggregationAggregateColumnsList, required: true, location_name: "aggregateColumns"))
    AnalysisRuleAggregation.add_member(:join_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, required: true, location_name: "joinColumns"))
    AnalysisRuleAggregation.add_member(:join_required, Shapes::ShapeRef.new(shape: JoinRequiredOption, location_name: "joinRequired"))
    AnalysisRuleAggregation.add_member(:allowed_join_operators, Shapes::ShapeRef.new(shape: JoinOperatorsList, location_name: "allowedJoinOperators"))
    AnalysisRuleAggregation.add_member(:dimension_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, required: true, location_name: "dimensionColumns"))
    AnalysisRuleAggregation.add_member(:scalar_functions, Shapes::ShapeRef.new(shape: ScalarFunctionsList, required: true, location_name: "scalarFunctions"))
    AnalysisRuleAggregation.add_member(:output_constraints, Shapes::ShapeRef.new(shape: AggregationConstraints, required: true, location_name: "outputConstraints"))
    AnalysisRuleAggregation.struct_class = Types::AnalysisRuleAggregation

    AnalysisRuleAggregationAggregateColumnsList.member = Shapes::ShapeRef.new(shape: AggregateColumn)

    AnalysisRuleColumnList.member = Shapes::ShapeRef.new(shape: AnalysisRuleColumnName)

    AnalysisRuleCustom.add_member(:allowed_analyses, Shapes::ShapeRef.new(shape: AnalysisRuleCustomAllowedAnalysesList, required: true, location_name: "allowedAnalyses"))
    AnalysisRuleCustom.add_member(:allowed_analysis_providers, Shapes::ShapeRef.new(shape: AnalysisRuleCustomAllowedAnalysisProvidersList, location_name: "allowedAnalysisProviders"))
    AnalysisRuleCustom.add_member(:differential_privacy, Shapes::ShapeRef.new(shape: DifferentialPrivacyConfiguration, location_name: "differentialPrivacy"))
    AnalysisRuleCustom.struct_class = Types::AnalysisRuleCustom

    AnalysisRuleCustomAllowedAnalysesList.member = Shapes::ShapeRef.new(shape: AnalysisTemplateArnOrQueryWildcard)

    AnalysisRuleCustomAllowedAnalysisProvidersList.member = Shapes::ShapeRef.new(shape: AccountId)

    AnalysisRuleList.add_member(:join_columns, Shapes::ShapeRef.new(shape: AnalysisRuleListJoinColumnsList, required: true, location_name: "joinColumns"))
    AnalysisRuleList.add_member(:allowed_join_operators, Shapes::ShapeRef.new(shape: JoinOperatorsList, location_name: "allowedJoinOperators"))
    AnalysisRuleList.add_member(:list_columns, Shapes::ShapeRef.new(shape: AnalysisRuleColumnList, required: true, location_name: "listColumns"))
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
    AnalysisRulePolicyV1.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AnalysisRulePolicyV1.add_member_subclass(:list, Types::AnalysisRulePolicyV1::List)
    AnalysisRulePolicyV1.add_member_subclass(:aggregation, Types::AnalysisRulePolicyV1::Aggregation)
    AnalysisRulePolicyV1.add_member_subclass(:custom, Types::AnalysisRulePolicyV1::Custom)
    AnalysisRulePolicyV1.add_member_subclass(:unknown, Types::AnalysisRulePolicyV1::Unknown)
    AnalysisRulePolicyV1.struct_class = Types::AnalysisRulePolicyV1

    AnalysisRuleTypeList.member = Shapes::ShapeRef.new(shape: AnalysisRuleType)

    AnalysisSchema.add_member(:referenced_tables, Shapes::ShapeRef.new(shape: QueryTables, location_name: "referencedTables"))
    AnalysisSchema.struct_class = Types::AnalysisSchema

    AnalysisSource.add_member(:text, Shapes::ShapeRef.new(shape: AnalysisTemplateText, location_name: "text"))
    AnalysisSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AnalysisSource.add_member_subclass(:text, Types::AnalysisSource::Text)
    AnalysisSource.add_member_subclass(:unknown, Types::AnalysisSource::Unknown)
    AnalysisSource.struct_class = Types::AnalysisSource

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
    AnalysisTemplate.add_member(:analysis_parameters, Shapes::ShapeRef.new(shape: AnalysisParameterList, location_name: "analysisParameters"))
    AnalysisTemplate.struct_class = Types::AnalysisTemplate

    AnalysisTemplateArnList.member = Shapes::ShapeRef.new(shape: AnalysisTemplateArn)

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
    CollaborationAnalysisTemplate.add_member(:source, Shapes::ShapeRef.new(shape: AnalysisSource, required: true, location_name: "source"))
    CollaborationAnalysisTemplate.add_member(:analysis_parameters, Shapes::ShapeRef.new(shape: AnalysisParameterList, location_name: "analysisParameters"))
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
    CollaborationSummary.struct_class = Types::CollaborationSummary

    CollaborationSummaryList.member = Shapes::ShapeRef.new(shape: CollaborationSummary)

    Column.add_member(:name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "name"))
    Column.add_member(:type, Shapes::ShapeRef.new(shape: ColumnTypeString, required: true, location_name: "type"))
    Column.struct_class = Types::Column

    ColumnList.member = Shapes::ShapeRef.new(shape: Column)

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
    ConfiguredTableAssociation.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredTableAssociation.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredTableAssociation.struct_class = Types::ConfiguredTableAssociation

    ConfiguredTableAssociationSummary.add_member(:configured_table_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "configuredTableId"))
    ConfiguredTableAssociationSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location_name: "membershipId"))
    ConfiguredTableAssociationSummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    ConfiguredTableAssociationSummary.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    ConfiguredTableAssociationSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredTableAssociationSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredTableAssociationSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    ConfiguredTableAssociationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationArn, required: true, location_name: "arn"))
    ConfiguredTableAssociationSummary.struct_class = Types::ConfiguredTableAssociationSummary

    ConfiguredTableAssociationSummaryList.member = Shapes::ShapeRef.new(shape: ConfiguredTableAssociationSummary)

    ConfiguredTableSummary.add_member(:id, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location_name: "id"))
    ConfiguredTableSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ConfiguredTableArn, required: true, location_name: "arn"))
    ConfiguredTableSummary.add_member(:name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "name"))
    ConfiguredTableSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ConfiguredTableSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    ConfiguredTableSummary.add_member(:analysis_rule_types, Shapes::ShapeRef.new(shape: ConfiguredTableAnalysisRuleTypeList, required: true, location_name: "analysisRuleTypes"))
    ConfiguredTableSummary.add_member(:analysis_method, Shapes::ShapeRef.new(shape: AnalysisMethod, required: true, location_name: "analysisMethod"))
    ConfiguredTableSummary.struct_class = Types::ConfiguredTableSummary

    ConfiguredTableSummaryList.member = Shapes::ShapeRef.new(shape: ConfiguredTableSummary)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: "reason"))
    ConflictException.struct_class = Types::ConflictException

    CreateAnalysisTemplateInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateAnalysisTemplateInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    CreateAnalysisTemplateInput.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    CreateAnalysisTemplateInput.add_member(:format, Shapes::ShapeRef.new(shape: AnalysisFormat, required: true, location_name: "format"))
    CreateAnalysisTemplateInput.add_member(:source, Shapes::ShapeRef.new(shape: AnalysisSource, required: true, location_name: "source"))
    CreateAnalysisTemplateInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAnalysisTemplateInput.add_member(:analysis_parameters, Shapes::ShapeRef.new(shape: AnalysisParameterList, location_name: "analysisParameters"))
    CreateAnalysisTemplateInput.struct_class = Types::CreateAnalysisTemplateInput

    CreateAnalysisTemplateOutput.add_member(:analysis_template, Shapes::ShapeRef.new(shape: AnalysisTemplate, required: true, location_name: "analysisTemplate"))
    CreateAnalysisTemplateOutput.struct_class = Types::CreateAnalysisTemplateOutput

    CreateCollaborationInput.add_member(:members, Shapes::ShapeRef.new(shape: MemberList, required: true, location_name: "members"))
    CreateCollaborationInput.add_member(:name, Shapes::ShapeRef.new(shape: CollaborationName, required: true, location_name: "name"))
    CreateCollaborationInput.add_member(:description, Shapes::ShapeRef.new(shape: CollaborationDescription, required: true, location_name: "description"))
    CreateCollaborationInput.add_member(:creator_member_abilities, Shapes::ShapeRef.new(shape: MemberAbilities, required: true, location_name: "creatorMemberAbilities"))
    CreateCollaborationInput.add_member(:creator_display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "creatorDisplayName"))
    CreateCollaborationInput.add_member(:data_encryption_metadata, Shapes::ShapeRef.new(shape: DataEncryptionMetadata, location_name: "dataEncryptionMetadata"))
    CreateCollaborationInput.add_member(:query_log_status, Shapes::ShapeRef.new(shape: CollaborationQueryLogStatus, required: true, location_name: "queryLogStatus"))
    CreateCollaborationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCollaborationInput.add_member(:creator_payment_configuration, Shapes::ShapeRef.new(shape: PaymentConfiguration, location_name: "creatorPaymentConfiguration"))
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
    CreateConfiguredTableInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateConfiguredTableInput.struct_class = Types::CreateConfiguredTableInput

    CreateConfiguredTableOutput.add_member(:configured_table, Shapes::ShapeRef.new(shape: ConfiguredTable, required: true, location_name: "configuredTable"))
    CreateConfiguredTableOutput.struct_class = Types::CreateConfiguredTableOutput

    CreateMembershipInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location_name: "collaborationIdentifier"))
    CreateMembershipInput.add_member(:query_log_status, Shapes::ShapeRef.new(shape: MembershipQueryLogStatus, required: true, location_name: "queryLogStatus"))
    CreateMembershipInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateMembershipInput.add_member(:default_result_configuration, Shapes::ShapeRef.new(shape: MembershipProtectedQueryResultConfiguration, location_name: "defaultResultConfiguration"))
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

    DeleteConfiguredTableAssociationInput.add_member(:configured_table_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, required: true, location: "uri", location_name: "configuredTableAssociationIdentifier"))
    DeleteConfiguredTableAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    DeleteConfiguredTableAssociationInput.struct_class = Types::DeleteConfiguredTableAssociationInput

    DeleteConfiguredTableAssociationOutput.struct_class = Types::DeleteConfiguredTableAssociationOutput

    DeleteConfiguredTableInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    DeleteConfiguredTableInput.struct_class = Types::DeleteConfiguredTableInput

    DeleteConfiguredTableOutput.struct_class = Types::DeleteConfiguredTableOutput

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

    GetCollaborationConfiguredAudienceModelAssociationInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    GetCollaborationConfiguredAudienceModelAssociationInput.add_member(:configured_audience_model_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredAudienceModelAssociationIdentifier, required: true, location: "uri", location_name: "configuredAudienceModelAssociationIdentifier"))
    GetCollaborationConfiguredAudienceModelAssociationInput.struct_class = Types::GetCollaborationConfiguredAudienceModelAssociationInput

    GetCollaborationConfiguredAudienceModelAssociationOutput.add_member(:collaboration_configured_audience_model_association, Shapes::ShapeRef.new(shape: CollaborationConfiguredAudienceModelAssociation, required: true, location_name: "collaborationConfiguredAudienceModelAssociation"))
    GetCollaborationConfiguredAudienceModelAssociationOutput.struct_class = Types::GetCollaborationConfiguredAudienceModelAssociationOutput

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

    GetConfiguredTableAssociationInput.add_member(:configured_table_association_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableAssociationIdentifier, required: true, location: "uri", location_name: "configuredTableAssociationIdentifier"))
    GetConfiguredTableAssociationInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetConfiguredTableAssociationInput.struct_class = Types::GetConfiguredTableAssociationInput

    GetConfiguredTableAssociationOutput.add_member(:configured_table_association, Shapes::ShapeRef.new(shape: ConfiguredTableAssociation, required: true, location_name: "configuredTableAssociation"))
    GetConfiguredTableAssociationOutput.struct_class = Types::GetConfiguredTableAssociationOutput

    GetConfiguredTableInput.add_member(:configured_table_identifier, Shapes::ShapeRef.new(shape: ConfiguredTableIdentifier, required: true, location: "uri", location_name: "configuredTableIdentifier"))
    GetConfiguredTableInput.struct_class = Types::GetConfiguredTableInput

    GetConfiguredTableOutput.add_member(:configured_table, Shapes::ShapeRef.new(shape: ConfiguredTable, required: true, location_name: "configuredTable"))
    GetConfiguredTableOutput.struct_class = Types::GetConfiguredTableOutput

    GetMembershipInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetMembershipInput.struct_class = Types::GetMembershipInput

    GetMembershipOutput.add_member(:membership, Shapes::ShapeRef.new(shape: Membership, required: true, location_name: "membership"))
    GetMembershipOutput.struct_class = Types::GetMembershipOutput

    GetPrivacyBudgetTemplateInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    GetPrivacyBudgetTemplateInput.add_member(:privacy_budget_template_identifier, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplateIdentifier, required: true, location: "uri", location_name: "privacyBudgetTemplateIdentifier"))
    GetPrivacyBudgetTemplateInput.struct_class = Types::GetPrivacyBudgetTemplateInput

    GetPrivacyBudgetTemplateOutput.add_member(:privacy_budget_template, Shapes::ShapeRef.new(shape: PrivacyBudgetTemplate, required: true, location_name: "privacyBudgetTemplate"))
    GetPrivacyBudgetTemplateOutput.struct_class = Types::GetPrivacyBudgetTemplateOutput

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

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

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

    ListCollaborationConfiguredAudienceModelAssociationsInput.add_member(:collaboration_identifier, Shapes::ShapeRef.new(shape: CollaborationIdentifier, required: true, location: "uri", location_name: "collaborationIdentifier"))
    ListCollaborationConfiguredAudienceModelAssociationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCollaborationConfiguredAudienceModelAssociationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCollaborationConfiguredAudienceModelAssociationsInput.struct_class = Types::ListCollaborationConfiguredAudienceModelAssociationsInput

    ListCollaborationConfiguredAudienceModelAssociationsOutput.add_member(:collaboration_configured_audience_model_association_summaries, Shapes::ShapeRef.new(shape: CollaborationConfiguredAudienceModelAssociationSummaryList, required: true, location_name: "collaborationConfiguredAudienceModelAssociationSummaries"))
    ListCollaborationConfiguredAudienceModelAssociationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCollaborationConfiguredAudienceModelAssociationsOutput.struct_class = Types::ListCollaborationConfiguredAudienceModelAssociationsOutput

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

    MemberAbilities.member = Shapes::ShapeRef.new(shape: MemberAbility)

    MemberList.member = Shapes::ShapeRef.new(shape: MemberSpecification)

    MemberSpecification.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    MemberSpecification.add_member(:member_abilities, Shapes::ShapeRef.new(shape: MemberAbilities, required: true, location_name: "memberAbilities"))
    MemberSpecification.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "displayName"))
    MemberSpecification.add_member(:payment_configuration, Shapes::ShapeRef.new(shape: PaymentConfiguration, location_name: "paymentConfiguration"))
    MemberSpecification.struct_class = Types::MemberSpecification

    MemberSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    MemberSummary.add_member(:status, Shapes::ShapeRef.new(shape: MemberStatus, required: true, location_name: "status"))
    MemberSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "displayName"))
    MemberSummary.add_member(:abilities, Shapes::ShapeRef.new(shape: MemberAbilities, required: true, location_name: "abilities"))
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
    Membership.add_member(:query_log_status, Shapes::ShapeRef.new(shape: MembershipQueryLogStatus, required: true, location_name: "queryLogStatus"))
    Membership.add_member(:default_result_configuration, Shapes::ShapeRef.new(shape: MembershipProtectedQueryResultConfiguration, location_name: "defaultResultConfiguration"))
    Membership.add_member(:payment_configuration, Shapes::ShapeRef.new(shape: MembershipPaymentConfiguration, required: true, location_name: "paymentConfiguration"))
    Membership.struct_class = Types::Membership

    MembershipPaymentConfiguration.add_member(:query_compute, Shapes::ShapeRef.new(shape: MembershipQueryComputePaymentConfig, required: true, location_name: "queryCompute"))
    MembershipPaymentConfiguration.struct_class = Types::MembershipPaymentConfiguration

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
    MembershipSummary.add_member(:payment_configuration, Shapes::ShapeRef.new(shape: MembershipPaymentConfiguration, required: true, location_name: "paymentConfiguration"))
    MembershipSummary.struct_class = Types::MembershipSummary

    MembershipSummaryList.member = Shapes::ShapeRef.new(shape: MembershipSummary)

    ParameterMap.key = Shapes::ShapeRef.new(shape: ParameterName)
    ParameterMap.value = Shapes::ShapeRef.new(shape: ParameterValue)

    PaymentConfiguration.add_member(:query_compute, Shapes::ShapeRef.new(shape: QueryComputePaymentConfig, required: true, location_name: "queryCompute"))
    PaymentConfiguration.struct_class = Types::PaymentConfiguration

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
    ProtectedQuery.struct_class = Types::ProtectedQuery

    ProtectedQueryError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ProtectedQueryError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ProtectedQueryError.struct_class = Types::ProtectedQueryError

    ProtectedQueryMemberOutputList.member = Shapes::ShapeRef.new(shape: ProtectedQuerySingleMemberOutput)

    ProtectedQueryOutput.add_member(:s3, Shapes::ShapeRef.new(shape: ProtectedQueryS3Output, location_name: "s3"))
    ProtectedQueryOutput.add_member(:member_list, Shapes::ShapeRef.new(shape: ProtectedQueryMemberOutputList, location_name: "memberList"))
    ProtectedQueryOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProtectedQueryOutput.add_member_subclass(:s3, Types::ProtectedQueryOutput::S3)
    ProtectedQueryOutput.add_member_subclass(:member_list, Types::ProtectedQueryOutput::MemberList)
    ProtectedQueryOutput.add_member_subclass(:unknown, Types::ProtectedQueryOutput::Unknown)
    ProtectedQueryOutput.struct_class = Types::ProtectedQueryOutput

    ProtectedQueryOutputConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: ProtectedQueryS3OutputConfiguration, location_name: "s3"))
    ProtectedQueryOutputConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProtectedQueryOutputConfiguration.add_member_subclass(:s3, Types::ProtectedQueryOutputConfiguration::S3)
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
    ProtectedQueryS3OutputConfiguration.struct_class = Types::ProtectedQueryS3OutputConfiguration

    ProtectedQuerySQLParameters.add_member(:query_string, Shapes::ShapeRef.new(shape: ProtectedQuerySQLParametersQueryStringString, location_name: "queryString"))
    ProtectedQuerySQLParameters.add_member(:analysis_template_arn, Shapes::ShapeRef.new(shape: AnalysisTemplateArn, location_name: "analysisTemplateArn"))
    ProtectedQuerySQLParameters.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMap, location_name: "parameters"))
    ProtectedQuerySQLParameters.struct_class = Types::ProtectedQuerySQLParameters

    ProtectedQuerySingleMemberOutput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    ProtectedQuerySingleMemberOutput.struct_class = Types::ProtectedQuerySingleMemberOutput

    ProtectedQueryStatistics.add_member(:total_duration_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "totalDurationInMillis"))
    ProtectedQueryStatistics.struct_class = Types::ProtectedQueryStatistics

    ProtectedQuerySummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    ProtectedQuerySummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "membershipId"))
    ProtectedQuerySummary.add_member(:membership_arn, Shapes::ShapeRef.new(shape: MembershipArn, required: true, location_name: "membershipArn"))
    ProtectedQuerySummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    ProtectedQuerySummary.add_member(:status, Shapes::ShapeRef.new(shape: ProtectedQueryStatus, required: true, location_name: "status"))
    ProtectedQuerySummary.struct_class = Types::ProtectedQuerySummary

    ProtectedQuerySummaryList.member = Shapes::ShapeRef.new(shape: ProtectedQuerySummary)

    QueryComputePaymentConfig.add_member(:is_responsible, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isResponsible"))
    QueryComputePaymentConfig.struct_class = Types::QueryComputePaymentConfig

    QueryTables.member = Shapes::ShapeRef.new(shape: TableAlias)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ScalarFunctionsList.member = Shapes::ShapeRef.new(shape: ScalarFunctions)

    Schema.add_member(:columns, Shapes::ShapeRef.new(shape: ColumnList, required: true, location_name: "columns"))
    Schema.add_member(:partition_keys, Shapes::ShapeRef.new(shape: ColumnList, required: true, location_name: "partitionKeys"))
    Schema.add_member(:analysis_rule_types, Shapes::ShapeRef.new(shape: AnalysisRuleTypeList, required: true, location_name: "analysisRuleTypes"))
    Schema.add_member(:analysis_method, Shapes::ShapeRef.new(shape: AnalysisMethod, location_name: "analysisMethod"))
    Schema.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    Schema.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    Schema.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    Schema.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    Schema.add_member(:description, Shapes::ShapeRef.new(shape: TableDescription, required: true, location_name: "description"))
    Schema.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    Schema.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    Schema.add_member(:type, Shapes::ShapeRef.new(shape: SchemaType, required: true, location_name: "type"))
    Schema.struct_class = Types::Schema

    SchemaList.member = Shapes::ShapeRef.new(shape: Schema)

    SchemaSummary.add_member(:name, Shapes::ShapeRef.new(shape: TableAlias, required: true, location_name: "name"))
    SchemaSummary.add_member(:type, Shapes::ShapeRef.new(shape: SchemaType, required: true, location_name: "type"))
    SchemaSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "creatorAccountId"))
    SchemaSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createTime"))
    SchemaSummary.add_member(:update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateTime"))
    SchemaSummary.add_member(:collaboration_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "collaborationId"))
    SchemaSummary.add_member(:collaboration_arn, Shapes::ShapeRef.new(shape: CollaborationArn, required: true, location_name: "collaborationArn"))
    SchemaSummary.add_member(:analysis_rule_types, Shapes::ShapeRef.new(shape: AnalysisRuleTypeList, required: true, location_name: "analysisRuleTypes"))
    SchemaSummary.add_member(:analysis_method, Shapes::ShapeRef.new(shape: AnalysisMethod, location_name: "analysisMethod"))
    SchemaSummary.struct_class = Types::SchemaSummary

    SchemaSummaryList.member = Shapes::ShapeRef.new(shape: SchemaSummary)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaName"))
    ServiceQuotaExceededException.add_member(:quota_value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "quotaValue"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartProtectedQueryInput.add_member(:type, Shapes::ShapeRef.new(shape: ProtectedQueryType, required: true, location_name: "type"))
    StartProtectedQueryInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    StartProtectedQueryInput.add_member(:sql_parameters, Shapes::ShapeRef.new(shape: ProtectedQuerySQLParameters, required: true, location_name: "sqlParameters"))
    StartProtectedQueryInput.add_member(:result_configuration, Shapes::ShapeRef.new(shape: ProtectedQueryResultConfiguration, location_name: "resultConfiguration"))
    StartProtectedQueryInput.struct_class = Types::StartProtectedQueryInput

    StartProtectedQueryOutput.add_member(:protected_query, Shapes::ShapeRef.new(shape: ProtectedQuery, required: true, location_name: "protectedQuery"))
    StartProtectedQueryOutput.struct_class = Types::StartProtectedQueryOutput

    TableAliasList.member = Shapes::ShapeRef.new(shape: TableAlias)

    TableReference.add_member(:glue, Shapes::ShapeRef.new(shape: GlueTableReference, location_name: "glue"))
    TableReference.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TableReference.add_member_subclass(:glue, Types::TableReference::Glue)
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
    UpdateConfiguredTableInput.struct_class = Types::UpdateConfiguredTableInput

    UpdateConfiguredTableOutput.add_member(:configured_table, Shapes::ShapeRef.new(shape: ConfiguredTable, required: true, location_name: "configuredTable"))
    UpdateConfiguredTableOutput.struct_class = Types::UpdateConfiguredTableOutput

    UpdateMembershipInput.add_member(:membership_identifier, Shapes::ShapeRef.new(shape: MembershipIdentifier, required: true, location: "uri", location_name: "membershipIdentifier"))
    UpdateMembershipInput.add_member(:query_log_status, Shapes::ShapeRef.new(shape: MembershipQueryLogStatus, location_name: "queryLogStatus"))
    UpdateMembershipInput.add_member(:default_result_configuration, Shapes::ShapeRef.new(shape: MembershipProtectedQueryResultConfiguration, location_name: "defaultResultConfiguration"))
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


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-02-17"

      api.metadata = {
        "apiVersion" => "2022-02-17",
        "endpointPrefix" => "cleanrooms",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
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
