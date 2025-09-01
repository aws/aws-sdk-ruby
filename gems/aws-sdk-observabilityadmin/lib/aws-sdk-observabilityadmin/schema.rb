# frozen_string_literal: true

# This is generated code!

module Aws::ObservabilityAdmin
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccountIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.observabilityadmin#AccountIdentifier', name: 'AccountIdentifier', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AccountIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.observabilityadmin#AccountIdentifiers', name: 'AccountIdentifiers', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateTelemetryRuleForOrganizationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#CreateTelemetryRuleForOrganizationInput', name: 'CreateTelemetryRuleForOrganizationInput')
    CreateTelemetryRuleForOrganizationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#CreateTelemetryRuleForOrganizationOutput', name: 'CreateTelemetryRuleForOrganizationOutput')
    CreateTelemetryRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#CreateTelemetryRuleInput', name: 'CreateTelemetryRuleInput')
    CreateTelemetryRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#CreateTelemetryRuleOutput', name: 'CreateTelemetryRuleOutput')
    DeleteTelemetryRuleForOrganizationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#DeleteTelemetryRuleForOrganizationInput', name: 'DeleteTelemetryRuleForOrganizationInput')
    DeleteTelemetryRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#DeleteTelemetryRuleInput', name: 'DeleteTelemetryRuleInput')
    DestinationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.observabilityadmin#DestinationType', name: 'DestinationType')
    FailureReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.observabilityadmin#FailureReason', name: 'FailureReason')
    GetTelemetryEvaluationStatusForOrganizationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#GetTelemetryEvaluationStatusForOrganizationOutput', name: 'GetTelemetryEvaluationStatusForOrganizationOutput')
    GetTelemetryEvaluationStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#GetTelemetryEvaluationStatusOutput', name: 'GetTelemetryEvaluationStatusOutput')
    GetTelemetryRuleForOrganizationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#GetTelemetryRuleForOrganizationInput', name: 'GetTelemetryRuleForOrganizationInput')
    GetTelemetryRuleForOrganizationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#GetTelemetryRuleForOrganizationOutput', name: 'GetTelemetryRuleForOrganizationOutput')
    GetTelemetryRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#GetTelemetryRuleInput', name: 'GetTelemetryRuleInput')
    GetTelemetryRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#GetTelemetryRuleOutput', name: 'GetTelemetryRuleOutput')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListResourceTelemetryForOrganizationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#ListResourceTelemetryForOrganizationInput', name: 'ListResourceTelemetryForOrganizationInput')
    ListResourceTelemetryForOrganizationMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.observabilityadmin#ListResourceTelemetryForOrganizationMaxResults', name: 'ListResourceTelemetryForOrganizationMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListResourceTelemetryForOrganizationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#ListResourceTelemetryForOrganizationOutput', name: 'ListResourceTelemetryForOrganizationOutput')
    ListResourceTelemetryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#ListResourceTelemetryInput', name: 'ListResourceTelemetryInput')
    ListResourceTelemetryMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.observabilityadmin#ListResourceTelemetryMaxResults', name: 'ListResourceTelemetryMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListResourceTelemetryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#ListResourceTelemetryOutput', name: 'ListResourceTelemetryOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListTelemetryRulesForOrganizationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#ListTelemetryRulesForOrganizationInput', name: 'ListTelemetryRulesForOrganizationInput')
    ListTelemetryRulesForOrganizationMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.observabilityadmin#ListTelemetryRulesForOrganizationMaxResults', name: 'ListTelemetryRulesForOrganizationMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListTelemetryRulesForOrganizationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#ListTelemetryRulesForOrganizationOutput', name: 'ListTelemetryRulesForOrganizationOutput')
    ListTelemetryRulesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#ListTelemetryRulesInput', name: 'ListTelemetryRulesInput')
    ListTelemetryRulesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.observabilityadmin#ListTelemetryRulesMaxResults', name: 'ListTelemetryRulesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListTelemetryRulesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#ListTelemetryRulesOutput', name: 'ListTelemetryRulesOutput')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.observabilityadmin#NextToken', name: 'NextToken')
    OrganizationUnitIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.observabilityadmin#OrganizationUnitIdentifier', name: 'OrganizationUnitIdentifier', traits: {"smithy.api#pattern" => "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"})
    OrganizationUnitIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.observabilityadmin#OrganizationUnitIdentifiers', name: 'OrganizationUnitIdentifiers', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#uniqueItems" => {}})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.observabilityadmin#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:([a-zA-Z0-9\\-]+):([a-z0-9\\-]+)?:([0-9]{12})?:(.+)$"})
    ResourceIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.observabilityadmin#ResourceIdentifier', name: 'ResourceIdentifier')
    ResourceIdentifierPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.observabilityadmin#ResourceIdentifierPrefix', name: 'ResourceIdentifierPrefix', traits: {"smithy.api#length" => {"min" => 3, "max" => 768}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.observabilityadmin#ResourceType', name: 'ResourceType')
    ResourceTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.observabilityadmin#ResourceTypes', name: 'ResourceTypes', traits: {"smithy.api#length" => {"min" => 1, "max" => 9}, "smithy.api#uniqueItems" => {}})
    RetentionPeriodInDays = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.observabilityadmin#RetentionPeriodInDays', name: 'RetentionPeriodInDays', traits: {"smithy.api#range" => {"min" => 1, "max" => 3653}})
    RuleIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.observabilityadmin#RuleIdentifier', name: 'RuleIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    RuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.observabilityadmin#RuleName', name: 'RuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z-]+$"})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Status = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.observabilityadmin#Status', name: 'Status')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.observabilityadmin#TagKey', name: 'TagKey', traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.observabilityadmin#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMapInput = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.observabilityadmin#TagMapInput', name: 'TagMapInput', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMapOutput = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.observabilityadmin#TagMapOutput', name: 'TagMapOutput')
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#TagResourceInput', name: 'TagResourceInput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.observabilityadmin#TagValue', name: 'TagValue', traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TelemetryConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#TelemetryConfiguration', name: 'TelemetryConfiguration')
    TelemetryConfigurationState = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.observabilityadmin#TelemetryConfigurationState', name: 'TelemetryConfigurationState')
    TelemetryConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.observabilityadmin#TelemetryConfigurations', name: 'TelemetryConfigurations')
    TelemetryDestinationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#TelemetryDestinationConfiguration', name: 'TelemetryDestinationConfiguration')
    TelemetryRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#TelemetryRule', name: 'TelemetryRule')
    TelemetryRuleSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.observabilityadmin#TelemetryRuleSummaries', name: 'TelemetryRuleSummaries')
    TelemetryRuleSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#TelemetryRuleSummary', name: 'TelemetryRuleSummary')
    TelemetryState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.observabilityadmin#TelemetryState', name: 'TelemetryState')
    TelemetryType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.observabilityadmin#TelemetryType', name: 'TelemetryType')
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#UntagResourceInput', name: 'UntagResourceInput')
    UpdateTelemetryRuleForOrganizationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#UpdateTelemetryRuleForOrganizationInput', name: 'UpdateTelemetryRuleForOrganizationInput')
    UpdateTelemetryRuleForOrganizationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#UpdateTelemetryRuleForOrganizationOutput', name: 'UpdateTelemetryRuleForOrganizationOutput')
    UpdateTelemetryRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#UpdateTelemetryRuleInput', name: 'UpdateTelemetryRuleInput')
    UpdateTelemetryRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#UpdateTelemetryRuleOutput', name: 'UpdateTelemetryRuleOutput')
    VPCFlowLogParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#VPCFlowLogParameters', name: 'VPCFlowLogParameters')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.observabilityadmin#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    AccessDeniedException.add_member(:amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#documentation" => "<p>\n      The name of the exception.\n    </p>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdentifier)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateTelemetryRuleForOrganizationInput.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>\n      A unique name for the organization-wide telemetry rule being created.\n    </p>", "smithy.api#required" => {}}))
    CreateTelemetryRuleForOrganizationInput.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryRule, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>\n      The configuration details for the organization-wide telemetry rule, including the resource type, telemetry type, destination configuration, and selection criteria for which resources the rule applies to across the organization.\n    </p>", "smithy.api#required" => {}}))
    CreateTelemetryRuleForOrganizationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapInput, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>\n      The key-value pairs to associate with the organization telemetry rule resource for categorization and management purposes.\n    </p>"}))
    CreateTelemetryRuleForOrganizationInput.type = Types::CreateTelemetryRuleForOrganizationInput
    CreateTelemetryRuleForOrganizationOutput.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) of the created organization telemetry rule.\n    </p>"}))
    CreateTelemetryRuleForOrganizationOutput.type = Types::CreateTelemetryRuleForOrganizationOutput
    CreateTelemetryRuleInput.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>\n      A unique name for the telemetry rule being created.\n    </p>", "smithy.api#required" => {}}))
    CreateTelemetryRuleInput.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryRule, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>\n      The configuration details for the telemetry rule, including the resource type, telemetry type, destination configuration, and selection criteria for which resources the rule applies to.\n    </p>", "smithy.api#required" => {}}))
    CreateTelemetryRuleInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapInput, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>\n      The key-value pairs to associate with the telemetry rule resource for categorization and management purposes.\n    </p>"}))
    CreateTelemetryRuleInput.type = Types::CreateTelemetryRuleInput
    CreateTelemetryRuleOutput.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) of the created telemetry rule.\n    </p>"}))
    CreateTelemetryRuleOutput.type = Types::CreateTelemetryRuleOutput
    DeleteTelemetryRuleForOrganizationInput.add_member(:rule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'RuleIdentifier', traits: {"smithy.api#documentation" => "<p>\n      The identifier (name or ARN) of the organization telemetry rule to delete.\n    </p>", "smithy.api#required" => {}}))
    DeleteTelemetryRuleForOrganizationInput.type = Types::DeleteTelemetryRuleForOrganizationInput
    DeleteTelemetryRuleInput.add_member(:rule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'RuleIdentifier', traits: {"smithy.api#documentation" => "<p>\n      The identifier (name or ARN) of the telemetry rule to delete.\n    </p>", "smithy.api#required" => {}}))
    DeleteTelemetryRuleInput.type = Types::DeleteTelemetryRuleInput
    DestinationType.add_member(:cloudwatch_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDWATCH_LOGS', traits: {"smithy.api#enumValue" => "cloud-watch-logs"}))
    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\n      The onboarding status of the telemetry config feature for the organization.\n    </p>"}))
    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason', traits: {"smithy.api#documentation" => "<p>\n      This field describes the reason for the failure status. The field will only be populated if <code>Status</code> is <code>FAILED_START</code> or <code>FAILED_STOP</code>.\n    </p>"}))
    GetTelemetryEvaluationStatusForOrganizationOutput.type = Types::GetTelemetryEvaluationStatusForOrganizationOutput
    GetTelemetryEvaluationStatusOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\n      The onboarding status of the telemetry config feature.\n    </p>"}))
    GetTelemetryEvaluationStatusOutput.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason', traits: {"smithy.api#documentation" => "<p>\n      Describes the reason for the failure status. The field will only be populated if <code>Status</code> is <code>FAILED_START</code> or <code>FAILED_STOP</code>.\n    </p>"}))
    GetTelemetryEvaluationStatusOutput.type = Types::GetTelemetryEvaluationStatusOutput
    GetTelemetryRuleForOrganizationInput.add_member(:rule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'RuleIdentifier', traits: {"smithy.api#documentation" => "<p>\n      The identifier (name or ARN) of the organization telemetry rule to retrieve.\n    </p>", "smithy.api#required" => {}}))
    GetTelemetryRuleForOrganizationInput.type = Types::GetTelemetryRuleForOrganizationInput
    GetTelemetryRuleForOrganizationOutput.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>\n      The name of the organization telemetry rule.\n    </p>"}))
    GetTelemetryRuleForOrganizationOutput.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) of the organization telemetry rule.\n    </p>"}))
    GetTelemetryRuleForOrganizationOutput.add_member(:created_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'CreatedTimeStamp', traits: {"smithy.api#documentation" => "<p>\n      The timestamp when the organization telemetry rule was created.\n    </p>"}))
    GetTelemetryRuleForOrganizationOutput.add_member(:last_update_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'LastUpdateTimeStamp', traits: {"smithy.api#documentation" => "<p>\n      The timestamp when the organization telemetry rule was last updated.\n    </p>"}))
    GetTelemetryRuleForOrganizationOutput.add_member(:telemetry_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryRule, location_name: 'TelemetryRule', traits: {"smithy.api#documentation" => "<p>\n      The configuration details of the organization telemetry rule.\n    </p>"}))
    GetTelemetryRuleForOrganizationOutput.type = Types::GetTelemetryRuleForOrganizationOutput
    GetTelemetryRuleInput.add_member(:rule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'RuleIdentifier', traits: {"smithy.api#documentation" => "<p>\n      The identifier (name or ARN) of the telemetry rule to retrieve.\n    </p>", "smithy.api#required" => {}}))
    GetTelemetryRuleInput.type = Types::GetTelemetryRuleInput
    GetTelemetryRuleOutput.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>\n      The name of the telemetry rule.\n    </p>"}))
    GetTelemetryRuleOutput.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) of the telemetry rule.\n    </p>"}))
    GetTelemetryRuleOutput.add_member(:created_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'CreatedTimeStamp', traits: {"smithy.api#documentation" => "<p>\n      The timestamp when the telemetry rule was created.\n    </p>"}))
    GetTelemetryRuleOutput.add_member(:last_update_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'LastUpdateTimeStamp', traits: {"smithy.api#documentation" => "<p>\n      The timestamp when the telemetry rule was last updated.\n    </p>"}))
    GetTelemetryRuleOutput.add_member(:telemetry_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryRule, location_name: 'TelemetryRule', traits: {"smithy.api#documentation" => "<p>\n      The configuration details of the telemetry rule.\n    </p>"}))
    GetTelemetryRuleOutput.type = Types::GetTelemetryRuleOutput
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    InternalServerException.add_member(:amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#documentation" => "<p>\n      The name of the exception.\n    </p>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InternalServerException.type = Types::InternalServerException
    ListResourceTelemetryForOrganizationInput.add_member(:account_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdentifiers, location_name: 'AccountIdentifiers', traits: {"smithy.api#documentation" => "<p>\n      A list of Amazon Web Services accounts used to filter the resources to those associated with the specified accounts.\n    </p>"}))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_identifier_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifierPrefix, location_name: 'ResourceIdentifierPrefix', traits: {"smithy.api#documentation" => "<p>\n      A string used to filter resources in the organization which have a <code>ResourceIdentifier</code> starting with the <code>ResourceIdentifierPrefix</code>.\n    </p>"}))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypes, location_name: 'ResourceTypes', traits: {"smithy.api#documentation" => "<p>\n    A list of resource types used to filter resources in the organization. If this parameter is provided, the resources will be returned in the same order used in the request.\n    </p>"}))
    ListResourceTelemetryForOrganizationInput.add_member(:telemetry_configuration_state, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryConfigurationState, location_name: 'TelemetryConfigurationState', traits: {"smithy.api#documentation" => "<p>\n      A key-value pair to filter resources in the organization based on the telemetry type and the state of the telemetry configuration. The key is the telemetry type and the value is the state.\n    </p>"}))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapInput, location_name: 'ResourceTags', traits: {"smithy.api#documentation" => "<p>\n      A key-value pair to filter resources in the organization based on tags associated with the resource. Fore more information about tags, see <a href=\"https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html\">What are tags?</a>\n         </p>"}))
    ListResourceTelemetryForOrganizationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceTelemetryForOrganizationMaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>\n      A number field used to limit the number of results within the returned list.\n    </p>"}))
    ListResourceTelemetryForOrganizationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The token for the next set of items to return. A previous call provides this token.\n    </p>"}))
    ListResourceTelemetryForOrganizationInput.type = Types::ListResourceTelemetryForOrganizationInput
    ListResourceTelemetryForOrganizationOutput.add_member(:telemetry_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryConfigurations, location_name: 'TelemetryConfigurations', traits: {"smithy.api#documentation" => "<p>\n      A list of telemetry configurations for Amazon Web Services resources supported by telemetry config in the organization.\n    </p>"}))
    ListResourceTelemetryForOrganizationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The token for the next set of items to return. A previous call provides this token.\n    </p>"}))
    ListResourceTelemetryForOrganizationOutput.type = Types::ListResourceTelemetryForOrganizationOutput
    ListResourceTelemetryInput.add_member(:resource_identifier_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifierPrefix, location_name: 'ResourceIdentifierPrefix', traits: {"smithy.api#documentation" => "<p>\n      A string used to filter resources which have a <code>ResourceIdentifier</code> starting with the <code>ResourceIdentifierPrefix</code>.\n    </p>"}))
    ListResourceTelemetryInput.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypes, location_name: 'ResourceTypes', traits: {"smithy.api#documentation" => "<p>\n      A list of resource types used to filter resources supported by telemetry config. If this parameter is provided, the resources will be returned in the same order used in the request.\n    </p>"}))
    ListResourceTelemetryInput.add_member(:telemetry_configuration_state, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryConfigurationState, location_name: 'TelemetryConfigurationState', traits: {"smithy.api#documentation" => "<p>\n      A key-value pair to filter resources based on the telemetry type and the state of the telemetry configuration. The key is the telemetry type and the value is the state.\n    </p>"}))
    ListResourceTelemetryInput.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapInput, location_name: 'ResourceTags', traits: {"smithy.api#documentation" => "<p>\n      A key-value pair to filter resources based on tags associated with the resource. For more information about tags, see <a href=\"https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html\">What are tags?</a>\n         </p>"}))
    ListResourceTelemetryInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceTelemetryMaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>\n      A number field used to limit the number of results within the returned list.\n    </p>"}))
    ListResourceTelemetryInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The token for the next set of items to return. A previous call generates this token.\n    </p>"}))
    ListResourceTelemetryInput.type = Types::ListResourceTelemetryInput
    ListResourceTelemetryOutput.add_member(:telemetry_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryConfigurations, location_name: 'TelemetryConfigurations', traits: {"smithy.api#documentation" => "<p>\n      A list of telemetry configurations for Amazon Web Services resources supported by telemetry config in the caller's account.\n    </p>"}))
    ListResourceTelemetryOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The token for the next set of items to return. A previous call generates this token.\n    </p>"}))
    ListResourceTelemetryOutput.type = Types::ListResourceTelemetryOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) of the telemetry rule resource whose tags you want to list.\n    </p>", "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapOutput, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>\n      The list of tags associated with the telemetry rule resource.\n    </p>", "smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTelemetryRulesForOrganizationInput.add_member(:rule_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RuleNamePrefix', traits: {"smithy.api#documentation" => "<p>\n      A string to filter organization telemetry rules whose names begin with the specified prefix.\n    </p>"}))
    ListTelemetryRulesForOrganizationInput.add_member(:source_account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdentifiers, location_name: 'SourceAccountIds', traits: {"smithy.api#documentation" => "<p>\n      The list of account IDs to filter organization telemetry rules by their source accounts.\n    </p>"}))
    ListTelemetryRulesForOrganizationInput.add_member(:source_organization_unit_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationUnitIdentifiers, location_name: 'SourceOrganizationUnitIds', traits: {"smithy.api#documentation" => "<p>\n      The list of organizational unit IDs to filter organization telemetry rules by their source organizational units.\n    </p>"}))
    ListTelemetryRulesForOrganizationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListTelemetryRulesForOrganizationMaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>\n      The maximum number of organization telemetry rules to return in a single call.\n    </p>"}))
    ListTelemetryRulesForOrganizationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The token for the next set of results. A previous call generates this token.\n    </p>"}))
    ListTelemetryRulesForOrganizationInput.type = Types::ListTelemetryRulesForOrganizationInput
    ListTelemetryRulesForOrganizationOutput.add_member(:telemetry_rule_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryRuleSummaries, location_name: 'TelemetryRuleSummaries', traits: {"smithy.api#documentation" => "<p>\n      A list of organization telemetry rule summaries.\n    </p>"}))
    ListTelemetryRulesForOrganizationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      A token to resume pagination of results.\n    </p>"}))
    ListTelemetryRulesForOrganizationOutput.type = Types::ListTelemetryRulesForOrganizationOutput
    ListTelemetryRulesInput.add_member(:rule_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RuleNamePrefix', traits: {"smithy.api#documentation" => "<p>\n      A string to filter telemetry rules whose names begin with the specified prefix.\n    </p>"}))
    ListTelemetryRulesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListTelemetryRulesMaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>\n      The maximum number of telemetry rules to return in a single call.\n    </p>"}))
    ListTelemetryRulesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      The token for the next set of results. A previous call generates this token.\n    </p>"}))
    ListTelemetryRulesInput.type = Types::ListTelemetryRulesInput
    ListTelemetryRulesOutput.add_member(:telemetry_rule_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryRuleSummaries, location_name: 'TelemetryRuleSummaries', traits: {"smithy.api#documentation" => "<p>\n      A list of telemetry rule summaries.\n    </p>"}))
    ListTelemetryRulesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n      A token to resume pagination of results.\n    </p>"}))
    ListTelemetryRulesOutput.type = Types::ListTelemetryRulesOutput
    OrganizationUnitIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationUnitIdentifier)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:aws_ec2_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_EC2_INSTANCE', traits: {"smithy.api#enumValue" => "AWS::EC2::Instance"}))
    ResourceType.add_member(:aws_ec2_vpc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_EC2_VPC', traits: {"smithy.api#enumValue" => "AWS::EC2::VPC"}))
    ResourceType.add_member(:aws_lamdba_function, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_LAMDBA_FUNCTION', traits: {"smithy.api#enumValue" => "AWS::Lambda::Function"}))
    ResourceTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ServiceQuotaExceededException.add_member(:amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#documentation" => "<p>\n      The name of the exception.\n    </p>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Status.add_member(:not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_STARTED', traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    Status.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    Status.add_member(:failed_start, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_START', traits: {"smithy.api#enumValue" => "FAILED_START"}))
    Status.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    Status.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    Status.add_member(:failed_stop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_STOP', traits: {"smithy.api#enumValue" => "FAILED_STOP"}))
    Status.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMapInput.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMapInput.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagMapOutput.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagMapOutput.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) of the telemetry rule resource to tag.\n    </p>", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapInput, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>\n      The key-value pairs to add or update for the telemetry rule resource.\n    </p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TelemetryConfiguration.add_member(:account_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdentifier, location_name: 'AccountIdentifier', traits: {"smithy.api#documentation" => "<p>\n      The account ID which contains the resource managed in telemetry configuration. An example of a valid account ID is <code>012345678901</code>.\n    </p>"}))
    TelemetryConfiguration.add_member(:telemetry_configuration_state, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryConfigurationState, location_name: 'TelemetryConfigurationState', traits: {"smithy.api#documentation" => "<p>\n      The configuration state for the resource, for example <code>{ Logs: NotApplicable; Metrics: Enabled; Traces: NotApplicable; }</code>.\n      </p>"}))
    TelemetryConfiguration.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>\n      The type of resource, for example <code>Amazon Web Services::EC2::Instance</code>.\n    </p>"}))
    TelemetryConfiguration.add_member(:resource_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'ResourceIdentifier', traits: {"smithy.api#documentation" => "<p>\n     The identifier of the resource, for example <code>i-0b22a22eec53b9321</code>.\n    </p>"}))
    TelemetryConfiguration.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapOutput, location_name: 'ResourceTags', traits: {"smithy.api#documentation" => "<p>\n     Tags associated with the resource, for example <code>{ Name: \"ExampleInstance\", Environment: \"Development\" }</code>.\n    </p>"}))
    TelemetryConfiguration.add_member(:last_update_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'LastUpdateTimeStamp', traits: {"smithy.api#documentation" => "<p>\n      The timestamp of the last change to the telemetry configuration for the resource.  For example, <code>1728679196318</code>.\n    </p>"}))
    TelemetryConfiguration.type = Types::TelemetryConfiguration
    TelemetryConfigurationState.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryType)
    TelemetryConfigurationState.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryState)
    TelemetryConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryConfiguration)
    TelemetryDestinationConfiguration.add_member(:destination_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationType, location_name: 'DestinationType', traits: {"smithy.api#documentation" => "<p>\n      The type of destination for the telemetry data (e.g., \"Amazon CloudWatch Logs\", \"S3\").\n    </p>"}))
    TelemetryDestinationConfiguration.add_member(:destination_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DestinationPattern', traits: {"smithy.api#documentation" => "<p>\n      The pattern used to generate the destination path or name, supporting macros like &lt;resourceId&gt; and &lt;accountId&gt;.\n    </p>"}))
    TelemetryDestinationConfiguration.add_member(:retention_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriodInDays, location_name: 'RetentionInDays', traits: {"smithy.api#documentation" => "<p>\n      The number of days to retain the telemetry data in the destination.\n    </p>"}))
    TelemetryDestinationConfiguration.add_member(:vpc_flow_log_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: VPCFlowLogParameters, location_name: 'VPCFlowLogParameters', traits: {"smithy.api#documentation" => "<p>\n      Configuration parameters specific to VPC Flow Logs when VPC is the resource type.\n    </p>"}))
    TelemetryDestinationConfiguration.type = Types::TelemetryDestinationConfiguration
    TelemetryRule.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>\n      The type of Amazon Web Services resource to configure telemetry for (e.g., \"AWS::EC2::VPC\").\n    </p>"}))
    TelemetryRule.add_member(:telemetry_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryType, location_name: 'TelemetryType', traits: {"smithy.api#documentation" => "<p>\n      The type of telemetry to collect (Logs, Metrics, or Traces).\n    </p>", "smithy.api#required" => {}}))
    TelemetryRule.add_member(:destination_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryDestinationConfiguration, location_name: 'DestinationConfiguration', traits: {"smithy.api#documentation" => "<p>\n      Configuration specifying where and how the telemetry data should be delivered.\n    </p>"}))
    TelemetryRule.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>\n      The organizational scope to which the rule applies, specified using accounts or organizational units.\n    </p>"}))
    TelemetryRule.add_member(:selection_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SelectionCriteria', traits: {"smithy.api#documentation" => "<p>\n      Criteria for selecting which resources the rule applies to, such as resource tags.\n    </p>"}))
    TelemetryRule.type = Types::TelemetryRule
    TelemetryRuleSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryRuleSummary)
    TelemetryRuleSummary.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>\n      The name of the telemetry rule.\n    </p>"}))
    TelemetryRuleSummary.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) of the telemetry rule.\n    </p>"}))
    TelemetryRuleSummary.add_member(:created_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'CreatedTimeStamp', traits: {"smithy.api#documentation" => "<p>\n      The timestamp when the telemetry rule was created.\n    </p>"}))
    TelemetryRuleSummary.add_member(:last_update_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'LastUpdateTimeStamp', traits: {"smithy.api#documentation" => "<p>\n      The timestamp when the telemetry rule was last modified.\n    </p>"}))
    TelemetryRuleSummary.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>\n      The type of Amazon Web Services resource the rule applies to.\n    </p>"}))
    TelemetryRuleSummary.add_member(:telemetry_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryType, location_name: 'TelemetryType', traits: {"smithy.api#documentation" => "<p>\n      The type of telemetry (Logs, Metrics, or Traces) the rule configures.\n    </p>"}))
    TelemetryRuleSummary.type = Types::TelemetryRuleSummary
    TelemetryState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "Enabled"}))
    TelemetryState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "Disabled"}))
    TelemetryState.add_member(:not_applicable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_APPLICABLE', traits: {"smithy.api#enumValue" => "NotApplicable"}))
    TelemetryType.add_member(:logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOGS', traits: {"smithy.api#enumValue" => "Logs"}))
    TelemetryType.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'METRICS', traits: {"smithy.api#enumValue" => "Metrics"}))
    TelemetryType.add_member(:traces, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRACES', traits: {"smithy.api#enumValue" => "Traces"}))
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) of the telemetry rule resource to remove tags from.\n    </p>", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>\n      The list of tag keys to remove from the telemetry rule resource.\n    </p>", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateTelemetryRuleForOrganizationInput.add_member(:rule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'RuleIdentifier', traits: {"smithy.api#documentation" => "<p>\n      The identifier (name or ARN) of the organization telemetry rule to update.\n    </p>", "smithy.api#required" => {}}))
    UpdateTelemetryRuleForOrganizationInput.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryRule, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>\n      The new configuration details for the organization telemetry rule, including resource type, telemetry type, and destination configuration.\n    </p>", "smithy.api#required" => {}}))
    UpdateTelemetryRuleForOrganizationInput.type = Types::UpdateTelemetryRuleForOrganizationInput
    UpdateTelemetryRuleForOrganizationOutput.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) of the updated organization telemetry rule.\n    </p>"}))
    UpdateTelemetryRuleForOrganizationOutput.type = Types::UpdateTelemetryRuleForOrganizationOutput
    UpdateTelemetryRuleInput.add_member(:rule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'RuleIdentifier', traits: {"smithy.api#documentation" => "<p>\n      The identifier (name or ARN) of the telemetry rule to update.\n    </p>", "smithy.api#required" => {}}))
    UpdateTelemetryRuleInput.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryRule, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>\n      The new configuration details for the telemetry rule.\n    </p>", "smithy.api#required" => {}}))
    UpdateTelemetryRuleInput.type = Types::UpdateTelemetryRuleInput
    UpdateTelemetryRuleOutput.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Resource Name (ARN) of the updated telemetry rule.\n    </p>"}))
    UpdateTelemetryRuleOutput.type = Types::UpdateTelemetryRuleOutput
    VPCFlowLogParameters.add_member(:log_format, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'LogFormat', traits: {"smithy.api#documentation" => "<p>\n      The format in which VPC Flow Log entries should be logged.\n    </p>"}))
    VPCFlowLogParameters.add_member(:traffic_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'TrafficType', traits: {"smithy.api#documentation" => "<p>\n      The type of traffic to log (ACCEPT, REJECT, or ALL).\n    </p>"}))
    VPCFlowLogParameters.add_member(:max_aggregation_interval, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxAggregationInterval', traits: {"smithy.api#documentation" => "<p>\n      The maximum interval in seconds between the capture of flow log records.\n    </p>"}))
    VPCFlowLogParameters.type = Types::VPCFlowLogParameters
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    ObservabilityAdmin = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.observabilityadmin#ObservabilityAdmin"
      service.name = "ObservabilityAdmin"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "ObservabilityAdmin", "arnNamespace" => "observabilityadmin"}, "aws.auth#sigv4" => {"name" => "observabilityadmin"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "CloudWatch Observability Admin Service"}
      service.add_operation(:create_telemetry_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#CreateTelemetryRule"
        operation.name = "CreateTelemetryRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTelemetryRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTelemetryRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateTelemetryRule"}}
      end)
      service.add_operation(:create_telemetry_rule_for_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#CreateTelemetryRuleForOrganization"
        operation.name = "CreateTelemetryRuleForOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTelemetryRuleForOrganizationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTelemetryRuleForOrganizationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateTelemetryRuleForOrganization"}}
      end)
      service.add_operation(:delete_telemetry_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#DeleteTelemetryRule"
        operation.name = "DeleteTelemetryRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTelemetryRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteTelemetryRule"}}
      end)
      service.add_operation(:delete_telemetry_rule_for_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#DeleteTelemetryRuleForOrganization"
        operation.name = "DeleteTelemetryRuleForOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTelemetryRuleForOrganizationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteTelemetryRuleForOrganization"}}
      end)
      service.add_operation(:get_telemetry_evaluation_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#GetTelemetryEvaluationStatus"
        operation.name = "GetTelemetryEvaluationStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTelemetryEvaluationStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTelemetryEvaluationStatus"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetTelemetryEvaluationStatus", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2"}}]}
      end)
      service.add_operation(:get_telemetry_evaluation_status_for_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#GetTelemetryEvaluationStatusForOrganization"
        operation.name = "GetTelemetryEvaluationStatusForOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTelemetryEvaluationStatusForOrganizationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTelemetryEvaluationStatusForOrganization"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetTelemetryEvaluationStatusForOrganization", "params" => {}, "expect" => {"failure" => {"errorId" => "com.amazonaws.observabilityadmin#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2"}}]}
      end)
      service.add_operation(:get_telemetry_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#GetTelemetryRule"
        operation.name = "GetTelemetryRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTelemetryRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTelemetryRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTelemetryRule"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_telemetry_rule_for_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#GetTelemetryRuleForOrganization"
        operation.name = "GetTelemetryRuleForOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTelemetryRuleForOrganizationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTelemetryRuleForOrganizationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetTelemetryRuleForOrganization"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_resource_telemetry, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ListResourceTelemetry"
        operation.name = "ListResourceTelemetry"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceTelemetryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceTelemetryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListResourceTelemetry"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceTelemetry.new
      end)
      service.add_operation(:list_resource_telemetry_for_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ListResourceTelemetryForOrganization"
        operation.name = "ListResourceTelemetryForOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceTelemetryForOrganizationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceTelemetryForOrganizationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListResourceTelemetryForOrganization"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceTelemetryForOrganization.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTagsForResource"}}
      end)
      service.add_operation(:list_telemetry_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ListTelemetryRules"
        operation.name = "ListTelemetryRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTelemetryRulesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTelemetryRulesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTelemetryRules"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTelemetryRules.new
      end)
      service.add_operation(:list_telemetry_rules_for_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#ListTelemetryRulesForOrganization"
        operation.name = "ListTelemetryRulesForOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTelemetryRulesForOrganizationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTelemetryRulesForOrganizationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTelemetryRulesForOrganization"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTelemetryRulesForOrganization.new
      end)
      service.add_operation(:start_telemetry_evaluation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#StartTelemetryEvaluation"
        operation.name = "StartTelemetryEvaluation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartTelemetryEvaluation"}}
      end)
      service.add_operation(:start_telemetry_evaluation_for_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#StartTelemetryEvaluationForOrganization"
        operation.name = "StartTelemetryEvaluationForOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartTelemetryEvaluationForOrganization"}}
      end)
      service.add_operation(:stop_telemetry_evaluation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#StopTelemetryEvaluation"
        operation.name = "StopTelemetryEvaluation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StopTelemetryEvaluation"}}
      end)
      service.add_operation(:stop_telemetry_evaluation_for_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#StopTelemetryEvaluationForOrganization"
        operation.name = "StopTelemetryEvaluationForOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StopTelemetryEvaluationForOrganization"}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TagResource"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UntagResource"}}
      end)
      service.add_operation(:update_telemetry_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#UpdateTelemetryRule"
        operation.name = "UpdateTelemetryRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTelemetryRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTelemetryRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateTelemetryRule"}}
      end)
      service.add_operation(:update_telemetry_rule_for_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.observabilityadmin#UpdateTelemetryRuleForOrganization"
        operation.name = "UpdateTelemetryRuleForOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTelemetryRuleForOrganizationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTelemetryRuleForOrganizationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateTelemetryRuleForOrganization"}}
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
