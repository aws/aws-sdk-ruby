# frozen_string_literal: true

# This is generated code!

module Aws::ObservabilityAdmin
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccountIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#AccountIdentifier", name: "AccountIdentifier", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AccountIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#AccountIdentifiers", name: "AccountIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    Action = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#Action", name: "Action")
    ActionCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ActionCondition", name: "ActionCondition")
    AdvancedEventSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#AdvancedEventSelector", name: "AdvancedEventSelector")
    AdvancedEventSelectors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#AdvancedEventSelectors", name: "AdvancedEventSelectors")
    AdvancedFieldSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#AdvancedFieldSelector", name: "AdvancedFieldSelector")
    AllRegions = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.observabilityadmin#AllRegions", name: "AllRegions")
    AwsResourceExplorerManagedViewArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#AwsResourceExplorerManagedViewArn", name: "AwsResourceExplorerManagedViewArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws([a-z0-9\\-]+)?:resource-explorer-2:([a-z0-9\\-]+)?:([0-9]{12})?:managed-view/(.+)$"})
    CentralizationFailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#CentralizationFailureReason", name: "CentralizationFailureReason")
    CentralizationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CentralizationRule", name: "CentralizationRule")
    CentralizationRuleDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CentralizationRuleDestination", name: "CentralizationRuleDestination")
    CentralizationRuleSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CentralizationRuleSource", name: "CentralizationRuleSource")
    CentralizationRuleSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#CentralizationRuleSummaries", name: "CentralizationRuleSummaries")
    CentralizationRuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CentralizationRuleSummary", name: "CentralizationRuleSummary")
    CloudtrailParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CloudtrailParameters", name: "CloudtrailParameters")
    Condition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#Condition", name: "Condition")
    Conditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#Conditions", name: "Conditions", traits: {"smithy.api#length" => {"min" => 1}})
    ConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ConfigurationSummary", name: "ConfigurationSummary")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContextGraphStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#ContextGraphStatus", name: "ContextGraphStatus")
    CreateCentralizationRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateCentralizationRuleForOrganizationInput", name: "CreateCentralizationRuleForOrganizationInput")
    CreateCentralizationRuleForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateCentralizationRuleForOrganizationOutput", name: "CreateCentralizationRuleForOrganizationOutput")
    CreateDatasetIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateDatasetIntegrationInput", name: "CreateDatasetIntegrationInput")
    CreateDatasetIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateDatasetIntegrationOutput", name: "CreateDatasetIntegrationOutput")
    CreateS3TableIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateS3TableIntegrationInput", name: "CreateS3TableIntegrationInput")
    CreateS3TableIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateS3TableIntegrationOutput", name: "CreateS3TableIntegrationOutput")
    CreateTelemetryPipelineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateTelemetryPipelineInput", name: "CreateTelemetryPipelineInput")
    CreateTelemetryPipelineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateTelemetryPipelineOutput", name: "CreateTelemetryPipelineOutput")
    CreateTelemetryRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateTelemetryRuleForOrganizationInput", name: "CreateTelemetryRuleForOrganizationInput")
    CreateTelemetryRuleForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateTelemetryRuleForOrganizationOutput", name: "CreateTelemetryRuleForOrganizationOutput")
    CreateTelemetryRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateTelemetryRuleInput", name: "CreateTelemetryRuleInput")
    CreateTelemetryRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateTelemetryRuleOutput", name: "CreateTelemetryRuleOutput")
    DataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DataSource", name: "DataSource")
    DataSourceFilterString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#DataSourceFilterString", name: "DataSourceFilterString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    DataSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#DataSources", name: "DataSources")
    DatasetIntegrationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#DatasetIntegrationSummaries", name: "DatasetIntegrationSummaries")
    DatasetIntegrationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DatasetIntegrationSummary", name: "DatasetIntegrationSummary")
    DeleteCentralizationRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DeleteCentralizationRuleForOrganizationInput", name: "DeleteCentralizationRuleForOrganizationInput")
    DeleteDatasetIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DeleteDatasetIntegrationInput", name: "DeleteDatasetIntegrationInput")
    DeleteS3TableIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DeleteS3TableIntegrationInput", name: "DeleteS3TableIntegrationInput")
    DeleteTelemetryPipelineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DeleteTelemetryPipelineInput", name: "DeleteTelemetryPipelineInput")
    DeleteTelemetryPipelineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DeleteTelemetryPipelineOutput", name: "DeleteTelemetryPipelineOutput")
    DeleteTelemetryRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DeleteTelemetryRuleForOrganizationInput", name: "DeleteTelemetryRuleForOrganizationInput")
    DeleteTelemetryRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DeleteTelemetryRuleInput", name: "DeleteTelemetryRuleInput")
    DestinationLogsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DestinationLogsConfiguration", name: "DestinationLogsConfiguration")
    DestinationMetricsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DestinationMetricsConfiguration", name: "DestinationMetricsConfiguration")
    DestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#DestinationType", name: "DestinationType")
    ELBLoadBalancerLoggingParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ELBLoadBalancerLoggingParameters", name: "ELBLoadBalancerLoggingParameters")
    EncryptedLogGroupStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#EncryptedLogGroupStrategy", name: "EncryptedLogGroupStrategy")
    Encryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#Encryption", name: "Encryption")
    EncryptionConflictResolutionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#EncryptionConflictResolutionStrategy", name: "EncryptionConflictResolutionStrategy")
    EncryptionScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#EncryptionScope", name: "EncryptionScope")
    EncryptionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#EncryptionStrategy", name: "EncryptionStrategy")
    FailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#FailureReason", name: "FailureReason")
    FieldMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.observabilityadmin#FieldMap", name: "FieldMap")
    FieldSelectors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#FieldSelectors", name: "FieldSelectors")
    FieldToMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#FieldToMatch", name: "FieldToMatch")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#Filter", name: "Filter")
    FilterBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#FilterBehavior", name: "FilterBehavior")
    FilterRequirement = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#FilterRequirement", name: "FilterRequirement")
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#Filters", name: "Filters", traits: {"smithy.api#length" => {"min" => 1}})
    GetCentralizationRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetCentralizationRuleForOrganizationInput", name: "GetCentralizationRuleForOrganizationInput")
    GetCentralizationRuleForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetCentralizationRuleForOrganizationOutput", name: "GetCentralizationRuleForOrganizationOutput")
    GetDatasetIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetDatasetIntegrationInput", name: "GetDatasetIntegrationInput")
    GetDatasetIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetDatasetIntegrationOutput", name: "GetDatasetIntegrationOutput")
    GetS3TableIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetS3TableIntegrationInput", name: "GetS3TableIntegrationInput")
    GetS3TableIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetS3TableIntegrationOutput", name: "GetS3TableIntegrationOutput")
    GetTelemetryEnrichmentStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryEnrichmentStatusOutput", name: "GetTelemetryEnrichmentStatusOutput")
    GetTelemetryEvaluationStatusForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryEvaluationStatusForOrganizationOutput", name: "GetTelemetryEvaluationStatusForOrganizationOutput")
    GetTelemetryEvaluationStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryEvaluationStatusOutput", name: "GetTelemetryEvaluationStatusOutput")
    GetTelemetryPipelineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryPipelineInput", name: "GetTelemetryPipelineInput")
    GetTelemetryPipelineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryPipelineOutput", name: "GetTelemetryPipelineOutput")
    GetTelemetryRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryRuleForOrganizationInput", name: "GetTelemetryRuleForOrganizationInput")
    GetTelemetryRuleForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryRuleForOrganizationOutput", name: "GetTelemetryRuleForOrganizationOutput")
    GetTelemetryRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryRuleInput", name: "GetTelemetryRuleInput")
    GetTelemetryRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryRuleOutput", name: "GetTelemetryRuleOutput")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:iam::\\d{12}:role/[\\w+=,.@/-]+$"})
    IntegrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#IntegrationStatus", name: "IntegrationStatus")
    IntegrationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#IntegrationSummaries", name: "IntegrationSummaries")
    IntegrationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#IntegrationSummary", name: "IntegrationSummary")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#InvalidStateException", name: "InvalidStateException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IsReplicated = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.observabilityadmin#IsReplicated", name: "IsReplicated")
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:kms:[a-z0-9-]+:\\d{12}:key/(mrk-)?[a-f0-9-]+$"})
    LabelNameCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#LabelNameCondition", name: "LabelNameCondition")
    ListCentralizationRulesForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListCentralizationRulesForOrganizationInput", name: "ListCentralizationRulesForOrganizationInput")
    ListCentralizationRulesForOrganizationMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.observabilityadmin#ListCentralizationRulesForOrganizationMaxResults", name: "ListCentralizationRulesForOrganizationMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListCentralizationRulesForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListCentralizationRulesForOrganizationOutput", name: "ListCentralizationRulesForOrganizationOutput")
    ListDatasetIntegrationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListDatasetIntegrationsInput", name: "ListDatasetIntegrationsInput")
    ListDatasetIntegrationsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.observabilityadmin#ListDatasetIntegrationsMaxResults", name: "ListDatasetIntegrationsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListDatasetIntegrationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListDatasetIntegrationsOutput", name: "ListDatasetIntegrationsOutput")
    ListResourceTelemetryForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListResourceTelemetryForOrganizationInput", name: "ListResourceTelemetryForOrganizationInput")
    ListResourceTelemetryForOrganizationMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.observabilityadmin#ListResourceTelemetryForOrganizationMaxResults", name: "ListResourceTelemetryForOrganizationMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListResourceTelemetryForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListResourceTelemetryForOrganizationOutput", name: "ListResourceTelemetryForOrganizationOutput")
    ListResourceTelemetryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListResourceTelemetryInput", name: "ListResourceTelemetryInput")
    ListResourceTelemetryMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.observabilityadmin#ListResourceTelemetryMaxResults", name: "ListResourceTelemetryMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListResourceTelemetryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListResourceTelemetryOutput", name: "ListResourceTelemetryOutput")
    ListS3TableIntegrationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListS3TableIntegrationsInput", name: "ListS3TableIntegrationsInput")
    ListS3TableIntegrationsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.observabilityadmin#ListS3TableIntegrationsMaxResults", name: "ListS3TableIntegrationsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListS3TableIntegrationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListS3TableIntegrationsOutput", name: "ListS3TableIntegrationsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTelemetryPipelinesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryPipelinesInput", name: "ListTelemetryPipelinesInput")
    ListTelemetryPipelinesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryPipelinesMaxResults", name: "ListTelemetryPipelinesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListTelemetryPipelinesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryPipelinesOutput", name: "ListTelemetryPipelinesOutput")
    ListTelemetryRulesForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryRulesForOrganizationInput", name: "ListTelemetryRulesForOrganizationInput")
    ListTelemetryRulesForOrganizationMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryRulesForOrganizationMaxResults", name: "ListTelemetryRulesForOrganizationMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListTelemetryRulesForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryRulesForOrganizationOutput", name: "ListTelemetryRulesForOrganizationOutput")
    ListTelemetryRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryRulesInput", name: "ListTelemetryRulesInput")
    ListTelemetryRulesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryRulesMaxResults", name: "ListTelemetryRulesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListTelemetryRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryRulesOutput", name: "ListTelemetryRulesOutput")
    LogDeliveryParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#LogDeliveryParameters", name: "LogDeliveryParameters")
    LogGroupNameConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#LogGroupNameConfiguration", name: "LogGroupNameConfiguration")
    LogGroupNamePattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#LogGroupNamePattern", name: "LogGroupNamePattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^(?:[\\._\\-/#A-Za-z0-9]+|\\$\\{[A-Za-z]+(?:\\.[A-Za-z]+){1,2}\\})+$"})
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#LogType", name: "LogType")
    LogTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#LogTypes", name: "LogTypes")
    LoggingFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#LoggingFilter", name: "LoggingFilter")
    LogsBackupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#LogsBackupConfiguration", name: "LogsBackupConfiguration")
    LogsEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#LogsEncryptionConfiguration", name: "LogsEncryptionConfiguration")
    LogsFilterString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#LogsFilterString", name: "LogsFilterString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    MetricsBackupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#MetricsBackupConfiguration", name: "MetricsBackupConfiguration")
    MetricsFilterString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#MetricsFilterString", name: "MetricsFilterString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    MskEnhancedMonitoringLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#MskEnhancedMonitoringLevel", name: "MskEnhancedMonitoringLevel")
    MskMonitoringParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#MskMonitoringParameters", name: "MskMonitoringParameters")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#NextToken", name: "NextToken")
    OrganizationUnitIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#OrganizationUnitIdentifier", name: "OrganizationUnitIdentifier", traits: {"smithy.api#pattern" => "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"})
    OrganizationUnitIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#OrganizationUnitIdentifiers", name: "OrganizationUnitIdentifiers", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#uniqueItems" => {}})
    OutputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#OutputFormat", name: "OutputFormat")
    PipelineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#PipelineOutput", name: "PipelineOutput")
    PipelineOutputError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#PipelineOutputError", name: "PipelineOutputError")
    PipelineOutputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#PipelineOutputs", name: "PipelineOutputs")
    Processors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#Processors", name: "Processors")
    Record = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#Record", name: "Record")
    RecordFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#RecordFormat", name: "RecordFormat")
    Records = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#Records", name: "Records")
    RedactedFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#RedactedFields", name: "RedactedFields", traits: {"smithy.api#length" => {"max" => 100}})
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#Region", name: "Region", traits: {"smithy.api#length" => {"min" => 1}})
    RegionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#RegionStatus", name: "RegionStatus")
    RegionStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#RegionStatuses", name: "RegionStatuses")
    Regions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#Regions", name: "Regions", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#uniqueItems" => {}})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws([a-z0-9\\-]+)?:([a-zA-Z0-9\\-]+):([a-z0-9\\-]+)?:([0-9]{12})?:(.+)$"})
    ResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#ResourceIdentifier", name: "ResourceIdentifier")
    ResourceIdentifierPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#ResourceIdentifierPrefix", name: "ResourceIdentifierPrefix", traits: {"smithy.api#length" => {"min" => 3, "max" => 768}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#ResourceType", name: "ResourceType")
    ResourceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#ResourceTypes", name: "ResourceTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 9}, "smithy.api#uniqueItems" => {}})
    RetentionPeriodInDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.observabilityadmin#RetentionPeriodInDays", name: "RetentionPeriodInDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 3653}})
    RuleHealth = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#RuleHealth", name: "RuleHealth")
    RuleIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#RuleIdentifier", name: "RuleIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#RuleName", name: "RuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z-_.#/]+$"})
    SSEAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#SSEAlgorithm", name: "SSEAlgorithm")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SignalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#SignalType", name: "SignalType")
    SingleHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#SingleHeader", name: "SingleHeader")
    Sinks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#Sinks", name: "Sinks")
    Source = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#Source", name: "Source")
    SourceContextGraphConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#SourceContextGraphConfiguration", name: "SourceContextGraphConfiguration")
    SourceFilterString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#SourceFilterString", name: "SourceFilterString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    SourceLogsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#SourceLogsConfiguration", name: "SourceLogsConfiguration")
    SourceMetricsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#SourceMetricsConfiguration", name: "SourceMetricsConfiguration")
    Sources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#Sources", name: "Sources")
    StartTelemetryEnrichmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#StartTelemetryEnrichmentOutput", name: "StartTelemetryEnrichmentOutput")
    StartTelemetryEvaluationForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#StartTelemetryEvaluationForOrganizationInput", name: "StartTelemetryEvaluationForOrganizationInput")
    StartTelemetryEvaluationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#StartTelemetryEvaluationInput", name: "StartTelemetryEvaluationInput")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#Status", name: "Status")
    StopTelemetryEnrichmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#StopTelemetryEnrichmentOutput", name: "StopTelemetryEnrichmentOutput")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#StringList", name: "StringList")
    TagConflictResolutionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#TagConflictResolutionStrategy", name: "TagConflictResolutionStrategy")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#TagKey", name: "TagKey", traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMapInput = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.observabilityadmin#TagMapInput", name: "TagMapInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMapOutput = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.observabilityadmin#TagMapOutput", name: "TagMapOutput")
    TagPropagationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TagPropagationConfiguration", name: "TagPropagationConfiguration")
    TagPropagationFailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#TagPropagationFailureReason", name: "TagPropagationFailureReason")
    TagPropagationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#TagPropagationStatus", name: "TagPropagationStatus")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TagResourceInput", name: "TagResourceInput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#TagValue", name: "TagValue", traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TelemetryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TelemetryConfiguration", name: "TelemetryConfiguration")
    TelemetryConfigurationState = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.observabilityadmin#TelemetryConfigurationState", name: "TelemetryConfigurationState")
    TelemetryConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#TelemetryConfigurations", name: "TelemetryConfigurations")
    TelemetryDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TelemetryDestinationConfiguration", name: "TelemetryDestinationConfiguration")
    TelemetryEnrichmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#TelemetryEnrichmentStatus", name: "TelemetryEnrichmentStatus")
    TelemetryPipeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TelemetryPipeline", name: "TelemetryPipeline")
    TelemetryPipelineConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TelemetryPipelineConfiguration", name: "TelemetryPipelineConfiguration")
    TelemetryPipelineConfigurationBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#TelemetryPipelineConfigurationBody", name: "TelemetryPipelineConfigurationBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 24000}})
    TelemetryPipelineIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#TelemetryPipelineIdentifier", name: "TelemetryPipelineIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    TelemetryPipelineName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#TelemetryPipelineName", name: "TelemetryPipelineName", traits: {"smithy.api#length" => {"min" => 3, "max" => 28}, "smithy.api#pattern" => "[a-z][a-z0-9\\-]+"})
    TelemetryPipelineStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#TelemetryPipelineStatus", name: "TelemetryPipelineStatus")
    TelemetryPipelineStatusReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TelemetryPipelineStatusReason", name: "TelemetryPipelineStatusReason")
    TelemetryPipelineSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#TelemetryPipelineSummaries", name: "TelemetryPipelineSummaries")
    TelemetryPipelineSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TelemetryPipelineSummary", name: "TelemetryPipelineSummary")
    TelemetryRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TelemetryRule", name: "TelemetryRule")
    TelemetryRuleSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#TelemetryRuleSummaries", name: "TelemetryRuleSummaries")
    TelemetryRuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TelemetryRuleSummary", name: "TelemetryRuleSummary")
    TelemetrySourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#TelemetrySourceType", name: "TelemetrySourceType")
    TelemetrySourceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#TelemetrySourceTypes", name: "TelemetrySourceTypes")
    TelemetryState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#TelemetryState", name: "TelemetryState")
    TelemetryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#TelemetryType", name: "TelemetryType")
    TestTelemetryPipelineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TestTelemetryPipelineInput", name: "TestTelemetryPipelineInput")
    TestTelemetryPipelineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TestTelemetryPipelineOutput", name: "TestTelemetryPipelineOutput")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UntagResourceInput", name: "UntagResourceInput")
    UpdateCentralizationRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateCentralizationRuleForOrganizationInput", name: "UpdateCentralizationRuleForOrganizationInput")
    UpdateCentralizationRuleForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateCentralizationRuleForOrganizationOutput", name: "UpdateCentralizationRuleForOrganizationOutput")
    UpdateDatasetIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateDatasetIntegrationInput", name: "UpdateDatasetIntegrationInput")
    UpdateDatasetIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateDatasetIntegrationOutput", name: "UpdateDatasetIntegrationOutput")
    UpdateTelemetryPipelineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateTelemetryPipelineInput", name: "UpdateTelemetryPipelineInput")
    UpdateTelemetryPipelineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateTelemetryPipelineOutput", name: "UpdateTelemetryPipelineOutput")
    UpdateTelemetryRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateTelemetryRuleForOrganizationInput", name: "UpdateTelemetryRuleForOrganizationInput")
    UpdateTelemetryRuleForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateTelemetryRuleForOrganizationOutput", name: "UpdateTelemetryRuleForOrganizationOutput")
    UpdateTelemetryRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateTelemetryRuleInput", name: "UpdateTelemetryRuleInput")
    UpdateTelemetryRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateTelemetryRuleOutput", name: "UpdateTelemetryRuleOutput")
    VPCFlowLogParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#VPCFlowLogParameters", name: "VPCFlowLogParameters")
    ValidateTelemetryPipelineConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ValidateTelemetryPipelineConfigurationInput", name: "ValidateTelemetryPipelineConfigurationInput")
    ValidateTelemetryPipelineConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ValidateTelemetryPipelineConfigurationOutput", name: "ValidateTelemetryPipelineConfigurationOutput")
    ValidationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ValidationError", name: "ValidationError")
    ValidationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#ValidationErrors", name: "ValidationErrors")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WAFLogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#WAFLogType", name: "WAFLogType")
    WAFLoggingParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#WAFLoggingParameters", name: "WAFLoggingParameters")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    AccessDeniedException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "amznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdentifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdentifier, name: "member"))
    Action.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    Action.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    Action.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    Action.add_member(:captcha, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPTCHA", traits: {"smithy.api#enumValue" => "CAPTCHA"}))
    Action.add_member(:challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHALLENGE", traits: {"smithy.api#enumValue" => "CHALLENGE"}))
    Action.add_member(:excluded_as_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUDED_AS_COUNT", traits: {"smithy.api#enumValue" => "EXCLUDED_AS_COUNT"}))
    ActionCondition.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action"))
    ActionCondition.type = Types::ActionCondition
    AdvancedEventSelector.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    AdvancedEventSelector.add_member(:field_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldSelectors, name: "FieldSelectors", traits: {"smithy.api#required" => {}}))
    AdvancedEventSelector.type = Types::AdvancedEventSelector
    AdvancedEventSelectors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedEventSelector, name: "member"))
    AdvancedFieldSelector.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Field", traits: {"smithy.api#required" => {}}))
    AdvancedFieldSelector.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Equals"))
    AdvancedFieldSelector.add_member(:starts_with, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "StartsWith"))
    AdvancedFieldSelector.add_member(:ends_with, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "EndsWith"))
    AdvancedFieldSelector.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "NotEquals"))
    AdvancedFieldSelector.add_member(:not_starts_with, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "NotStartsWith"))
    AdvancedFieldSelector.add_member(:not_ends_with, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "NotEndsWith"))
    AdvancedFieldSelector.type = Types::AdvancedFieldSelector
    CentralizationFailureReason.add_member(:trusted_access_not_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUSTED_ACCESS_NOT_ENABLED", traits: {"smithy.api#enumValue" => "TRUSTED_ACCESS_NOT_ENABLED"}))
    CentralizationFailureReason.add_member(:destination_account_not_in_organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESTINATION_ACCOUNT_NOT_IN_ORGANIZATION", traits: {"smithy.api#enumValue" => "DESTINATION_ACCOUNT_NOT_IN_ORGANIZATION"}))
    CentralizationFailureReason.add_member(:internal_server_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    CentralizationRule.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationRuleSource, name: "Source", traits: {"smithy.api#required" => {}}))
    CentralizationRule.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationRuleDestination, name: "Destination", traits: {"smithy.api#required" => {}}))
    CentralizationRule.type = Types::CentralizationRule
    CentralizationRuleDestination.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region", traits: {"smithy.api#required" => {}}))
    CentralizationRuleDestination.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdentifier, name: "Account"))
    CentralizationRuleDestination.add_member(:destination_logs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationLogsConfiguration, name: "DestinationLogsConfiguration"))
    CentralizationRuleDestination.add_member(:destination_metrics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationMetricsConfiguration, name: "DestinationMetricsConfiguration"))
    CentralizationRuleDestination.type = Types::CentralizationRuleDestination
    CentralizationRuleSource.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "Regions", traits: {"smithy.api#required" => {}}))
    CentralizationRuleSource.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFilterString, name: "Scope"))
    CentralizationRuleSource.add_member(:source_logs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceLogsConfiguration, name: "SourceLogsConfiguration"))
    CentralizationRuleSource.add_member(:source_metrics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceMetricsConfiguration, name: "SourceMetricsConfiguration"))
    CentralizationRuleSource.add_member(:source_context_graph_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceContextGraphConfiguration, name: "SourceContextGraphConfiguration"))
    CentralizationRuleSource.type = Types::CentralizationRuleSource
    CentralizationRuleSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationRuleSummary, name: "member"))
    CentralizationRuleSummary.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName"))
    CentralizationRuleSummary.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleArn"))
    CentralizationRuleSummary.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CreatorAccountId"))
    CentralizationRuleSummary.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "CreatedTimeStamp"))
    CentralizationRuleSummary.add_member(:created_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "CreatedRegion"))
    CentralizationRuleSummary.add_member(:last_update_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "LastUpdateTimeStamp"))
    CentralizationRuleSummary.add_member(:rule_health, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleHealth, name: "RuleHealth"))
    CentralizationRuleSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationFailureReason, name: "FailureReason"))
    CentralizationRuleSummary.add_member(:tag_propagation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TagPropagationStatus, name: "TagPropagationStatus"))
    CentralizationRuleSummary.add_member(:tag_propagation_failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TagPropagationFailureReason, name: "TagPropagationFailureReason"))
    CentralizationRuleSummary.add_member(:context_graph_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextGraphStatus, name: "ContextGraphStatus"))
    CentralizationRuleSummary.add_member(:destination_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DestinationAccountId"))
    CentralizationRuleSummary.add_member(:destination_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "DestinationRegion"))
    CentralizationRuleSummary.type = Types::CentralizationRuleSummary
    CloudtrailParameters.add_member(:advanced_event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedEventSelectors, name: "AdvancedEventSelectors", traits: {"smithy.api#required" => {}}))
    CloudtrailParameters.type = Types::CloudtrailParameters
    Condition.add_member(:action_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCondition, name: "ActionCondition"))
    Condition.add_member(:label_name_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelNameCondition, name: "LabelNameCondition"))
    Condition.type = Types::Condition
    Conditions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "member"))
    ConfigurationSummary.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Sources, name: "Sources"))
    ConfigurationSummary.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSources, name: "DataSources"))
    ConfigurationSummary.add_member(:processors, ::Smithy::Schema::Shapes::MemberShape.new(target: Processors, name: "Processors"))
    ConfigurationSummary.add_member(:processor_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ProcessorCount"))
    ConfigurationSummary.add_member(:sinks, ::Smithy::Schema::Shapes::MemberShape.new(target: Sinks, name: "Sinks"))
    ConfigurationSummary.type = Types::ConfigurationSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType"))
    ConflictException.type = Types::ConflictException
    ContextGraphStatus.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "Healthy"}))
    ContextGraphStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "Unhealthy"}))
    ContextGraphStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "Provisioning"}))
    CreateCentralizationRuleForOrganizationInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName", traits: {"smithy.api#required" => {}}))
    CreateCentralizationRuleForOrganizationInput.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationRule, name: "Rule", traits: {"smithy.api#required" => {}}))
    CreateCentralizationRuleForOrganizationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, name: "Tags"))
    CreateCentralizationRuleForOrganizationInput.type = Types::CreateCentralizationRuleForOrganizationInput
    CreateCentralizationRuleForOrganizationOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleArn"))
    CreateCentralizationRuleForOrganizationOutput.type = Types::CreateCentralizationRuleForOrganizationOutput
    CreateDatasetIntegrationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateDatasetIntegrationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, name: "Tags"))
    CreateDatasetIntegrationInput.type = Types::CreateDatasetIntegrationInput
    CreateDatasetIntegrationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    CreateDatasetIntegrationOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateDatasetIntegrationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    CreateDatasetIntegrationOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    CreateDatasetIntegrationOutput.type = Types::CreateDatasetIntegrationOutput
    CreateS3TableIntegrationInput.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, name: "Encryption", traits: {"smithy.api#required" => {}}))
    CreateS3TableIntegrationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateS3TableIntegrationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, name: "Tags"))
    CreateS3TableIntegrationInput.type = Types::CreateS3TableIntegrationInput
    CreateS3TableIntegrationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    CreateS3TableIntegrationOutput.type = Types::CreateS3TableIntegrationOutput
    CreateTelemetryPipelineInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateTelemetryPipelineInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineConfiguration, name: "Configuration", traits: {"smithy.api#required" => {}}))
    CreateTelemetryPipelineInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, name: "Tags"))
    CreateTelemetryPipelineInput.type = Types::CreateTelemetryPipelineInput
    CreateTelemetryPipelineOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    CreateTelemetryPipelineOutput.type = Types::CreateTelemetryPipelineOutput
    CreateTelemetryRuleForOrganizationInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName", traits: {"smithy.api#required" => {}}))
    CreateTelemetryRuleForOrganizationInput.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRule, name: "Rule", traits: {"smithy.api#required" => {}}))
    CreateTelemetryRuleForOrganizationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, name: "Tags"))
    CreateTelemetryRuleForOrganizationInput.type = Types::CreateTelemetryRuleForOrganizationInput
    CreateTelemetryRuleForOrganizationOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleArn"))
    CreateTelemetryRuleForOrganizationOutput.type = Types::CreateTelemetryRuleForOrganizationOutput
    CreateTelemetryRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName", traits: {"smithy.api#required" => {}}))
    CreateTelemetryRuleInput.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRule, name: "Rule", traits: {"smithy.api#required" => {}}))
    CreateTelemetryRuleInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, name: "Tags"))
    CreateTelemetryRuleInput.type = Types::CreateTelemetryRuleInput
    CreateTelemetryRuleOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleArn"))
    CreateTelemetryRuleOutput.type = Types::CreateTelemetryRuleOutput
    DataSource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    DataSource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type"))
    DataSource.type = Types::DataSource
    DataSources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "member"))
    DatasetIntegrationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetIntegrationSummary, name: "member"))
    DatasetIntegrationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DatasetIntegrationSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RoleArn"))
    DatasetIntegrationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    DatasetIntegrationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt"))
    DatasetIntegrationSummary.type = Types::DatasetIntegrationSummary
    DeleteCentralizationRuleForOrganizationInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteCentralizationRuleForOrganizationInput.type = Types::DeleteCentralizationRuleForOrganizationInput
    DeleteDatasetIntegrationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DeleteDatasetIntegrationInput.type = Types::DeleteDatasetIntegrationInput
    DeleteS3TableIntegrationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DeleteS3TableIntegrationInput.type = Types::DeleteS3TableIntegrationInput
    DeleteTelemetryPipelineInput.add_member(:pipeline_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineIdentifier, name: "PipelineIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteTelemetryPipelineInput.type = Types::DeleteTelemetryPipelineInput
    DeleteTelemetryPipelineOutput.type = Types::DeleteTelemetryPipelineOutput
    DeleteTelemetryRuleForOrganizationInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteTelemetryRuleForOrganizationInput.type = Types::DeleteTelemetryRuleForOrganizationInput
    DeleteTelemetryRuleInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteTelemetryRuleInput.type = Types::DeleteTelemetryRuleInput
    DestinationLogsConfiguration.add_member(:logs_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsEncryptionConfiguration, name: "LogsEncryptionConfiguration"))
    DestinationLogsConfiguration.add_member(:backup_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsBackupConfiguration, name: "BackupConfiguration"))
    DestinationLogsConfiguration.add_member(:log_group_name_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupNameConfiguration, name: "LogGroupNameConfiguration"))
    DestinationLogsConfiguration.add_member(:tag_propagation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TagPropagationConfiguration, name: "TagPropagationConfiguration"))
    DestinationLogsConfiguration.type = Types::DestinationLogsConfiguration
    DestinationMetricsConfiguration.add_member(:backup_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsBackupConfiguration, name: "BackupConfiguration"))
    DestinationMetricsConfiguration.type = Types::DestinationMetricsConfiguration
    DestinationType.add_member(:cloudwatch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDWATCH_LOGS", traits: {"smithy.api#enumValue" => "cloud-watch-logs"}))
    ELBLoadBalancerLoggingParameters.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, name: "OutputFormat"))
    ELBLoadBalancerLoggingParameters.add_member(:field_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FieldDelimiter"))
    ELBLoadBalancerLoggingParameters.type = Types::ELBLoadBalancerLoggingParameters
    EncryptedLogGroupStrategy.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    EncryptedLogGroupStrategy.add_member(:skip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIP", traits: {"smithy.api#enumValue" => "SKIP"}))
    Encryption.add_member(:sse_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEAlgorithm, name: "SseAlgorithm", traits: {"smithy.api#required" => {}}))
    Encryption.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "KmsKeyArn"))
    Encryption.type = Types::Encryption
    EncryptionConflictResolutionStrategy.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    EncryptionConflictResolutionStrategy.add_member(:skip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIP", traits: {"smithy.api#enumValue" => "SKIP"}))
    EncryptionScope.add_member(:encrypted_source_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCRYPTED_SOURCE_ONLY", traits: {"smithy.api#enumValue" => "ENCRYPTED_SOURCE_ONLY"}))
    EncryptionScope.add_member(:new_destination_log_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_DESTINATION_LOG_GROUPS", traits: {"smithy.api#enumValue" => "NEW_DESTINATION_LOG_GROUPS"}))
    EncryptionStrategy.add_member(:customer_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED"}))
    EncryptionStrategy.add_member(:aws_owned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_OWNED", traits: {"smithy.api#enumValue" => "AWS_OWNED"}))
    FieldMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    FieldMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    FieldSelectors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedFieldSelector, name: "member"))
    FieldToMatch.add_member(:single_header, ::Smithy::Schema::Shapes::MemberShape.new(target: SingleHeader, name: "SingleHeader"))
    FieldToMatch.add_member(:uri_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "UriPath"))
    FieldToMatch.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "QueryString"))
    FieldToMatch.add_member(:method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Method"))
    FieldToMatch.type = Types::FieldToMatch
    Filter.add_member(:behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterBehavior, name: "Behavior"))
    Filter.add_member(:requirement, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterRequirement, name: "Requirement"))
    Filter.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: Conditions, name: "Conditions"))
    Filter.type = Types::Filter
    FilterBehavior.add_member(:keep, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEEP", traits: {"smithy.api#enumValue" => "KEEP"}))
    FilterBehavior.add_member(:drop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DROP", traits: {"smithy.api#enumValue" => "DROP"}))
    FilterRequirement.add_member(:meets_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEETS_ALL", traits: {"smithy.api#enumValue" => "MEETS_ALL"}))
    FilterRequirement.add_member(:meets_any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEETS_ANY", traits: {"smithy.api#enumValue" => "MEETS_ANY"}))
    Filters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    GetCentralizationRuleForOrganizationInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    GetCentralizationRuleForOrganizationInput.type = Types::GetCentralizationRuleForOrganizationInput
    GetCentralizationRuleForOrganizationOutput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName"))
    GetCentralizationRuleForOrganizationOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleArn"))
    GetCentralizationRuleForOrganizationOutput.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CreatorAccountId"))
    GetCentralizationRuleForOrganizationOutput.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "CreatedTimeStamp"))
    GetCentralizationRuleForOrganizationOutput.add_member(:created_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "CreatedRegion"))
    GetCentralizationRuleForOrganizationOutput.add_member(:last_update_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "LastUpdateTimeStamp"))
    GetCentralizationRuleForOrganizationOutput.add_member(:rule_health, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleHealth, name: "RuleHealth"))
    GetCentralizationRuleForOrganizationOutput.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationFailureReason, name: "FailureReason"))
    GetCentralizationRuleForOrganizationOutput.add_member(:tag_propagation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TagPropagationStatus, name: "TagPropagationStatus"))
    GetCentralizationRuleForOrganizationOutput.add_member(:tag_propagation_failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TagPropagationFailureReason, name: "TagPropagationFailureReason"))
    GetCentralizationRuleForOrganizationOutput.add_member(:context_graph_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextGraphStatus, name: "ContextGraphStatus"))
    GetCentralizationRuleForOrganizationOutput.add_member(:centralization_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationRule, name: "CentralizationRule"))
    GetCentralizationRuleForOrganizationOutput.type = Types::GetCentralizationRuleForOrganizationOutput
    GetDatasetIntegrationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetDatasetIntegrationInput.type = Types::GetDatasetIntegrationInput
    GetDatasetIntegrationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    GetDatasetIntegrationOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RoleArn"))
    GetDatasetIntegrationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    GetDatasetIntegrationOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt"))
    GetDatasetIntegrationOutput.type = Types::GetDatasetIntegrationOutput
    GetS3TableIntegrationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetS3TableIntegrationInput.type = Types::GetS3TableIntegrationInput
    GetS3TableIntegrationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    GetS3TableIntegrationOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RoleArn"))
    GetS3TableIntegrationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, name: "Status"))
    GetS3TableIntegrationOutput.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, name: "Encryption"))
    GetS3TableIntegrationOutput.add_member(:destination_table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "DestinationTableBucketArn"))
    GetS3TableIntegrationOutput.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "CreatedTimeStamp"))
    GetS3TableIntegrationOutput.type = Types::GetS3TableIntegrationOutput
    GetTelemetryEnrichmentStatusOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryEnrichmentStatus, name: "Status"))
    GetTelemetryEnrichmentStatusOutput.add_member(:aws_resource_explorer_managed_view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsResourceExplorerManagedViewArn, name: "AwsResourceExplorerManagedViewArn"))
    GetTelemetryEnrichmentStatusOutput.type = Types::GetTelemetryEnrichmentStatusOutput
    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "FailureReason"))
    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "HomeRegion"))
    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:region_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionStatuses, name: "RegionStatuses"))
    GetTelemetryEvaluationStatusForOrganizationOutput.type = Types::GetTelemetryEvaluationStatusForOrganizationOutput
    GetTelemetryEvaluationStatusOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    GetTelemetryEvaluationStatusOutput.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "FailureReason"))
    GetTelemetryEvaluationStatusOutput.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "HomeRegion"))
    GetTelemetryEvaluationStatusOutput.add_member(:region_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionStatuses, name: "RegionStatuses"))
    GetTelemetryEvaluationStatusOutput.type = Types::GetTelemetryEvaluationStatusOutput
    GetTelemetryPipelineInput.add_member(:pipeline_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineIdentifier, name: "PipelineIdentifier", traits: {"smithy.api#required" => {}}))
    GetTelemetryPipelineInput.type = Types::GetTelemetryPipelineInput
    GetTelemetryPipelineOutput.add_member(:pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipeline, name: "Pipeline"))
    GetTelemetryPipelineOutput.type = Types::GetTelemetryPipelineOutput
    GetTelemetryRuleForOrganizationInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    GetTelemetryRuleForOrganizationInput.type = Types::GetTelemetryRuleForOrganizationInput
    GetTelemetryRuleForOrganizationOutput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName"))
    GetTelemetryRuleForOrganizationOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleArn"))
    GetTelemetryRuleForOrganizationOutput.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "CreatedTimeStamp"))
    GetTelemetryRuleForOrganizationOutput.add_member(:last_update_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "LastUpdateTimeStamp"))
    GetTelemetryRuleForOrganizationOutput.add_member(:telemetry_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRule, name: "TelemetryRule"))
    GetTelemetryRuleForOrganizationOutput.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "HomeRegion"))
    GetTelemetryRuleForOrganizationOutput.add_member(:is_replicated, ::Smithy::Schema::Shapes::MemberShape.new(target: IsReplicated, name: "IsReplicated"))
    GetTelemetryRuleForOrganizationOutput.add_member(:region_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionStatuses, name: "RegionStatuses"))
    GetTelemetryRuleForOrganizationOutput.type = Types::GetTelemetryRuleForOrganizationOutput
    GetTelemetryRuleInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    GetTelemetryRuleInput.type = Types::GetTelemetryRuleInput
    GetTelemetryRuleOutput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName"))
    GetTelemetryRuleOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleArn"))
    GetTelemetryRuleOutput.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "CreatedTimeStamp"))
    GetTelemetryRuleOutput.add_member(:last_update_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "LastUpdateTimeStamp"))
    GetTelemetryRuleOutput.add_member(:telemetry_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRule, name: "TelemetryRule"))
    GetTelemetryRuleOutput.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "HomeRegion"))
    GetTelemetryRuleOutput.add_member(:is_replicated, ::Smithy::Schema::Shapes::MemberShape.new(target: IsReplicated, name: "IsReplicated"))
    GetTelemetryRuleOutput.add_member(:region_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionStatuses, name: "RegionStatuses"))
    GetTelemetryRuleOutput.type = Types::GetTelemetryRuleOutput
    IntegrationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IntegrationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    IntegrationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationSummary, name: "member"))
    IntegrationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    IntegrationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, name: "Status"))
    IntegrationSummary.type = Types::IntegrationSummary
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InternalServerException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "amznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InvalidStateException.type = Types::InvalidStateException
    LabelNameCondition.add_member(:label_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LabelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[0-9A-Za-z_\\-:]+$"}))
    LabelNameCondition.type = Types::LabelNameCondition
    ListCentralizationRulesForOrganizationInput.add_member(:rule_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RuleNamePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    ListCentralizationRulesForOrganizationInput.add_member(:all_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "AllRegions"))
    ListCentralizationRulesForOrganizationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCentralizationRulesForOrganizationMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListCentralizationRulesForOrganizationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCentralizationRulesForOrganizationInput.type = Types::ListCentralizationRulesForOrganizationInput
    ListCentralizationRulesForOrganizationOutput.add_member(:centralization_rule_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationRuleSummaries, name: "CentralizationRuleSummaries"))
    ListCentralizationRulesForOrganizationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCentralizationRulesForOrganizationOutput.type = Types::ListCentralizationRulesForOrganizationOutput
    ListDatasetIntegrationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListDatasetIntegrationsMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListDatasetIntegrationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDatasetIntegrationsInput.type = Types::ListDatasetIntegrationsInput
    ListDatasetIntegrationsOutput.add_member(:dataset_integration_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasetIntegrationSummaries, name: "DatasetIntegrationSummaries", traits: {"smithy.api#required" => {}}))
    ListDatasetIntegrationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDatasetIntegrationsOutput.type = Types::ListDatasetIntegrationsOutput
    ListResourceTelemetryForOrganizationInput.add_member(:account_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdentifiers, name: "AccountIdentifiers"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_identifier_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierPrefix, name: "ResourceIdentifierPrefix"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, name: "ResourceTypes"))
    ListResourceTelemetryForOrganizationInput.add_member(:telemetry_configuration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfigurationState, name: "TelemetryConfigurationState"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, name: "ResourceTags"))
    ListResourceTelemetryForOrganizationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListResourceTelemetryForOrganizationMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListResourceTelemetryForOrganizationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceTelemetryForOrganizationInput.type = Types::ListResourceTelemetryForOrganizationInput
    ListResourceTelemetryForOrganizationOutput.add_member(:telemetry_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfigurations, name: "TelemetryConfigurations"))
    ListResourceTelemetryForOrganizationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceTelemetryForOrganizationOutput.type = Types::ListResourceTelemetryForOrganizationOutput
    ListResourceTelemetryInput.add_member(:resource_identifier_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierPrefix, name: "ResourceIdentifierPrefix"))
    ListResourceTelemetryInput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, name: "ResourceTypes"))
    ListResourceTelemetryInput.add_member(:telemetry_configuration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfigurationState, name: "TelemetryConfigurationState"))
    ListResourceTelemetryInput.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, name: "ResourceTags"))
    ListResourceTelemetryInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListResourceTelemetryMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListResourceTelemetryInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceTelemetryInput.type = Types::ListResourceTelemetryInput
    ListResourceTelemetryOutput.add_member(:telemetry_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfigurations, name: "TelemetryConfigurations"))
    ListResourceTelemetryOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceTelemetryOutput.type = Types::ListResourceTelemetryOutput
    ListS3TableIntegrationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListS3TableIntegrationsMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListS3TableIntegrationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListS3TableIntegrationsInput.type = Types::ListS3TableIntegrationsInput
    ListS3TableIntegrationsOutput.add_member(:integration_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationSummaries, name: "IntegrationSummaries"))
    ListS3TableIntegrationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListS3TableIntegrationsOutput.type = Types::ListS3TableIntegrationsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapOutput, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTelemetryPipelinesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTelemetryPipelinesMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListTelemetryPipelinesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTelemetryPipelinesInput.type = Types::ListTelemetryPipelinesInput
    ListTelemetryPipelinesOutput.add_member(:pipeline_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineSummaries, name: "PipelineSummaries"))
    ListTelemetryPipelinesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTelemetryPipelinesOutput.type = Types::ListTelemetryPipelinesOutput
    ListTelemetryRulesForOrganizationInput.add_member(:rule_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RuleNamePrefix"))
    ListTelemetryRulesForOrganizationInput.add_member(:source_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdentifiers, name: "SourceAccountIds"))
    ListTelemetryRulesForOrganizationInput.add_member(:source_organization_unit_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationUnitIdentifiers, name: "SourceOrganizationUnitIds"))
    ListTelemetryRulesForOrganizationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTelemetryRulesForOrganizationMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListTelemetryRulesForOrganizationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTelemetryRulesForOrganizationInput.type = Types::ListTelemetryRulesForOrganizationInput
    ListTelemetryRulesForOrganizationOutput.add_member(:telemetry_rule_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRuleSummaries, name: "TelemetryRuleSummaries"))
    ListTelemetryRulesForOrganizationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTelemetryRulesForOrganizationOutput.type = Types::ListTelemetryRulesForOrganizationOutput
    ListTelemetryRulesInput.add_member(:rule_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RuleNamePrefix"))
    ListTelemetryRulesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTelemetryRulesMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListTelemetryRulesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTelemetryRulesInput.type = Types::ListTelemetryRulesInput
    ListTelemetryRulesOutput.add_member(:telemetry_rule_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRuleSummaries, name: "TelemetryRuleSummaries"))
    ListTelemetryRulesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTelemetryRulesOutput.type = Types::ListTelemetryRulesOutput
    LogDeliveryParameters.add_member(:log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypes, name: "LogTypes"))
    LogDeliveryParameters.type = Types::LogDeliveryParameters
    LogGroupNameConfiguration.add_member(:log_group_name_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupNamePattern, name: "LogGroupNamePattern", traits: {"smithy.api#required" => {}}))
    LogGroupNameConfiguration.type = Types::LogGroupNameConfiguration
    LogType.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION", traits: {"smithy.api#enumValue" => "APPLICATION_LOGS"}))
    LogType.add_member(:usage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USAGE", traits: {"smithy.api#enumValue" => "USAGE_LOGS"}))
    LogType.add_member(:security_finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_FINDING", traits: {"smithy.api#enumValue" => "SECURITY_FINDING_LOGS"}))
    LogType.add_member(:access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS", traits: {"smithy.api#enumValue" => "ACCESS_LOGS"}))
    LogType.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTION", traits: {"smithy.api#enumValue" => "CONNECTION_LOGS"}))
    LogType.add_member(:s3_server_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_SERVER_ACCESS", traits: {"smithy.api#enumValue" => "S3_SERVER_ACCESS_LOGS"}))
    LogType.add_member(:alb_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALB_ACCESS", traits: {"smithy.api#enumValue" => "ALB_ACCESS_LOGS"}))
    LogType.add_member(:alb_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALB_CONNECTION", traits: {"smithy.api#enumValue" => "ALB_CONNECTION_LOGS"}))
    LogType.add_member(:alb_health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALB_HEALTH_CHECK", traits: {"smithy.api#enumValue" => "ALB_HEALTH_CHECK_LOGS"}))
    LogTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "member"))
    LoggingFilter.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    LoggingFilter.add_member(:default_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterBehavior, name: "DefaultBehavior"))
    LoggingFilter.type = Types::LoggingFilter
    LogsBackupConfiguration.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region", traits: {"smithy.api#required" => {}}))
    LogsBackupConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "KmsKeyArn"))
    LogsBackupConfiguration.type = Types::LogsBackupConfiguration
    LogsEncryptionConfiguration.add_member(:encryption_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionStrategy, name: "EncryptionStrategy", traits: {"smithy.api#required" => {}}))
    LogsEncryptionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "KmsKeyArn"))
    LogsEncryptionConfiguration.add_member(:encryption_conflict_resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConflictResolutionStrategy, name: "EncryptionConflictResolutionStrategy"))
    LogsEncryptionConfiguration.add_member(:encryption_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionScope, name: "EncryptionScope"))
    LogsEncryptionConfiguration.type = Types::LogsEncryptionConfiguration
    MetricsBackupConfiguration.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region", traits: {"smithy.api#required" => {}}))
    MetricsBackupConfiguration.type = Types::MetricsBackupConfiguration
    MskEnhancedMonitoringLevel.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    MskEnhancedMonitoringLevel.add_member(:per_broker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PER_BROKER", traits: {"smithy.api#enumValue" => "PER_BROKER"}))
    MskEnhancedMonitoringLevel.add_member(:per_topic_per_broker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PER_TOPIC_PER_BROKER", traits: {"smithy.api#enumValue" => "PER_TOPIC_PER_BROKER"}))
    MskEnhancedMonitoringLevel.add_member(:per_topic_per_partition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PER_TOPIC_PER_PARTITION", traits: {"smithy.api#enumValue" => "PER_TOPIC_PER_PARTITION"}))
    MskMonitoringParameters.add_member(:enhanced_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: MskEnhancedMonitoringLevel, name: "EnhancedMonitoring"))
    MskMonitoringParameters.type = Types::MskMonitoringParameters
    OrganizationUnitIdentifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationUnitIdentifier, name: "member"))
    OutputFormat.add_member(:plain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAIN", traits: {"smithy.api#enumValue" => "plain"}))
    OutputFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "json"}))
    PipelineOutput.add_member(:record, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "Record"))
    PipelineOutput.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineOutputError, name: "Error"))
    PipelineOutput.type = Types::PipelineOutput
    PipelineOutputError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    PipelineOutputError.type = Types::PipelineOutputError
    PipelineOutputs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineOutput, name: "member"))
    Processors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    Record.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Data"))
    Record.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordFormat, name: "Type"))
    Record.type = Types::Record
    RecordFormat.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    RecordFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    Records.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "member"))
    RedactedFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldToMatch, name: "member"))
    RegionStatus.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region"))
    RegionStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Status"))
    RegionStatus.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FailureReason"))
    RegionStatus.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleArn"))
    RegionStatus.type = Types::RegionStatus
    RegionStatuses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionStatus, name: "member"))
    Regions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:aws_ec2_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_EC2_INSTANCE", traits: {"smithy.api#enumValue" => "AWS::EC2::Instance"}))
    ResourceType.add_member(:aws_ec2_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_EC2_VPC", traits: {"smithy.api#enumValue" => "AWS::EC2::VPC"}))
    ResourceType.add_member(:aws_lamdba_function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_LAMDBA_FUNCTION", traits: {"smithy.api#enumValue" => "AWS::Lambda::Function"}))
    ResourceType.add_member(:aws_cloudtrail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_CLOUDTRAIL", traits: {"smithy.api#enumValue" => "AWS::CloudTrail"}))
    ResourceType.add_member(:aws_eks_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_EKS_CLUSTER", traits: {"smithy.api#enumValue" => "AWS::EKS::Cluster"}))
    ResourceType.add_member(:aws_waf_v2_web_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_WAF_V2_WEB_ACL", traits: {"smithy.api#enumValue" => "AWS::WAFv2::WebACL"}))
    ResourceType.add_member(:aws_elb_loadbalancer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_ELB_LOADBALANCER", traits: {"smithy.api#enumValue" => "AWS::ElasticLoadBalancingV2::LoadBalancer"}))
    ResourceType.add_member(:aws_route53_resolver_resolver_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_ROUTE53_RESOLVER_RESOLVER_ENDPOINT", traits: {"smithy.api#enumValue" => "AWS::Route53Resolver::ResolverEndpoint"}))
    ResourceType.add_member(:aws_bedrock_agentcore_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_BEDROCK_AGENTCORE_RUNTIME", traits: {"smithy.api#enumValue" => "AWS::BedrockAgentCore::Runtime"}))
    ResourceType.add_member(:aws_bedrock_agentcore_browser, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_BEDROCK_AGENTCORE_BROWSER", traits: {"smithy.api#enumValue" => "AWS::BedrockAgentCore::Browser"}))
    ResourceType.add_member(:aws_bedrock_agentcore_code_interpreter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_BEDROCK_AGENTCORE_CODE_INTERPRETER", traits: {"smithy.api#enumValue" => "AWS::BedrockAgentCore::CodeInterpreter"}))
    ResourceType.add_member(:aws_bedrock_agentcore_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_BEDROCK_AGENTCORE_GATEWAY", traits: {"smithy.api#enumValue" => "AWS::BedrockAgentCore::Gateway"}))
    ResourceType.add_member(:aws_bedrock_agentcore_memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_BEDROCK_AGENTCORE_MEMORY", traits: {"smithy.api#enumValue" => "AWS::BedrockAgentCore::Memory"}))
    ResourceType.add_member(:aws_bedrock_agentcore_workload_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_BEDROCK_AGENTCORE_WORKLOAD_IDENTITY", traits: {"smithy.api#enumValue" => "AWS::BedrockAgentCore::WorkloadIdentity"}))
    ResourceType.add_member(:aws_bedrock_agentcore_payment_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_BEDROCK_AGENTCORE_PAYMENT_MANAGER", traits: {"smithy.api#enumValue" => "AWS::BedrockAgentCore::PaymentManager"}))
    ResourceType.add_member(:aws_security_hub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SECURITY_HUB", traits: {"smithy.api#enumValue" => "AWS::SecurityHub::Hub"}))
    ResourceType.add_member(:aws_cloudfront_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_CLOUDFRONT_DISTRIBUTION", traits: {"smithy.api#enumValue" => "AWS::CloudFront::Distribution"}))
    ResourceType.add_member(:aws_security_hub_hubv2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SECURITY_HUB_HUBV2", traits: {"smithy.api#enumValue" => "AWS::SecurityHub::HubV2"}))
    ResourceType.add_member(:aws_otel_enrichment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_OTEL_ENRICHMENT", traits: {"smithy.api#enumValue" => "AWS::CloudWatch::OTelEnrichment"}))
    ResourceType.add_member(:aws_msk_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MSK_CLUSTER", traits: {"smithy.api#enumValue" => "AWS::MSK::Cluster"}))
    ResourceType.add_member(:aws_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_S3_BUCKET", traits: {"smithy.api#enumValue" => "AWS::S3::Bucket"}))
    ResourceType.add_member(:aws_bedrock_knowledgebase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_BEDROCK_KNOWLEDGEBASE", traits: {"smithy.api#enumValue" => "AWS::Bedrock::KnowledgeBase"}))
    ResourceType.add_member(:aws_xray_transaction_search_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_XRAY_TRANSACTION_SEARCH_CONFIG", traits: {"smithy.api#enumValue" => "AWS::XRay::TransactionSearchConfig"}))
    ResourceTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "member"))
    RuleHealth.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "Healthy"}))
    RuleHealth.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "Unhealthy"}))
    RuleHealth.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "Provisioning"}))
    SSEAlgorithm.add_member(:sse_kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSE_KMS", traits: {"smithy.api#enumValue" => "aws:kms"}))
    SSEAlgorithm.add_member(:sse_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSE_S3", traits: {"smithy.api#enumValue" => "AES256"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ServiceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "amznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SignalType.add_member(:log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOG", traits: {"smithy.api#enumValue" => "LOG"}))
    SignalType.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METRIC", traits: {"smithy.api#enumValue" => "METRIC"}))
    SingleHeader.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}}))
    SingleHeader.type = Types::SingleHeader
    Sinks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    Source.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type"))
    Source.type = Types::Source
    SourceContextGraphConfiguration.type = Types::SourceContextGraphConfiguration
    SourceLogsConfiguration.add_member(:log_group_selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsFilterString, name: "LogGroupSelectionCriteria", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "*"}))
    SourceLogsConfiguration.add_member(:data_source_selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFilterString, name: "DataSourceSelectionCriteria"))
    SourceLogsConfiguration.add_member(:encrypted_log_group_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptedLogGroupStrategy, name: "EncryptedLogGroupStrategy", traits: {"smithy.api#required" => {}}))
    SourceLogsConfiguration.type = Types::SourceLogsConfiguration
    SourceMetricsConfiguration.add_member(:metrics_selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsFilterString, name: "MetricsSelectionCriteria"))
    SourceMetricsConfiguration.type = Types::SourceMetricsConfiguration
    Sources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "member"))
    StartTelemetryEnrichmentOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryEnrichmentStatus, name: "Status"))
    StartTelemetryEnrichmentOutput.add_member(:aws_resource_explorer_managed_view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsResourceExplorerManagedViewArn, name: "AwsResourceExplorerManagedViewArn"))
    StartTelemetryEnrichmentOutput.type = Types::StartTelemetryEnrichmentOutput
    StartTelemetryEvaluationForOrganizationInput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "Regions"))
    StartTelemetryEvaluationForOrganizationInput.add_member(:all_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: AllRegions, name: "AllRegions"))
    StartTelemetryEvaluationForOrganizationInput.type = Types::StartTelemetryEvaluationForOrganizationInput
    StartTelemetryEvaluationInput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "Regions"))
    StartTelemetryEvaluationInput.add_member(:all_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: AllRegions, name: "AllRegions"))
    StartTelemetryEvaluationInput.type = Types::StartTelemetryEvaluationInput
    Status.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    Status.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    Status.add_member(:failed_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_START", traits: {"smithy.api#enumValue" => "FAILED_START"}))
    Status.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    Status.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    Status.add_member(:failed_stop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_STOP", traits: {"smithy.api#enumValue" => "FAILED_STOP"}))
    Status.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    StopTelemetryEnrichmentOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryEnrichmentStatus, name: "Status"))
    StopTelemetryEnrichmentOutput.type = Types::StopTelemetryEnrichmentOutput
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TagConflictResolutionStrategy.add_member(:in_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_SYNC", traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    TagConflictResolutionStrategy.add_member(:add_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD_ONLY", traits: {"smithy.api#enumValue" => "ADD_ONLY"}))
    TagConflictResolutionStrategy.add_member(:update_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_SYNC", traits: {"smithy.api#enumValue" => "UPDATE_SYNC"}))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMapInput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMapInput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagMapOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    TagMapOutput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    TagPropagationConfiguration.add_member(:destination_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "DestinationRoleArn", traits: {"smithy.api#required" => {}}))
    TagPropagationConfiguration.add_member(:tag_conflict_resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: TagConflictResolutionStrategy, name: "TagConflictResolutionStrategy"))
    TagPropagationConfiguration.type = Types::TagPropagationConfiguration
    TagPropagationFailureReason.add_member(:role_not_assumable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLE_NOT_ASSUMABLE", traits: {"smithy.api#enumValue" => "RoleNotAssumable"}))
    TagPropagationFailureReason.add_member(:role_lacks_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLE_LACKS_PERMISSIONS", traits: {"smithy.api#enumValue" => "RoleLacksPermissions"}))
    TagPropagationStatus.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "Healthy"}))
    TagPropagationStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "Unhealthy"}))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TelemetryConfiguration.add_member(:account_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdentifier, name: "AccountIdentifier"))
    TelemetryConfiguration.add_member(:telemetry_configuration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfigurationState, name: "TelemetryConfigurationState"))
    TelemetryConfiguration.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    TelemetryConfiguration.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceIdentifier"))
    TelemetryConfiguration.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapOutput, name: "ResourceTags"))
    TelemetryConfiguration.add_member(:last_update_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "LastUpdateTimeStamp"))
    TelemetryConfiguration.add_member(:telemetry_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetrySourceType, name: "TelemetrySourceType"))
    TelemetryConfiguration.type = Types::TelemetryConfiguration
    TelemetryConfigurationState.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryType, name: "key"))
    TelemetryConfigurationState.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryState, name: "value"))
    TelemetryConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfiguration, name: "member"))
    TelemetryDestinationConfiguration.add_member(:destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationType, name: "DestinationType"))
    TelemetryDestinationConfiguration.add_member(:destination_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DestinationPattern"))
    TelemetryDestinationConfiguration.add_member(:retention_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodInDays, name: "RetentionInDays"))
    TelemetryDestinationConfiguration.add_member(:vpc_flow_log_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: VPCFlowLogParameters, name: "VPCFlowLogParameters"))
    TelemetryDestinationConfiguration.add_member(:cloudtrail_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudtrailParameters, name: "CloudtrailParameters"))
    TelemetryDestinationConfiguration.add_member(:elb_load_balancer_logging_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ELBLoadBalancerLoggingParameters, name: "ELBLoadBalancerLoggingParameters"))
    TelemetryDestinationConfiguration.add_member(:waf_logging_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: WAFLoggingParameters, name: "WAFLoggingParameters"))
    TelemetryDestinationConfiguration.add_member(:log_delivery_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryParameters, name: "LogDeliveryParameters"))
    TelemetryDestinationConfiguration.add_member(:msk_monitoring_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MskMonitoringParameters, name: "MskMonitoringParameters"))
    TelemetryDestinationConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "KmsKeyArn"))
    TelemetryDestinationConfiguration.type = Types::TelemetryDestinationConfiguration
    TelemetryEnrichmentStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "Running"}))
    TelemetryEnrichmentStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "Stopped"}))
    TelemetryEnrichmentStatus.add_member(:impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPAIRED", traits: {"smithy.api#enumValue" => "Impaired"}))
    TelemetryPipeline.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "CreatedTimeStamp", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    TelemetryPipeline.add_member(:last_update_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "LastUpdateTimeStamp", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    TelemetryPipeline.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    TelemetryPipeline.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineName, name: "Name", traits: {"aws.cloudformation#cfnAdditionalIdentifier" => {}, "aws.cloudformation#cfnMutability" => "create-and-read"}))
    TelemetryPipeline.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineConfiguration, name: "Configuration", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    TelemetryPipeline.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineStatus, name: "Status", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    TelemetryPipeline.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineStatusReason, name: "StatusReason", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    TelemetryPipeline.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapOutput, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    TelemetryPipeline.type = Types::TelemetryPipeline
    TelemetryPipelineConfiguration.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineConfigurationBody, name: "Body", traits: {"smithy.api#required" => {}}))
    TelemetryPipelineConfiguration.type = Types::TelemetryPipelineConfiguration
    TelemetryPipelineStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    TelemetryPipelineStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TelemetryPipelineStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    TelemetryPipelineStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    TelemetryPipelineStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    TelemetryPipelineStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    TelemetryPipelineStatusReason.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    TelemetryPipelineStatusReason.type = Types::TelemetryPipelineStatusReason
    TelemetryPipelineSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineSummary, name: "member"))
    TelemetryPipelineSummary.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "CreatedTimeStamp"))
    TelemetryPipelineSummary.add_member(:last_update_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "LastUpdateTimeStamp"))
    TelemetryPipelineSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    TelemetryPipelineSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineName, name: "Name"))
    TelemetryPipelineSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineStatus, name: "Status"))
    TelemetryPipelineSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapOutput, name: "Tags"))
    TelemetryPipelineSummary.add_member(:configuration_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSummary, name: "ConfigurationSummary"))
    TelemetryPipelineSummary.type = Types::TelemetryPipelineSummary
    TelemetryRule.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    TelemetryRule.add_member(:telemetry_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryType, name: "TelemetryType", traits: {"smithy.api#required" => {}}))
    TelemetryRule.add_member(:telemetry_source_types, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetrySourceTypes, name: "TelemetrySourceTypes"))
    TelemetryRule.add_member(:destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryDestinationConfiguration, name: "DestinationConfiguration"))
    TelemetryRule.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Scope"))
    TelemetryRule.add_member(:selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SelectionCriteria"))
    TelemetryRule.add_member(:allow_field_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "AllowFieldUpdates"))
    TelemetryRule.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "Regions"))
    TelemetryRule.add_member(:all_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: AllRegions, name: "AllRegions"))
    TelemetryRule.type = Types::TelemetryRule
    TelemetryRuleSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRuleSummary, name: "member"))
    TelemetryRuleSummary.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName"))
    TelemetryRuleSummary.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleArn"))
    TelemetryRuleSummary.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "CreatedTimeStamp"))
    TelemetryRuleSummary.add_member(:last_update_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "LastUpdateTimeStamp"))
    TelemetryRuleSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    TelemetryRuleSummary.add_member(:telemetry_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryType, name: "TelemetryType"))
    TelemetryRuleSummary.add_member(:telemetry_source_types, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetrySourceTypes, name: "TelemetrySourceTypes"))
    TelemetryRuleSummary.type = Types::TelemetryRuleSummary
    TelemetrySourceType.add_member(:vpc_flow_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_FLOW_LOGS", traits: {"smithy.api#enumValue" => "VPC_FLOW_LOGS"}))
    TelemetrySourceType.add_member(:route53_resolver_query_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROUTE53_RESOLVER_QUERY_LOGS", traits: {"smithy.api#enumValue" => "ROUTE53_RESOLVER_QUERY_LOGS"}))
    TelemetrySourceType.add_member(:eks_audit_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_AUDIT_LOGS", traits: {"smithy.api#enumValue" => "EKS_AUDIT_LOGS"}))
    TelemetrySourceType.add_member(:eks_authenticator_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_AUTHENTICATOR_LOGS", traits: {"smithy.api#enumValue" => "EKS_AUTHENTICATOR_LOGS"}))
    TelemetrySourceType.add_member(:eks_controller_manager_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_CONTROLLER_MANAGER_LOGS", traits: {"smithy.api#enumValue" => "EKS_CONTROLLER_MANAGER_LOGS"}))
    TelemetrySourceType.add_member(:eks_scheduler_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_SCHEDULER_LOGS", traits: {"smithy.api#enumValue" => "EKS_SCHEDULER_LOGS"}))
    TelemetrySourceType.add_member(:eks_api_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_API_LOGS", traits: {"smithy.api#enumValue" => "EKS_API_LOGS"}))
    TelemetrySourceTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetrySourceType, name: "member"))
    TelemetryState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "Enabled"}))
    TelemetryState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    TelemetryState.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NotApplicable"}))
    TelemetryType.add_member(:logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGS", traits: {"smithy.api#enumValue" => "Logs"}))
    TelemetryType.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METRICS", traits: {"smithy.api#enumValue" => "Metrics"}))
    TelemetryType.add_member(:traces, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRACES", traits: {"smithy.api#enumValue" => "Traces"}))
    TestTelemetryPipelineInput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: Records, name: "Records", traits: {"smithy.api#required" => {}}))
    TestTelemetryPipelineInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineConfiguration, name: "Configuration", traits: {"smithy.api#required" => {}}))
    TestTelemetryPipelineInput.add_member(:signal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalType, name: "SignalType", traits: {"smithy.api#default" => "LOG"}))
    TestTelemetryPipelineInput.type = Types::TestTelemetryPipelineInput
    TestTelemetryPipelineOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineOutputs, name: "Results"))
    TestTelemetryPipelineOutput.type = Types::TestTelemetryPipelineOutput
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateCentralizationRuleForOrganizationInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateCentralizationRuleForOrganizationInput.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationRule, name: "Rule", traits: {"smithy.api#required" => {}}))
    UpdateCentralizationRuleForOrganizationInput.type = Types::UpdateCentralizationRuleForOrganizationInput
    UpdateCentralizationRuleForOrganizationOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleArn"))
    UpdateCentralizationRuleForOrganizationOutput.type = Types::UpdateCentralizationRuleForOrganizationOutput
    UpdateDatasetIntegrationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdateDatasetIntegrationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    UpdateDatasetIntegrationInput.type = Types::UpdateDatasetIntegrationInput
    UpdateDatasetIntegrationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdateDatasetIntegrationOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    UpdateDatasetIntegrationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    UpdateDatasetIntegrationOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    UpdateDatasetIntegrationOutput.type = Types::UpdateDatasetIntegrationOutput
    UpdateTelemetryPipelineInput.add_member(:pipeline_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineIdentifier, name: "PipelineIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateTelemetryPipelineInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineConfiguration, name: "Configuration", traits: {"smithy.api#required" => {}}))
    UpdateTelemetryPipelineInput.type = Types::UpdateTelemetryPipelineInput
    UpdateTelemetryPipelineOutput.type = Types::UpdateTelemetryPipelineOutput
    UpdateTelemetryRuleForOrganizationInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateTelemetryRuleForOrganizationInput.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRule, name: "Rule", traits: {"smithy.api#required" => {}}))
    UpdateTelemetryRuleForOrganizationInput.type = Types::UpdateTelemetryRuleForOrganizationInput
    UpdateTelemetryRuleForOrganizationOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleArn"))
    UpdateTelemetryRuleForOrganizationOutput.type = Types::UpdateTelemetryRuleForOrganizationOutput
    UpdateTelemetryRuleInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateTelemetryRuleInput.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRule, name: "Rule", traits: {"smithy.api#required" => {}}))
    UpdateTelemetryRuleInput.type = Types::UpdateTelemetryRuleInput
    UpdateTelemetryRuleOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleArn"))
    UpdateTelemetryRuleOutput.type = Types::UpdateTelemetryRuleOutput
    VPCFlowLogParameters.add_member(:log_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LogFormat"))
    VPCFlowLogParameters.add_member(:traffic_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TrafficType"))
    VPCFlowLogParameters.add_member(:max_aggregation_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxAggregationInterval"))
    VPCFlowLogParameters.type = Types::VPCFlowLogParameters
    ValidateTelemetryPipelineConfigurationInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryPipelineConfiguration, name: "Configuration", traits: {"smithy.api#required" => {}}))
    ValidateTelemetryPipelineConfigurationInput.type = Types::ValidateTelemetryPipelineConfigurationInput
    ValidateTelemetryPipelineConfigurationOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationErrors, name: "Errors"))
    ValidateTelemetryPipelineConfigurationOutput.type = Types::ValidateTelemetryPipelineConfigurationOutput
    ValidationError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ValidationError.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Reason"))
    ValidationError.add_member(:field_map, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldMap, name: "FieldMap"))
    ValidationError.type = Types::ValidationError
    ValidationErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationError, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ValidationException.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationErrors, name: "Errors"))
    ValidationException.type = Types::ValidationException
    WAFLogType.add_member(:waf_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAF_LOGS", traits: {"smithy.api#enumValue" => "WAF_LOGS"}))
    WAFLoggingParameters.add_member(:redacted_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: RedactedFields, name: "RedactedFields"))
    WAFLoggingParameters.add_member(:logging_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingFilter, name: "LoggingFilter"))
    WAFLoggingParameters.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WAFLogType, name: "LogType"))
    WAFLoggingParameters.type = Types::WAFLoggingParameters

    ObservabilityAdmin = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.observabilityadmin#ObservabilityAdmin"
      service.name = "ObservabilityAdmin"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "ObservabilityAdmin", "arnNamespace" => "observabilityadmin", "cloudFormationName" => "ObservabilityAdmin"}, "aws.api#tagEnabled" => {}, "aws.auth#sigv4" => {"name" => "observabilityadmin"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "CloudWatch Observability Admin Service", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://observabilityadmin-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://observabilityadmin-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://observabilityadmin.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://observabilityadmin.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_centralization_rule_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#CreateCentralizationRuleForOrganization"
        operation.name = "CreateCentralizationRuleForOrganization"
        operation.input = CreateCentralizationRuleForOrganizationInput
        operation.output = CreateCentralizationRuleForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateCentralizationRuleForOrganization"}}
      end)
      service.add_operation(:create_dataset_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#CreateDatasetIntegration"
        operation.name = "CreateDatasetIntegration"
        operation.input = CreateDatasetIntegrationInput
        operation.output = CreateDatasetIntegrationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateDatasetIntegration", "code" => 201}}
      end)
      service.add_operation(:create_s3_table_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#CreateS3TableIntegration"
        operation.name = "CreateS3TableIntegration"
        operation.input = CreateS3TableIntegrationInput
        operation.output = CreateS3TableIntegrationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateS3TableIntegration"}}
      end)
      service.add_operation(:create_telemetry_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#CreateTelemetryPipeline"
        operation.name = "CreateTelemetryPipeline"
        operation.input = CreateTelemetryPipelineInput
        operation.output = CreateTelemetryPipelineOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["iam:PassRole", "logs:PutPipelineRule", "cloudwatch:PutPipelineRule", "observabilityadmin:TagResource", "observabilityadmin:ListTagsForResource", "observabilityadmin:GetTelemetryPipeline"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/CreateTelemetryPipeline"}}
      end)
      service.add_operation(:create_telemetry_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#CreateTelemetryRule"
        operation.name = "CreateTelemetryRule"
        operation.input = CreateTelemetryRuleInput
        operation.output = CreateTelemetryRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateTelemetryRule"}}
      end)
      service.add_operation(:create_telemetry_rule_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#CreateTelemetryRuleForOrganization"
        operation.name = "CreateTelemetryRuleForOrganization"
        operation.input = CreateTelemetryRuleForOrganizationInput
        operation.output = CreateTelemetryRuleForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateTelemetryRuleForOrganization"}}
      end)
      service.add_operation(:delete_centralization_rule_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#DeleteCentralizationRuleForOrganization"
        operation.name = "DeleteCentralizationRuleForOrganization"
        operation.input = DeleteCentralizationRuleForOrganizationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteCentralizationRuleForOrganization"}}
      end)
      service.add_operation(:delete_dataset_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#DeleteDatasetIntegration"
        operation.name = "DeleteDatasetIntegration"
        operation.input = DeleteDatasetIntegrationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteDatasetIntegration", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_s3_table_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#DeleteS3TableIntegration"
        operation.name = "DeleteS3TableIntegration"
        operation.input = DeleteS3TableIntegrationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidStateException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteS3TableIntegration", "code" => 204}}
      end)
      service.add_operation(:delete_telemetry_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#DeleteTelemetryPipeline"
        operation.name = "DeleteTelemetryPipeline"
        operation.input = DeleteTelemetryPipelineInput
        operation.output = DeleteTelemetryPipelineOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["logs:DeletePipelineRule", "cloudwatch:DeletePipelineRule", "observabilityadmin:GetTelemetryPipeline"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/DeleteTelemetryPipeline"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_telemetry_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#DeleteTelemetryRule"
        operation.name = "DeleteTelemetryRule"
        operation.input = DeleteTelemetryRuleInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteTelemetryRule"}}
      end)
      service.add_operation(:delete_telemetry_rule_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#DeleteTelemetryRuleForOrganization"
        operation.name = "DeleteTelemetryRuleForOrganization"
        operation.input = DeleteTelemetryRuleForOrganizationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteTelemetryRuleForOrganization"}}
      end)
      service.add_operation(:get_centralization_rule_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#GetCentralizationRuleForOrganization"
        operation.name = "GetCentralizationRuleForOrganization"
        operation.input = GetCentralizationRuleForOrganizationInput
        operation.output = GetCentralizationRuleForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetCentralizationRuleForOrganization"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_dataset_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#GetDatasetIntegration"
        operation.name = "GetDatasetIntegration"
        operation.input = GetDatasetIntegrationInput
        operation.output = GetDatasetIntegrationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetDatasetIntegration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_s3_table_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#GetS3TableIntegration"
        operation.name = "GetS3TableIntegration"
        operation.input = GetS3TableIntegrationInput
        operation.output = GetS3TableIntegrationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetS3TableIntegration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_telemetry_enrichment_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#GetTelemetryEnrichmentStatus"
        operation.name = "GetTelemetryEnrichmentStatus"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetTelemetryEnrichmentStatusOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTelemetryEnrichmentStatus"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_telemetry_evaluation_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#GetTelemetryEvaluationStatus"
        operation.name = "GetTelemetryEvaluationStatus"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetTelemetryEvaluationStatusOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTelemetryEvaluationStatus"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetTelemetryEvaluationStatus", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2"}}]}
      end)
      service.add_operation(:get_telemetry_evaluation_status_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#GetTelemetryEvaluationStatusForOrganization"
        operation.name = "GetTelemetryEvaluationStatusForOrganization"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetTelemetryEvaluationStatusForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTelemetryEvaluationStatusForOrganization"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetTelemetryEvaluationStatusForOrganization", "params" => {}, "expect" => {"failure" => {"errorId" => "com.amazonaws.observabilityadmin#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2"}}]}
      end)
      service.add_operation(:get_telemetry_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#GetTelemetryPipeline"
        operation.name = "GetTelemetryPipeline"
        operation.input = GetTelemetryPipelineInput
        operation.output = GetTelemetryPipelineOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["observabilityadmin:ListTagsForResource"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetTelemetryPipeline"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_telemetry_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#GetTelemetryRule"
        operation.name = "GetTelemetryRule"
        operation.input = GetTelemetryRuleInput
        operation.output = GetTelemetryRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTelemetryRule"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_telemetry_rule_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#GetTelemetryRuleForOrganization"
        operation.name = "GetTelemetryRuleForOrganization"
        operation.input = GetTelemetryRuleForOrganizationInput
        operation.output = GetTelemetryRuleForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTelemetryRuleForOrganization"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_centralization_rules_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ListCentralizationRulesForOrganization"
        operation.name = "ListCentralizationRulesForOrganization"
        operation.input = ListCentralizationRulesForOrganizationInput
        operation.output = ListCentralizationRulesForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListCentralizationRulesForOrganization"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCentralizationRulesForOrganization.new
      end)
      service.add_operation(:list_dataset_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ListDatasetIntegrations"
        operation.name = "ListDatasetIntegrations"
        operation.input = ListDatasetIntegrationsInput
        operation.output = ListDatasetIntegrationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListDatasetIntegrations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDatasetIntegrations.new
      end)
      service.add_operation(:list_resource_telemetry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ListResourceTelemetry"
        operation.name = "ListResourceTelemetry"
        operation.input = ListResourceTelemetryInput
        operation.output = ListResourceTelemetryOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListResourceTelemetry"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceTelemetry.new
      end)
      service.add_operation(:list_resource_telemetry_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ListResourceTelemetryForOrganization"
        operation.name = "ListResourceTelemetryForOrganization"
        operation.input = ListResourceTelemetryForOrganizationInput
        operation.output = ListResourceTelemetryForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListResourceTelemetryForOrganization"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceTelemetryForOrganization.new
      end)
      service.add_operation(:list_s3_table_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ListS3TableIntegrations"
        operation.name = "ListS3TableIntegrations"
        operation.input = ListS3TableIntegrationsInput
        operation.output = ListS3TableIntegrationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListS3TableIntegrations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListS3TableIntegrations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTagsForResource"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_telemetry_pipelines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ListTelemetryPipelines"
        operation.name = "ListTelemetryPipelines"
        operation.input = ListTelemetryPipelinesInput
        operation.output = ListTelemetryPipelinesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["observabilityadmin:ListTagsForResource"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/ListTelemetryPipelines"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTelemetryPipelines.new
      end)
      service.add_operation(:list_telemetry_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ListTelemetryRules"
        operation.name = "ListTelemetryRules"
        operation.input = ListTelemetryRulesInput
        operation.output = ListTelemetryRulesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTelemetryRules"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTelemetryRules.new
      end)
      service.add_operation(:list_telemetry_rules_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ListTelemetryRulesForOrganization"
        operation.name = "ListTelemetryRulesForOrganization"
        operation.input = ListTelemetryRulesForOrganizationInput
        operation.output = ListTelemetryRulesForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTelemetryRulesForOrganization"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTelemetryRulesForOrganization.new
      end)
      service.add_operation(:start_telemetry_enrichment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#StartTelemetryEnrichment"
        operation.name = "StartTelemetryEnrichment"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = StartTelemetryEnrichmentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartTelemetryEnrichment", "code" => 202}}
      end)
      service.add_operation(:start_telemetry_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#StartTelemetryEvaluation"
        operation.name = "StartTelemetryEvaluation"
        operation.input = StartTelemetryEvaluationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartTelemetryEvaluation"}}
      end)
      service.add_operation(:start_telemetry_evaluation_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#StartTelemetryEvaluationForOrganization"
        operation.name = "StartTelemetryEvaluationForOrganization"
        operation.input = StartTelemetryEvaluationForOrganizationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartTelemetryEvaluationForOrganization"}}
      end)
      service.add_operation(:stop_telemetry_enrichment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#StopTelemetryEnrichment"
        operation.name = "StopTelemetryEnrichment"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = StopTelemetryEnrichmentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StopTelemetryEnrichment", "code" => 202}}
      end)
      service.add_operation(:stop_telemetry_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#StopTelemetryEvaluation"
        operation.name = "StopTelemetryEvaluation"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StopTelemetryEvaluation"}}
      end)
      service.add_operation(:stop_telemetry_evaluation_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#StopTelemetryEvaluationForOrganization"
        operation.name = "StopTelemetryEvaluationForOrganization"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StopTelemetryEvaluationForOrganization"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TagResource"}}
      end)
      service.add_operation(:test_telemetry_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#TestTelemetryPipeline"
        operation.name = "TestTelemetryPipeline"
        operation.input = TestTelemetryPipelineInput
        operation.output = TestTelemetryPipelineOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TestTelemetryPipeline"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UntagResource"}}
      end)
      service.add_operation(:update_centralization_rule_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#UpdateCentralizationRuleForOrganization"
        operation.name = "UpdateCentralizationRuleForOrganization"
        operation.input = UpdateCentralizationRuleForOrganizationInput
        operation.output = UpdateCentralizationRuleForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateCentralizationRuleForOrganization"}}
      end)
      service.add_operation(:update_dataset_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#UpdateDatasetIntegration"
        operation.name = "UpdateDatasetIntegration"
        operation.input = UpdateDatasetIntegrationInput
        operation.output = UpdateDatasetIntegrationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateDatasetIntegration"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_telemetry_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#UpdateTelemetryPipeline"
        operation.name = "UpdateTelemetryPipeline"
        operation.input = UpdateTelemetryPipelineInput
        operation.output = UpdateTelemetryPipelineOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["iam:PassRole", "logs:DeletePipelineRule", "logs:PutPipelineRule", "cloudwatch:PutPipelineRule", "observabilityadmin:GetTelemetryPipeline", "observabilityadmin:ListTagsForResource", "observabilityadmin:TagResource", "observabilityadmin:UntagResource"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/UpdateTelemetryPipeline"}}
      end)
      service.add_operation(:update_telemetry_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#UpdateTelemetryRule"
        operation.name = "UpdateTelemetryRule"
        operation.input = UpdateTelemetryRuleInput
        operation.output = UpdateTelemetryRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateTelemetryRule"}}
      end)
      service.add_operation(:update_telemetry_rule_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#UpdateTelemetryRuleForOrganization"
        operation.name = "UpdateTelemetryRuleForOrganization"
        operation.input = UpdateTelemetryRuleForOrganizationInput
        operation.output = UpdateTelemetryRuleForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateTelemetryRuleForOrganization"}}
      end)
      service.add_operation(:validate_telemetry_pipeline_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ValidateTelemetryPipelineConfiguration"
        operation.name = "ValidateTelemetryPipelineConfiguration"
        operation.input = ValidateTelemetryPipelineConfigurationInput
        operation.output = ValidateTelemetryPipelineConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ValidateTelemetryPipelineConfiguration"}}
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
