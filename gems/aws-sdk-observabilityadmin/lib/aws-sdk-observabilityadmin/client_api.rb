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
    Action = Shapes::StringShape.new(name: 'Action')
    ActionCondition = Shapes::StructureShape.new(name: 'ActionCondition')
    AdvancedEventSelector = Shapes::StructureShape.new(name: 'AdvancedEventSelector')
    AdvancedEventSelectors = Shapes::ListShape.new(name: 'AdvancedEventSelectors')
    AdvancedFieldSelector = Shapes::StructureShape.new(name: 'AdvancedFieldSelector')
    AwsResourceExplorerManagedViewArn = Shapes::StringShape.new(name: 'AwsResourceExplorerManagedViewArn')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CentralizationFailureReason = Shapes::StringShape.new(name: 'CentralizationFailureReason')
    CentralizationRule = Shapes::StructureShape.new(name: 'CentralizationRule')
    CentralizationRuleDestination = Shapes::StructureShape.new(name: 'CentralizationRuleDestination')
    CentralizationRuleSource = Shapes::StructureShape.new(name: 'CentralizationRuleSource')
    CentralizationRuleSummaries = Shapes::ListShape.new(name: 'CentralizationRuleSummaries')
    CentralizationRuleSummary = Shapes::StructureShape.new(name: 'CentralizationRuleSummary')
    CloudtrailParameters = Shapes::StructureShape.new(name: 'CloudtrailParameters')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    Conditions = Shapes::ListShape.new(name: 'Conditions')
    ConfigurationSummary = Shapes::StructureShape.new(name: 'ConfigurationSummary')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateCentralizationRuleForOrganizationInput = Shapes::StructureShape.new(name: 'CreateCentralizationRuleForOrganizationInput')
    CreateCentralizationRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'CreateCentralizationRuleForOrganizationOutput')
    CreateS3TableIntegrationInput = Shapes::StructureShape.new(name: 'CreateS3TableIntegrationInput')
    CreateS3TableIntegrationOutput = Shapes::StructureShape.new(name: 'CreateS3TableIntegrationOutput')
    CreateTelemetryPipelineInput = Shapes::StructureShape.new(name: 'CreateTelemetryPipelineInput')
    CreateTelemetryPipelineOutput = Shapes::StructureShape.new(name: 'CreateTelemetryPipelineOutput')
    CreateTelemetryRuleForOrganizationInput = Shapes::StructureShape.new(name: 'CreateTelemetryRuleForOrganizationInput')
    CreateTelemetryRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'CreateTelemetryRuleForOrganizationOutput')
    CreateTelemetryRuleInput = Shapes::StructureShape.new(name: 'CreateTelemetryRuleInput')
    CreateTelemetryRuleOutput = Shapes::StructureShape.new(name: 'CreateTelemetryRuleOutput')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DataSources = Shapes::ListShape.new(name: 'DataSources')
    DeleteCentralizationRuleForOrganizationInput = Shapes::StructureShape.new(name: 'DeleteCentralizationRuleForOrganizationInput')
    DeleteS3TableIntegrationInput = Shapes::StructureShape.new(name: 'DeleteS3TableIntegrationInput')
    DeleteTelemetryPipelineInput = Shapes::StructureShape.new(name: 'DeleteTelemetryPipelineInput')
    DeleteTelemetryPipelineOutput = Shapes::StructureShape.new(name: 'DeleteTelemetryPipelineOutput')
    DeleteTelemetryRuleForOrganizationInput = Shapes::StructureShape.new(name: 'DeleteTelemetryRuleForOrganizationInput')
    DeleteTelemetryRuleInput = Shapes::StructureShape.new(name: 'DeleteTelemetryRuleInput')
    DestinationLogsConfiguration = Shapes::StructureShape.new(name: 'DestinationLogsConfiguration')
    DestinationType = Shapes::StringShape.new(name: 'DestinationType')
    ELBLoadBalancerLoggingParameters = Shapes::StructureShape.new(name: 'ELBLoadBalancerLoggingParameters')
    EncryptedLogGroupStrategy = Shapes::StringShape.new(name: 'EncryptedLogGroupStrategy')
    Encryption = Shapes::StructureShape.new(name: 'Encryption')
    EncryptionConflictResolutionStrategy = Shapes::StringShape.new(name: 'EncryptionConflictResolutionStrategy')
    EncryptionStrategy = Shapes::StringShape.new(name: 'EncryptionStrategy')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FieldMap = Shapes::MapShape.new(name: 'FieldMap')
    FieldSelectors = Shapes::ListShape.new(name: 'FieldSelectors')
    FieldToMatch = Shapes::StructureShape.new(name: 'FieldToMatch')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterBehavior = Shapes::StringShape.new(name: 'FilterBehavior')
    FilterRequirement = Shapes::StringShape.new(name: 'FilterRequirement')
    Filters = Shapes::ListShape.new(name: 'Filters')
    GetCentralizationRuleForOrganizationInput = Shapes::StructureShape.new(name: 'GetCentralizationRuleForOrganizationInput')
    GetCentralizationRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'GetCentralizationRuleForOrganizationOutput')
    GetS3TableIntegrationInput = Shapes::StructureShape.new(name: 'GetS3TableIntegrationInput')
    GetS3TableIntegrationOutput = Shapes::StructureShape.new(name: 'GetS3TableIntegrationOutput')
    GetTelemetryEnrichmentStatusOutput = Shapes::StructureShape.new(name: 'GetTelemetryEnrichmentStatusOutput')
    GetTelemetryEvaluationStatusForOrganizationOutput = Shapes::StructureShape.new(name: 'GetTelemetryEvaluationStatusForOrganizationOutput')
    GetTelemetryEvaluationStatusOutput = Shapes::StructureShape.new(name: 'GetTelemetryEvaluationStatusOutput')
    GetTelemetryPipelineInput = Shapes::StructureShape.new(name: 'GetTelemetryPipelineInput')
    GetTelemetryPipelineOutput = Shapes::StructureShape.new(name: 'GetTelemetryPipelineOutput')
    GetTelemetryRuleForOrganizationInput = Shapes::StructureShape.new(name: 'GetTelemetryRuleForOrganizationInput')
    GetTelemetryRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'GetTelemetryRuleForOrganizationOutput')
    GetTelemetryRuleInput = Shapes::StructureShape.new(name: 'GetTelemetryRuleInput')
    GetTelemetryRuleOutput = Shapes::StructureShape.new(name: 'GetTelemetryRuleOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegrationStatus = Shapes::StringShape.new(name: 'IntegrationStatus')
    IntegrationSummaries = Shapes::ListShape.new(name: 'IntegrationSummaries')
    IntegrationSummary = Shapes::StructureShape.new(name: 'IntegrationSummary')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidStateException = Shapes::StructureShape.new(name: 'InvalidStateException')
    LabelNameCondition = Shapes::StructureShape.new(name: 'LabelNameCondition')
    LabelNameConditionLabelNameString = Shapes::StringShape.new(name: 'LabelNameConditionLabelNameString')
    ListCentralizationRulesForOrganizationInput = Shapes::StructureShape.new(name: 'ListCentralizationRulesForOrganizationInput')
    ListCentralizationRulesForOrganizationInputRuleNamePrefixString = Shapes::StringShape.new(name: 'ListCentralizationRulesForOrganizationInputRuleNamePrefixString')
    ListCentralizationRulesForOrganizationMaxResults = Shapes::IntegerShape.new(name: 'ListCentralizationRulesForOrganizationMaxResults')
    ListCentralizationRulesForOrganizationOutput = Shapes::StructureShape.new(name: 'ListCentralizationRulesForOrganizationOutput')
    ListResourceTelemetryForOrganizationInput = Shapes::StructureShape.new(name: 'ListResourceTelemetryForOrganizationInput')
    ListResourceTelemetryForOrganizationMaxResults = Shapes::IntegerShape.new(name: 'ListResourceTelemetryForOrganizationMaxResults')
    ListResourceTelemetryForOrganizationOutput = Shapes::StructureShape.new(name: 'ListResourceTelemetryForOrganizationOutput')
    ListResourceTelemetryInput = Shapes::StructureShape.new(name: 'ListResourceTelemetryInput')
    ListResourceTelemetryMaxResults = Shapes::IntegerShape.new(name: 'ListResourceTelemetryMaxResults')
    ListResourceTelemetryOutput = Shapes::StructureShape.new(name: 'ListResourceTelemetryOutput')
    ListS3TableIntegrationsInput = Shapes::StructureShape.new(name: 'ListS3TableIntegrationsInput')
    ListS3TableIntegrationsMaxResults = Shapes::IntegerShape.new(name: 'ListS3TableIntegrationsMaxResults')
    ListS3TableIntegrationsOutput = Shapes::StructureShape.new(name: 'ListS3TableIntegrationsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListTelemetryPipelinesInput = Shapes::StructureShape.new(name: 'ListTelemetryPipelinesInput')
    ListTelemetryPipelinesMaxResults = Shapes::IntegerShape.new(name: 'ListTelemetryPipelinesMaxResults')
    ListTelemetryPipelinesOutput = Shapes::StructureShape.new(name: 'ListTelemetryPipelinesOutput')
    ListTelemetryRulesForOrganizationInput = Shapes::StructureShape.new(name: 'ListTelemetryRulesForOrganizationInput')
    ListTelemetryRulesForOrganizationMaxResults = Shapes::IntegerShape.new(name: 'ListTelemetryRulesForOrganizationMaxResults')
    ListTelemetryRulesForOrganizationOutput = Shapes::StructureShape.new(name: 'ListTelemetryRulesForOrganizationOutput')
    ListTelemetryRulesInput = Shapes::StructureShape.new(name: 'ListTelemetryRulesInput')
    ListTelemetryRulesMaxResults = Shapes::IntegerShape.new(name: 'ListTelemetryRulesMaxResults')
    ListTelemetryRulesOutput = Shapes::StructureShape.new(name: 'ListTelemetryRulesOutput')
    LogDeliveryParameters = Shapes::StructureShape.new(name: 'LogDeliveryParameters')
    LogType = Shapes::StringShape.new(name: 'LogType')
    LogTypes = Shapes::ListShape.new(name: 'LogTypes')
    LoggingFilter = Shapes::StructureShape.new(name: 'LoggingFilter')
    LogsBackupConfiguration = Shapes::StructureShape.new(name: 'LogsBackupConfiguration')
    LogsEncryptionConfiguration = Shapes::StructureShape.new(name: 'LogsEncryptionConfiguration')
    LogsFilterString = Shapes::StringShape.new(name: 'LogsFilterString')
    Long = Shapes::IntegerShape.new(name: 'Long')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OrganizationUnitIdentifier = Shapes::StringShape.new(name: 'OrganizationUnitIdentifier')
    OrganizationUnitIdentifiers = Shapes::ListShape.new(name: 'OrganizationUnitIdentifiers')
    OutputFormat = Shapes::StringShape.new(name: 'OutputFormat')
    PipelineOutput = Shapes::StructureShape.new(name: 'PipelineOutput')
    PipelineOutputError = Shapes::StructureShape.new(name: 'PipelineOutputError')
    PipelineOutputs = Shapes::ListShape.new(name: 'PipelineOutputs')
    Processors = Shapes::ListShape.new(name: 'Processors')
    Record = Shapes::StructureShape.new(name: 'Record')
    RecordFormat = Shapes::StringShape.new(name: 'RecordFormat')
    Records = Shapes::ListShape.new(name: 'Records')
    RedactedFields = Shapes::ListShape.new(name: 'RedactedFields')
    Region = Shapes::StringShape.new(name: 'Region')
    Regions = Shapes::ListShape.new(name: 'Regions')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceIdentifierPrefix = Shapes::StringShape.new(name: 'ResourceIdentifierPrefix')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypes = Shapes::ListShape.new(name: 'ResourceTypes')
    RetentionPeriodInDays = Shapes::IntegerShape.new(name: 'RetentionPeriodInDays')
    RuleHealth = Shapes::StringShape.new(name: 'RuleHealth')
    RuleIdentifier = Shapes::StringShape.new(name: 'RuleIdentifier')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    SSEAlgorithm = Shapes::StringShape.new(name: 'SSEAlgorithm')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SingleHeader = Shapes::StructureShape.new(name: 'SingleHeader')
    SingleHeaderNameString = Shapes::StringShape.new(name: 'SingleHeaderNameString')
    Sinks = Shapes::ListShape.new(name: 'Sinks')
    Source = Shapes::StructureShape.new(name: 'Source')
    SourceFilterString = Shapes::StringShape.new(name: 'SourceFilterString')
    SourceLogsConfiguration = Shapes::StructureShape.new(name: 'SourceLogsConfiguration')
    Sources = Shapes::ListShape.new(name: 'Sources')
    StartTelemetryEnrichmentOutput = Shapes::StructureShape.new(name: 'StartTelemetryEnrichmentOutput')
    Status = Shapes::StringShape.new(name: 'Status')
    StopTelemetryEnrichmentOutput = Shapes::StructureShape.new(name: 'StopTelemetryEnrichmentOutput')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
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
    TelemetryEnrichmentStatus = Shapes::StringShape.new(name: 'TelemetryEnrichmentStatus')
    TelemetryPipeline = Shapes::StructureShape.new(name: 'TelemetryPipeline')
    TelemetryPipelineConfiguration = Shapes::StructureShape.new(name: 'TelemetryPipelineConfiguration')
    TelemetryPipelineConfigurationBody = Shapes::StringShape.new(name: 'TelemetryPipelineConfigurationBody')
    TelemetryPipelineIdentifier = Shapes::StringShape.new(name: 'TelemetryPipelineIdentifier')
    TelemetryPipelineName = Shapes::StringShape.new(name: 'TelemetryPipelineName')
    TelemetryPipelineStatus = Shapes::StringShape.new(name: 'TelemetryPipelineStatus')
    TelemetryPipelineStatusReason = Shapes::StructureShape.new(name: 'TelemetryPipelineStatusReason')
    TelemetryPipelineSummaries = Shapes::ListShape.new(name: 'TelemetryPipelineSummaries')
    TelemetryPipelineSummary = Shapes::StructureShape.new(name: 'TelemetryPipelineSummary')
    TelemetryRule = Shapes::StructureShape.new(name: 'TelemetryRule')
    TelemetryRuleSummaries = Shapes::ListShape.new(name: 'TelemetryRuleSummaries')
    TelemetryRuleSummary = Shapes::StructureShape.new(name: 'TelemetryRuleSummary')
    TelemetrySourceType = Shapes::StringShape.new(name: 'TelemetrySourceType')
    TelemetrySourceTypes = Shapes::ListShape.new(name: 'TelemetrySourceTypes')
    TelemetryState = Shapes::StringShape.new(name: 'TelemetryState')
    TelemetryType = Shapes::StringShape.new(name: 'TelemetryType')
    TestTelemetryPipelineInput = Shapes::StructureShape.new(name: 'TestTelemetryPipelineInput')
    TestTelemetryPipelineOutput = Shapes::StructureShape.new(name: 'TestTelemetryPipelineOutput')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UpdateCentralizationRuleForOrganizationInput = Shapes::StructureShape.new(name: 'UpdateCentralizationRuleForOrganizationInput')
    UpdateCentralizationRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'UpdateCentralizationRuleForOrganizationOutput')
    UpdateTelemetryPipelineInput = Shapes::StructureShape.new(name: 'UpdateTelemetryPipelineInput')
    UpdateTelemetryPipelineOutput = Shapes::StructureShape.new(name: 'UpdateTelemetryPipelineOutput')
    UpdateTelemetryRuleForOrganizationInput = Shapes::StructureShape.new(name: 'UpdateTelemetryRuleForOrganizationInput')
    UpdateTelemetryRuleForOrganizationOutput = Shapes::StructureShape.new(name: 'UpdateTelemetryRuleForOrganizationOutput')
    UpdateTelemetryRuleInput = Shapes::StructureShape.new(name: 'UpdateTelemetryRuleInput')
    UpdateTelemetryRuleOutput = Shapes::StructureShape.new(name: 'UpdateTelemetryRuleOutput')
    VPCFlowLogParameters = Shapes::StructureShape.new(name: 'VPCFlowLogParameters')
    ValidateTelemetryPipelineConfigurationInput = Shapes::StructureShape.new(name: 'ValidateTelemetryPipelineConfigurationInput')
    ValidateTelemetryPipelineConfigurationOutput = Shapes::StructureShape.new(name: 'ValidateTelemetryPipelineConfigurationOutput')
    ValidationError = Shapes::StructureShape.new(name: 'ValidationError')
    ValidationErrors = Shapes::ListShape.new(name: 'ValidationErrors')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WAFLogType = Shapes::StringShape.new(name: 'WAFLogType')
    WAFLoggingParameters = Shapes::StructureShape.new(name: 'WAFLoggingParameters')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIdentifiers.member = Shapes::ShapeRef.new(shape: AccountIdentifier)

    ActionCondition.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    ActionCondition.struct_class = Types::ActionCondition

    AdvancedEventSelector.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AdvancedEventSelector.add_member(:field_selectors, Shapes::ShapeRef.new(shape: FieldSelectors, required: true, location_name: "FieldSelectors"))
    AdvancedEventSelector.struct_class = Types::AdvancedEventSelector

    AdvancedEventSelectors.member = Shapes::ShapeRef.new(shape: AdvancedEventSelector)

    AdvancedFieldSelector.add_member(:field, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Field"))
    AdvancedFieldSelector.add_member(:equals, Shapes::ShapeRef.new(shape: StringList, location_name: "Equals"))
    AdvancedFieldSelector.add_member(:starts_with, Shapes::ShapeRef.new(shape: StringList, location_name: "StartsWith"))
    AdvancedFieldSelector.add_member(:ends_with, Shapes::ShapeRef.new(shape: StringList, location_name: "EndsWith"))
    AdvancedFieldSelector.add_member(:not_equals, Shapes::ShapeRef.new(shape: StringList, location_name: "NotEquals"))
    AdvancedFieldSelector.add_member(:not_starts_with, Shapes::ShapeRef.new(shape: StringList, location_name: "NotStartsWith"))
    AdvancedFieldSelector.add_member(:not_ends_with, Shapes::ShapeRef.new(shape: StringList, location_name: "NotEndsWith"))
    AdvancedFieldSelector.struct_class = Types::AdvancedFieldSelector

    CentralizationRule.add_member(:source, Shapes::ShapeRef.new(shape: CentralizationRuleSource, required: true, location_name: "Source"))
    CentralizationRule.add_member(:destination, Shapes::ShapeRef.new(shape: CentralizationRuleDestination, required: true, location_name: "Destination"))
    CentralizationRule.struct_class = Types::CentralizationRule

    CentralizationRuleDestination.add_member(:region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "Region"))
    CentralizationRuleDestination.add_member(:account, Shapes::ShapeRef.new(shape: AccountIdentifier, location_name: "Account"))
    CentralizationRuleDestination.add_member(:destination_logs_configuration, Shapes::ShapeRef.new(shape: DestinationLogsConfiguration, location_name: "DestinationLogsConfiguration"))
    CentralizationRuleDestination.struct_class = Types::CentralizationRuleDestination

    CentralizationRuleSource.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, required: true, location_name: "Regions"))
    CentralizationRuleSource.add_member(:scope, Shapes::ShapeRef.new(shape: SourceFilterString, location_name: "Scope"))
    CentralizationRuleSource.add_member(:source_logs_configuration, Shapes::ShapeRef.new(shape: SourceLogsConfiguration, location_name: "SourceLogsConfiguration"))
    CentralizationRuleSource.struct_class = Types::CentralizationRuleSource

    CentralizationRuleSummaries.member = Shapes::ShapeRef.new(shape: CentralizationRuleSummary)

    CentralizationRuleSummary.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, location_name: "RuleName"))
    CentralizationRuleSummary.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    CentralizationRuleSummary.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: String, location_name: "CreatorAccountId"))
    CentralizationRuleSummary.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    CentralizationRuleSummary.add_member(:created_region, Shapes::ShapeRef.new(shape: Region, location_name: "CreatedRegion"))
    CentralizationRuleSummary.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    CentralizationRuleSummary.add_member(:rule_health, Shapes::ShapeRef.new(shape: RuleHealth, location_name: "RuleHealth"))
    CentralizationRuleSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: CentralizationFailureReason, location_name: "FailureReason"))
    CentralizationRuleSummary.add_member(:destination_account_id, Shapes::ShapeRef.new(shape: String, location_name: "DestinationAccountId"))
    CentralizationRuleSummary.add_member(:destination_region, Shapes::ShapeRef.new(shape: Region, location_name: "DestinationRegion"))
    CentralizationRuleSummary.struct_class = Types::CentralizationRuleSummary

    CloudtrailParameters.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, required: true, location_name: "AdvancedEventSelectors"))
    CloudtrailParameters.struct_class = Types::CloudtrailParameters

    Condition.add_member(:action_condition, Shapes::ShapeRef.new(shape: ActionCondition, location_name: "ActionCondition"))
    Condition.add_member(:label_name_condition, Shapes::ShapeRef.new(shape: LabelNameCondition, location_name: "LabelNameCondition"))
    Condition.struct_class = Types::Condition

    Conditions.member = Shapes::ShapeRef.new(shape: Condition)

    ConfigurationSummary.add_member(:sources, Shapes::ShapeRef.new(shape: Sources, location_name: "Sources"))
    ConfigurationSummary.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "DataSources"))
    ConfigurationSummary.add_member(:processors, Shapes::ShapeRef.new(shape: Processors, location_name: "Processors"))
    ConfigurationSummary.add_member(:processor_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ProcessorCount"))
    ConfigurationSummary.add_member(:sinks, Shapes::ShapeRef.new(shape: Sinks, location_name: "Sinks"))
    ConfigurationSummary.struct_class = Types::ConfigurationSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateCentralizationRuleForOrganizationInput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "RuleName"))
    CreateCentralizationRuleForOrganizationInput.add_member(:rule, Shapes::ShapeRef.new(shape: CentralizationRule, required: true, location_name: "Rule"))
    CreateCentralizationRuleForOrganizationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    CreateCentralizationRuleForOrganizationInput.struct_class = Types::CreateCentralizationRuleForOrganizationInput

    CreateCentralizationRuleForOrganizationOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    CreateCentralizationRuleForOrganizationOutput.struct_class = Types::CreateCentralizationRuleForOrganizationOutput

    CreateS3TableIntegrationInput.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, required: true, location_name: "Encryption"))
    CreateS3TableIntegrationInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "RoleArn"))
    CreateS3TableIntegrationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    CreateS3TableIntegrationInput.struct_class = Types::CreateS3TableIntegrationInput

    CreateS3TableIntegrationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    CreateS3TableIntegrationOutput.struct_class = Types::CreateS3TableIntegrationOutput

    CreateTelemetryPipelineInput.add_member(:name, Shapes::ShapeRef.new(shape: TelemetryPipelineName, required: true, location_name: "Name"))
    CreateTelemetryPipelineInput.add_member(:configuration, Shapes::ShapeRef.new(shape: TelemetryPipelineConfiguration, required: true, location_name: "Configuration"))
    CreateTelemetryPipelineInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    CreateTelemetryPipelineInput.struct_class = Types::CreateTelemetryPipelineInput

    CreateTelemetryPipelineOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    CreateTelemetryPipelineOutput.struct_class = Types::CreateTelemetryPipelineOutput

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

    DataSource.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    DataSource.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    DataSource.struct_class = Types::DataSource

    DataSources.member = Shapes::ShapeRef.new(shape: DataSource)

    DeleteCentralizationRuleForOrganizationInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    DeleteCentralizationRuleForOrganizationInput.struct_class = Types::DeleteCentralizationRuleForOrganizationInput

    DeleteS3TableIntegrationInput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "Arn"))
    DeleteS3TableIntegrationInput.struct_class = Types::DeleteS3TableIntegrationInput

    DeleteTelemetryPipelineInput.add_member(:pipeline_identifier, Shapes::ShapeRef.new(shape: TelemetryPipelineIdentifier, required: true, location_name: "PipelineIdentifier"))
    DeleteTelemetryPipelineInput.struct_class = Types::DeleteTelemetryPipelineInput

    DeleteTelemetryPipelineOutput.struct_class = Types::DeleteTelemetryPipelineOutput

    DeleteTelemetryRuleForOrganizationInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    DeleteTelemetryRuleForOrganizationInput.struct_class = Types::DeleteTelemetryRuleForOrganizationInput

    DeleteTelemetryRuleInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    DeleteTelemetryRuleInput.struct_class = Types::DeleteTelemetryRuleInput

    DestinationLogsConfiguration.add_member(:logs_encryption_configuration, Shapes::ShapeRef.new(shape: LogsEncryptionConfiguration, location_name: "LogsEncryptionConfiguration"))
    DestinationLogsConfiguration.add_member(:backup_configuration, Shapes::ShapeRef.new(shape: LogsBackupConfiguration, location_name: "BackupConfiguration"))
    DestinationLogsConfiguration.struct_class = Types::DestinationLogsConfiguration

    ELBLoadBalancerLoggingParameters.add_member(:output_format, Shapes::ShapeRef.new(shape: OutputFormat, location_name: "OutputFormat"))
    ELBLoadBalancerLoggingParameters.add_member(:field_delimiter, Shapes::ShapeRef.new(shape: String, location_name: "FieldDelimiter"))
    ELBLoadBalancerLoggingParameters.struct_class = Types::ELBLoadBalancerLoggingParameters

    Encryption.add_member(:sse_algorithm, Shapes::ShapeRef.new(shape: SSEAlgorithm, required: true, location_name: "SseAlgorithm"))
    Encryption.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "KmsKeyArn"))
    Encryption.struct_class = Types::Encryption

    FieldMap.key = Shapes::ShapeRef.new(shape: String)
    FieldMap.value = Shapes::ShapeRef.new(shape: String)

    FieldSelectors.member = Shapes::ShapeRef.new(shape: AdvancedFieldSelector)

    FieldToMatch.add_member(:single_header, Shapes::ShapeRef.new(shape: SingleHeader, location_name: "SingleHeader"))
    FieldToMatch.add_member(:uri_path, Shapes::ShapeRef.new(shape: String, location_name: "UriPath"))
    FieldToMatch.add_member(:query_string, Shapes::ShapeRef.new(shape: String, location_name: "QueryString"))
    FieldToMatch.add_member(:method, Shapes::ShapeRef.new(shape: String, location_name: "Method"))
    FieldToMatch.struct_class = Types::FieldToMatch

    Filter.add_member(:behavior, Shapes::ShapeRef.new(shape: FilterBehavior, location_name: "Behavior"))
    Filter.add_member(:requirement, Shapes::ShapeRef.new(shape: FilterRequirement, location_name: "Requirement"))
    Filter.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "Conditions"))
    Filter.struct_class = Types::Filter

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    GetCentralizationRuleForOrganizationInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    GetCentralizationRuleForOrganizationInput.struct_class = Types::GetCentralizationRuleForOrganizationInput

    GetCentralizationRuleForOrganizationOutput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, location_name: "RuleName"))
    GetCentralizationRuleForOrganizationOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    GetCentralizationRuleForOrganizationOutput.add_member(:creator_account_id, Shapes::ShapeRef.new(shape: String, location_name: "CreatorAccountId"))
    GetCentralizationRuleForOrganizationOutput.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    GetCentralizationRuleForOrganizationOutput.add_member(:created_region, Shapes::ShapeRef.new(shape: Region, location_name: "CreatedRegion"))
    GetCentralizationRuleForOrganizationOutput.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    GetCentralizationRuleForOrganizationOutput.add_member(:rule_health, Shapes::ShapeRef.new(shape: RuleHealth, location_name: "RuleHealth"))
    GetCentralizationRuleForOrganizationOutput.add_member(:failure_reason, Shapes::ShapeRef.new(shape: CentralizationFailureReason, location_name: "FailureReason"))
    GetCentralizationRuleForOrganizationOutput.add_member(:centralization_rule, Shapes::ShapeRef.new(shape: CentralizationRule, location_name: "CentralizationRule"))
    GetCentralizationRuleForOrganizationOutput.struct_class = Types::GetCentralizationRuleForOrganizationOutput

    GetS3TableIntegrationInput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "Arn"))
    GetS3TableIntegrationInput.struct_class = Types::GetS3TableIntegrationInput

    GetS3TableIntegrationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    GetS3TableIntegrationOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RoleArn"))
    GetS3TableIntegrationOutput.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: "Status"))
    GetS3TableIntegrationOutput.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    GetS3TableIntegrationOutput.add_member(:destination_table_bucket_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "DestinationTableBucketArn"))
    GetS3TableIntegrationOutput.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    GetS3TableIntegrationOutput.struct_class = Types::GetS3TableIntegrationOutput

    GetTelemetryEnrichmentStatusOutput.add_member(:status, Shapes::ShapeRef.new(shape: TelemetryEnrichmentStatus, location_name: "Status"))
    GetTelemetryEnrichmentStatusOutput.add_member(:aws_resource_explorer_managed_view_arn, Shapes::ShapeRef.new(shape: AwsResourceExplorerManagedViewArn, location_name: "AwsResourceExplorerManagedViewArn"))
    GetTelemetryEnrichmentStatusOutput.struct_class = Types::GetTelemetryEnrichmentStatusOutput

    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    GetTelemetryEvaluationStatusForOrganizationOutput.struct_class = Types::GetTelemetryEvaluationStatusForOrganizationOutput

    GetTelemetryEvaluationStatusOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    GetTelemetryEvaluationStatusOutput.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    GetTelemetryEvaluationStatusOutput.struct_class = Types::GetTelemetryEvaluationStatusOutput

    GetTelemetryPipelineInput.add_member(:pipeline_identifier, Shapes::ShapeRef.new(shape: TelemetryPipelineIdentifier, required: true, location_name: "PipelineIdentifier"))
    GetTelemetryPipelineInput.struct_class = Types::GetTelemetryPipelineInput

    GetTelemetryPipelineOutput.add_member(:pipeline, Shapes::ShapeRef.new(shape: TelemetryPipeline, location_name: "Pipeline"))
    GetTelemetryPipelineOutput.struct_class = Types::GetTelemetryPipelineOutput

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

    IntegrationSummaries.member = Shapes::ShapeRef.new(shape: IntegrationSummary)

    IntegrationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    IntegrationSummary.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: "Status"))
    IntegrationSummary.struct_class = Types::IntegrationSummary

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidStateException.struct_class = Types::InvalidStateException

    LabelNameCondition.add_member(:label_name, Shapes::ShapeRef.new(shape: LabelNameConditionLabelNameString, location_name: "LabelName"))
    LabelNameCondition.struct_class = Types::LabelNameCondition

    ListCentralizationRulesForOrganizationInput.add_member(:rule_name_prefix, Shapes::ShapeRef.new(shape: ListCentralizationRulesForOrganizationInputRuleNamePrefixString, location_name: "RuleNamePrefix"))
    ListCentralizationRulesForOrganizationInput.add_member(:all_regions, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllRegions"))
    ListCentralizationRulesForOrganizationInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCentralizationRulesForOrganizationMaxResults, location_name: "MaxResults"))
    ListCentralizationRulesForOrganizationInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCentralizationRulesForOrganizationInput.struct_class = Types::ListCentralizationRulesForOrganizationInput

    ListCentralizationRulesForOrganizationOutput.add_member(:centralization_rule_summaries, Shapes::ShapeRef.new(shape: CentralizationRuleSummaries, location_name: "CentralizationRuleSummaries"))
    ListCentralizationRulesForOrganizationOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCentralizationRulesForOrganizationOutput.struct_class = Types::ListCentralizationRulesForOrganizationOutput

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

    ListS3TableIntegrationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListS3TableIntegrationsMaxResults, location_name: "MaxResults"))
    ListS3TableIntegrationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListS3TableIntegrationsInput.struct_class = Types::ListS3TableIntegrationsInput

    ListS3TableIntegrationsOutput.add_member(:integration_summaries, Shapes::ShapeRef.new(shape: IntegrationSummaries, location_name: "IntegrationSummaries"))
    ListS3TableIntegrationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListS3TableIntegrationsOutput.struct_class = Types::ListS3TableIntegrationsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, required: true, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListTelemetryPipelinesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTelemetryPipelinesMaxResults, location_name: "MaxResults"))
    ListTelemetryPipelinesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTelemetryPipelinesInput.struct_class = Types::ListTelemetryPipelinesInput

    ListTelemetryPipelinesOutput.add_member(:pipeline_summaries, Shapes::ShapeRef.new(shape: TelemetryPipelineSummaries, location_name: "PipelineSummaries"))
    ListTelemetryPipelinesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTelemetryPipelinesOutput.struct_class = Types::ListTelemetryPipelinesOutput

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

    LogDeliveryParameters.add_member(:log_types, Shapes::ShapeRef.new(shape: LogTypes, location_name: "LogTypes"))
    LogDeliveryParameters.struct_class = Types::LogDeliveryParameters

    LogTypes.member = Shapes::ShapeRef.new(shape: LogType)

    LoggingFilter.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    LoggingFilter.add_member(:default_behavior, Shapes::ShapeRef.new(shape: FilterBehavior, location_name: "DefaultBehavior"))
    LoggingFilter.struct_class = Types::LoggingFilter

    LogsBackupConfiguration.add_member(:region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "Region"))
    LogsBackupConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "KmsKeyArn"))
    LogsBackupConfiguration.struct_class = Types::LogsBackupConfiguration

    LogsEncryptionConfiguration.add_member(:encryption_strategy, Shapes::ShapeRef.new(shape: EncryptionStrategy, required: true, location_name: "EncryptionStrategy"))
    LogsEncryptionConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "KmsKeyArn"))
    LogsEncryptionConfiguration.add_member(:encryption_conflict_resolution_strategy, Shapes::ShapeRef.new(shape: EncryptionConflictResolutionStrategy, location_name: "EncryptionConflictResolutionStrategy"))
    LogsEncryptionConfiguration.struct_class = Types::LogsEncryptionConfiguration

    OrganizationUnitIdentifiers.member = Shapes::ShapeRef.new(shape: OrganizationUnitIdentifier)

    PipelineOutput.add_member(:record, Shapes::ShapeRef.new(shape: Record, location_name: "Record"))
    PipelineOutput.add_member(:error, Shapes::ShapeRef.new(shape: PipelineOutputError, location_name: "Error"))
    PipelineOutput.struct_class = Types::PipelineOutput

    PipelineOutputError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    PipelineOutputError.struct_class = Types::PipelineOutputError

    PipelineOutputs.member = Shapes::ShapeRef.new(shape: PipelineOutput)

    Processors.member = Shapes::ShapeRef.new(shape: String)

    Record.add_member(:data, Shapes::ShapeRef.new(shape: String, location_name: "Data"))
    Record.add_member(:type, Shapes::ShapeRef.new(shape: RecordFormat, location_name: "Type"))
    Record.struct_class = Types::Record

    Records.member = Shapes::ShapeRef.new(shape: Record)

    RedactedFields.member = Shapes::ShapeRef.new(shape: FieldToMatch)

    Regions.member = Shapes::ShapeRef.new(shape: Region)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTypes.member = Shapes::ShapeRef.new(shape: ResourceType)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SingleHeader.add_member(:name, Shapes::ShapeRef.new(shape: SingleHeaderNameString, location_name: "Name"))
    SingleHeader.struct_class = Types::SingleHeader

    Sinks.member = Shapes::ShapeRef.new(shape: String)

    Source.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    Source.struct_class = Types::Source

    SourceLogsConfiguration.add_member(:log_group_selection_criteria, Shapes::ShapeRef.new(shape: LogsFilterString, required: true, location_name: "LogGroupSelectionCriteria"))
    SourceLogsConfiguration.add_member(:encrypted_log_group_strategy, Shapes::ShapeRef.new(shape: EncryptedLogGroupStrategy, required: true, location_name: "EncryptedLogGroupStrategy"))
    SourceLogsConfiguration.struct_class = Types::SourceLogsConfiguration

    Sources.member = Shapes::ShapeRef.new(shape: Source)

    StartTelemetryEnrichmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: TelemetryEnrichmentStatus, location_name: "Status"))
    StartTelemetryEnrichmentOutput.add_member(:aws_resource_explorer_managed_view_arn, Shapes::ShapeRef.new(shape: AwsResourceExplorerManagedViewArn, location_name: "AwsResourceExplorerManagedViewArn"))
    StartTelemetryEnrichmentOutput.struct_class = Types::StartTelemetryEnrichmentOutput

    StopTelemetryEnrichmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: TelemetryEnrichmentStatus, location_name: "Status"))
    StopTelemetryEnrichmentOutput.struct_class = Types::StopTelemetryEnrichmentOutput

    StringList.member = Shapes::ShapeRef.new(shape: String)

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
    TelemetryDestinationConfiguration.add_member(:cloudtrail_parameters, Shapes::ShapeRef.new(shape: CloudtrailParameters, location_name: "CloudtrailParameters"))
    TelemetryDestinationConfiguration.add_member(:elb_load_balancer_logging_parameters, Shapes::ShapeRef.new(shape: ELBLoadBalancerLoggingParameters, location_name: "ELBLoadBalancerLoggingParameters"))
    TelemetryDestinationConfiguration.add_member(:waf_logging_parameters, Shapes::ShapeRef.new(shape: WAFLoggingParameters, location_name: "WAFLoggingParameters"))
    TelemetryDestinationConfiguration.add_member(:log_delivery_parameters, Shapes::ShapeRef.new(shape: LogDeliveryParameters, location_name: "LogDeliveryParameters"))
    TelemetryDestinationConfiguration.struct_class = Types::TelemetryDestinationConfiguration

    TelemetryPipeline.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    TelemetryPipeline.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    TelemetryPipeline.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    TelemetryPipeline.add_member(:name, Shapes::ShapeRef.new(shape: TelemetryPipelineName, location_name: "Name"))
    TelemetryPipeline.add_member(:configuration, Shapes::ShapeRef.new(shape: TelemetryPipelineConfiguration, location_name: "Configuration"))
    TelemetryPipeline.add_member(:status, Shapes::ShapeRef.new(shape: TelemetryPipelineStatus, location_name: "Status"))
    TelemetryPipeline.add_member(:status_reason, Shapes::ShapeRef.new(shape: TelemetryPipelineStatusReason, location_name: "StatusReason"))
    TelemetryPipeline.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "Tags"))
    TelemetryPipeline.struct_class = Types::TelemetryPipeline

    TelemetryPipelineConfiguration.add_member(:body, Shapes::ShapeRef.new(shape: TelemetryPipelineConfigurationBody, required: true, location_name: "Body"))
    TelemetryPipelineConfiguration.struct_class = Types::TelemetryPipelineConfiguration

    TelemetryPipelineStatusReason.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    TelemetryPipelineStatusReason.struct_class = Types::TelemetryPipelineStatusReason

    TelemetryPipelineSummaries.member = Shapes::ShapeRef.new(shape: TelemetryPipelineSummary)

    TelemetryPipelineSummary.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreatedTimeStamp"))
    TelemetryPipelineSummary.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    TelemetryPipelineSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    TelemetryPipelineSummary.add_member(:name, Shapes::ShapeRef.new(shape: TelemetryPipelineName, location_name: "Name"))
    TelemetryPipelineSummary.add_member(:status, Shapes::ShapeRef.new(shape: TelemetryPipelineStatus, location_name: "Status"))
    TelemetryPipelineSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "Tags"))
    TelemetryPipelineSummary.add_member(:configuration_summary, Shapes::ShapeRef.new(shape: ConfigurationSummary, location_name: "ConfigurationSummary"))
    TelemetryPipelineSummary.struct_class = Types::TelemetryPipelineSummary

    TelemetryRule.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    TelemetryRule.add_member(:telemetry_type, Shapes::ShapeRef.new(shape: TelemetryType, required: true, location_name: "TelemetryType"))
    TelemetryRule.add_member(:telemetry_source_types, Shapes::ShapeRef.new(shape: TelemetrySourceTypes, location_name: "TelemetrySourceTypes"))
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
    TelemetryRuleSummary.add_member(:telemetry_source_types, Shapes::ShapeRef.new(shape: TelemetrySourceTypes, location_name: "TelemetrySourceTypes"))
    TelemetryRuleSummary.struct_class = Types::TelemetryRuleSummary

    TelemetrySourceTypes.member = Shapes::ShapeRef.new(shape: TelemetrySourceType)

    TestTelemetryPipelineInput.add_member(:records, Shapes::ShapeRef.new(shape: Records, required: true, location_name: "Records"))
    TestTelemetryPipelineInput.add_member(:configuration, Shapes::ShapeRef.new(shape: TelemetryPipelineConfiguration, required: true, location_name: "Configuration"))
    TestTelemetryPipelineInput.struct_class = Types::TestTelemetryPipelineInput

    TestTelemetryPipelineOutput.add_member(:results, Shapes::ShapeRef.new(shape: PipelineOutputs, location_name: "Results"))
    TestTelemetryPipelineOutput.struct_class = Types::TestTelemetryPipelineOutput

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UpdateCentralizationRuleForOrganizationInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "RuleIdentifier"))
    UpdateCentralizationRuleForOrganizationInput.add_member(:rule, Shapes::ShapeRef.new(shape: CentralizationRule, required: true, location_name: "Rule"))
    UpdateCentralizationRuleForOrganizationInput.struct_class = Types::UpdateCentralizationRuleForOrganizationInput

    UpdateCentralizationRuleForOrganizationOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleArn"))
    UpdateCentralizationRuleForOrganizationOutput.struct_class = Types::UpdateCentralizationRuleForOrganizationOutput

    UpdateTelemetryPipelineInput.add_member(:pipeline_identifier, Shapes::ShapeRef.new(shape: TelemetryPipelineIdentifier, required: true, location_name: "PipelineIdentifier"))
    UpdateTelemetryPipelineInput.add_member(:configuration, Shapes::ShapeRef.new(shape: TelemetryPipelineConfiguration, required: true, location_name: "Configuration"))
    UpdateTelemetryPipelineInput.struct_class = Types::UpdateTelemetryPipelineInput

    UpdateTelemetryPipelineOutput.struct_class = Types::UpdateTelemetryPipelineOutput

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

    ValidateTelemetryPipelineConfigurationInput.add_member(:configuration, Shapes::ShapeRef.new(shape: TelemetryPipelineConfiguration, required: true, location_name: "Configuration"))
    ValidateTelemetryPipelineConfigurationInput.struct_class = Types::ValidateTelemetryPipelineConfigurationInput

    ValidateTelemetryPipelineConfigurationOutput.add_member(:errors, Shapes::ShapeRef.new(shape: ValidationErrors, location_name: "Errors"))
    ValidateTelemetryPipelineConfigurationOutput.struct_class = Types::ValidateTelemetryPipelineConfigurationOutput

    ValidationError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationError.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "Reason"))
    ValidationError.add_member(:field_map, Shapes::ShapeRef.new(shape: FieldMap, location_name: "FieldMap"))
    ValidationError.struct_class = Types::ValidationError

    ValidationErrors.member = Shapes::ShapeRef.new(shape: ValidationError)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.add_member(:errors, Shapes::ShapeRef.new(shape: ValidationErrors, location_name: "Errors"))
    ValidationException.struct_class = Types::ValidationException

    WAFLoggingParameters.add_member(:redacted_fields, Shapes::ShapeRef.new(shape: RedactedFields, location_name: "RedactedFields"))
    WAFLoggingParameters.add_member(:logging_filter, Shapes::ShapeRef.new(shape: LoggingFilter, location_name: "LoggingFilter"))
    WAFLoggingParameters.add_member(:log_type, Shapes::ShapeRef.new(shape: WAFLogType, location_name: "LogType"))
    WAFLoggingParameters.struct_class = Types::WAFLoggingParameters


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

      api.add_operation(:create_centralization_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCentralizationRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/CreateCentralizationRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: CreateCentralizationRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCentralizationRuleForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_s3_table_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateS3TableIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/CreateS3TableIntegration"
        o.input = Shapes::ShapeRef.new(shape: CreateS3TableIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateS3TableIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_telemetry_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTelemetryPipeline"
        o.http_method = "POST"
        o.http_request_uri = "/CreateTelemetryPipeline"
        o.input = Shapes::ShapeRef.new(shape: CreateTelemetryPipelineInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTelemetryPipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

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

      api.add_operation(:delete_centralization_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCentralizationRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteCentralizationRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: DeleteCentralizationRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_s3_table_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteS3TableIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteS3TableIntegration"
        o.input = Shapes::ShapeRef.new(shape: DeleteS3TableIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_telemetry_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTelemetryPipeline"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteTelemetryPipeline"
        o.input = Shapes::ShapeRef.new(shape: DeleteTelemetryPipelineInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTelemetryPipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:get_centralization_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCentralizationRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/GetCentralizationRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: GetCentralizationRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: GetCentralizationRuleForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_s3_table_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetS3TableIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/GetS3TableIntegration"
        o.input = Shapes::ShapeRef.new(shape: GetS3TableIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: GetS3TableIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_telemetry_enrichment_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryEnrichmentStatus"
        o.http_method = "POST"
        o.http_request_uri = "/GetTelemetryEnrichmentStatus"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryEnrichmentStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:get_telemetry_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryPipeline"
        o.http_method = "POST"
        o.http_request_uri = "/GetTelemetryPipeline"
        o.input = Shapes::ShapeRef.new(shape: GetTelemetryPipelineInput)
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryPipelineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_centralization_rules_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCentralizationRulesForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/ListCentralizationRulesForOrganization"
        o.input = Shapes::ShapeRef.new(shape: ListCentralizationRulesForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: ListCentralizationRulesForOrganizationOutput)
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

      api.add_operation(:list_s3_table_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListS3TableIntegrations"
        o.http_method = "POST"
        o.http_request_uri = "/ListS3TableIntegrations"
        o.input = Shapes::ShapeRef.new(shape: ListS3TableIntegrationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListS3TableIntegrationsOutput)
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

      api.add_operation(:list_telemetry_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTelemetryPipelines"
        o.http_method = "POST"
        o.http_request_uri = "/ListTelemetryPipelines"
        o.input = Shapes::ShapeRef.new(shape: ListTelemetryPipelinesInput)
        o.output = Shapes::ShapeRef.new(shape: ListTelemetryPipelinesOutput)
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

      api.add_operation(:start_telemetry_enrichment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTelemetryEnrichment"
        o.http_method = "POST"
        o.http_request_uri = "/StartTelemetryEnrichment"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: StartTelemetryEnrichmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
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

      api.add_operation(:stop_telemetry_enrichment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTelemetryEnrichment"
        o.http_method = "POST"
        o.http_request_uri = "/StopTelemetryEnrichment"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: StopTelemetryEnrichmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:test_telemetry_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestTelemetryPipeline"
        o.http_method = "POST"
        o.http_request_uri = "/TestTelemetryPipeline"
        o.input = Shapes::ShapeRef.new(shape: TestTelemetryPipelineInput)
        o.output = Shapes::ShapeRef.new(shape: TestTelemetryPipelineOutput)
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

      api.add_operation(:update_centralization_rule_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCentralizationRuleForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateCentralizationRuleForOrganization"
        o.input = Shapes::ShapeRef.new(shape: UpdateCentralizationRuleForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateCentralizationRuleForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_telemetry_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTelemetryPipeline"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateTelemetryPipeline"
        o.input = Shapes::ShapeRef.new(shape: UpdateTelemetryPipelineInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTelemetryPipelineOutput)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:validate_telemetry_pipeline_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateTelemetryPipelineConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/ValidateTelemetryPipelineConfiguration"
        o.input = Shapes::ShapeRef.new(shape: ValidateTelemetryPipelineConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: ValidateTelemetryPipelineConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
