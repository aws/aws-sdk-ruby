# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ObservabilityAdmin
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountIdentifier = Shapes::StringShape.new(name: 'AccountIdentifier')
    AccountIdentifiers = Shapes::ListShape.new(name: 'AccountIdentifiers')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateTelemetryRuleForOrganizationInput = Shapes::StructureShape.new(name: 'CreateTelemetryRuleForOrganizationInput')
    CreateTelemetryRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'CreateTelemetryRuleForOrganizationOutput')
    CreateTelemetryRuleInput = Shapes::StructureShape.new(name: 'CreateTelemetryRuleInput')
    CreateTelemetryRuleOutput = Shapes::StructureShape.new(name: 'CreateTelemetryRuleOutput')
    DeleteTelemetryRuleForOrganizationInput = Shapes::StructureShape.new(name: 'DeleteTelemetryRuleForOrganizationInput')
    DeleteTelemetryRuleInput = Shapes::StructureShape.new(name: 'DeleteTelemetryRuleInput')
    DestinationType = Shapes::StringShape.new(name: 'DestinationType')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    GetTelemetryEvaluationStatusForOrganizationOutput = Shapes::StructureShape.new(name: 'GetTelemetryEvaluationStatusForOrganizationOutput')
    GetTelemetryEvaluationStatusOutput = Shapes::StructureShape.new(name: 'GetTelemetryEvaluationStatusOutput')
    GetTelemetryRuleForOrganizationInput = Shapes::StructureShape.new(name: 'GetTelemetryRuleForOrganizationInput')
    GetTelemetryRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'GetTelemetryRuleForOrganizationOutput')
    GetTelemetryRuleInput = Shapes::StructureShape.new(name: 'GetTelemetryRuleInput')
    GetTelemetryRuleOutput = Shapes::StructureShape.new(name: 'GetTelemetryRuleOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListResourceTelemetryForOrganizationInput = Shapes::StructureShape.new(name: 'ListResourceTelemetryForOrganizationInput')
    ListResourceTelemetryForOrganizationMaxResults = Shapes::IntegerShape.new(name: 'ListResourceTelemetryForOrganizationMaxResults')
    ListResourceTelemetryForOrganizationOutput = Shapes::StructureShape.new(name: 'ListResourceTelemetryForOrganizationOutput')
    ListResourceTelemetryInput = Shapes::StructureShape.new(name: 'ListResourceTelemetryInput')
    ListResourceTelemetryMaxResults = Shapes::IntegerShape.new(name: 'ListResourceTelemetryMaxResults')
    ListResourceTelemetryOutput = Shapes::StructureShape.new(name: 'ListResourceTelemetryOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListTelemetryRulesForOrganizationInput = Shapes::StructureShape.new(name: 'ListTelemetryRulesForOrganizationInput')
    ListTelemetryRulesForOrganizationMaxResults = Shapes::IntegerShape.new(name: 'ListTelemetryRulesForOrganizationMaxResults')
    ListTelemetryRulesForOrganizationOutput = Shapes::StructureShape.new(name: 'ListTelemetryRulesForOrganizationOutput')
    ListTelemetryRulesInput = Shapes::StructureShape.new(name: 'ListTelemetryRulesInput')
    ListTelemetryRulesMaxResults = Shapes::IntegerShape.new(name: 'ListTelemetryRulesMaxResults')
    ListTelemetryRulesOutput = Shapes::StructureShape.new(name: 'ListTelemetryRulesOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OrganizationUnitIdentifier = Shapes::StringShape.new(name: 'OrganizationUnitIdentifier')
    OrganizationUnitIdentifiers = Shapes::ListShape.new(name: 'OrganizationUnitIdentifiers')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceIdentifierPrefix = Shapes::StringShape.new(name: 'ResourceIdentifierPrefix')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypes = Shapes::ListShape.new(name: 'ResourceTypes')
    RetentionPeriodInDays = Shapes::IntegerShape.new(name: 'RetentionPeriodInDays')
    RuleIdentifier = Shapes::StringShape.new(name: 'RuleIdentifier')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Status = Shapes::StringShape.new(name: 'Status')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMapInput = Shapes::MapShape.new(name: 'TagMapInput')
    TagMapOutput = Shapes::MapShape.new(name: 'TagMapOutput')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TelemetryConfiguration = Shapes::StructureShape.new(name: 'TelemetryConfiguration')
    TelemetryConfigurationState = Shapes::MapShape.new(name: 'TelemetryConfigurationState')
    TelemetryConfigurations = Shapes::ListShape.new(name: 'TelemetryConfigurations')
    TelemetryDestinationConfiguration = Shapes::StructureShape.new(name: 'TelemetryDestinationConfiguration')
    TelemetryRule = Shapes::StructureShape.new(name: 'TelemetryRule')
    TelemetryRuleSummaries = Shapes::ListShape.new(name: 'TelemetryRuleSummaries')
    TelemetryRuleSummary = Shapes::StructureShape.new(name: 'TelemetryRuleSummary')
    TelemetryState = Shapes::StringShape.new(name: 'TelemetryState')
    TelemetryType = Shapes::StringShape.new(name: 'TelemetryType')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UpdateTelemetryRuleForOrganizationInput = Shapes::StructureShape.new(name: 'UpdateTelemetryRuleForOrganizationInput')
    UpdateTelemetryRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'UpdateTelemetryRuleForOrganizationOutput')
    UpdateTelemetryRuleInput = Shapes::StructureShape.new(name: 'UpdateTelemetryRuleInput')
    UpdateTelemetryRuleOutput = Shapes::StructureShape.new(name: 'UpdateTelemetryRuleOutput')
    VPCFlowLogParameters = Shapes::StructureShape.new(name: 'VPCFlowLogParameters')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIdentifiers.member = Shapes::ShapeRef.new(shape: AccountIdentifier)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateTelemetryRuleForOrganizationInput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "RuleName"))
    CreateTelemetryRuleForOrganizationInput.add_member(:rule, Shapes::ShapeRef.new(shape: TelemetryRule, required: true, location_name: "Rule"))
    CreateTelemetryRuleForOrganizationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    CreateTelemetryRuleForOrganizationInput.struct_class = Types::CreateTelemetryRuleForOrganizationInput

    CreateTelemetryRuleForOrganizationOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    CreateTelemetryRuleForOrganizationOutput.struct_class = Types::CreateTelemetryRuleForOrganizationOutput

    CreateTelemetryRuleInput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "RuleName"))
    CreateTelemetryRuleInput.add_member(:rule, Shapes::ShapeRef.new(shape: TelemetryRule, required: true, location_name: "Rule"))
    CreateTelemetryRuleInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    CreateTelemetryRuleInput.struct_class = Types::CreateTelemetryRuleInput

    CreateTelemetryRuleOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    CreateTelemetryRuleOutput.struct_class = Types::CreateTelemetryRuleOutput

    DeleteTelemetryRuleForOrganizationInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    DeleteTelemetryRuleForOrganizationInput.struct_class = Types::DeleteTelemetryRuleForOrganizationInput

    DeleteTelemetryRuleInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    DeleteTelemetryRuleInput.struct_class = Types::DeleteTelemetryRuleInput

    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    GetTelemetryEvaluationStatusForOrganizationOutput.struct_class = Types::GetTelemetryEvaluationStatusForOrganizationOutput

    GetTelemetryEvaluationStatusOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    GetTelemetryEvaluationStatusOutput.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    GetTelemetryEvaluationStatusOutput.struct_class = Types::GetTelemetryEvaluationStatusOutput

    GetTelemetryRuleForOrganizationInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    GetTelemetryRuleForOrganizationInput.struct_class = Types::GetTelemetryRuleForOrganizationInput

    GetTelemetryRuleForOrganizationOutput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, location_name: "RuleName"))
    GetTelemetryRuleForOrganizationOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    GetTelemetryRuleForOrganizationOutput.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    GetTelemetryRuleForOrganizationOutput.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    GetTelemetryRuleForOrganizationOutput.add_member(:telemetry_rule, Shapes::ShapeRef.new(shape: TelemetryRule, location_name: "TelemetryRule"))
    GetTelemetryRuleForOrganizationOutput.struct_class = Types::GetTelemetryRuleForOrganizationOutput

    GetTelemetryRuleInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    GetTelemetryRuleInput.struct_class = Types::GetTelemetryRuleInput

    GetTelemetryRuleOutput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, location_name: "RuleName"))
    GetTelemetryRuleOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    GetTelemetryRuleOutput.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    GetTelemetryRuleOutput.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    GetTelemetryRuleOutput.add_member(:telemetry_rule, Shapes::ShapeRef.new(shape: TelemetryRule, location_name: "TelemetryRule"))
    GetTelemetryRuleOutput.struct_class = Types::GetTelemetryRuleOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    InternalServerException.struct_class = Types::InternalServerException

    ListResourceTelemetryForOrganizationInput.add_member(:account_identifiers, Shapes::ShapeRef.new(shape: AccountIdentifiers, location_name: "AccountIdentifiers"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_identifier_prefix, Shapes::ShapeRef.new(shape: ResourceIdentifierPrefix, location_name: "ResourceIdentifierPrefix"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    ListResourceTelemetryForOrganizationInput.add_member(:telemetry_configuration_state, Shapes::ShapeRef.new(shape: TelemetryConfigurationState, location_name: "TelemetryConfigurationState"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "ResourceTags"))
    ListResourceTelemetryForOrganizationInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResourceTelemetryForOrganizationMaxResults, location_name: "MaxResults"))
    ListResourceTelemetryForOrganizationInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceTelemetryForOrganizationInput.struct_class = Types::ListResourceTelemetryForOrganizationInput

    ListResourceTelemetryForOrganizationOutput.add_member(:telemetry_configurations, Shapes::ShapeRef.new(shape: TelemetryConfigurations, location_name: "TelemetryConfigurations"))
    ListResourceTelemetryForOrganizationOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceTelemetryForOrganizationOutput.struct_class = Types::ListResourceTelemetryForOrganizationOutput

    ListResourceTelemetryInput.add_member(:resource_identifier_prefix, Shapes::ShapeRef.new(shape: ResourceIdentifierPrefix, location_name: "ResourceIdentifierPrefix"))
    ListResourceTelemetryInput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    ListResourceTelemetryInput.add_member(:telemetry_configuration_state, Shapes::ShapeRef.new(shape: TelemetryConfigurationState, location_name: "TelemetryConfigurationState"))
    ListResourceTelemetryInput.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "ResourceTags"))
    ListResourceTelemetryInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResourceTelemetryMaxResults, location_name: "MaxResults"))
    ListResourceTelemetryInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceTelemetryInput.struct_class = Types::ListResourceTelemetryInput

    ListResourceTelemetryOutput.add_member(:telemetry_configurations, Shapes::ShapeRef.new(shape: TelemetryConfigurations, location_name: "TelemetryConfigurations"))
    ListResourceTelemetryOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceTelemetryOutput.struct_class = Types::ListResourceTelemetryOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, required: true, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListTelemetryRulesForOrganizationInput.add_member(:rule_name_prefix, Shapes::ShapeRef.new(shape: String, location_name: "RuleNamePrefix"))
    ListTelemetryRulesForOrganizationInput.add_member(:source_account_ids, Shapes::ShapeRef.new(shape: AccountIdentifiers, location_name: "SourceAccountIds"))
    ListTelemetryRulesForOrganizationInput.add_member(:source_organization_unit_ids, Shapes::ShapeRef.new(shape: OrganizationUnitIdentifiers, location_name: "SourceOrganizationUnitIds"))
    ListTelemetryRulesForOrganizationInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTelemetryRulesForOrganizationMaxResults, location_name: "MaxResults"))
    ListTelemetryRulesForOrganizationInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTelemetryRulesForOrganizationInput.struct_class = Types::ListTelemetryRulesForOrganizationInput

    ListTelemetryRulesForOrganizationOutput.add_member(:telemetry_rule_summaries, Shapes::ShapeRef.new(shape: TelemetryRuleSummaries, location_name: "TelemetryRuleSummaries"))
    ListTelemetryRulesForOrganizationOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTelemetryRulesForOrganizationOutput.struct_class = Types::ListTelemetryRulesForOrganizationOutput

    ListTelemetryRulesInput.add_member(:rule_name_prefix, Shapes::ShapeRef.new(shape: String, location_name: "RuleNamePrefix"))
    ListTelemetryRulesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTelemetryRulesMaxResults, location_name: "MaxResults"))
    ListTelemetryRulesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTelemetryRulesInput.struct_class = Types::ListTelemetryRulesInput

    ListTelemetryRulesOutput.add_member(:telemetry_rule_summaries, Shapes::ShapeRef.new(shape: TelemetryRuleSummaries, location_name: "TelemetryRuleSummaries"))
    ListTelemetryRulesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTelemetryRulesOutput.struct_class = Types::ListTelemetryRulesOutput

    OrganizationUnitIdentifiers.member = Shapes::ShapeRef.new(shape: OrganizationUnitIdentifier)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTypes.member = Shapes::ShapeRef.new(shape: ResourceType)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMapInput.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMapInput.value = Shapes::ShapeRef.new(shape: TagValue)

    TagMapOutput.key = Shapes::ShapeRef.new(shape: String)
    TagMapOutput.value = Shapes::ShapeRef.new(shape: String)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TelemetryConfiguration.add_member(:account_identifier, Shapes::ShapeRef.new(shape: AccountIdentifier, location_name: "AccountIdentifier"))
    TelemetryConfiguration.add_member(:telemetry_configuration_state, Shapes::ShapeRef.new(shape: TelemetryConfigurationState, location_name: "TelemetryConfigurationState"))
    TelemetryConfiguration.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    TelemetryConfiguration.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceIdentifier"))
    TelemetryConfiguration.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "ResourceTags"))
    TelemetryConfiguration.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    TelemetryConfiguration.struct_class = Types::TelemetryConfiguration

    TelemetryConfigurationState.key = Shapes::ShapeRef.new(shape: TelemetryType)
    TelemetryConfigurationState.value = Shapes::ShapeRef.new(shape: TelemetryState)

    TelemetryConfigurations.member = Shapes::ShapeRef.new(shape: TelemetryConfiguration)

    TelemetryDestinationConfiguration.add_member(:destination_type, Shapes::ShapeRef.new(shape: DestinationType, location_name: "DestinationType"))
    TelemetryDestinationConfiguration.add_member(:destination_pattern, Shapes::ShapeRef.new(shape: String, location_name: "DestinationPattern"))
    TelemetryDestinationConfiguration.add_member(:retention_in_days, Shapes::ShapeRef.new(shape: RetentionPeriodInDays, location_name: "RetentionInDays"))
    TelemetryDestinationConfiguration.add_member(:vpc_flow_log_parameters, Shapes::ShapeRef.new(shape: VPCFlowLogParameters, location_name: "VPCFlowLogParameters"))
    TelemetryDestinationConfiguration.struct_class = Types::TelemetryDestinationConfiguration

    TelemetryRule.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    TelemetryRule.add_member(:telemetry_type, Shapes::ShapeRef.new(shape: TelemetryType, required: true, location_name: "TelemetryType"))
    TelemetryRule.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: TelemetryDestinationConfiguration, location_name: "DestinationConfiguration"))
    TelemetryRule.add_member(:scope, Shapes::ShapeRef.new(shape: String, location_name: "Scope"))
    TelemetryRule.add_member(:selection_criteria, Shapes::ShapeRef.new(shape: String, location_name: "SelectionCriteria"))
    TelemetryRule.struct_class = Types::TelemetryRule

    TelemetryRuleSummaries.member = Shapes::ShapeRef.new(shape: TelemetryRuleSummary)

    TelemetryRuleSummary.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, location_name: "RuleName"))
    TelemetryRuleSummary.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    TelemetryRuleSummary.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    TelemetryRuleSummary.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    TelemetryRuleSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    TelemetryRuleSummary.add_member(:telemetry_type, Shapes::ShapeRef.new(shape: TelemetryType, location_name: "TelemetryType"))
    TelemetryRuleSummary.struct_class = Types::TelemetryRuleSummary

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UpdateTelemetryRuleForOrganizationInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    UpdateTelemetryRuleForOrganizationInput.add_member(:rule, Shapes::ShapeRef.new(shape: TelemetryRule, required: true, location_name: "Rule"))
    UpdateTelemetryRuleForOrganizationInput.struct_class = Types::UpdateTelemetryRuleForOrganizationInput

    UpdateTelemetryRuleForOrganizationOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    UpdateTelemetryRuleForOrganizationOutput.struct_class = Types::UpdateTelemetryRuleForOrganizationOutput

    UpdateTelemetryRuleInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    UpdateTelemetryRuleInput.add_member(:rule, Shapes::ShapeRef.new(shape: TelemetryRule, required: true, location_name: "Rule"))
    UpdateTelemetryRuleInput.struct_class = Types::UpdateTelemetryRuleInput

    UpdateTelemetryRuleOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    UpdateTelemetryRuleOutput.struct_class = Types::UpdateTelemetryRuleOutput

    VPCFlowLogParameters.add_member(:log_format, Shapes::ShapeRef.new(shape: String, location_name: "LogFormat"))
    VPCFlowLogParameters.add_member(:traffic_type, Shapes::ShapeRef.new(shape: String, location_name: "TrafficType"))
    VPCFlowLogParameters.add_member(:max_aggregation_interval, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxAggregationInterval"))
    VPCFlowLogParameters.struct_class = Types::VPCFlowLogParameters

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "observabilityadmin",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "CloudWatch Observability Admin Service",
        "serviceId" => "ObservabilityAdmin",
        "signatureVersion" => "v4",
        "signingName" => "observabilityadmin",
        "uid" => "observabilityadmin-2018-05-10",
      }

      api.add_operation(:create_telemetry_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTelemetryRule"
        o.http_method = "POST"
        o.http_request_uri = "/CreateTelemetryRule"
        o.input = Shapes::ShapeRef.new(shape: CreateTelemetryRuleInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTelemetryRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_telemetry_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTelemetryRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/CreateTelemetryRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: CreateTelemetryRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTelemetryRuleForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_telemetry_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTelemetryRule"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteTelemetryRule"
        o.input = Shapes::ShapeRef.new(shape: DeleteTelemetryRuleInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_telemetry_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTelemetryRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteTelemetryRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: DeleteTelemetryRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_telemetry_evaluation_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryEvaluationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/GetTelemetryEvaluationStatus"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryEvaluationStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_telemetry_evaluation_status_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryEvaluationStatusForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/GetTelemetryEvaluationStatusForOrganization"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryEvaluationStatusForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_telemetry_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryRule"
        o.http_method = "POST"
        o.http_request_uri = "/GetTelemetryRule"
        o.input = Shapes::ShapeRef.new(shape: GetTelemetryRuleInput)
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_telemetry_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/GetTelemetryRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: GetTelemetryRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryRuleForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_resource_telemetry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceTelemetry"
        o.http_method = "POST"
        o.http_request_uri = "/ListResourceTelemetry"
        o.input = Shapes::ShapeRef.new(shape: ListResourceTelemetryInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourceTelemetryOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_telemetry_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceTelemetryForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/ListResourceTelemetryForOrganization"
        o.input = Shapes::ShapeRef.new(shape: ListResourceTelemetryForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourceTelemetryForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
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
        o.http_request_uri = "/ListTagsForResource"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_telemetry_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTelemetryRules"
        o.http_method = "POST"
        o.http_request_uri = "/ListTelemetryRules"
        o.input = Shapes::ShapeRef.new(shape: ListTelemetryRulesInput)
        o.output = Shapes::ShapeRef.new(shape: ListTelemetryRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_telemetry_rules_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTelemetryRulesForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/ListTelemetryRulesForOrganization"
        o.input = Shapes::ShapeRef.new(shape: ListTelemetryRulesForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: ListTelemetryRulesForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_telemetry_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTelemetryEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/StartTelemetryEvaluation"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:start_telemetry_evaluation_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTelemetryEvaluationForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/StartTelemetryEvaluationForOrganization"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:stop_telemetry_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTelemetryEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/StopTelemetryEvaluation"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:stop_telemetry_evaluation_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTelemetryEvaluationForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/StopTelemetryEvaluationForOrganization"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/TagResource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/UntagResource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_telemetry_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTelemetryRule"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateTelemetryRule"
        o.input = Shapes::ShapeRef.new(shape: UpdateTelemetryRuleInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTelemetryRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_telemetry_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTelemetryRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateTelemetryRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: UpdateTelemetryRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTelemetryRuleForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
