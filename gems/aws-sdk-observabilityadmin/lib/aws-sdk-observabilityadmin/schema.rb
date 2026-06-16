# frozen_string_literal: true

# This is generated code!

module Aws::ObservabilityAdmin
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccountIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#AccountIdentifier", name: "AccountIdentifier", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AccountIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#AccountIdentifiers", name: "AccountIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    CentralizationFailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#CentralizationFailureReason", name: "CentralizationFailureReason")
    CentralizationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CentralizationRule", name: "CentralizationRule")
    CentralizationRuleDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CentralizationRuleDestination", name: "CentralizationRuleDestination")
    CentralizationRuleSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CentralizationRuleSource", name: "CentralizationRuleSource")
    CentralizationRuleSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#CentralizationRuleSummaries", name: "CentralizationRuleSummaries")
    CentralizationRuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CentralizationRuleSummary", name: "CentralizationRuleSummary")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateCentralizationRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateCentralizationRuleForOrganizationInput", name: "CreateCentralizationRuleForOrganizationInput")
    CreateCentralizationRuleForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateCentralizationRuleForOrganizationOutput", name: "CreateCentralizationRuleForOrganizationOutput")
    CreateTelemetryRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateTelemetryRuleForOrganizationInput", name: "CreateTelemetryRuleForOrganizationInput")
    CreateTelemetryRuleForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateTelemetryRuleForOrganizationOutput", name: "CreateTelemetryRuleForOrganizationOutput")
    CreateTelemetryRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateTelemetryRuleInput", name: "CreateTelemetryRuleInput")
    CreateTelemetryRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#CreateTelemetryRuleOutput", name: "CreateTelemetryRuleOutput")
    DeleteCentralizationRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DeleteCentralizationRuleForOrganizationInput", name: "DeleteCentralizationRuleForOrganizationInput")
    DeleteTelemetryRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DeleteTelemetryRuleForOrganizationInput", name: "DeleteTelemetryRuleForOrganizationInput")
    DeleteTelemetryRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DeleteTelemetryRuleInput", name: "DeleteTelemetryRuleInput")
    DestinationLogsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#DestinationLogsConfiguration", name: "DestinationLogsConfiguration")
    DestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#DestinationType", name: "DestinationType")
    EncryptedLogGroupStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#EncryptedLogGroupStrategy", name: "EncryptedLogGroupStrategy")
    EncryptionConflictResolutionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#EncryptionConflictResolutionStrategy", name: "EncryptionConflictResolutionStrategy")
    EncryptionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#EncryptionStrategy", name: "EncryptionStrategy")
    FailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#FailureReason", name: "FailureReason")
    GetCentralizationRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetCentralizationRuleForOrganizationInput", name: "GetCentralizationRuleForOrganizationInput")
    GetCentralizationRuleForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetCentralizationRuleForOrganizationOutput", name: "GetCentralizationRuleForOrganizationOutput")
    GetTelemetryEvaluationStatusForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryEvaluationStatusForOrganizationOutput", name: "GetTelemetryEvaluationStatusForOrganizationOutput")
    GetTelemetryEvaluationStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryEvaluationStatusOutput", name: "GetTelemetryEvaluationStatusOutput")
    GetTelemetryRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryRuleForOrganizationInput", name: "GetTelemetryRuleForOrganizationInput")
    GetTelemetryRuleForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryRuleForOrganizationOutput", name: "GetTelemetryRuleForOrganizationOutput")
    GetTelemetryRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryRuleInput", name: "GetTelemetryRuleInput")
    GetTelemetryRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#GetTelemetryRuleOutput", name: "GetTelemetryRuleOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListCentralizationRulesForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListCentralizationRulesForOrganizationInput", name: "ListCentralizationRulesForOrganizationInput")
    ListCentralizationRulesForOrganizationMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.observabilityadmin#ListCentralizationRulesForOrganizationMaxResults", name: "ListCentralizationRulesForOrganizationMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListCentralizationRulesForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListCentralizationRulesForOrganizationOutput", name: "ListCentralizationRulesForOrganizationOutput")
    ListResourceTelemetryForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListResourceTelemetryForOrganizationInput", name: "ListResourceTelemetryForOrganizationInput")
    ListResourceTelemetryForOrganizationMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.observabilityadmin#ListResourceTelemetryForOrganizationMaxResults", name: "ListResourceTelemetryForOrganizationMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListResourceTelemetryForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListResourceTelemetryForOrganizationOutput", name: "ListResourceTelemetryForOrganizationOutput")
    ListResourceTelemetryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListResourceTelemetryInput", name: "ListResourceTelemetryInput")
    ListResourceTelemetryMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.observabilityadmin#ListResourceTelemetryMaxResults", name: "ListResourceTelemetryMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListResourceTelemetryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListResourceTelemetryOutput", name: "ListResourceTelemetryOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTelemetryRulesForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryRulesForOrganizationInput", name: "ListTelemetryRulesForOrganizationInput")
    ListTelemetryRulesForOrganizationMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryRulesForOrganizationMaxResults", name: "ListTelemetryRulesForOrganizationMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListTelemetryRulesForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryRulesForOrganizationOutput", name: "ListTelemetryRulesForOrganizationOutput")
    ListTelemetryRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryRulesInput", name: "ListTelemetryRulesInput")
    ListTelemetryRulesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryRulesMaxResults", name: "ListTelemetryRulesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListTelemetryRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ListTelemetryRulesOutput", name: "ListTelemetryRulesOutput")
    LogsBackupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#LogsBackupConfiguration", name: "LogsBackupConfiguration")
    LogsEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#LogsEncryptionConfiguration", name: "LogsEncryptionConfiguration")
    LogsFilterString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#LogsFilterString", name: "LogsFilterString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#NextToken", name: "NextToken")
    OrganizationUnitIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#OrganizationUnitIdentifier", name: "OrganizationUnitIdentifier", traits: {"smithy.api#pattern" => "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"})
    OrganizationUnitIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#OrganizationUnitIdentifiers", name: "OrganizationUnitIdentifiers", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#uniqueItems" => {}})
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#Region", name: "Region", traits: {"smithy.api#length" => {"min" => 1}})
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
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SourceFilterString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#SourceFilterString", name: "SourceFilterString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    SourceLogsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#SourceLogsConfiguration", name: "SourceLogsConfiguration")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#Status", name: "Status")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#TagKey", name: "TagKey", traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMapInput = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.observabilityadmin#TagMapInput", name: "TagMapInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMapOutput = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.observabilityadmin#TagMapOutput", name: "TagMapOutput")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TagResourceInput", name: "TagResourceInput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.observabilityadmin#TagValue", name: "TagValue", traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TelemetryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TelemetryConfiguration", name: "TelemetryConfiguration")
    TelemetryConfigurationState = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.observabilityadmin#TelemetryConfigurationState", name: "TelemetryConfigurationState")
    TelemetryConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#TelemetryConfigurations", name: "TelemetryConfigurations")
    TelemetryDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TelemetryDestinationConfiguration", name: "TelemetryDestinationConfiguration")
    TelemetryRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TelemetryRule", name: "TelemetryRule")
    TelemetryRuleSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.observabilityadmin#TelemetryRuleSummaries", name: "TelemetryRuleSummaries")
    TelemetryRuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TelemetryRuleSummary", name: "TelemetryRuleSummary")
    TelemetryState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#TelemetryState", name: "TelemetryState")
    TelemetryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.observabilityadmin#TelemetryType", name: "TelemetryType")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UntagResourceInput", name: "UntagResourceInput")
    UpdateCentralizationRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateCentralizationRuleForOrganizationInput", name: "UpdateCentralizationRuleForOrganizationInput")
    UpdateCentralizationRuleForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateCentralizationRuleForOrganizationOutput", name: "UpdateCentralizationRuleForOrganizationOutput")
    UpdateTelemetryRuleForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateTelemetryRuleForOrganizationInput", name: "UpdateTelemetryRuleForOrganizationInput")
    UpdateTelemetryRuleForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateTelemetryRuleForOrganizationOutput", name: "UpdateTelemetryRuleForOrganizationOutput")
    UpdateTelemetryRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateTelemetryRuleInput", name: "UpdateTelemetryRuleInput")
    UpdateTelemetryRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#UpdateTelemetryRuleOutput", name: "UpdateTelemetryRuleOutput")
    VPCFlowLogParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#VPCFlowLogParameters", name: "VPCFlowLogParameters")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.observabilityadmin#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message"))
    AccessDeniedException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "amznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdentifier)
    CentralizationFailureReason.add_member(:trusted_access_not_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRUSTED_ACCESS_NOT_ENABLED", traits: {"smithy.api#enumValue" => "TRUSTED_ACCESS_NOT_ENABLED"}))
    CentralizationFailureReason.add_member(:destination_account_not_in_organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESTINATION_ACCOUNT_NOT_IN_ORGANIZATION", traits: {"smithy.api#enumValue" => "DESTINATION_ACCOUNT_NOT_IN_ORGANIZATION"}))
    CentralizationFailureReason.add_member(:internal_server_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    CentralizationRule.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationRuleSource, location_name: "Source", traits: {"smithy.api#required" => {}}))
    CentralizationRule.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationRuleDestination, location_name: "Destination", traits: {"smithy.api#required" => {}}))
    CentralizationRule.type = Types::CentralizationRule
    CentralizationRuleDestination.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, location_name: "Region", traits: {"smithy.api#required" => {}}))
    CentralizationRuleDestination.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdentifier, location_name: "Account"))
    CentralizationRuleDestination.add_member(:destination_logs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationLogsConfiguration, location_name: "DestinationLogsConfiguration"))
    CentralizationRuleDestination.type = Types::CentralizationRuleDestination
    CentralizationRuleSource.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, location_name: "Regions", traits: {"smithy.api#required" => {}}))
    CentralizationRuleSource.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFilterString, location_name: "Scope"))
    CentralizationRuleSource.add_member(:source_logs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceLogsConfiguration, location_name: "SourceLogsConfiguration"))
    CentralizationRuleSource.type = Types::CentralizationRuleSource
    CentralizationRuleSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationRuleSummary)
    CentralizationRuleSummary.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, location_name: "RuleName"))
    CentralizationRuleSummary.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "RuleArn"))
    CentralizationRuleSummary.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "CreatorAccountId"))
    CentralizationRuleSummary.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "CreatedTimeStamp"))
    CentralizationRuleSummary.add_member(:created_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, location_name: "CreatedRegion"))
    CentralizationRuleSummary.add_member(:last_update_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "LastUpdateTimeStamp"))
    CentralizationRuleSummary.add_member(:rule_health, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleHealth, location_name: "RuleHealth"))
    CentralizationRuleSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationFailureReason, location_name: "FailureReason"))
    CentralizationRuleSummary.add_member(:destination_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "DestinationAccountId"))
    CentralizationRuleSummary.add_member(:destination_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, location_name: "DestinationRegion"))
    CentralizationRuleSummary.type = Types::CentralizationRuleSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateCentralizationRuleForOrganizationInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, location_name: "RuleName", traits: {"smithy.api#required" => {}}))
    CreateCentralizationRuleForOrganizationInput.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationRule, location_name: "Rule", traits: {"smithy.api#required" => {}}))
    CreateCentralizationRuleForOrganizationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, location_name: "Tags"))
    CreateCentralizationRuleForOrganizationInput.type = Types::CreateCentralizationRuleForOrganizationInput
    CreateCentralizationRuleForOrganizationOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "RuleArn"))
    CreateCentralizationRuleForOrganizationOutput.type = Types::CreateCentralizationRuleForOrganizationOutput
    CreateTelemetryRuleForOrganizationInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, location_name: "RuleName", traits: {"smithy.api#required" => {}}))
    CreateTelemetryRuleForOrganizationInput.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRule, location_name: "Rule", traits: {"smithy.api#required" => {}}))
    CreateTelemetryRuleForOrganizationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, location_name: "Tags"))
    CreateTelemetryRuleForOrganizationInput.type = Types::CreateTelemetryRuleForOrganizationInput
    CreateTelemetryRuleForOrganizationOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "RuleArn"))
    CreateTelemetryRuleForOrganizationOutput.type = Types::CreateTelemetryRuleForOrganizationOutput
    CreateTelemetryRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, location_name: "RuleName", traits: {"smithy.api#required" => {}}))
    CreateTelemetryRuleInput.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRule, location_name: "Rule", traits: {"smithy.api#required" => {}}))
    CreateTelemetryRuleInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, location_name: "Tags"))
    CreateTelemetryRuleInput.type = Types::CreateTelemetryRuleInput
    CreateTelemetryRuleOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "RuleArn"))
    CreateTelemetryRuleOutput.type = Types::CreateTelemetryRuleOutput
    DeleteCentralizationRuleForOrganizationInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, location_name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteCentralizationRuleForOrganizationInput.type = Types::DeleteCentralizationRuleForOrganizationInput
    DeleteTelemetryRuleForOrganizationInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, location_name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteTelemetryRuleForOrganizationInput.type = Types::DeleteTelemetryRuleForOrganizationInput
    DeleteTelemetryRuleInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, location_name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteTelemetryRuleInput.type = Types::DeleteTelemetryRuleInput
    DestinationLogsConfiguration.add_member(:logs_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsEncryptionConfiguration, location_name: "LogsEncryptionConfiguration"))
    DestinationLogsConfiguration.add_member(:backup_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsBackupConfiguration, location_name: "BackupConfiguration"))
    DestinationLogsConfiguration.type = Types::DestinationLogsConfiguration
    DestinationType.add_member(:cloudwatch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOUDWATCH_LOGS", traits: {"smithy.api#enumValue" => "cloud-watch-logs"}))
    EncryptedLogGroupStrategy.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    EncryptedLogGroupStrategy.add_member(:skip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SKIP", traits: {"smithy.api#enumValue" => "SKIP"}))
    EncryptionConflictResolutionStrategy.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    EncryptionConflictResolutionStrategy.add_member(:skip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SKIP", traits: {"smithy.api#enumValue" => "SKIP"}))
    EncryptionStrategy.add_member(:customer_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMER_MANAGED", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED"}))
    EncryptionStrategy.add_member(:aws_owned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_OWNED", traits: {"smithy.api#enumValue" => "AWS_OWNED"}))
    GetCentralizationRuleForOrganizationInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, location_name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    GetCentralizationRuleForOrganizationInput.type = Types::GetCentralizationRuleForOrganizationInput
    GetCentralizationRuleForOrganizationOutput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, location_name: "RuleName"))
    GetCentralizationRuleForOrganizationOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "RuleArn"))
    GetCentralizationRuleForOrganizationOutput.add_member(:creator_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "CreatorAccountId"))
    GetCentralizationRuleForOrganizationOutput.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "CreatedTimeStamp"))
    GetCentralizationRuleForOrganizationOutput.add_member(:created_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, location_name: "CreatedRegion"))
    GetCentralizationRuleForOrganizationOutput.add_member(:last_update_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "LastUpdateTimeStamp"))
    GetCentralizationRuleForOrganizationOutput.add_member(:rule_health, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleHealth, location_name: "RuleHealth"))
    GetCentralizationRuleForOrganizationOutput.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationFailureReason, location_name: "FailureReason"))
    GetCentralizationRuleForOrganizationOutput.add_member(:centralization_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationRule, location_name: "CentralizationRule"))
    GetCentralizationRuleForOrganizationOutput.type = Types::GetCentralizationRuleForOrganizationOutput
    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "Status"))
    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "FailureReason"))
    GetTelemetryEvaluationStatusForOrganizationOutput.type = Types::GetTelemetryEvaluationStatusForOrganizationOutput
    GetTelemetryEvaluationStatusOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "Status"))
    GetTelemetryEvaluationStatusOutput.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "FailureReason"))
    GetTelemetryEvaluationStatusOutput.type = Types::GetTelemetryEvaluationStatusOutput
    GetTelemetryRuleForOrganizationInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, location_name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    GetTelemetryRuleForOrganizationInput.type = Types::GetTelemetryRuleForOrganizationInput
    GetTelemetryRuleForOrganizationOutput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, location_name: "RuleName"))
    GetTelemetryRuleForOrganizationOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "RuleArn"))
    GetTelemetryRuleForOrganizationOutput.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "CreatedTimeStamp"))
    GetTelemetryRuleForOrganizationOutput.add_member(:last_update_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "LastUpdateTimeStamp"))
    GetTelemetryRuleForOrganizationOutput.add_member(:telemetry_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRule, location_name: "TelemetryRule"))
    GetTelemetryRuleForOrganizationOutput.type = Types::GetTelemetryRuleForOrganizationOutput
    GetTelemetryRuleInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, location_name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    GetTelemetryRuleInput.type = Types::GetTelemetryRuleInput
    GetTelemetryRuleOutput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, location_name: "RuleName"))
    GetTelemetryRuleOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "RuleArn"))
    GetTelemetryRuleOutput.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "CreatedTimeStamp"))
    GetTelemetryRuleOutput.add_member(:last_update_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "LastUpdateTimeStamp"))
    GetTelemetryRuleOutput.add_member(:telemetry_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRule, location_name: "TelemetryRule"))
    GetTelemetryRuleOutput.type = Types::GetTelemetryRuleOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message"))
    InternalServerException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "amznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InternalServerException.type = Types::InternalServerException
    ListCentralizationRulesForOrganizationInput.add_member(:rule_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "RuleNamePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    ListCentralizationRulesForOrganizationInput.add_member(:all_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "AllRegions"))
    ListCentralizationRulesForOrganizationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCentralizationRulesForOrganizationMaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListCentralizationRulesForOrganizationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListCentralizationRulesForOrganizationInput.type = Types::ListCentralizationRulesForOrganizationInput
    ListCentralizationRulesForOrganizationOutput.add_member(:centralization_rule_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationRuleSummaries, location_name: "CentralizationRuleSummaries"))
    ListCentralizationRulesForOrganizationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListCentralizationRulesForOrganizationOutput.type = Types::ListCentralizationRulesForOrganizationOutput
    ListResourceTelemetryForOrganizationInput.add_member(:account_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdentifiers, location_name: "AccountIdentifiers"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_identifier_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierPrefix, location_name: "ResourceIdentifierPrefix"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, location_name: "ResourceTypes"))
    ListResourceTelemetryForOrganizationInput.add_member(:telemetry_configuration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfigurationState, location_name: "TelemetryConfigurationState"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, location_name: "ResourceTags"))
    ListResourceTelemetryForOrganizationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListResourceTelemetryForOrganizationMaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListResourceTelemetryForOrganizationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListResourceTelemetryForOrganizationInput.type = Types::ListResourceTelemetryForOrganizationInput
    ListResourceTelemetryForOrganizationOutput.add_member(:telemetry_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfigurations, location_name: "TelemetryConfigurations"))
    ListResourceTelemetryForOrganizationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListResourceTelemetryForOrganizationOutput.type = Types::ListResourceTelemetryForOrganizationOutput
    ListResourceTelemetryInput.add_member(:resource_identifier_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierPrefix, location_name: "ResourceIdentifierPrefix"))
    ListResourceTelemetryInput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, location_name: "ResourceTypes"))
    ListResourceTelemetryInput.add_member(:telemetry_configuration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfigurationState, location_name: "TelemetryConfigurationState"))
    ListResourceTelemetryInput.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, location_name: "ResourceTags"))
    ListResourceTelemetryInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListResourceTelemetryMaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListResourceTelemetryInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListResourceTelemetryInput.type = Types::ListResourceTelemetryInput
    ListResourceTelemetryOutput.add_member(:telemetry_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfigurations, location_name: "TelemetryConfigurations"))
    ListResourceTelemetryOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListResourceTelemetryOutput.type = Types::ListResourceTelemetryOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapOutput, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTelemetryRulesForOrganizationInput.add_member(:rule_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "RuleNamePrefix"))
    ListTelemetryRulesForOrganizationInput.add_member(:source_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdentifiers, location_name: "SourceAccountIds"))
    ListTelemetryRulesForOrganizationInput.add_member(:source_organization_unit_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationUnitIdentifiers, location_name: "SourceOrganizationUnitIds"))
    ListTelemetryRulesForOrganizationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTelemetryRulesForOrganizationMaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListTelemetryRulesForOrganizationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListTelemetryRulesForOrganizationInput.type = Types::ListTelemetryRulesForOrganizationInput
    ListTelemetryRulesForOrganizationOutput.add_member(:telemetry_rule_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRuleSummaries, location_name: "TelemetryRuleSummaries"))
    ListTelemetryRulesForOrganizationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListTelemetryRulesForOrganizationOutput.type = Types::ListTelemetryRulesForOrganizationOutput
    ListTelemetryRulesInput.add_member(:rule_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "RuleNamePrefix"))
    ListTelemetryRulesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTelemetryRulesMaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListTelemetryRulesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListTelemetryRulesInput.type = Types::ListTelemetryRulesInput
    ListTelemetryRulesOutput.add_member(:telemetry_rule_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRuleSummaries, location_name: "TelemetryRuleSummaries"))
    ListTelemetryRulesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListTelemetryRulesOutput.type = Types::ListTelemetryRulesOutput
    LogsBackupConfiguration.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, location_name: "Region", traits: {"smithy.api#required" => {}}))
    LogsBackupConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "KmsKeyArn"))
    LogsBackupConfiguration.type = Types::LogsBackupConfiguration
    LogsEncryptionConfiguration.add_member(:encryption_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionStrategy, location_name: "EncryptionStrategy", traits: {"smithy.api#required" => {}}))
    LogsEncryptionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "KmsKeyArn"))
    LogsEncryptionConfiguration.add_member(:encryption_conflict_resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConflictResolutionStrategy, location_name: "EncryptionConflictResolutionStrategy"))
    LogsEncryptionConfiguration.type = Types::LogsEncryptionConfiguration
    OrganizationUnitIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationUnitIdentifier)
    Regions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Region)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:aws_ec2_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_EC2_INSTANCE", traits: {"smithy.api#enumValue" => "AWS::EC2::Instance"}))
    ResourceType.add_member(:aws_ec2_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_EC2_VPC", traits: {"smithy.api#enumValue" => "AWS::EC2::VPC"}))
    ResourceType.add_member(:aws_lamdba_function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_LAMDBA_FUNCTION", traits: {"smithy.api#enumValue" => "AWS::Lambda::Function"}))
    ResourceTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType)
    RuleHealth.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEALTHY", traits: {"smithy.api#enumValue" => "Healthy"}))
    RuleHealth.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "Unhealthy"}))
    RuleHealth.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONING", traits: {"smithy.api#enumValue" => "Provisioning"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "amznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceLogsConfiguration.add_member(:log_group_selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsFilterString, location_name: "LogGroupSelectionCriteria", traits: {"smithy.api#required" => {}}))
    SourceLogsConfiguration.add_member(:encrypted_log_group_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptedLogGroupStrategy, location_name: "EncryptedLogGroupStrategy", traits: {"smithy.api#required" => {}}))
    SourceLogsConfiguration.type = Types::SourceLogsConfiguration
    Status.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    Status.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    Status.add_member(:failed_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED_START", traits: {"smithy.api#enumValue" => "FAILED_START"}))
    Status.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    Status.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    Status.add_member(:failed_stop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED_STOP", traits: {"smithy.api#enumValue" => "FAILED_STOP"}))
    Status.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMapInput.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMapInput.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TagMapOutput.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    TagMapOutput.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TelemetryConfiguration.add_member(:account_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdentifier, location_name: "AccountIdentifier"))
    TelemetryConfiguration.add_member(:telemetry_configuration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfigurationState, location_name: "TelemetryConfigurationState"))
    TelemetryConfiguration.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, location_name: "ResourceType"))
    TelemetryConfiguration.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, location_name: "ResourceIdentifier"))
    TelemetryConfiguration.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapOutput, location_name: "ResourceTags"))
    TelemetryConfiguration.add_member(:last_update_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "LastUpdateTimeStamp"))
    TelemetryConfiguration.type = Types::TelemetryConfiguration
    TelemetryConfigurationState.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryType)
    TelemetryConfigurationState.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryState)
    TelemetryConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfiguration)
    TelemetryDestinationConfiguration.add_member(:destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationType, location_name: "DestinationType"))
    TelemetryDestinationConfiguration.add_member(:destination_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "DestinationPattern"))
    TelemetryDestinationConfiguration.add_member(:retention_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodInDays, location_name: "RetentionInDays"))
    TelemetryDestinationConfiguration.add_member(:vpc_flow_log_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: VPCFlowLogParameters, location_name: "VPCFlowLogParameters"))
    TelemetryDestinationConfiguration.type = Types::TelemetryDestinationConfiguration
    TelemetryRule.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, location_name: "ResourceType"))
    TelemetryRule.add_member(:telemetry_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryType, location_name: "TelemetryType", traits: {"smithy.api#required" => {}}))
    TelemetryRule.add_member(:destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryDestinationConfiguration, location_name: "DestinationConfiguration"))
    TelemetryRule.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Scope"))
    TelemetryRule.add_member(:selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SelectionCriteria"))
    TelemetryRule.type = Types::TelemetryRule
    TelemetryRuleSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRuleSummary)
    TelemetryRuleSummary.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, location_name: "RuleName"))
    TelemetryRuleSummary.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "RuleArn"))
    TelemetryRuleSummary.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "CreatedTimeStamp"))
    TelemetryRuleSummary.add_member(:last_update_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "LastUpdateTimeStamp"))
    TelemetryRuleSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, location_name: "ResourceType"))
    TelemetryRuleSummary.add_member(:telemetry_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryType, location_name: "TelemetryType"))
    TelemetryRuleSummary.type = Types::TelemetryRuleSummary
    TelemetryState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "Enabled"}))
    TelemetryState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    TelemetryState.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NotApplicable"}))
    TelemetryType.add_member(:logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOGS", traits: {"smithy.api#enumValue" => "Logs"}))
    TelemetryType.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "METRICS", traits: {"smithy.api#enumValue" => "Metrics"}))
    TelemetryType.add_member(:traces, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRACES", traits: {"smithy.api#enumValue" => "Traces"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateCentralizationRuleForOrganizationInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, location_name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateCentralizationRuleForOrganizationInput.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: CentralizationRule, location_name: "Rule", traits: {"smithy.api#required" => {}}))
    UpdateCentralizationRuleForOrganizationInput.type = Types::UpdateCentralizationRuleForOrganizationInput
    UpdateCentralizationRuleForOrganizationOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "RuleArn"))
    UpdateCentralizationRuleForOrganizationOutput.type = Types::UpdateCentralizationRuleForOrganizationOutput
    UpdateTelemetryRuleForOrganizationInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, location_name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateTelemetryRuleForOrganizationInput.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRule, location_name: "Rule", traits: {"smithy.api#required" => {}}))
    UpdateTelemetryRuleForOrganizationInput.type = Types::UpdateTelemetryRuleForOrganizationInput
    UpdateTelemetryRuleForOrganizationOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "RuleArn"))
    UpdateTelemetryRuleForOrganizationOutput.type = Types::UpdateTelemetryRuleForOrganizationOutput
    UpdateTelemetryRuleInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, location_name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateTelemetryRuleInput.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRule, location_name: "Rule", traits: {"smithy.api#required" => {}}))
    UpdateTelemetryRuleInput.type = Types::UpdateTelemetryRuleInput
    UpdateTelemetryRuleOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "RuleArn"))
    UpdateTelemetryRuleOutput.type = Types::UpdateTelemetryRuleOutput
    VPCFlowLogParameters.add_member(:log_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "LogFormat"))
    VPCFlowLogParameters.add_member(:traffic_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "TrafficType"))
    VPCFlowLogParameters.add_member(:max_aggregation_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxAggregationInterval"))
    VPCFlowLogParameters.type = Types::VPCFlowLogParameters
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message"))
    ValidationException.type = Types::ValidationException

    ObservabilityAdmin = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.observabilityadmin#ObservabilityAdmin"
      service.name = "ObservabilityAdmin"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "ObservabilityAdmin", "arnNamespace" => "observabilityadmin"}, "aws.auth#sigv4" => {"name" => "observabilityadmin"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "CloudWatch Observability Admin Service"}
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
      service.add_operation(:start_telemetry_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#StartTelemetryEvaluation"
        operation.name = "StartTelemetryEvaluation"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
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
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartTelemetryEvaluationForOrganization"}}
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
      service.add_operation(:update_telemetry_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#UpdateTelemetryRule"
        operation.name = "UpdateTelemetryRule"
        operation.input = UpdateTelemetryRuleInput
        operation.output = UpdateTelemetryRuleOutput
        operation.errors << AccessDeniedException
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
